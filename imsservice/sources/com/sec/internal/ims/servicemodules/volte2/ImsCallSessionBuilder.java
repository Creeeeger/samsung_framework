package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
class ImsCallSessionBuilder {
    private static final String LOG_TAG = "ImsCallSessionBuilder";
    ImsCallSessionManager mIcsm;
    private boolean mIsEmergency;
    private Mno mMno;
    private boolean mNeedToSetCallToPending;
    private IPdnController mPdnController;
    private int mPhoneId;
    private CallProfile mProfile;
    private ImsRegistration mRegInfo;
    private final IRegistrationManager mRegMan;
    private ImsCallSessionFactory mSessionFactory;
    private int mSubId;
    private ITelephonyManager mTelephonyManager;
    private IVolteServiceModuleInternal mVolteServiceModule;

    ImsCallSessionBuilder(ImsCallSessionManager imsCallSessionManager, IVolteServiceModuleInternal iVolteServiceModuleInternal, ITelephonyManager iTelephonyManager, IPdnController iPdnController, IRegistrationManager iRegistrationManager, Looper looper) {
        this.mIcsm = imsCallSessionManager;
        this.mVolteServiceModule = iVolteServiceModuleInternal;
        this.mTelephonyManager = iTelephonyManager;
        this.mPdnController = iPdnController;
        this.mSessionFactory = new ImsCallSessionFactory(iVolteServiceModuleInternal, looper);
        this.mRegMan = iRegistrationManager;
    }

    public ImsCallSession createSession(Context context, CallProfile callProfile, ImsRegistration imsRegistration) throws RemoteException {
        if (callProfile == null) {
            Log.e(LOG_TAG, "profile is null");
            throw new RemoteException("Null CallProfile.");
        }
        this.mProfile = callProfile;
        this.mRegInfo = imsRegistration;
        parseArguments();
        processNeedToSetCallToPending(context);
        processNetworkType();
        checkExistingCallSessions();
        processImpuAndCmc();
        ImsCallSession create = this.mSessionFactory.create(this.mProfile, this.mRegInfo, this.mNeedToSetCallToPending);
        if (create == null) {
            Log.e(LOG_TAG, "createSession: session create fail");
            throw new RemoteException();
        }
        if (this.mRegInfo == null && this.mNeedToSetCallToPending && this.mProfile.getCmcType() == 0 && !this.mProfile.isForceCSFB()) {
            setPendingOutgoingCall(create);
        } else if (this.mVolteServiceModule.getIsLteRetrying(this.mPhoneId)) {
            if (imsRegistration != null && 13 == imsRegistration.getRegiRat()) {
                this.mVolteServiceModule.setIsLteRetrying(this.mPhoneId, false);
                Log.i(LOG_TAG, "[createSession] Lte Retrying");
            } else {
                create.mRegistration = null;
                setPendingOutgoingCall(create);
            }
        }
        this.mIcsm.addCallSession(create);
        return create;
    }

