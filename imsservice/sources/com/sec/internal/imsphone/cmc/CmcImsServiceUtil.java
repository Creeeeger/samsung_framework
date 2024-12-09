package com.sec.internal.imsphone.cmc;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.telephony.ims.ImsCallProfile;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.PublishDialog;
import com.sec.ims.ImsRegistration;
import com.sec.ims.volte2.IImsCallSession;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.imsphone.DataTypeConvertor;
import com.sec.internal.imsphone.ImsCallSessionImpl;
import com.sec.internal.imsphone.MmTelFeatureImpl;
import com.sec.internal.imsphone.ServiceProfile;
import com.sec.internal.imsphone.cmc.ICmcConnectivityController;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class CmcImsServiceUtil {
    private static final String LOG_TAG = "CmcImsServiceUtil";
    ICmcConnectivityController mConnectivityController;
    MmTelFeatureImpl mMmTelFeatureImpl;
    IVolteServiceModule mVolteServiceModule;
    private final int P2P_CALL_SESSION_ID = 999;
    ServiceProfile mServiceProfile = null;
    private boolean mCmcReady = true;
    private int mCmcRegHandle = -1;
    private Map<Integer, IImsCallSession> mp2pSecSessionMap = new ConcurrentHashMap();

    public CmcImsServiceUtil(MmTelFeatureImpl mmTelFeatureImpl, ICmcConnectivityController iCmcConnectivityController, IVolteServiceModule iVolteServiceModule) {
        this.mMmTelFeatureImpl = null;
        this.mConnectivityController = null;
        this.mVolteServiceModule = null;
        this.mMmTelFeatureImpl = mmTelFeatureImpl;
        this.mConnectivityController = iCmcConnectivityController;
        this.mVolteServiceModule = iVolteServiceModule;
    }

    public void acquireP2pNetwork() {
        if (this.mConnectivityController.getDeviceType() == ICmcConnectivityController.DeviceType.PDevice) {
            Log.i(LOG_TAG, "MO call by PD. startCmcP2pConnection!");
        }
    }

    public void setServiceProfile(ServiceProfile serviceProfile) {
        this.mServiceProfile = serviceProfile;
    }

    private int getCmcRegHandle(int i, int i2) {
        IRegistrationGovernor registrationGovernor;
        for (ImsRegistration imsRegistration : ImsRegistry.getRegistrationManager().getRegistrationInfo()) {
            if (imsRegistration != null && ((imsRegistration.getPhoneId() == i || ImsRegistry.getCmcAccountManager().isSupportDualSimCMC()) && imsRegistration.hasVolteService() && imsRegistration.getImsProfile() != null && imsRegistration.getImsProfile().getCmcType() == i2)) {
                if (ImsCallUtil.isP2pPrimaryType(i2) && ((registrationGovernor = ImsRegistry.getRegistrationManager().getRegistrationGovernor(imsRegistration.getHandle())) == null || registrationGovernor.getP2pListSize(i2) == 0)) {
                    return -1;
                }
                return imsRegistration.getHandle();
            }
        }
        return -1;
    }

    private boolean setBoundSessionInfo(int i, ImsCallProfile imsCallProfile, CallProfile callProfile) {
        String str = LOG_TAG;
        Log.i(str, "setBoundSessionInfo()");
        Bundle bundle = imsCallProfile.mCallExtras.getBundle("android.telephony.ims.extra.OEM_EXTRAS");
        if (!this.mVolteServiceModule.getCmcServiceHelper().isCmcRegExist(i)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        if (bundle.containsKey("com.samsung.telephony.extra.CMC_BOUND_SESSION_ID")) {
            int i2 = bundle.getInt("com.samsung.telephony.extra.CMC_BOUND_SESSION_ID");
            Log.i(str, "setBoundSessionInfo(), boundSessionId: " + i2);
            if (i2 > 0) {
                callProfile.setCmcBoundSessionId(i2);
            }
        }
        if (!bundle.containsKey("com.samsung.telephony.extra.CMC_DIAL_FROM")) {
            return true;
        }
        String string = bundle.getString("com.samsung.telephony.extra.CMC_DIAL_FROM");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        callProfile.setLetteringText(string);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d1 A[Catch: RemoteException -> 0x0125, TryCatch #0 {RemoteException -> 0x0125, blocks: (B:3:0x000b, B:6:0x002b, B:8:0x003b, B:9:0x005e, B:11:0x007c, B:16:0x008a, B:18:0x0090, B:20:0x00a2, B:24:0x0122, B:29:0x0045, B:31:0x004f, B:32:0x0058, B:33:0x00a5, B:35:0x00af, B:38:0x00c9, B:40:0x00d1, B:41:0x00d9, B:43:0x00e0, B:44:0x00f8, B:46:0x0100, B:48:0x0108, B:49:0x00d7, B:50:0x00ba, B:53:0x0120), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e0 A[Catch: RemoteException -> 0x0125, TryCatch #0 {RemoteException -> 0x0125, blocks: (B:3:0x000b, B:6:0x002b, B:8:0x003b, B:9:0x005e, B:11:0x007c, B:16:0x008a, B:18:0x0090, B:20:0x00a2, B:24:0x0122, B:29:0x0045, B:31:0x004f, B:32:0x0058, B:33:0x00a5, B:35:0x00af, B:38:0x00c9, B:40:0x00d1, B:41:0x00d9, B:43:0x00e0, B:44:0x00f8, B:46:0x0100, B:48:0x0108, B:49:0x00d7, B:50:0x00ba, B:53:0x0120), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f8 A[Catch: RemoteException -> 0x0125, TryCatch #0 {RemoteException -> 0x0125, blocks: (B:3:0x000b, B:6:0x002b, B:8:0x003b, B:9:0x005e, B:11:0x007c, B:16:0x008a, B:18:0x0090, B:20:0x00a2, B:24:0x0122, B:29:0x0045, B:31:0x004f, B:32:0x0058, B:33:0x00a5, B:35:0x00af, B:38:0x00c9, B:40:0x00d1, B:41:0x00d9, B:43:0x00e0, B:44:0x00f8, B:46:0x0100, B:48:0x0108, B:49:0x00d7, B:50:0x00ba, B:53:0x0120), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d7 A[Catch: RemoteException -> 0x0125, TryCatch #0 {RemoteException -> 0x0125, blocks: (B:3:0x000b, B:6:0x002b, B:8:0x003b, B:9:0x005e, B:11:0x007c, B:16:0x008a, B:18:0x0090, B:20:0x00a2, B:24:0x0122, B:29:0x0045, B:31:0x004f, B:32:0x0058, B:33:0x00a5, B:35:0x00af, B:38:0x00c9, B:40:0x00d1, B:41:0x00d9, B:43:0x00e0, B:44:0x00f8, B:46:0x0100, B:48:0x0108, B:49:0x00d7, B:50:0x00ba, B:53:0x0120), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int prepareCallSession(int r7, android.telephony.ims.ImsCallProfile r8, com.sec.ims.volte2.data.CallProfile r9, int r10) throws android.os.RemoteException, java.lang.UnsupportedOperationException {
        /*
            Method dump skipped, instructions count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.cmc.CmcImsServiceUtil.prepareCallSession(int, android.telephony.ims.ImsCallProfile, com.sec.ims.volte2.data.CallProfile, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0196, code lost:
    
        if (r11.getCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE") != 18) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0198, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0199, code lost:
    
        r1.setEpdgState(r3);
        r10 = new com.sec.internal.imsphone.cmc.CmcCallSessionManager(r1, r9.mConnectivityController, r9.mVolteServiceModule);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a5, code lost:
    
        if (r0 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01a7, code lost:
    
        r12 = r9.mp2pSecSessionMap.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b5, code lost:
    
        if (r12.hasNext() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b7, code lost:
    
        r10.addP2pSession(r12.next().getValue());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.ims.internal.IImsCallSession createCallSession(int r10, android.telephony.ims.ImsCallProfile r11, com.sec.ims.volte2.data.CallProfile r12) throws android.os.RemoteException, java.lang.UnsupportedOperationException {
        /*
            Method dump skipped, instructions count: 547
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.cmc.CmcImsServiceUtil.createCallSession(int, android.telephony.ims.ImsCallProfile, com.sec.ims.volte2.data.CallProfile):com.android.ims.internal.IImsCallSession");
    }

    public void createP2pCallSession() throws RemoteException {
        boolean z;
        String str = LOG_TAG;
        Log.i(str, "createP2pCallSession()");
        boolean z2 = false;
        this.mConnectivityController.needP2pCallSession(false);
        int p2pCallSessionId = this.mConnectivityController.getP2pCallSessionId();
        Log.i(str, "p2pSessionId: " + p2pCallSessionId);
        if (p2pCallSessionId == -1) {
            Log.e(str, "sub(wifi-direct) session is already created, just return");
            return;
        }
        ImsCallSessionImpl callSession = this.mMmTelFeatureImpl.getCallSession(p2pCallSessionId);
        this.mConnectivityController.setP2pCallSessionId(-1);
        IVolteServiceModule iVolteServiceModule = this.mVolteServiceModule;
        if (iVolteServiceModule != null) {
            IImsCallSession foregroundSession = iVolteServiceModule.getForegroundSession();
            if (foregroundSession != null) {
                Log.e(str, "foreSession.getCmcType(): " + foregroundSession.getCmcType());
                Log.e(str, "pdcall is already connected. don't create subcallsession, just return");
                return;
            }
            if (this.mVolteServiceModule.getExtMoCall()) {
                Log.e(str, "the call is MOcall. don't create subcallsession, just return");
                return;
            }
        }
        if (this.mConnectivityController.getP2pDeviceType() == ICmcConnectivityController.DeviceType.None) {
            Log.e(str, "Not support p2p");
            return;
        }
        if (callSession == null) {
            Log.e(str, "sessionImpl is null");
            return;
        }
        ImsCallProfile callProfile = callSession.getCallProfile();
        CallProfile convertToSecCallProfile = DataTypeConvertor.convertToSecCallProfile(SimUtil.getActiveDataPhoneId(), callSession.getCallProfile(), false);
        Bundle bundle = callProfile.mCallExtras.getBundle("android.telephony.ims.extra.OEM_EXTRAS");
        if (bundle != null) {
            if (bundle.containsKey("com.samsung.telephony.extra.CMC_BOUND_SESSION_ID")) {
                int i = bundle.getInt("com.samsung.telephony.extra.CMC_BOUND_SESSION_ID");
                Log.e(str, "boundSessionId: " + i);
                if (i > 0) {
                    convertToSecCallProfile.setCmcBoundSessionId(i);
                }
            }
            if (bundle.containsKey("com.samsung.telephony.extra.CMC_DIAL_FROM")) {
                String string = bundle.getString("com.samsung.telephony.extra.CMC_DIAL_FROM");
                if (!TextUtils.isEmpty(string)) {
                    convertToSecCallProfile.setLetteringText(string);
                }
            }
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        if (this.mVolteServiceModule != null) {
            ICmcConnectivityController.DeviceType p2pDeviceType = this.mConnectivityController.getP2pDeviceType();
            if (p2pDeviceType == ICmcConnectivityController.DeviceType.PDevice) {
                int cmcRegHandle = getCmcRegHandle(convertToSecCallProfile.getPhoneId(), 7);
                if (cmcRegHandle != -1) {
                    Log.i(str, "create session on P2P-SD");
                    concurrentHashMap.put(Integer.valueOf(cmcRegHandle), this.mVolteServiceModule.createSession(convertToSecCallProfile, cmcRegHandle));
                } else {
                    Log.i(str, "not found P2P-SD");
                }
            } else if (p2pDeviceType == ICmcConnectivityController.DeviceType.SDevice) {
                int cmcRegHandle2 = getCmcRegHandle(convertToSecCallProfile.getPhoneId(), 8);
                if (cmcRegHandle2 != -1) {
                    Log.i(str, "create session on P2P-SD");
                    concurrentHashMap.put(Integer.valueOf(cmcRegHandle2), this.mVolteServiceModule.createSession(convertToSecCallProfile, cmcRegHandle2));
                } else {
                    Log.i(str, "not found P2P-SD");
                }
            } else {
                Log.e(str, "not found P2P device, exception case");
            }
        }
        Log.i(str, "p2pSecSessionMap size: " + concurrentHashMap.size());
        Iterator it = concurrentHashMap.entrySet().iterator();
        while (true) {
            boolean z3 = true;
            if (!it.hasNext()) {
                break;
            }
            IImsCallSession iImsCallSession = (IImsCallSession) ((Map.Entry) it.next()).getValue();
            if (callProfile.getCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE") != 18) {
                z3 = false;
            }
            iImsCallSession.setEpdgState(z3);
        }
        if (concurrentHashMap.size() > 0) {
            int i2 = 1;
            while (true) {
                if (i2 > 5) {
                    z = false;
                    break;
                } else {
                    if (getCmcRegHandle(convertToSecCallProfile.getPhoneId(), i2) != -1) {
                        z = true;
                        break;
                    }
                    i2 += 2;
                }
            }
            Log.i(LOG_TAG, "existMainSession: " + z);
            CmcCallSessionManager cmcCallSessionManager = callSession.getCmcCallSessionManager();
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (z2) {
                    cmcCallSessionManager.addP2pSession((IImsCallSession) entry.getValue());
                } else if (!z) {
                    cmcCallSessionManager.setMainSession((IImsCallSession) entry.getValue());
                    z2 = true;
                } else {
                    cmcCallSessionManager.addP2pSession((IImsCallSession) entry.getValue());
                }
            }
            Log.i(LOG_TAG, "mSubSessionList size: " + cmcCallSessionManager.getP2pSessionSize());
            callSession.initP2pImpl();
            this.mMmTelFeatureImpl.setCallSession(callSession.getCallIdInt(), callSession);
            cmcCallSessionManager.startP2pSessions(z2);
        }
    }

    private int getCmcPhoneId(IImsCallSession iImsCallSession) throws RemoteException {
        int cmcLineSlotIndex;
        if (ImsRegistry.getCmcAccountManager().isSupportDualSimCMC()) {
            cmcLineSlotIndex = iImsCallSession.getCallProfile().getCmcEdCallSlot();
            if (cmcLineSlotIndex == -1) {
                return 0;
            }
        } else {
            cmcLineSlotIndex = ImsRegistry.getRegistrationManager().getCmcLineSlotIndex();
            if (cmcLineSlotIndex == -1) {
                return 0;
            }
        }
        return cmcLineSlotIndex;
    }

    public void getPendingCallSession(int i, ImsCallProfile imsCallProfile, IImsCallSession iImsCallSession) throws RemoteException {
        String str = LOG_TAG;
        Log.i(str, "getPendingCallSession()");
        int i2 = 1;
        if (this.mVolteServiceModule.getCmcServiceHelper().isCmcRegExist(i)) {
            Bundle bundle = new Bundle();
            int cmcType = iImsCallSession.getCmcType();
            int sessionId = iImsCallSession.getSessionId();
            if (!ImsCallUtil.isCmcPrimaryType(cmcType)) {
                i2 = ImsCallUtil.isCmcSecondaryType(cmcType) ? 2 : cmcType;
            }
            Log.i(str, "getPendingCallSession(), SEM_EXTRA_CMC_TYPE: (" + iImsCallSession.getCmcType() + " -> " + i2 + ")");
            bundle.putInt("com.samsung.telephony.extra.CMC_SESSION_ID", sessionId);
            bundle.putInt("com.samsung.telephony.extra.CMC_TYPE", i2);
            if (ImsCallUtil.isCmcPrimaryType(i2)) {
                bundle.putInt("com.samsung.telephony.extra.CMC_PHONE_ID", getCmcPhoneId(iImsCallSession));
            } else if (ImsCallUtil.isCmcSecondaryType(i2) && ImsRegistry.getCmcAccountManager().isSupportDualSimCMC()) {
                Log.i(str, "put CMC_EXTERNAL_CALL_SLOT: " + iImsCallSession.getCallProfile().getCmcEdCallSlot());
                bundle.putInt("com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT", iImsCallSession.getCallProfile().getCmcEdCallSlot());
            }
            imsCallProfile.mCallExtras.putBundle("android.telephony.ims.extra.OEM_EXTRAS", bundle);
            return;
        }
        if (this.mConnectivityController.isEnabledWifiDirectFeature() && this.mConnectivityController.getP2pDeviceType() == ICmcConnectivityController.DeviceType.PDevice) {
            Bundle bundle2 = new Bundle();
            int sessionId2 = iImsCallSession.getSessionId();
            Log.i(str, "getPendingCallSession(), SEM_EXTRA_CMC_TYPE: (" + iImsCallSession.getCmcType() + " -> 1)");
            bundle2.putInt("com.samsung.telephony.extra.CMC_SESSION_ID", sessionId2);
            bundle2.putInt("com.samsung.telephony.extra.CMC_TYPE", 1);
            imsCallProfile.mCallExtras.putBundle("android.telephony.ims.extra.OEM_EXTRAS", bundle2);
        }
    }

    public void sendPublishDialog(int i, PublishDialog publishDialog) throws RemoteException {
        int i2 = this.mConnectivityController.isEnabledWifiDirectFeature() ? 7 : 5;
        Log.i(LOG_TAG, "sendPublishDialog() callCnt: " + publishDialog.getCallCount());
        for (int i3 = 1; i3 <= i2; i3 += 2) {
            this.mVolteServiceModule.getCmcServiceHelper().sendPublishDialog(i, publishDialog, i3);
        }
    }

    public void postProcessForCmcIncomingCall(int i, Intent intent, IImsCallSession iImsCallSession) {
        try {
            if (this.mVolteServiceModule.getCmcServiceHelper().isCmcRegExist(i)) {
                CallProfile callProfile = iImsCallSession.getCallProfile();
                int cmcType = iImsCallSession.getCmcType();
                int sessionId = iImsCallSession.getSessionId();
                if (ImsCallUtil.isCmcPrimaryType(cmcType)) {
                    cmcType = 1;
                } else if (ImsCallUtil.isCmcSecondaryType(cmcType)) {
                    cmcType = 2;
                }
                String str = LOG_TAG;
                Log.i(str, "postProcessForCmcIncomingCall(), SEM_EXTRA_CMC_TYPE: (" + iImsCallSession.getCmcType() + " -> " + cmcType + ")");
                intent.putExtra("com.samsung.telephony.extra.CMC_TYPE", cmcType);
                intent.putExtra("com.samsung.telephony.extra.CMC_SESSION_ID", sessionId);
                if (cmcType == 1) {
                    intent.putExtra("com.samsung.telephony.extra.CMC_DIAL_TO", callProfile.getDialingNumber());
                    if (!TextUtils.isEmpty(callProfile.getReplaceSipCallId())) {
                        intent.putExtra("com.samsung.telephony.extra.CMC_REPLACE_CALL_ID", callProfile.getReplaceSipCallId());
                        intent.putExtra("com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD", callProfile.getCmcDeviceId());
                    } else if (!TextUtils.isEmpty(callProfile.getCmcDeviceId())) {
                        intent.putExtra("com.samsung.telephony.extra.CMC_DEVICE_ID", callProfile.getCmcDeviceId());
                    }
                    intent.putExtra("com.samsung.telephony.extra.CMC_PHONE_ID", getCmcPhoneId(iImsCallSession));
                } else if (ImsRegistry.getCmcAccountManager().isSupportDualSimCMC()) {
                    Log.i(str, "postProcessForCmcIncomingCall(), cmcEdCallSlot:" + callProfile.getCmcEdCallSlot());
                    intent.putExtra("com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT", callProfile.getCmcEdCallSlot());
                }
            }
            if (this.mConnectivityController.isEnabledWifiDirectFeature() && iImsCallSession.getCmcType() == 0 && this.mConnectivityController.getP2pDeviceType() == ICmcConnectivityController.DeviceType.None && getCmcRegHandle(i, 7) == -1) {
                Log.e(LOG_TAG, "onIncomingCall: need wifi-direct connection, startCmcP2pConnection!");
                this.mConnectivityController.setP2pPD();
                this.mConnectivityController.setCmcActivation(true);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
