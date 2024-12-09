package com.sec.internal.ims.core;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.util.Log;
import com.sec.internal.constants.ims.core.LinkPropertiesChangedEvent;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.LinkPropertiesWrapper;
import com.sec.internal.ims.core.PdnController;
import com.sec.internal.interfaces.ims.core.PdnEventListener;
import com.sec.internal.log.IMSLog;
import java.net.InetAddress;
import java.util.List;

/* loaded from: classes.dex */
public class NetworkCallback extends ConnectivityManager.NetworkCallback {
    static final int LOCAL_IP_CHANGED = 1;
    static final int LOCAL_STACKED_IP_CHANGED = 2;
    private static final String LOG_TAG = PdnController.class.getSimpleName();
    final PdnEventListener mListener;
    final int mNetworkType;
    private final PdnController mPdnController;
    int mPhoneId;
    Network mNetwork = null;
    LinkPropertiesWrapper mLinkProperties = new LinkPropertiesWrapper();
    boolean mPdnConnected = false;
    boolean mDisconnectRequested = false;
    boolean isSuspended = false;

    public NetworkCallback(PdnController pdnController, int i, PdnEventListener pdnEventListener, int i2) {
        this.mPdnController = pdnController;
        this.mListener = pdnEventListener;
        this.mNetworkType = i;
        this.mPhoneId = i2;
    }

    public void setDisconnectRequested() {
        this.mDisconnectRequested = true;
    }

    public boolean isDisconnectRequested() {
        return this.mDisconnectRequested;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        if (SimUtil.getSimMno(this.mPhoneId).isRjil() && this.mNetworkType == 15) {
            PdnController pdnController = this.mPdnController;
            if (pdnController.mIsDisconnecting && !pdnController.isNetworkRequested(this.mListener)) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "ignore onAvailable: network " + network);
                return;
            }
        }
        this.mPdnController.obtainMessage(108, this.mNetworkType, this.mPhoneId, new PdnController.PdnConnectedEvent(this.mListener, network)).sendToTarget();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onLost: network " + network + " " + this.mPdnController);
        this.mPdnController.obtainMessage(103, this.mNetworkType, this.mPhoneId, this.mListener).sendToTarget();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLosing(Network network, int i) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onLosing: network " + network + " maxMsToLive " + i);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        String str = LOG_TAG;
        IMSLog.s(str, this.mPhoneId, "onLinkPropertiesChanged: network " + network + " lp " + linkProperties + " old " + this.mLinkProperties);
        if (SimUtil.getSimMno(this.mPhoneId).isKor()) {
            synchronized (this.mPdnController.mNetworkCallbacks) {
                if (this.mPdnController.mNetworkCallbacks.isEmpty()) {
                    Log.i(str, "onLinkPropertiesChanged: No callback exists");
                    return;
                }
                NetworkCallback networkCallback = this.mPdnController.mNetworkCallbacks.get(this.mListener);
                if (networkCallback == null || networkCallback.mNetwork == null) {
                    Log.i(str, "onLinkPropertiesChanged: null callback");
                    return;
                }
            }
        }
        this.mPdnController.obtainMessage(111, this.mNetworkType, this.mPhoneId, new LinkPropertiesChangedEvent(network, this.mListener, linkProperties)).sendToTarget();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "onCapabilitiesChanged: network " + network + " networkCapabilities " + networkCapabilities);
        if (networkCapabilities.hasCapability(21)) {
            if (this.isSuspended) {
                IMSLog.i(str, this.mPhoneId, "resume!");
                this.isSuspended = false;
                this.mListener.onResumed(this.mNetworkType);
                return;
            }
            return;
        }
        if (this.isSuspended) {
            return;
        }
        IMSLog.i(str, this.mPhoneId, "suspend!");
        this.isSuspended = true;
        this.mListener.onSuspended(this.mNetworkType);
    }

    int isLocalIpChanged(LinkPropertiesWrapper linkPropertiesWrapper) {
        List<InetAddress> filterAddresses = this.mPdnController.filterAddresses(this.mLinkProperties.getAddresses());
        List<InetAddress> filterAddresses2 = this.mPdnController.filterAddresses(linkPropertiesWrapper.getAddresses());
        if (filterAddresses == null || filterAddresses2 == null || (filterAddresses.isEmpty() && filterAddresses2.isEmpty())) {
            return 0;
        }
        if (!this.mLinkProperties.isIdenticalInterfaceName(linkPropertiesWrapper) || filterAddresses.size() != filterAddresses2.size() || !filterAddresses.containsAll(filterAddresses2)) {
            return 1;
        }
        List<InetAddress> filterAddresses3 = this.mPdnController.filterAddresses(this.mLinkProperties.getAllAddresses());
        List<InetAddress> filterAddresses4 = this.mPdnController.filterAddresses(linkPropertiesWrapper.getAllAddresses());
        return (filterAddresses3.size() == filterAddresses4.size() && filterAddresses3.containsAll(filterAddresses4)) ? 0 : 2;
    }

    boolean isPcscfAddressChanged(LinkPropertiesWrapper linkPropertiesWrapper) {
        List<InetAddress> filterAddresses = this.mPdnController.filterAddresses(this.mLinkProperties.getPcscfServers());
        List<InetAddress> filterAddresses2 = this.mPdnController.filterAddresses(linkPropertiesWrapper.getPcscfServers());
        if (filterAddresses == null || filterAddresses2 == null || filterAddresses2.isEmpty()) {
            return false;
        }
        return (this.mLinkProperties.isIdenticalInterfaceName(linkPropertiesWrapper) && filterAddresses.size() == filterAddresses2.size() && filterAddresses.containsAll(filterAddresses2)) ? false : true;
    }
}
