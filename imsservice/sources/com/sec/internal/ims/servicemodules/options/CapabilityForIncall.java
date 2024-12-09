package com.sec.internal.ims.servicemodules.options;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.imsservice.ICall;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class CapabilityForIncall extends Handler {
    private static final String LOG_TAG = "CapabilityForIncall";
    public static final String NAME = CapabilityForIncall.class.getSimpleName();
    private CapabilityUtil mCapabilityUtil;
    IRegistrationManager mRegMan;
    private CapabilityDiscoveryModule mServiceModule;
    private String mRcsProfile = "";
    protected boolean mIsNeedUpdateCallState = false;
    protected Map<Integer, List<ICall>> mActiveCallLists = new HashMap();

    public CapabilityForIncall(CapabilityDiscoveryModule capabilityDiscoveryModule, CapabilityUtil capabilityUtil, IRegistrationManager iRegistrationManager) {
        this.mRegMan = null;
        this.mServiceModule = null;
        this.mCapabilityUtil = null;
        this.mServiceModule = capabilityDiscoveryModule;
        this.mCapabilityUtil = capabilityUtil;
        this.mRegMan = iRegistrationManager;
    }

    public void processCallStateChanged(final int i, final CopyOnWriteArrayList<ICall> copyOnWriteArrayList, final Map<Integer, ImsRegistration> map) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityForIncall$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CapabilityForIncall.this.lambda$processCallStateChanged$0(copyOnWriteArrayList, i, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processCallStateChanged$0(CopyOnWriteArrayList copyOnWriteArrayList, int i, Map map) {
        ICall iCall;
        int checkConnectedCalls = checkConnectedCalls(copyOnWriteArrayList);
        List<ICall> activeCalls = setActiveCalls(i);
        int checkPrevConnectedCalls = checkPrevConnectedCalls(activeCalls);
        IMSLog.i(LOG_TAG, i, "processCallStateChanged: nConnectedCalls=" + checkConnectedCalls + " nPrevConnectedCalls=" + checkPrevConnectedCalls);
        Capabilities ownCapabilitiesBase = this.mServiceModule.getOwnCapabilitiesBase(i);
        CapabilityConfig capabilityConfig = this.mServiceModule.getCapabilityConfig(i);
        this.mRcsProfile = capabilityConfig != null ? capabilityConfig.getRcsProfile() : "";
        if (capabilityConfig != null && ((!capabilityConfig.usePresence() || ImsProfile.isRcsUpProfile(this.mRcsProfile)) && map.containsKey(Integer.valueOf(i)) && ownCapabilitiesBase.hasAnyFeature(Capabilities.FEATURE_CALL_SERVICE))) {
            long feature = ownCapabilitiesBase.getFeature();
            String extFeatureAsJoinedString = ownCapabilitiesBase.getExtFeatureAsJoinedString();
            long filterFeaturesWithService = this.mCapabilityUtil.filterFeaturesWithService(feature, this.mRegMan.getServiceForNetwork(((ImsRegistration) map.get(Integer.valueOf(i))).getImsProfile(), ((ImsRegistration) map.get(Integer.valueOf(i))).getRegiRat(), false, i), this.mRegMan.getCurrentNetworkByPhoneId(i), i);
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ICall iCall2 = (ICall) it.next();
                ICall call = getCall(activeCalls, iCall2.getNumber());
                IMSLog.s(LOG_TAG, "prev: " + call + ", current: " + iCall2);
                if (call == null) {
                    if (iCall2.isConnected() && checkConnectedCalls == 1) {
                        setIncallFeature(i, iCall2.getNumber(), filterFeaturesWithService, extFeatureAsJoinedString, true);
                    } else if (checkConnectedCalls > 1) {
                        setIncallFeature(i, iCall2.getNumber(), filterFeaturesWithService, extFeatureAsJoinedString, false);
                    }
                } else {
                    if ((!call.isConnected() || checkPrevConnectedCalls > 1) && iCall2.isConnected() && checkConnectedCalls == 1) {
                        iCall = call;
                        setIncallFeature(i, iCall2.getNumber(), filterFeaturesWithService, extFeatureAsJoinedString, true);
                    } else {
                        iCall = call;
                        if ((iCall.isConnected() && checkPrevConnectedCalls == 1 && (!iCall2.isConnected() || checkConnectedCalls > 1)) || (!iCall.isConnected() && iCall2.isConnected() && checkConnectedCalls > 1)) {
                            setIncallFeature(i, iCall2.getNumber(), filterFeaturesWithService, extFeatureAsJoinedString, false);
                        }
                    }
                    activeCalls.remove(iCall);
                }
            }
            for (ICall iCall3 : activeCalls) {
                IMSLog.s(LOG_TAG, "Disconnected call: " + iCall3);
                if (iCall3.isConnected() && checkPrevConnectedCalls == 1) {
                    this.mServiceModule.setCallNumber(i, null);
                    this.mServiceModule.updateOwnCapabilities(i);
                    this.mServiceModule.setOwnCapabilities(i, false);
                }
            }
        }
        this.mActiveCallLists.put(Integer.valueOf(i), copyOnWriteArrayList);
    }

    private int checkConnectedCalls(CopyOnWriteArrayList<ICall> copyOnWriteArrayList) {
        Iterator<ICall> it = copyOnWriteArrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isConnected()) {
                i++;
            }
        }
        return i;
    }

    private int checkPrevConnectedCalls(List<ICall> list) {
        Iterator<ICall> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isConnected()) {
                i++;
            }
        }
        return i;
    }

    private List<ICall> setActiveCalls(int i) {
        return this.mActiveCallLists.containsKey(Integer.valueOf(i)) ? this.mActiveCallLists.get(Integer.valueOf(i)) : new ArrayList();
    }

    public void processCallStateChangedOnDeregi(final int i, final CopyOnWriteArrayList<ICall> copyOnWriteArrayList) {
        post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityForIncall$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CapabilityForIncall.this.lambda$processCallStateChangedOnDeregi$1(copyOnWriteArrayList, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processCallStateChangedOnDeregi$1(CopyOnWriteArrayList copyOnWriteArrayList, int i) {
        Log.i(LOG_TAG, "mImsRegInfo: null");
        int checkConnectedCalls = checkConnectedCalls(copyOnWriteArrayList);
        List<ICall> activeCalls = setActiveCalls(i);
        int checkPrevConnectedCalls = checkPrevConnectedCalls(activeCalls);
        this.mIsNeedUpdateCallState = true;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            ICall iCall = (ICall) it.next();
            ICall call = getCall(activeCalls, iCall.getNumber());
            if (call == null) {
                if (iCall.isConnected() && checkConnectedCalls == 1) {
                    this.mServiceModule.setCallNumber(i, iCall.getNumber());
                }
            } else {
                if ((!call.isConnected() || checkPrevConnectedCalls > 1) && iCall.isConnected() && checkConnectedCalls == 1) {
                    this.mServiceModule.setCallNumber(i, iCall.getNumber());
                } else if ((call.isConnected() && checkPrevConnectedCalls == 1 && (!iCall.isConnected() || checkConnectedCalls > 1)) || (!call.isConnected() && iCall.isConnected() && checkConnectedCalls > 1)) {
                    this.mServiceModule.setCallNumber(i, null);
                }
                activeCalls.remove(call);
            }
        }
        Iterator<ICall> it2 = activeCalls.iterator();
        while (it2.hasNext()) {
            if (it2.next().isConnected() && checkPrevConnectedCalls == 1) {
                this.mServiceModule.setCallNumber(i, null);
            }
        }
        this.mActiveCallLists.put(Integer.valueOf(i), copyOnWriteArrayList);
    }

    ICall getCall(List<ICall> list, String str) {
        for (ICall iCall : list) {
            if (TextUtils.equals(iCall.getNumber(), str)) {
                return iCall;
            }
        }
        return null;
    }

    void setIncallFeature(int i, String str, long j, String str2, boolean z) {
        IMSLog.i(LOG_TAG, i, "SetIncallFeature");
        if (z) {
            Log.i(LOG_TAG, "Activate content share features.");
            this.mServiceModule.setCallNumber(i, str);
            this.mServiceModule.exchangeCapabilities(str, j, i, str2);
            this.mServiceModule.updateOwnCapabilities(i);
            this.mServiceModule.setOwnCapabilities(i, false);
            return;
        }
        Log.i(LOG_TAG, "Deactivate content share features.");
        this.mServiceModule.setCallNumber(i, null);
        this.mServiceModule.exchangeCapabilities(str, j & (~Capabilities.FEATURE_VSH) & (~Capabilities.FEATURE_ISH) & (~Capabilities.FEATURE_ENRICHED_SHARED_MAP) & (~Capabilities.FEATURE_ENRICHED_SHARED_SKETCH), i, str2);
        this.mServiceModule.updateOwnCapabilities(i);
        this.mServiceModule.setOwnCapabilities(i, false);
    }

    public void exchangeCapabilitiesForVSH(int i, boolean z, Map<Integer, ImsRegistration> map) {
        if (this.mRegMan == null || !map.containsKey(Integer.valueOf(i))) {
            Log.i(LOG_TAG, "exchangeCapabilitiesForVSH: mRegMan or mImsRegInfo is null ");
            return;
        }
        int currentNetworkByPhoneId = this.mRegMan.getCurrentNetworkByPhoneId(i);
        int i2 = 0;
        Set<String> serviceForNetwork = this.mRegMan.getServiceForNetwork(map.get(Integer.valueOf(i)).getImsProfile(), map.get(Integer.valueOf(i)).getRegiRat(), false, i);
        Capabilities ownCapabilities = this.mServiceModule.getOwnCapabilities(i);
        if (ownCapabilities == null) {
            return;
        }
        long filterFeaturesWithService = this.mCapabilityUtil.filterFeaturesWithService(ownCapabilities.getFeature(), serviceForNetwork, currentNetworkByPhoneId, i);
        String extFeatureAsJoinedString = ownCapabilities.getExtFeatureAsJoinedString();
        if (this.mIsNeedUpdateCallState) {
            this.mIsNeedUpdateCallState = false;
        }
        List<ICall> arrayList = new ArrayList<>();
        if (this.mActiveCallLists.containsKey(Integer.valueOf(i))) {
            arrayList = this.mActiveCallLists.get(Integer.valueOf(i));
        }
        ICall iCall = null;
        for (ICall iCall2 : arrayList) {
            if (iCall2.isConnected()) {
                i2++;
                iCall = iCall2;
            }
        }
        if (i2 != 1) {
            return;
        }
        if (z) {
            this.mServiceModule.exchangeCapabilities(iCall.getNumber(), filterFeaturesWithService, i, extFeatureAsJoinedString);
        } else {
            this.mServiceModule.exchangeCapabilities(iCall.getNumber(), filterFeaturesWithService & (~Capabilities.FEATURE_VSH), i, extFeatureAsJoinedString);
        }
    }

    public void triggerCapexForIncallRegiDeregi(int i, ImsRegistration imsRegistration) {
        if (imsRegistration.hasService("options") && this.mActiveCallLists.containsKey(Integer.valueOf(i)) && this.mActiveCallLists.get(Integer.valueOf(i)).size() > 0) {
            List<ICall> list = this.mActiveCallLists.get(Integer.valueOf(i));
            UriGenerator uriGenerator = this.mServiceModule.getUriGenerator();
            if (uriGenerator != null) {
                for (ICall iCall : list) {
                    if (iCall.isConnected()) {
                        this.mServiceModule.requestCapabilityExchange(uriGenerator.getNormalizedUri(iCall.getNumber(), true), CapabilityConstants.RequestType.REQUEST_TYPE_NONE, true, i, 0);
                    }
                }
            }
        }
    }
}
