package com.sec.internal.ims.core;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.InetAddresses;
import android.net.LinkProperties;
import android.net.Network;
import android.os.Bundle;
import android.os.SemSystemProperties;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.ServiceStateExt;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.os.NetworkState;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.interfaces.ims.core.ISipTestManager;
import com.sec.internal.interfaces.ims.core.NetworkStateListener;
import com.sec.internal.interfaces.ims.core.PdnEventListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SipTestManager implements ISipTestManager {
    private static final String DEFAULT_SIP_TEST_IP = "192.168.0.86";
    private static final String LOCAL_TOOL_ADDRESS = "127.0.0.1";
    private static final String LOG_TAG = "SipTestManager";
    private static final String PERSIST_SIP_TEST_IP = "persist.sip.test.ip";
    private ActionMode mActMode;
    private Context mContext;

    public enum ActionMode {
        NONE(0),
        REMOTE_SERVER_HOME(1),
        REMOTE_SERVER_ROAMING(2),
        LOCAL_TOOL(3);

        private int mMode;

        ActionMode(int i) {
            this.mMode = i;
        }

        public static ActionMode fromValue(int i) throws IllegalArgumentException {
            try {
                return values()[i];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("Unknown enum value:" + i);
            }
        }
    }

    public SipTestManager(Context context, int i) throws IllegalArgumentException {
        this.mContext = context;
        this.mActMode = ActionMode.fromValue(i);
        Log.i(LOG_TAG, "create SipTestManager with actMode: " + this.mActMode);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISipTestManager
    public void requestNetwork(ConnectivityManager connectivityManager, Set<NetworkStateListener> set, NetworkCallback networkCallback, int i, int i2) {
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || !connectivityManager.getNetworkCapabilities(activeNetwork).hasTransport(1)) {
            return;
        }
        LinkProperties linkProperties = connectivityManager.getLinkProperties(activeNetwork);
        ArrayList arrayList = new ArrayList();
        String str = SemSystemProperties.get(PERSIST_SIP_TEST_IP, DEFAULT_SIP_TEST_IP);
        if (this.mActMode == ActionMode.LOCAL_TOOL) {
            str = LOCAL_TOOL_ADDRESS;
            PdnEventListener pdnEventListener = networkCallback.mListener;
            if (pdnEventListener instanceof RegisterTask) {
                ((RegisterTask) pdnEventListener).getProfile().setTransport(3);
            }
        }
        PdnEventListener pdnEventListener2 = networkCallback.mListener;
        if (pdnEventListener2 instanceof RegisterTask) {
            ((RegisterTask) pdnEventListener2).getProfile().put("wifi_precondition_enabled", Boolean.TRUE);
        }
        IMSLog.i(LOG_TAG, i2, "add pcscf-server address as " + str);
        arrayList.add(InetAddresses.parseNumericAddress(str));
        linkProperties.setPcscfServers(arrayList);
        LinkPropertiesWrapper linkPropertiesWrapper = new LinkPropertiesWrapper(linkProperties);
        if (i == 11 && networkCallback.mLinkProperties.getInterfaceName() == null) {
            synchronized (set) {
                for (NetworkStateListener networkStateListener : set) {
                    networkStateListener.onDataConnectionStateChanged(18, true, i2);
                    networkStateListener.onEpdgConnected(i2);
                }
            }
        }
        networkCallback.mNetwork = activeNetwork;
        networkCallback.mPdnConnected = true;
        networkCallback.mLinkProperties = linkPropertiesWrapper;
        networkCallback.mListener.onConnected(i, activeNetwork);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISipTestManager
    public void clearNetwork(Map<PdnEventListener, NetworkCallback> map, PdnEventListener pdnEventListener) {
        pdnEventListener.onNetworkRequestFail();
        map.remove(pdnEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISipTestManager
    public void notifyNetworkEvent(boolean z, NetworkState networkState, int i) {
        if (z) {
            networkState.setDataNetworkType(18);
            networkState.setDataRegState(0);
            networkState.setVoiceRegState(0);
            networkState.setMobileDataRegState(0);
            networkState.setSnapshotState(ServiceStateExt.SNAPSHOT_STATUS_ACTIVATED);
            networkState.setVopsIndication(VoPsIndication.SUPPORTED);
            networkState.setEpdgAvailable(true);
            networkState.setEpdgConnected(true);
            if (this.mActMode == ActionMode.REMOTE_SERVER_ROAMING) {
                networkState.setDataRoaming(true);
                return;
            } else {
                networkState.setDataRoaming(false);
                return;
            }
        }
        networkState.setDataNetworkType(0);
        networkState.setDataRegState(1);
        networkState.setVoiceRegState(1);
        networkState.setMobileDataRegState(1);
        networkState.setSnapshotState(ServiceStateExt.SNAPSHOT_STATUS_DEACTIVATED);
        networkState.setVopsIndication(VoPsIndication.NOT_SUPPORTED);
        networkState.setEpdgAvailable(false);
        networkState.setEpdgConnected(false);
        networkState.setDataRoaming(false);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISipTestManager
    public void notifyImsRegistration(boolean z, int i, int i2) {
        Intent intent = new Intent();
        intent.setAction("com.android.internal.telephony.TestServiceState");
        if (z) {
            intent.putExtra("data_reg_state", 0);
            intent.putExtra("data_rat", i);
            if (this.mActMode == ActionMode.REMOTE_SERVER_ROAMING) {
                intent.putExtra("data_roaming_type", 3);
            } else {
                intent.putExtra("data_roaming_type", 0);
            }
        } else {
            intent.putExtra("data_reg_state", 1);
            intent.putExtra("data_rat", 0);
        }
        IntentUtil.sendBroadcast(this.mContext, intent);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISipTestManager
    public void onDataConnectionStateChanged(RegistrationManagerBase registrationManagerBase, Bundle bundle, int i, boolean z, int i2) {
        if (z) {
            bundle.putInt("networkType", 18);
            ImsIconManager imsIconManager = registrationManagerBase.getImsIconManager(i2);
            if (imsIconManager != null) {
                imsIconManager.updateRegistrationIcon();
                return;
            }
            return;
        }
        for (ImsRegistration imsRegistration : registrationManagerBase.getRegistrationInfo()) {
            if (imsRegistration.getImsProfile().getPdnType() == 11) {
                RegisterTask registerTaskByProfileId = registrationManagerBase.getRegisterTaskByProfileId(imsRegistration.getImsProfile().getId(), i2);
                if (registerTaskByProfileId != null) {
                    registerTaskByProfileId.setKeepPdn(false);
                    registrationManagerBase.onDeregistered(registerTaskByProfileId, SipErrorBase.OK, 0L, true, false);
                    return;
                }
                return;
            }
        }
    }
}