    private void checkCanMakeCallSession() throws RemoteException {
        if (this.mRegInfo == null) {
            Log.e(LOG_TAG, "cannot make new call session. not registered");
            throw new RemoteException("Not registered.");
        }
        if (this.mMno == Mno.VZW && !this.mVolteServiceModule.isVowifiEnabled(this.mPhoneId) && this.mPdnController.isEpdgConnected(this.mPhoneId) && this.mProfile.getCallType() == 1) {
            Log.e(LOG_TAG, "cannot make new call session. currently in Registering");
            throw new RemoteException("Registering.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        if (r1.getCallState() == com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.HeldCall) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        if (com.sec.internal.helper.ImsCallUtil.isOngoingCallState(r1.getCallState()) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
    
        handleCallSessionDuringCall(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void checkExistingCallSessions() throws android.os.RemoteException {
        /*
            r4 = this;
            com.sec.ims.volte2.data.CallProfile r0 = r4.mProfile
            boolean r0 = r0.isConferenceCall()
            if (r0 == 0) goto L9
            return
        L9:
            com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager r0 = r4.mIcsm
            java.util.Map r0 = r0.getSessionMap()
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L17:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L63
            java.lang.Object r1 = r0.next()
            com.sec.internal.ims.servicemodules.volte2.ImsCallSession r1 = (com.sec.internal.ims.servicemodules.volte2.ImsCallSession) r1
            r4.checkOngoingCallForForkedSession(r1)
            com.sec.ims.ImsRegistration r2 = r4.mRegInfo
            if (r2 == 0) goto L4b
            if (r1 == 0) goto L4b
            com.sec.ims.ImsRegistration r2 = r1.getRegistration()
            if (r2 == 0) goto L4b
            com.sec.ims.ImsRegistration r2 = r4.mRegInfo
            int r2 = r2.getHandle()
            com.sec.ims.ImsRegistration r3 = r1.getRegistration()
            int r3 = r3.getHandle()
            if (r2 == r3) goto L4b
            java.lang.String r1 = com.sec.internal.ims.servicemodules.volte2.ImsCallSessionBuilder.LOG_TAG
            java.lang.String r2 = "skip different based regi"
            android.util.Log.i(r1, r2)
            goto L17
        L4b:
            if (r1 == 0) goto L17
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r2 = r1.getCallState()
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r3 = com.sec.internal.constants.ims.servicemodules.volte2.CallConstants.STATE.HeldCall
            if (r2 == r3) goto L17
            com.sec.internal.constants.ims.servicemodules.volte2.CallConstants$STATE r2 = r1.getCallState()
            boolean r2 = com.sec.internal.helper.ImsCallUtil.isOngoingCallState(r2)
            if (r2 == 0) goto L17
            r4.handleCallSessionDuringCall(r1)
            goto L17
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionBuilder.checkExistingCallSessions():void");
    }

    private void checkOngoingCallForForkedSession(ImsCallSession imsCallSession) throws RemoteException {
        ImsRegistration imsRegistration = this.mRegInfo;
        if (imsRegistration == null || !ImsCallUtil.isCmcPrimaryType(imsRegistration.getImsProfile().getCmcType()) || imsCallSession == null || imsCallSession.getRegistration() == null || this.mRegInfo.getPhoneId() == imsCallSession.getRegistration().getPhoneId() || ImsRegistry.getCmcAccountManager().isSupportDualSimCMC() || imsCallSession.getCallState() == CallConstants.STATE.Idle) {
            return;
        }
        Log.e(LOG_TAG, "cannot make a forking session. ongoing call exists on the other sim. callId: " + imsCallSession.getCallId() + ", sessionId: " + imsCallSession.getSessionId() + ", callState: " + imsCallSession.getCallState());
        throw new RemoteException();
    }

    private int getNetworkForCreateSession() {
        if (this.mIsEmergency) {
            ImsProfile imsProfile = this.mRegMan.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
            int e911PdnSelectionVowifi = imsProfile != null ? imsProfile.getE911PdnSelectionVowifi() : 0;
            String str = LOG_TAG;
            Log.i(str, "createSession: voiceNetwork = " + this.mTelephonyManager.getVoiceNetworkType(this.mSubId));
            if (e911PdnSelectionVowifi == 1 && this.mPdnController.isEpdgConnected(this.mPhoneId) && ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(this.mProfile.getEmergencyRat())) {
                Log.i(str, "createSession: use IMS PDN for WiFi e911 for e911pdnpolicy(IMSPDN_IF_IPC_RAT_EPDG).");
                return 11;
            }
            if (this.mMno.isKor() && !NetworkUtil.is3gppPsVoiceNetwork(this.mTelephonyManager.getVoiceNetworkType(this.mSubId)) && this.mTelephonyManager.getVoiceNetworkType(this.mSubId) != 0 && this.mProfile.getCallType() == 8) {
                Log.i(str, "createSession: use IMS PDN for KOR 3g psvt e911.");
                return 11;
            }
            if (!this.mMno.isAus() || e911PdnSelectionVowifi != 1 || !ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(this.mProfile.getEmergencyRat())) {
                return 15;
            }
            Log.i(str, "createSession: AU use IMS PDN for WiFi e911.");
            return 11;
        }
        ImsRegistration imsRegistration = this.mRegInfo;
        if (imsRegistration != null) {
            return imsRegistration.getNetworkType();
        }
        return this.mNeedToSetCallToPending ? 11 : -1;
    }

    private void handleCallSessionDuringCall(ImsCallSession imsCallSession) throws RemoteException {
        if (this.mIsEmergency && this.mMno == Mno.VZW) {
            try {
                Log.i(LOG_TAG, "release active call before E911 dialing");
                if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall) {
                    imsCallSession.reject(2);
                } else {
                    imsCallSession.terminate(5, true);
                }
                return;
            } catch (RemoteException e) {
                Log.e(LOG_TAG, "createSession: ", e);
                return;
            }
        }
        if (isAllowUssdDuringCall(this.mMno) && this.mProfile.getCallType() == 12) {
            Log.e(LOG_TAG, "Operator allow USSD during call");
            return;
        }
        ImsRegistration imsRegistration = this.mRegInfo;
        if (imsRegistration != null && ImsCallUtil.isCmcPrimaryType(imsRegistration.getImsProfile().getCmcType())) {
            Log.e(LOG_TAG, "allow CMC 2ndCall in PD");
            return;
        }
        if (this.mMno == Mno.BANGLALINK && this.mProfile.getCallType() != 12 && imsCallSession.getCallProfile().getCallType() == 12) {
            Log.e(LOG_TAG, "Allow calls when USSD session is ongoing");
            return;
        }
        Log.e(LOG_TAG, "cannot make new call session. another call already exist callId: " + imsCallSession.getCallId() + ", sessionId: " + imsCallSession.getSessionId() + ", callState: " + imsCallSession.getCallState());
        throw new RemoteException();
    }

    private void parseArguments() {
        int phoneId = this.mProfile.getPhoneId();
        this.mPhoneId = phoneId;
        ImsRegistration imsRegistration = this.mRegInfo;
        if (imsRegistration == null) {
            this.mMno = SimUtil.getSimMno(phoneId);
        } else {
            this.mMno = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        this.mSubId = SimUtil.getSubId(this.mPhoneId);
        this.mIsEmergency = this.mProfile.getCallType() == 7 || this.mProfile.getCallType() == 8;
        this.mNeedToSetCallToPending = this.mMno.isKor();
    }

    private void processImpuAndCmc() {
        ImsUri activeImpu = this.mVolteServiceModule.getActiveImpu();
        if (TextUtils.isEmpty(this.mProfile.getLineMsisdn()) && activeImpu != null) {
            String str = LOG_TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("createSession: originating from ");
            sb.append(IMSLog.checker(activeImpu + ""));
            Log.i(str, sb.toString());
            this.mProfile.setLineMsisdn(UriUtil.getMsisdnNumber(activeImpu));
            this.mProfile.setOriginatingUri(activeImpu);
        }
        ImsRegistration imsRegistration = this.mRegInfo;
        if (imsRegistration == null || imsRegistration.getImsProfile().getCmcType() <= 0) {
            return;
        }
        this.mVolteServiceModule.updateCmcP2pList(this.mRegInfo, this.mProfile);
    }

    private void processNeedToSetCallToPending(Context context) {
        if (this.mMno == Mno.VZW && ImsUtil.isCdmalessEnabled(context, this.mPhoneId) && this.mRegInfo == null && !this.mIsEmergency) {
            Log.e(LOG_TAG, "createSession: Cdmaless needToPendingCall");
            this.mNeedToSetCallToPending = true;
            return;
        }
        if (!this.mProfile.isForceCSFB()) {
            if (this.mProfile.getCmcType() != 2) {
                return;
            }
            ImsRegistration imsRegistration = this.mRegInfo;
            if (imsRegistration != null && imsRegistration.getImsProfile().getCmcType() == 2) {
                return;
            }
        }
        Log.i(LOG_TAG, "set needToPendingCall to true when SD or VoLTE is not registered");
        this.mNeedToSetCallToPending = true;
        this.mRegInfo = null;
    }

    private void processNetworkType() throws RemoteException {
        this.mProfile.setNetworkType(getNetworkForCreateSession());
        if (this.mRegInfo == null && this.mIsEmergency && this.mProfile.getNetworkType() == 11) {
            Log.i(LOG_TAG, "Need to pending E911 call over VoWifi using IMS PDN.");
            this.mNeedToSetCallToPending = true;
        }
        if (this.mNeedToSetCallToPending) {
            return;
        }
        if (!this.mIsEmergency) {
            checkCanMakeCallSession();
        }
        if (this.mProfile.getNetworkType() == 15 || this.mRegInfo != null) {
            return;
        }
        Log.e(LOG_TAG, "cannot make new call session. not registered");
        throw new RemoteException("Not registered.");
    }

    private void setPendingOutgoingCall(ImsCallSession imsCallSession) {
        Log.i(LOG_TAG, "try to regi for pending outgoing call session");
        imsCallSession.setPendingCall(true);
        this.mIcsm.setPendingOutgoingCall(imsCallSession);
    }

    private boolean isAllowUssdDuringCall(Mno mno) {
        return mno.isOneOf(Mno.ATT, Mno.TMOUS, Mno.DISH) || mno.isEur() || mno.isSea() || (mno.isSwa() && mno != Mno.MOBITEL_LK) || (mno.isMea() && mno != Mno.MTN_IRAN && mno != Mno.OOREDOO_QATAR) || mno.isOce() || mno.isJpn();
    }
}
