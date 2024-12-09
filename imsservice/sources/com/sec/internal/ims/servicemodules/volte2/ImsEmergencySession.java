package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.net.Network;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.IImsCallSessionEventListener;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.mdmi.MdmiServiceModule;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.volte2.data.CallSetupData;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.core.handler.IVolteServiceInterface;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class ImsEmergencySession extends ImsCallSession {
    private String LOG_TAG;
    private int mE911RegiTime;

    protected int getLte911Fail() {
        return DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_T_LTE_911_FAIL, 20, getPhoneId()).intValue();
    }

    protected int getWlan911Fail() {
        return DmConfigHelper.readInt(this.mContext, ConfigConstants.ConfigPath.OMADM_TWLAN_911_CALLFAIL_TIMER, 10, getPhoneId()).intValue();
    }

    protected int getLte911FailFromEmergencyProfile() {
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile == null) {
            Log.i(this.LOG_TAG, "[ReadyToCall] EmergencyProfile is null!");
            return 10;
        }
        Log.i(this.LOG_TAG, "[ReadyToCall] getLte911FailFromEmergencyProfile=" + imsProfile.getLte911Fail());
        return imsProfile.getLte911Fail();
    }

    protected int getE911InviteTo18xTime() {
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile == null) {
            Log.i(this.LOG_TAG, "[ReadyToCall] EmergencyProfile is null!");
            return 0;
        }
        Log.i(this.LOG_TAG, "[ReadyToCall] getE911InviteTo18xTimeFromEmergencyProfile=" + imsProfile.getE911InviteTo18x());
        return imsProfile.getE911InviteTo18x();
    }

    protected int getE911RegiTime() {
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile == null) {
            Log.i(this.LOG_TAG, "[ReadyToCall] EmergencyProfile is null!");
            return 0;
        }
        Log.i(this.LOG_TAG, "[ReadyToCall] getE911RegiTimeFromEmergencyProfile=" + imsProfile.getE911RegiTime());
        return imsProfile.getE911RegiTime();
    }

    protected boolean isEmergencyAvailable(Mno mno) {
        boolean z;
        int i;
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile != null) {
            if (ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(this.mCallProfile.getEmergencyRat())) {
                i = 18;
            } else {
                i = (!ImsConstants.EmergencyRat.LTE.equalsIgnoreCase(this.mCallProfile.getEmergencyRat()) && ImsConstants.EmergencyRat.NR.equalsIgnoreCase(this.mCallProfile.getEmergencyRat())) ? 20 : 13;
            }
            Log.e(this.LOG_TAG, "networktype : " + i);
            if (!imsProfile.hasService("mmtel", i)) {
                Log.e(this.LOG_TAG, "emergency service unavailable in current RAT");
            } else {
                z = true;
                if (mno.isOneOf(Mno.H3G_SE, Mno.H3G, Mno.TELIA_SWE) && ImsRegistry.getPdnController().getVopsIndication(this.mPhoneId) == VoPsIndication.NOT_SUPPORTED && NetworkUtil.is3gppPsVoiceNetwork(TelephonyManagerWrapper.getInstance(this.mContext).getDataNetworkType(SimUtil.getSubId(this.mPhoneId)))) {
                    Log.e(this.LOG_TAG, "if VoPS is not supported, do CSFB");
                    z = false;
                }
                if (mno == Mno.DOCOMO || !this.mRegistrationManager.isEmergencyCallProhibited(this.mPhoneId)) {
                    return z;
                }
                Log.e(this.LOG_TAG, "if DCM get 503 error in regi, do CSFB");
                return false;
            }
        }
        z = false;
        if (mno.isOneOf(Mno.H3G_SE, Mno.H3G, Mno.TELIA_SWE)) {
            Log.e(this.LOG_TAG, "if VoPS is not supported, do CSFB");
            z = false;
        }
        if (mno == Mno.DOCOMO) {
        }
        return z;
    }

    public class EmergencyCallStateMachine extends CallStateMachine {
        private static final int EPDN_COUNT_CHECK = 5;
        private static final int EVENT_EMERGENCY_REGISTERED = 911;
        private int epdnFailCount;
        private boolean mEmergencyRegistered;
        private boolean mHasEstablished;
        private boolean mNextPcscfChangedWorking;
        private boolean mRequstedStopPDN;
        private boolean mStartDelayed;
        protected EmergencyCallStateMachine mThisEsm;

        protected EmergencyCallStateMachine(Context context, ImsCallSession imsCallSession, ImsRegistration imsRegistration, IVolteServiceModuleInternal iVolteServiceModuleInternal, Mno mno, IVolteServiceInterface iVolteServiceInterface, RemoteCallbackList<IImsCallSessionEventListener> remoteCallbackList, IRegistrationManager iRegistrationManager, IImsMediaController iImsMediaController, String str, Looper looper) {
            super(context, imsCallSession, imsRegistration, iVolteServiceModuleInternal, mno, iVolteServiceInterface, remoteCallbackList, iRegistrationManager, iImsMediaController, str, looper);
            this.mHasEstablished = false;
            this.mRequstedStopPDN = false;
            this.mEmergencyRegistered = false;
            this.mNextPcscfChangedWorking = false;
            this.mStartDelayed = false;
            this.epdnFailCount = 1;
            this.mThisEsm = this;
            this.mReadyToCall = new ReadyToCall(this);
            this.mOutgoingCall = new OutgoingCall(this);
            this.mAlertingCall = new AlertingCall(this);
            this.mInCall = new InCall(this);
            this.mEndingCall = new EndingCall(this);
        }

        public class ReadyToCall extends ImsReadyToCall {
            ImsProfile emergencyProfile;

            ReadyToCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
                this.emergencyProfile = null;
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsReadyToCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[ReadyToCall] processMessage " + message.what);
                int i = message.what;
                if (i == 1) {
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(3, 0, EmergencyCallStateMachine.EVENT_EMERGENCY_REGISTERED);
                    return false;
                }
                if (i != 11) {
                    if (i == 14) {
                        return onEmergecyInvite();
                    }
                    if (i != 306) {
                        if (i == 402) {
                            EmergencyCallStateMachine.this.mNextPcscfChangedWorking = false;
                            EmergencyCallStateMachine.this.mThisEsm.sendMessage(14);
                        } else {
                            if (i == EmergencyCallStateMachine.EVENT_EMERGENCY_REGISTERED) {
                                return onEventEmergencyRegistered(message);
                            }
                            if (i == 3) {
                                return onEnded(message);
                            }
                            if (i == 4) {
                                return onError(message);
                            }
                            if (i != 303 && i != 304) {
                                return super.processMessage(message);
                            }
                        }
                    }
                    return false;
                }
                onStart(message);
                return true;
            }

            private void onStart(Message message) {
                int i;
                Log.i(this.LOG_TAG, "cmcType : " + ImsEmergencySession.this.mCmcType);
                if (ImsCallUtil.isCmcSecondaryType(ImsEmergencySession.this.mCmcType)) {
                    Log.e(this.LOG_TAG, "[ReadyToCall] start: E911 is not allowed on SD.");
                    EmergencyCallStateMachine.this.mThisSm.sendMessage(4, 0, -1, SipErrorBase.E911_NOT_ALLOWED_ON_SD);
                    return;
                }
                ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(ImsEmergencySession.this.mPhoneId);
                Mno simMno = simManagerFromSimSlot == null ? Mno.DEFAULT : simManagerFromSimSlot.getSimMno();
                if (simMno.isOneOf(Mno.TMOUS, Mno.DISH) && !EmergencyCallStateMachine.this.mStartDelayed && ImsEmergencySession.this.hasInProgressEmergencyTask()) {
                    Log.i(this.LOG_TAG, "Deregistering is in progress. retry after 1sec");
                    EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(Message.obtain(message), 1000L);
                    EmergencyCallStateMachine.this.mStartDelayed = true;
                    return;
                }
                if (simManagerFromSimSlot != null && simManagerFromSimSlot.hasNoSim() && Mno.fromSalesCode(OmcCode.get()).isJpn()) {
                    Log.e(this.LOG_TAG, "[ReadyToCall] Not allowed emergency call in JPN without sim");
                    EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(EmergencyCallStateMachine.this.obtainMessage(4, 0, -1, new SipError(2698, "Tlte_911fail")), 300L);
                    return;
                }
                this.emergencyProfile = this.mRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
                String systemProperty = ImsUtil.getSystemProperty("gsm.operator.numeric", ImsEmergencySession.this.mPhoneId, "00101");
                if (simManagerFromSimSlot != null && simManagerFromSimSlot.getDevMno().isAus() && (this.emergencyProfile == null || "00101".equals(systemProperty))) {
                    if (!EmergencyCallStateMachine.this.mStartDelayed) {
                        Log.i(this.LOG_TAG, "switching network is in progress. retry after 1sec");
                        this.mRegistrationManager.refreshAuEmergencyProfile(ImsEmergencySession.this.mPhoneId);
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(Message.obtain(message), 1000L);
                        EmergencyCallStateMachine.this.mStartDelayed = true;
                        return;
                    }
                    Log.i(this.LOG_TAG, "no Emergency profile, should CSFB now...");
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(303);
                    return;
                }
                if (!ImsEmergencySession.this.isEmergencyAvailable(simMno)) {
                    Log.i(this.LOG_TAG, "emergency service unavailable. do CSFB");
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(303);
                    return;
                }
                ImsProfile imsProfile = this.emergencyProfile;
                if (imsProfile != null && imsProfile.getPdnType() == 11 && ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(ImsEmergencySession.this.mCallProfile.getEmergencyRat()) && ImsEmergencySession.this.getEmergencyRegistration() == null) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] No IMS Registration, Do Call End");
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(4, 0, -1, new SipError(1003, "No VoWIFI Registration"));
                    return;
                }
                setEmergencyRttCall();
                Message obtainMessage = EmergencyCallStateMachine.this.obtainMessage(EmergencyCallStateMachine.EVENT_EMERGENCY_REGISTERED);
                IMSLog.c(LogClass.VOLTE_E911_REGI_START, "" + ImsEmergencySession.this.mPhoneId);
                if (ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(ImsEmergencySession.this.getCallProfile().getEmergencyRat())) {
                    i = 18;
                } else {
                    i = (!ImsConstants.EmergencyRat.LTE.equalsIgnoreCase(ImsEmergencySession.this.getCallProfile().getEmergencyRat()) && ImsConstants.EmergencyRat.NR.equalsIgnoreCase(ImsEmergencySession.this.getCallProfile().getEmergencyRat())) ? 20 : 13;
                }
                this.mRegistrationManager.startEmergencyRegistration(ImsEmergencySession.this.mPhoneId, obtainMessage, i);
                long delayLte911Fail = ImsEmergencySession.this.getDelayLte911Fail(simMno);
                if (delayLte911Fail > 0) {
                    if (simMno == Mno.TMOUS) {
                        Log.i(this.LOG_TAG, "[ReadyToCall] TMO_E911 start E1 Timer");
                        this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E1, ImsCallUtil.EMERGENCY_TIMER_STATE.STARTED);
                    } else if (this.mMno.isTmobile()) {
                        Log.i(this.LOG_TAG, "[ReadyToCall] TMO_EUR_E911 start E1 REG timer");
                    } else {
                        Log.i(this.LOG_TAG, "[ReadyToCall] start Tlte or TWlan-911fail" + delayLte911Fail + " millis.");
                    }
                    IMSLog.c(LogClass.VOLTE_E911_CALL_TIMER_START, ImsEmergencySession.this.mPhoneId + "," + delayLte911Fail);
                    if (simMno == Mno.KDDI && SimUtil.getAvailableSimCount() > 1) {
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(EmergencyCallStateMachine.this.obtainMessage(308, 0, -1, new SipError(2697, "EMERGENCY PERM FAILURE")), delayLte911Fail);
                    } else {
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(303, delayLte911Fail);
                    }
                }
            }

            private void setEmergencyRttCall() {
                EmergencyCallStateMachine emergencyCallStateMachine = EmergencyCallStateMachine.this;
                emergencyCallStateMachine.callType = ImsEmergencySession.this.mCallProfile.getCallType();
                if (this.mModule.getAutomaticMode(ImsEmergencySession.this.getPhoneId())) {
                    EmergencyCallStateMachine emergencyCallStateMachine2 = EmergencyCallStateMachine.this;
                    int i = emergencyCallStateMachine2.callType;
                    if (i == 7) {
                        emergencyCallStateMachine2.callType = 18;
                    } else if (i == 8) {
                        emergencyCallStateMachine2.callType = 19;
                    }
                    ImsEmergencySession.this.mCallProfile.setCallType(emergencyCallStateMachine2.callType);
                }
            }

            private boolean onEventEmergencyRegistered(Message message) {
                Mno mno;
                Mno mno2;
                EmergencyCallStateMachine.this.mEmergencyRegistered = true;
                IMSLog.c(LogClass.VOLTE_E911_REGI_DONE, "" + ImsEmergencySession.this.mPhoneId);
                this.mRegistrationManager.removeE911RegiTimer();
                ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
                this.emergencyProfile = imsProfile;
                if (imsProfile == null) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] EmergencyProfile is null!");
                    return false;
                }
                if (!(imsProfile.getPdnType() == 11) && !this.mRegistrationManager.isPdnConnected(this.emergencyProfile, ImsEmergencySession.this.mPhoneId)) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] PDN disconnected. do CSFB");
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(303);
                    return true;
                }
                Bundle data = message.getData();
                if (data != null && data.getBoolean("isERegiAuthFailed", false)) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] Authentication failure. do CSFB");
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(303);
                    return true;
                }
                Mno fromName = Mno.fromName(this.emergencyProfile.getMnoName());
                this.mMno = fromName;
                if (fromName == Mno.DOCOMO || fromName.isChn() || (mno = this.mMno) == Mno.GCF || mno == Mno.RJIL || mno == Mno.TMOUS || mno == Mno.DISH || mno.isTmobile() || (mno2 = this.mMno) == Mno.ATT || mno2 == Mno.SPRINT || mno2 == Mno.KDDI) {
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                    Mno mno3 = this.mMno;
                    if (mno3 == Mno.TMOUS || mno3.isTmobile()) {
                        Log.i(this.LOG_TAG, "[ReadyToCall] Emergency E1 timer stopped");
                        this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E1, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
                    } else {
                        Log.i(this.LOG_TAG, "[ReadyToCall] remove ON_LTE_911_FAIL");
                    }
                }
                EmergencyCallStateMachine emergencyCallStateMachine = EmergencyCallStateMachine.this;
                if (emergencyCallStateMachine.mIsMdmiEnabled) {
                    emergencyCallStateMachine.mMdmiE911Listener.notifySipMsg(MdmiServiceModule.msgType.E911_REGI, 0L);
                }
                EmergencyCallStateMachine.this.mThisEsm.sendMessage(14);
                return true;
            }

            private boolean onEmergecyInvite() {
                ImsUri buildUri;
                int i;
                ImsCallSession session;
                Network network;
                EmergencyCallStateMachine emergencyCallStateMachine = EmergencyCallStateMachine.this;
                emergencyCallStateMachine.callType = ImsEmergencySession.this.mCallProfile.getCallType();
                if (this.mModule.getAutomaticMode(ImsEmergencySession.this.getPhoneId())) {
                    EmergencyCallStateMachine emergencyCallStateMachine2 = EmergencyCallStateMachine.this;
                    int i2 = emergencyCallStateMachine2.callType;
                    if (i2 == 7) {
                        emergencyCallStateMachine2.callType = 18;
                    } else if (i2 == 8) {
                        emergencyCallStateMachine2.callType = 19;
                    }
                    ImsEmergencySession.this.mCallProfile.setCallType(emergencyCallStateMachine2.callType);
                }
                String dialingNumber = ImsEmergencySession.this.mCallProfile.getDialingNumber();
                if (ImsEmergencySession.this.mCallProfile.getUrn() != null) {
                    buildUri = ImsUri.parse(ImsEmergencySession.this.mCallProfile.getUrn());
                } else {
                    ImsEmergencySession imsEmergencySession = ImsEmergencySession.this;
                    buildUri = imsEmergencySession.buildUri(dialingNumber, null, imsEmergencySession.mCallProfile.getCallType());
                }
                ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
                this.emergencyProfile = imsProfile;
                if (imsProfile == null) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] EmergencyProfile is null!");
                    return false;
                }
                Mno fromName = Mno.fromName(imsProfile.getMnoName());
                this.mMno = fromName;
                if ((fromName == Mno.VZW && "922".equals(dialingNumber)) || ((SimUtil.isDSH(ImsEmergencySession.this.mPhoneId) || SimUtil.isDSH5G(ImsEmergencySession.this.mPhoneId)) && (("522".equals(dialingNumber) || "922".equals(dialingNumber)) && !SimUtil.isNoSIM(ImsEmergencySession.this.mPhoneId) && !this.mModule.isRoaming(ImsEmergencySession.this.mPhoneId)))) {
                    EmergencyCallStateMachine emergencyCallStateMachine3 = EmergencyCallStateMachine.this;
                    if (emergencyCallStateMachine3.mIsMdmiEnabled) {
                        emergencyCallStateMachine3.mMdmiE911Listener.notifySipMsg(MdmiServiceModule.msgType.E922_CALL, 0L);
                    }
                    buildUri = UriGeneratorFactory.getInstance().get(ImsEmergencySession.this.mCallProfile.getOriginatingUri(), UriGenerator.URIServiceType.VOLTE_URI).getNetworkPreferredUri(ImsUri.UriType.SIP_URI, dialingNumber);
                    Log.i(this.LOG_TAG, "[ReadyToCall] makecall target change to " + buildUri);
                }
                if (EmergencyCallStateMachine.this.mIsMdmiEnabled && "911".equals(dialingNumber)) {
                    EmergencyCallStateMachine.this.mMdmiE911Listener.notifySipMsg(MdmiServiceModule.msgType.E911_CALL, 0L);
                }
                EmergencyCallStateMachine emergencyCallStateMachine4 = EmergencyCallStateMachine.this;
                CallSetupData callSetupData = new CallSetupData(buildUri, dialingNumber, emergencyCallStateMachine4.callType, ImsEmergencySession.this.mCallProfile.getCLI());
                callSetupData.setOriginatingUri(ImsEmergencySession.this.getOriginatingUri());
                callSetupData.setLteEpsOnlyAttached(this.mModule.getLteEpsOnlyAttached(ImsEmergencySession.this.mPhoneId));
                callSetupData.setCmcBoundSessionId(ImsEmergencySession.this.mCallProfile.getCmcBoundSessionId());
                ImsRegistration emergencyRegistration = ImsEmergencySession.this.getEmergencyRegistration();
                if (emergencyRegistration != null) {
                    i = emergencyRegistration.getHandle();
                    Log.i(this.LOG_TAG, "bind network for MediaEngine " + emergencyRegistration.getNetwork());
                    this.mMediaController.bindToNetwork(emergencyRegistration.getNetwork());
                } else {
                    i = -1;
                }
                if ((this.mMno == Mno.ATT || SimUtil.isDSH(ImsEmergencySession.this.mPhoneId) || SimUtil.isDSH5G(ImsEmergencySession.this.mPhoneId) || SimUtil.isCSpire(ImsEmergencySession.this.mPhoneId) || SimUtil.isUnited(ImsEmergencySession.this.mPhoneId)) && ImsRegistry.getPdnController().isEmergencyEpdgConnected(ImsEmergencySession.this.mPhoneId)) {
                    ImsEmergencySession imsEmergencySession2 = ImsEmergencySession.this;
                    callSetupData.setPEmergencyInfo(imsEmergencySession2.getPEmergencyInfo(null, imsEmergencySession2.getImei(imsEmergencySession2.mPhoneId)));
                    Log.i(this.LOG_TAG, "e911Aid = " + callSetupData.getPEmergencyInfo());
                }
                IUserAgent emergencyUa = ImsEmergencySession.this.getEmergencyUa();
                if (emergencyUa != null && (network = emergencyUa.getNetwork()) != null) {
                    Log.i(this.LOG_TAG, "bind network for Emergency VT or RTT " + network);
                    this.mMediaController.bindToNetwork(network);
                }
                startEmergencyFailTimer();
                if (this.mMno == Mno.YTL && emergencyUa != null && (emergencyUa.isRegistering() || emergencyUa.isDeregistring())) {
                    EmergencyCallStateMachine.this.mEmergencyRegistered = false;
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(4, 0, -1, new SipError(1003, "UA is de/registring status"));
                    return true;
                }
                int makeCall = this.mVolteSvcIntf.makeCall(i, callSetupData, null, ImsEmergencySession.this.mPhoneId);
                Log.i(this.LOG_TAG, "[ReadyToCall] makeCall() returned session id " + makeCall);
                if (makeCall < 0) {
                    EmergencyCallStateMachine.this.mThisEsm.sendMessage(4, 0, -1, new SipError(1002, "stack return -1."));
                    return true;
                }
                int cmcBoundSessionId = this.mSession.getCallProfile().getCmcBoundSessionId();
                if (cmcBoundSessionId > 0 && (session = this.mModule.getSession(cmcBoundSessionId)) != null) {
                    session.getCallProfile().setCmcBoundSessionId(makeCall);
                    Log.i(this.LOG_TAG, "[Emergency ReadyToCall] updated boundSessionId : " + session.getCallProfile().getCmcBoundSessionId());
                }
                ImsEmergencySession.this.setSessionId(makeCall);
                ImsEmergencySession.this.mCallProfile.setDirection(0);
                EmergencyCallStateMachine emergencyCallStateMachine5 = EmergencyCallStateMachine.this;
                emergencyCallStateMachine5.transitionTo(emergencyCallStateMachine5.mOutgoingCall);
                return true;
            }

            private void startEmergencyFailTimer() {
                long e911InviteTo18xTime = ImsEmergencySession.this.getE911InviteTo18xTime() * 1000;
                if (this.mMno.isOneOf(Mno.BELL, Mno.ROGERS, Mno.TELUS, Mno.KOODO, Mno.VTR, Mno.EASTLINK)) {
                    if (ImsRegistry.getPdnController().isEmergencyEpdgConnected(ImsEmergencySession.this.mPhoneId)) {
                        return;
                    }
                    EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(307, e911InviteTo18xTime);
                    return;
                }
                if (e911InviteTo18xTime > 0 && !this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) && !this.mMno.isTmobile()) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] start t_e911_invite_to_18x timer (" + e911InviteTo18xTime + "ms) for waiting SIP 18x");
                    EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(307, e911InviteTo18xTime);
                    return;
                }
                if (Mno.ATT.equals(this.mMno)) {
                    if (e911InviteTo18xTime > 0) {
                        Log.i(this.LOG_TAG, "[ReadyToCall] start Tlte-t_e911_invite_to_18x timer (" + e911InviteTo18xTime + "ms) for waiting SIP 18x");
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(307, e911InviteTo18xTime);
                        return;
                    }
                    return;
                }
                if (ImsEmergencySession.this.mE911RegiTime > 0) {
                    long j = ImsEmergencySession.this.mE911RegiTime * 1000;
                    Log.i(this.LOG_TAG, "[ReadyToCall] start Tlte-911fail timer (" + j + "ms) for waiting SIP 18x");
                    EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(307, j);
                }
            }

            private boolean onError(Message message) {
                SipError sipError = (SipError) message.obj;
                if (this.mMno == Mno.YTL && !EmergencyCallStateMachine.this.mEmergencyRegistered && ImsCallUtil.isClientError(sipError)) {
                    ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
                    if (!EmergencyCallStateMachine.this.mRequstedStopPDN && imsProfile != null) {
                        int deregTimeout = imsProfile.getDeregTimeout(13);
                        Log.i(this.LOG_TAG, "Disconnect Emergency PDN.");
                        this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                        EmergencyCallStateMachine.this.mRequstedStopPDN = true;
                        EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(Message.obtain(message), deregTimeout + 500);
                        return true;
                    }
                }
                return super.processMessage(message);
            }

            private boolean onEnded(Message message) {
                if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
                    Log.i(this.LOG_TAG, "[ReadyToCall] mNextPcscfChangedWorking=" + EmergencyCallStateMachine.this.mNextPcscfChangedWorking);
                    if (EmergencyCallStateMachine.this.mNextPcscfChangedWorking) {
                        Log.i(this.LOG_TAG, "[ReadyToCall] TMO_E911 ON_NEXT_PCSCF_CHANGED is running, so just return");
                        return true;
                    }
                }
                return super.processMessage(message);
            }
        }

        public class OutgoingCall extends ImsOutgoingCall {
            OutgoingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsOutgoingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
                if (imsProfile != null && imsProfile.get100tryingTimer() > 0) {
                    int i = imsProfile.get100tryingTimer();
                    if (this.mMno == Mno.USCC && this.mModule.getSessionCount(ImsEmergencySession.this.mPhoneId) == 1) {
                        Log.i(this.LOG_TAG, "[OutgoingCall] USCC G30 Timer (12 sec)");
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(208, 12000L);
                    } else {
                        if (this.mMno == Mno.TMOUS) {
                            Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 start E2 Timer");
                            this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E2, ImsCallUtil.EMERGENCY_TIMER_STATE.STARTED);
                        } else {
                            Log.i(this.LOG_TAG, "[OutgoingCall] Start 100 Trying Timer (" + i + " msec).");
                        }
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(208, i);
                    }
                    Mno mno = this.mMno;
                    if ((mno == Mno.TMOUS || mno.isTmobile()) && !EmergencyCallStateMachine.this.mThisEsm.hasMessages(307)) {
                        Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911, TMO_EUR_E911 start E3 Timer");
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(307, ImsEmergencySession.this.getE911InviteTo18xTime() * 1000);
                        this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, ImsCallUtil.EMERGENCY_TIMER_STATE.STARTED);
                    }
                } else {
                    ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(ImsEmergencySession.this.mPhoneId);
                    boolean isSimMobilityFeatureEnabled = SimUtil.isSimMobilityFeatureEnabled();
                    boolean hasNoSim = simManagerFromSimSlot != null ? simManagerFromSimSlot.hasNoSim() : true;
                    Log.i(this.LOG_TAG, "isSimMobility : " + isSimMobilityFeatureEnabled + ", isNoSim : " + hasNoSim);
                    if (isSimMobilityFeatureEnabled && hasNoSim) {
                        EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(208, 10000);
                        Log.i(this.LOG_TAG, "[OutgoingCall] Start 100 Trying Timer (10000 msec).");
                    }
                }
                EmergencyCallStateMachine emergencyCallStateMachine = EmergencyCallStateMachine.this;
                if (emergencyCallStateMachine.mIsMdmiEnabled) {
                    emergencyCallStateMachine.mMdmiE911Listener.notifySipMsg(MdmiServiceModule.msgType.SIP_INVITE, System.currentTimeMillis());
                }
                super.enter();
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsOutgoingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[OutgoingCall] processMessage " + message.what);
                int i = message.what;
                if (i == 31) {
                    return onTrying(message);
                }
                if (i == 32 || i == 34) {
                    onRingingBack();
                } else if (i != 35) {
                    if (i == 41) {
                        return onEstablished(message);
                    }
                    if (i == 208) {
                        return on100TryingTimeOut(message);
                    }
                    if (i == 306 || i == 303 || i == 304) {
                        return false;
                    }
                    return super.processMessage(message);
                }
                return onSessionProgress(message);
            }

            private boolean onTrying(Message message) {
                Mno mno = this.mMno;
                if (mno == Mno.TMOUS || mno.isTmobile()) {
                    Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 stop E2 Timer");
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(208);
                    this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E2, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
                } else if (this.mMno == Mno.KDDI) {
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(308);
                }
                return super.processMessage(message);
            }

            private void onRingingBack() {
                int ringbackTimer;
                if (this.mRegistration == null && this.mMno == Mno.USCC) {
                    Log.i(this.LOG_TAG, "start ringBackTimer");
                    ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
                    if (imsProfile == null) {
                        Log.i(this.LOG_TAG, "EmergencyProfile is null. so in this case please set it as default, 120s");
                        ringbackTimer = 120;
                    } else {
                        ringbackTimer = imsProfile.getRingbackTimer();
                        Log.i(this.LOG_TAG, "RingBackTimer - set " + ringbackTimer);
                    }
                    this.mCsm.startRingTimer(ringbackTimer * 1000);
                }
            }

            private boolean onSessionProgress(Message message) {
                if (ImsEmergencySession.this.needRemoveTimerOn18X()) {
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                } else {
                    Mno mno = this.mMno;
                    if (mno == Mno.TMOUS || mno.isTmobile()) {
                        Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 stop E2, E3 Timer");
                        EmergencyCallStateMachine.this.mThisEsm.removeMessages(208);
                        IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mModule;
                        int i = ImsEmergencySession.this.mPhoneId;
                        ImsCallSession imsCallSession = this.mSession;
                        ImsCallUtil.EMERGENCY_TIMER emergency_timer = ImsCallUtil.EMERGENCY_TIMER.E2;
                        ImsCallUtil.EMERGENCY_TIMER_STATE emergency_timer_state = ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED;
                        iVolteServiceModuleInternal.sendEmergencyCallTimerState(i, imsCallSession, emergency_timer, emergency_timer_state);
                        EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                        this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, emergency_timer_state);
                    } else if (ImsEmergencySession.this.mE911RegiTime > 0) {
                        Log.i(this.LOG_TAG, "[OutgoingCall] remove ON_E911_INVITE_TILL_180_TIMER_FAIL");
                        EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                    }
                }
                return super.processMessage(message);
            }

            private boolean onEstablished(Message message) {
                Mno mno = this.mMno;
                if (mno == Mno.TMOUS || mno.isTmobile()) {
                    Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 stop E2, E3 Timer");
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(208);
                    IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mModule;
                    int i = ImsEmergencySession.this.mPhoneId;
                    ImsCallSession imsCallSession = this.mSession;
                    ImsCallUtil.EMERGENCY_TIMER emergency_timer = ImsCallUtil.EMERGENCY_TIMER.E2;
                    ImsCallUtil.EMERGENCY_TIMER_STATE emergency_timer_state = ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED;
                    iVolteServiceModuleInternal.sendEmergencyCallTimerState(i, imsCallSession, emergency_timer, emergency_timer_state);
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                    this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, emergency_timer_state);
                }
                return super.processMessage(message);
            }

            private boolean on100TryingTimeOut(Message message) {
                if (this.mMno == Mno.TMOUS) {
                    Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 E2 Timer expired");
                    this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E2, ImsCallUtil.EMERGENCY_TIMER_STATE.EXPIRED);
                    if (ImsCallUtil.isRttEmergencyCall(ImsEmergencySession.this.mCallProfile.getCallType())) {
                        Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 RTT stop E3 timer and end call");
                        EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                        this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
                    } else if (EmergencyCallStateMachine.this.mThisEsm.hasMessages(307)) {
                        Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 E3 Timer active");
                        ImsEmergencySession imsEmergencySession = ImsEmergencySession.this;
                        if (!imsEmergencySession.isNoNextPcscf(imsEmergencySession.mPhoneId)) {
                            Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 redial to next p-cscf");
                            this.mRegistrationManager.moveNextPcscf(ImsEmergencySession.this.mPhoneId, EmergencyCallStateMachine.this.obtainMessage(402));
                            EmergencyCallStateMachine.this.mNextPcscfChangedWorking = true;
                            EmergencyCallStateMachine emergencyCallStateMachine = EmergencyCallStateMachine.this;
                            emergencyCallStateMachine.transitionTo(emergencyCallStateMachine.mReadyToCall);
                            return true;
                        }
                        Log.i(this.LOG_TAG, "[OutgoingCall] TMO_E911 stop E3 timer and CSFB");
                        EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                        this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
                    }
                }
                return super.processMessage(message);
            }
        }

        public class AlertingCall extends ImsAlertingCall {
            AlertingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsAlertingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(this.LOG_TAG, "[AlertingCall] enter ");
                Mno simMno = SimUtil.getSimMno(ImsEmergencySession.this.mPhoneId);
                EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                if ((!simMno.isOneOf(Mno.TMOUS, Mno.DISH) && !this.mMno.isTmobile() && EmergencyCallStateMachine.this.mThisEsm.hasMessages(303)) || ImsEmergencySession.this.needStartTimerOnAlerting()) {
                    long lte911FailFromEmergencyProfile = ImsEmergencySession.this.getLte911FailFromEmergencyProfile() * 1000;
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                    Log.i(this.LOG_TAG, "[AlertingCall] refresh Tlte_911fail timer : " + lte911FailFromEmergencyProfile + " millis.");
                    EmergencyCallStateMachine.this.mThisEsm.sendMessageDelayed(303, lte911FailFromEmergencyProfile);
                }
                super.enter();
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsAlertingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[AlertingCall] processMessage " + message.what);
                int i = message.what;
                if (i != 32) {
                    if (i == 306) {
                        return false;
                    }
                    if (i != 34 && i != 35) {
                        if (i == 303) {
                            return onLte911Fail(message);
                        }
                        if (i != 304) {
                            return super.processMessage(message);
                        }
                        return false;
                    }
                }
                return onSessionProgress(message);
            }

            private boolean onSessionProgress(Message message) {
                if (ImsEmergencySession.this.needRemoveTimerOn18X()) {
                    EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                }
                return super.processMessage(message);
            }

            private boolean onLte911Fail(Message message) {
                Mno mno;
                if (!this.mMno.isCanada() && (mno = this.mMno) != Mno.VODAFONE_UK && !mno.isKor()) {
                    return false;
                }
                Log.i(this.LOG_TAG, "[AlertingCall] Ignore ON_LTE_911_FAIL");
                return super.processMessage(message);
            }
        }

        public class EndingCall extends ImsEndingCall {
            EndingCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsEndingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                Log.i(this.LOG_TAG, "[EndingCall] processMessage " + message.what);
                EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                int i = message.what;
                if (i == 2 || i == 3) {
                    EmergencyCallStateMachine.this.onEnded(message);
                }
                return super.processMessage(message);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsEndingCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void exit() {
                Mno simMno = SimUtil.getSimMno(ImsEmergencySession.this.mPhoneId);
                EmergencyCallStateMachine emergencyCallStateMachine = EmergencyCallStateMachine.this;
                if (emergencyCallStateMachine.mIsMdmiEnabled) {
                    emergencyCallStateMachine.mMdmiE911Listener.onCallEnded();
                }
                if (!this.mModule.isEmergencyRegistered(ImsEmergencySession.this.mPhoneId)) {
                    if (simMno == Mno.VZW && (this.mModule.isEcbmMode(ImsEmergencySession.this.mPhoneId) || EmergencyCallStateMachine.this.mHasEstablished)) {
                        Log.i(this.LOG_TAG, "ECBM mode. Keep Emergency PDN.");
                        super.exit();
                        return;
                    } else if (simMno != Mno.ATT && !this.mMno.isKor()) {
                        Log.i(this.LOG_TAG, "Disconnect Emergency PDN.");
                        this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                    }
                }
                if (simMno == Mno.ATT && this.mRegistrationManager.isVoWiFiSupported(ImsEmergencySession.this.mPhoneId)) {
                    ImsRegistration emergencyRegistration = ImsEmergencySession.this.getEmergencyRegistration();
                    ImsRegistration iMSRegistration = ImsEmergencySession.this.getIMSRegistration();
                    if (iMSRegistration != null && emergencyRegistration != null && iMSRegistration.getEpdgStatus() != emergencyRegistration.getEpdgStatus()) {
                        Log.i(this.LOG_TAG, "RAT is different between current IMS and Emergencywhich is already made but not de-registered.");
                        this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                    }
                }
                EmergencyCallStateMachine.this.mRequstedStopPDN = false;
                super.exit();
            }
        }

        public class InCall extends ImsInCall {
            InCall(CallStateMachine callStateMachine) {
                super(callStateMachine);
            }

            @Override // com.sec.internal.ims.servicemodules.volte2.ImsInCall, com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(this.LOG_TAG, "Enter [InCall]");
                EmergencyCallStateMachine.this.mThisEsm.removeMessages(303);
                EmergencyCallStateMachine.this.mThisEsm.removeMessages(307);
                super.enter();
                EmergencyCallStateMachine.this.mHasEstablished = true;
            }
        }

        void handleE911Fail() {
            IRegistrationGovernor registrationGovernor;
            Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] handleE911Fail()");
            IMSLog.c(LogClass.VOLTE_E911_CALL_TIMER_ERROR, "" + ImsEmergencySession.this.mPhoneId);
            this.mThisSm.sendMessage(4, 0, EVENT_EMERGENCY_REGISTERED, new SipError(Id.REQUEST_VSH_STOP_SESSION, "Tlte_911fail"));
            ImsRegistration imsRegistration = this.mRegistration;
            if (imsRegistration == null || (registrationGovernor = this.mRegistrationManager.getRegistrationGovernor(imsRegistration.getHandle())) == null) {
                return;
            }
            registrationGovernor.onSipError(ImsCallUtil.isVideoCall(ImsEmergencySession.this.mCallProfile.getCallType()) ? "mmtel-video" : "mmtel", new SipError(2507));
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        
            if (r0 != 307) goto L43;
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x007b A[RETURN] */
        @Override // com.sec.internal.ims.servicemodules.volte2.CallStateMachine, com.sec.internal.helper.StateMachine
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        protected void unhandledMessage(android.os.Message r4) {
            /*
                r3 = this;
                com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession r0 = com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession.this
                java.lang.String r0 = com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession.m1275$$Nest$fgetLOG_TAG(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "[ANY_STATE] unhandledMessage "
                r1.append(r2)
                int r2 = r4.what
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                android.util.Log.i(r0, r1)
                com.sec.internal.constants.Mno r0 = r3.mMno
                com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.DEFAULT
                if (r0 != r1) goto L45
                com.sec.internal.interfaces.ims.core.IRegistrationManager r0 = r3.mRegistrationManager
                com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession r1 = com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession.this
                int r1 = r1.mPhoneId
                com.sec.ims.settings.ImsProfile$PROFILE_TYPE r2 = com.sec.ims.settings.ImsProfile.PROFILE_TYPE.EMERGENCY
                com.sec.ims.settings.ImsProfile r0 = r0.getImsProfile(r1, r2)
                if (r0 == 0) goto L3b
                java.lang.String r0 = r0.getMnoName()
                com.sec.internal.constants.Mno r0 = com.sec.internal.constants.Mno.fromName(r0)
                r3.mMno = r0
                goto L45
            L3b:
                com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession r0 = com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession.this
                int r0 = r0.mPhoneId
                com.sec.internal.constants.Mno r0 = com.sec.internal.helper.SimUtil.getSimMno(r0)
                r3.mMno = r0
            L45:
                int r0 = r4.what
                r1 = 1
                if (r0 == r1) goto L91
                r1 = 309(0x135, float:4.33E-43)
                if (r0 == r1) goto L8a
                r1 = 3
                if (r0 == r1) goto L83
                r1 = 4
                if (r0 == r1) goto L7c
                r1 = 303(0x12f, float:4.25E-43)
                if (r0 == r1) goto L65
                r1 = 304(0x130, float:4.26E-43)
                if (r0 == r1) goto L8a
                r1 = 306(0x132, float:4.29E-43)
                if (r0 == r1) goto L75
                r1 = 307(0x133, float:4.3E-43)
                if (r0 == r1) goto L6c
                goto L94
            L65:
                boolean r0 = r3.onLte911Fail()
                if (r0 == 0) goto L6c
                return
            L6c:
                int r4 = r4.what
                boolean r4 = r3.onE911InviteTill180TimerFail(r4)
                if (r4 == 0) goto L75
                return
            L75:
                boolean r4 = r3.onEpdnSetupFail()
                if (r4 == 0) goto L8a
                return
            L7c:
                boolean r0 = r3.onError(r4)
                if (r0 == 0) goto L94
                return
            L83:
                boolean r0 = r3.onEnded(r4)
                if (r0 == 0) goto L94
                return
            L8a:
                r3.onLte911FailAfterDelay()
                r3.handleE911Fail()
                return
            L91:
                r3.terminate()
            L94:
                super.unhandledMessage(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsEmergencySession.EmergencyCallStateMachine.unhandledMessage(android.os.Message):void");
        }

        private boolean onLte911Fail() {
            Mno mno = this.mMno;
            if (mno == Mno.TMOUS || mno.isTmobile()) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 E1 timer expired");
                this.mThisEsm.removeMessages(303);
                this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E1, ImsCallUtil.EMERGENCY_TIMER_STATE.EXPIRED);
                if (ImsCallUtil.isRttEmergencyCall(ImsEmergencySession.this.mCallProfile.getCallType())) {
                    Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 RTT end call");
                } else {
                    IRegistrationManager iRegistrationManager = this.mRegistrationManager;
                    boolean isPdnConnected = iRegistrationManager.isPdnConnected(iRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY), ImsEmergencySession.this.mPhoneId);
                    Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 emergencyPdnConnected =" + isPdnConnected);
                    if (!isPdnConnected) {
                        if (this.mMno.isTmobile()) {
                            Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_EUR epdn not connected, do CSFB");
                            return false;
                        }
                        if (!this.mModule.isRoaming(ImsEmergencySession.this.mPhoneId) && this.mModule.isRegisteredOver3gppPsVoice(ImsEmergencySession.this.mPhoneId)) {
                            Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stopEmergencyRegistration and redial to IMS PDN");
                            this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                            IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mModule;
                            ImsEmergencySession imsEmergencySession = ImsEmergencySession.this;
                            if (iVolteServiceModuleInternal.triggerPsRedial(imsEmergencySession.mPhoneId, imsEmergencySession.getCallId(), 11)) {
                                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 redial to IMS PDN success");
                                quit();
                                return true;
                            }
                        }
                    } else {
                        Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 anonymous INVITE to same p-cscf");
                        IUserAgent emergencyUa = ImsEmergencySession.this.getEmergencyUa();
                        if (emergencyUa != null) {
                            emergencyUa.notifyE911RegistrationFailed();
                        }
                        this.mThisEsm.sendMessage(14);
                        return true;
                    }
                }
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 CSFB");
            }
            return false;
        }

        private boolean onE911InviteTill180TimerFail(int i) {
            if (i == 307) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] ON_E911_INVITE_TILL_180_TIMER_FAIL expired");
                this.mThisEsm.removeMessages(307);
                this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, ImsCallUtil.EMERGENCY_TIMER_STATE.EXPIRED);
            }
            if (this.mTryingReceived) {
                this.mThisEsm.sendMessage(1, 17);
                this.mThisEsm.sendMessageDelayed(304, 500L);
                return true;
            }
            if (ImsEmergencySession.this.getCallState() == CallConstants.STATE.ReadyToCall) {
                return false;
            }
            this.mThisEsm.sendMessage(1, 17);
            return false;
        }

        private boolean onEpdnSetupFail() {
            int i;
            Mno mno = this.mMno;
            if (mno == Mno.TMOUS) {
                Log.e(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 EPDN setup fail before E1 expire, stop E1 Timer");
                this.mThisEsm.removeMessages(303);
                this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E1, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
                if (ImsCallUtil.isRttEmergencyCall(ImsEmergencySession.this.mCallProfile.getCallType())) {
                    Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 RTT, mRequstedStopPDN=" + this.mRequstedStopPDN);
                    if (this.mRequstedStopPDN) {
                        this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                    }
                } else if (!this.mModule.isRoaming(ImsEmergencySession.this.mPhoneId) && this.mModule.isRegisteredOver3gppPsVoice(ImsEmergencySession.this.mPhoneId)) {
                    Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stopEmergencyRegistration and redial to IMS PDN");
                    this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                    IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mModule;
                    ImsEmergencySession imsEmergencySession = ImsEmergencySession.this;
                    if (iVolteServiceModuleInternal.triggerPsRedial(imsEmergencySession.mPhoneId, imsEmergencySession.getCallId(), 11)) {
                        Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stopEmergencyRegistration");
                        this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                        quit();
                        return true;
                    }
                }
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 CSFB");
                handleE911Fail();
                return true;
            }
            if (mno != Mno.KDDI) {
                return false;
            }
            IRegistrationManager iRegistrationManager = this.mRegistrationManager;
            if (iRegistrationManager.isPdnConnected(iRegistrationManager.getImsProfile(ImsEmergencySession.this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY), ImsEmergencySession.this.mPhoneId) || (i = this.epdnFailCount) >= 5) {
                return false;
            }
            this.epdnFailCount = i + 1;
            return true;
        }

        private void onLte911FailAfterDelay() {
            if (this.mModule.isEmergencyRegistered(ImsEmergencySession.this.mPhoneId)) {
                return;
            }
            Mno mno = this.mMno;
            if (mno == Mno.ATT || mno == Mno.EE) {
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
            }
        }

        private boolean onError(Message message) {
            int code = ((SipError) message.obj).getCode();
            Mno mno = this.mMno;
            if (mno == Mno.VZW && code >= 300 && code < 700) {
                handleE911Fail();
                return true;
            }
            if (mno.isTmobile() && !this.mRequstedStopPDN && code == 403) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN TMOBILE 403 error");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mRequstedStopPDN = true;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                return true;
            }
            if (this.mMno.isKor() && !this.mRequstedStopPDN && (code == 380 || (code >= 400 && code < 500))) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN.");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mRequstedStopPDN = true;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                return true;
            }
            if ("TEL".equals(OmcCode.get()) && !this.mRequstedStopPDN && code >= 400 && code < 600) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN Telstra 4XX, 5XX error");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mRequstedStopPDN = true;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                return true;
            }
            if (this.mMno.isCanada() && !this.mRequstedStopPDN) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                this.mRequstedStopPDN = true;
                return true;
            }
            if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
                return onErrorForTmo(message, code);
            }
            return false;
        }

        private boolean onErrorForTmo(Message message, int i) {
            Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 errCode=" + i + ", mRequstedStopPDN=" + this.mRequstedStopPDN + ", E2 = " + this.mThisEsm.hasMessages(208) + ", E3 = " + this.mThisEsm.hasMessages(307));
            CallProfile callProfile = ImsEmergencySession.this.mCallProfile;
            if (callProfile != null && ImsCallUtil.isRttEmergencyCall(callProfile.getCallType())) {
                if (this.mRequstedStopPDN) {
                    return false;
                }
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 RTT, stopEmergencyRegistration");
                this.mThisEsm.removeMessages(208);
                IVolteServiceModuleInternal iVolteServiceModuleInternal = this.mModule;
                int i2 = ImsEmergencySession.this.mPhoneId;
                ImsCallSession imsCallSession = this.mSession;
                ImsCallUtil.EMERGENCY_TIMER emergency_timer = ImsCallUtil.EMERGENCY_TIMER.E2;
                ImsCallUtil.EMERGENCY_TIMER_STATE emergency_timer_state = ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED;
                iVolteServiceModuleInternal.sendEmergencyCallTimerState(i2, imsCallSession, emergency_timer, emergency_timer_state);
                this.mThisEsm.removeMessages(307);
                this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, emergency_timer_state);
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.errorCode = 2414;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 5000L);
                this.mRequstedStopPDN = true;
                return true;
            }
            if (i >= 300 && i < 400) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stop E2, E3 timer and CSFB");
                this.mThisEsm.removeMessages(208);
                IVolteServiceModuleInternal iVolteServiceModuleInternal2 = this.mModule;
                int i3 = ImsEmergencySession.this.mPhoneId;
                ImsCallSession imsCallSession2 = this.mSession;
                ImsCallUtil.EMERGENCY_TIMER emergency_timer2 = ImsCallUtil.EMERGENCY_TIMER.E2;
                ImsCallUtil.EMERGENCY_TIMER_STATE emergency_timer_state2 = ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED;
                iVolteServiceModuleInternal2.sendEmergencyCallTimerState(i3, imsCallSession2, emergency_timer2, emergency_timer_state2);
                this.mThisEsm.removeMessages(307);
                this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, emergency_timer_state2);
                return false;
            }
            if (i < 400 || i >= 700) {
                return false;
            }
            if (this.mThisEsm.hasMessages(208)) {
                ImsEmergencySession imsEmergencySession = ImsEmergencySession.this;
                if (imsEmergencySession.isNoNextPcscf(imsEmergencySession.mPhoneId)) {
                    Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stop E2, E3 timer and CSFB");
                    this.mThisEsm.removeMessages(208);
                    IVolteServiceModuleInternal iVolteServiceModuleInternal3 = this.mModule;
                    int i4 = ImsEmergencySession.this.mPhoneId;
                    ImsCallSession imsCallSession3 = this.mSession;
                    ImsCallUtil.EMERGENCY_TIMER emergency_timer3 = ImsCallUtil.EMERGENCY_TIMER.E2;
                    ImsCallUtil.EMERGENCY_TIMER_STATE emergency_timer_state3 = ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED;
                    iVolteServiceModuleInternal3.sendEmergencyCallTimerState(i4, imsCallSession3, emergency_timer3, emergency_timer_state3);
                    this.mThisEsm.removeMessages(307);
                    this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, emergency_timer_state3);
                    return false;
                }
                Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stop E2 timer and redial to next p-cscf");
                this.mThisEsm.removeMessages(208);
                this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E2, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
                this.mRegistrationManager.moveNextPcscf(ImsEmergencySession.this.mPhoneId, obtainMessage(402));
                this.mNextPcscfChangedWorking = true;
                transitionTo(this.mReadyToCall);
                return true;
            }
            if (!this.mThisEsm.hasMessages(307)) {
                return false;
            }
            Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] TMO_E911 stop E3 timer and CSFB");
            this.mThisEsm.removeMessages(307);
            this.mModule.sendEmergencyCallTimerState(ImsEmergencySession.this.mPhoneId, this.mSession, ImsCallUtil.EMERGENCY_TIMER.E3, ImsCallUtil.EMERGENCY_TIMER_STATE.CANCELLED);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean onEnded(Message message) {
            Mno mno;
            Mno mno2;
            String str = (String) message.obj;
            Log.i(ImsEmergencySession.this.LOG_TAG, "[ANY_STATE] ErrorMessage " + str);
            if ((this.mMno.isOneOf(Mno.TMOUS, Mno.DISH) || this.mMno.isKor() || (mno = this.mMno) == Mno.ORANGE || mno == Mno.TELSTRA || "TEL".equals(OmcCode.get()) || (mno2 = this.mMno) == Mno.TWO_DEGREE || mno2.isCanada() || this.mMno == Mno.VELCOM_BY) && !this.mRequstedStopPDN) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN.");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mRequstedStopPDN = true;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                return true;
            }
            if (this.mMno == Mno.MTN_SOUTHAFRICA && "Alternative Service".equalsIgnoreCase(str) && !this.mRequstedStopPDN) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN for MTN_ZA");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mRequstedStopPDN = true;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                return true;
            }
            Mno mno3 = this.mMno;
            if ((mno3 == Mno.EE || mno3 == Mno.EE_ESN) && !this.mRequstedStopPDN) {
                IPdnController pdnController = ImsRegistry.getPdnController();
                boolean z = pdnController.getVoiceRegState(ImsEmergencySession.this.mPhoneId) != 0;
                boolean isEpdgConnected = pdnController.isEpdgConnected(ImsEmergencySession.this.mPhoneId);
                boolean isEmergencyEpdgConnected = pdnController.isEmergencyEpdgConnected(ImsEmergencySession.this.mPhoneId);
                if (z && isEpdgConnected && !isEmergencyEpdgConnected) {
                    Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN in LTE - No CS, Only Epdg");
                    this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                    this.mRequstedStopPDN = true;
                    this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
                    return true;
                }
            }
            if (this.mMno == Mno.DOCOMO && ImsEmergencySession.this.getCallState() != CallConstants.STATE.EndingCall && "RTP Timeout".equalsIgnoreCase(str)) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "Disconnect Emergency PDN for DCM.");
                this.mRegistrationManager.stopEmergencyRegistration(ImsEmergencySession.this.mPhoneId);
                this.mRequstedStopPDN = true;
                this.mThisEsm.sendMessageDelayed(Message.obtain(message), 500L);
            }
            return false;
        }

        private void terminate() {
            if (this.mMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
                Log.i(ImsEmergencySession.this.LOG_TAG, "reset mNextPcscfChangedWorking to false");
                this.mNextPcscfChangedWorking = false;
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public ImsRegistration getRegistration() {
        return getEmergencyRegistration();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsRegistration getEmergencyRegistration() {
        IRegistrationManager iRegistrationManager = this.mRegistrationManager;
        if (iRegistrationManager == null) {
            return null;
        }
        ImsProfile imsProfile = iRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        boolean z = imsProfile != null && imsProfile.getPdnType() == 11;
        for (ImsRegistration imsRegistration : this.mRegistrationManager.getRegistrationInfo()) {
            if (this.mPhoneId == imsRegistration.getPhoneId() && (imsRegistration.getImsProfile().hasEmergencySupport() || (z && imsRegistration.getImsProfile().getPdnType() == 11))) {
                return imsRegistration;
            }
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void setSessionId(int i) {
        this.LOG_TAG = IMSLog.appendSessionIdToLogTag(this.LOG_TAG, i);
        super.setSessionId(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsRegistration getIMSRegistration() {
        IRegistrationManager iRegistrationManager = this.mRegistrationManager;
        if (iRegistrationManager == null) {
            return null;
        }
        for (ImsRegistration imsRegistration : iRegistrationManager.getRegistrationInfo()) {
            if (imsRegistration != null && imsRegistration.getPhoneId() == this.mPhoneId && imsRegistration.getImsProfile() != null && imsRegistration.getImsProfile().getPdnType() == 11) {
                return imsRegistration;
            }
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    protected ImsUri getOriginatingUri() {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        Mno simMno = simManagerFromSimSlot == null ? Mno.DEFAULT : simManagerFromSimSlot.getSimMno();
        ImsRegistration emergencyRegistration = getEmergencyRegistration();
        ImsRegistration iMSRegistration = getIMSRegistration();
        if (emergencyRegistration == null) {
            if (simMno == Mno.VZW) {
                Log.i(this.LOG_TAG, "getOriginatingUri: emergency call without registration.");
                if (simManagerFromSimSlot == null) {
                    return null;
                }
                return ImsUri.parse(simManagerFromSimSlot.getDerivedImpu());
            }
            if (simMno.isKor() && iMSRegistration == null) {
                Log.i(this.LOG_TAG, "getOriginatingUri: emergency call without SIM");
                return ImsUri.parse("sip:anonymous@anonymous.invalid");
            }
            Log.i(this.LOG_TAG, "getOriginatingUri: No emergency registration. Use IMEI-based preferred-ID");
            return null;
        }
        ImsUri registeredImpu = emergencyRegistration.getRegisteredImpu();
        if (simMno == Mno.ATT) {
            if (emergencyRegistration.getImpuList() == null) {
                return registeredImpu;
            }
            for (NameAddr nameAddr : emergencyRegistration.getImpuList()) {
                if (nameAddr.getUri().getUriType().equals(ImsUri.UriType.TEL_URI)) {
                    Log.i(this.LOG_TAG, "getOriginatingUri: Found Tel-URI");
                    return nameAddr.getUri();
                }
            }
            return registeredImpu;
        }
        Log.i(this.LOG_TAG, "getOriginatingUri: emergency call with registration.");
        return emergencyRegistration.getPreferredImpu().getUri();
    }

    public ImsEmergencySession(Context context, CallProfile callProfile, Looper looper, IVolteServiceModuleInternal iVolteServiceModuleInternal) {
        super(context, callProfile, null, looper, iVolteServiceModuleInternal);
        this.LOG_TAG = "ImsEmergencySession";
        setPhoneId(callProfile.getPhoneId());
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public void init(IVolteServiceInterface iVolteServiceInterface, IRegistrationManager iRegistrationManager) {
        this.mVolteSvcIntf = iVolteServiceInterface;
        this.mRegistrationManager = iRegistrationManager;
        iRegistrationManager.refreshAuEmergencyProfile(this.mPhoneId);
        ImsRegistration imsRegistration = this.mRegistration;
        if (imsRegistration != null) {
            this.mMno = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        } else {
            ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
            if (imsProfile != null) {
                this.mMno = Mno.fromName(imsProfile.getMnoName());
            }
        }
        this.mE911RegiTime = getE911RegiTime();
        EmergencyCallStateMachine emergencyCallStateMachine = new EmergencyCallStateMachine(this.mContext, this, this.mRegistration, this.mModule, this.mMno, this.mVolteSvcIntf, this.mListeners, this.mRegistrationManager, this.mMediaController, "EmergencyCallStateMachine", this.mLooper);
        this.smCallStateMachine = emergencyCallStateMachine;
        emergencyCallStateMachine.init();
        this.mMediaController.registerForMediaEvent(this);
        Log.i(this.LOG_TAG, "start EmergencyCallStateMachine");
        this.smCallStateMachine.start();
        this.mImsCallSessionEventHandler = new ImsCallSessionEventHandler(this, this.mModule, this.mRegistration, this.mRegistrationManager, this.mMno, this.mAm, this.smCallStateMachine, this.mCallProfile, this.mVolteSvcIntf, this.mMediaController);
        this.mImsCallDedicatedBearer = new ImsCallDedicatedBearer(this, this.mModule, this.mRegistration, this.mRegistrationManager, this.mMno, this.mAm, this.smCallStateMachine);
        this.mDiagnosisController = new DiagnosisController(this.smCallStateMachine);
        this.mVolteSvcIntf.registerForCallStateEvent(this.mVolteStackEventHandler, 1, null);
        this.mVolteSvcIntf.registerForCurrentLocationDiscoveryDuringEmergencyCallEvent(this.mVolteStackEventHandler, 8, null);
        setIsNrSaMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IUserAgent getEmergencyUa() {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager != null) {
            return registrationManager.getUserAgentOnPdn(15, this.mPhoneId);
        }
        return null;
    }

    protected void setPhoneId(int i) {
        this.mPhoneId = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNoNextPcscf(int i) {
        IRegistrationGovernor emergencyGovernor;
        IRegistrationManager iRegistrationManager = this.mRegistrationManager;
        boolean isNoNextPcscf = (iRegistrationManager == null || (emergencyGovernor = iRegistrationManager.getEmergencyGovernor(this.mPhoneId)) == null) ? false : emergencyGovernor.isNoNextPcscf();
        Log.i(this.LOG_TAG, "TMO_E911 isNoNextPcscf = " + isNoNextPcscf);
        return isNoNextPcscf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasInProgressEmergencyTask() {
        IRegistrationGovernor emergencyGovernor;
        IRegistrationManager iRegistrationManager = this.mRegistrationManager;
        if (iRegistrationManager == null || (emergencyGovernor = iRegistrationManager.getEmergencyGovernor(this.mPhoneId)) == null) {
            return false;
        }
        RegistrationConstants.RegisterTaskState state = emergencyGovernor.getState();
        Log.i(this.LOG_TAG, "emergency Task status : " + state);
        return state == RegistrationConstants.RegisterTaskState.DEREGISTERING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needStartTimerOnAlerting() {
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile == null) {
            Log.i(this.LOG_TAG, "needStartTimerOnAlerting, EmergencyProfile is null!");
            return false;
        }
        return imsProfile.getNeedStartE911TimerOnAlerting();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needRemoveTimerOn18X() {
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile == null) {
            Log.i(this.LOG_TAG, "needRemoveTimerOn18X, EmergencyProfile is null!");
            return false;
        }
        boolean needRemoveE911TimerOn18x = imsProfile.getNeedRemoveE911TimerOn18x();
        if (!this.mMno.isKor() && this.mMno != Mno.VZW && !needRemoveE911TimerOn18x) {
            return false;
        }
        Log.e(this.LOG_TAG, "E911 Timer removed if 180 / 183 received");
        return true;
    }

    protected long getDelayLte911Fail(Mno mno) {
        int lte911FailFromEmergencyProfile;
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (mno == Mno.KDDI) {
            if (imsProfile != null && SimUtil.getAvailableSimCount() > 1) {
                lte911FailFromEmergencyProfile = imsProfile.getE911PermFail();
            } else {
                if (!this.mModule.isRoaming(this.mPhoneId)) {
                    return 0L;
                }
                lte911FailFromEmergencyProfile = getLte911FailFromEmergencyProfile();
            }
        } else if (mno == Mno.VZW) {
            if (ImsRegistry.getPdnController().isEpdgConnected(this.mPhoneId)) {
                lte911FailFromEmergencyProfile = getWlan911Fail();
            } else {
                lte911FailFromEmergencyProfile = getLte911Fail();
            }
        } else {
            if (this.mE911RegiTime > 0) {
                Log.i(this.LOG_TAG, "getDelayLte911Fail - 0, RegiMgr trigger Fail timer");
                return 0L;
            }
            lte911FailFromEmergencyProfile = getLte911FailFromEmergencyProfile();
        }
        return lte911FailFromEmergencyProfile * 1000;
    }

    @Override // com.sec.internal.ims.servicemodules.volte2.ImsCallSession
    public boolean isQuantumEncryptionServiceAvailable() {
        Log.i(this.LOG_TAG, "isQuantumEncryptionServiceAvailable: not support for emergency call");
        return false;
    }
}
