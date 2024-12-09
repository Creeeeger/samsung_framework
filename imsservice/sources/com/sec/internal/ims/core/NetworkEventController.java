package com.sec.internal.ims.core;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.InetAddresses;
import android.net.Uri;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import com.sec.epdg.EpdgManager;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.core.PdnFailReason;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.NetworkState;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.RegistrationManager;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DmConfigModule;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
class NetworkEventController {
    private static final int EPDG_EVENT_TIMER = 121000;
    static final String IMS_DM_START = "10";
    private static final String LOG_TAG = "RegiMgr-NetEvtCtr";
    protected ICmcAccountManager mCmcAccountManager;
    protected Context mContext;
    protected SimpleEventLog mEventLog;
    protected IImsFramework mImsFramework;
    protected List<String> mLastPcscfList;
    protected PdnController mPdnController;
    protected IRcsPolicyManager mRcsPolicyManager;
    protected RegistrationManagerHandler mRegHandler;
    protected RegistrationManagerBase mRegMan;
    protected List<ISimManager> mSimManagers;
    protected ITelephonyManager mTelephonyManager;
    protected IVolteServiceModule mVsm;
    protected PendingIntent mRetryIntentOnPdnFail = null;
    private int mNetType = 0;
    private boolean mWiFi = false;
    private boolean mNwChanged = false;

    private boolean isHandoverBetweenEpdgAndLeagacy(int i, int i2) {
        return (i == i2 || i2 == 0 || ((i != 18 || i2 == 13) && (i == 13 || i2 != 18))) ? false : true;
    }

    NetworkEventController(Context context) {
        this.mContext = context;
    }

    NetworkEventController(Context context, PdnController pdnController, ITelephonyManager iTelephonyManager, List<ISimManager> list, ICmcAccountManager iCmcAccountManager, IRcsPolicyManager iRcsPolicyManager, RegistrationManagerBase registrationManagerBase, IImsFramework iImsFramework) {
        this.mContext = context;
        this.mPdnController = pdnController;
        this.mTelephonyManager = iTelephonyManager;
        this.mSimManagers = list;
        this.mCmcAccountManager = iCmcAccountManager;
        this.mRcsPolicyManager = iRcsPolicyManager;
        this.mRegMan = registrationManagerBase;
        this.mImsFramework = iImsFramework;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 300);
    }

    public void setVolteServiceModule(IVolteServiceModule iVolteServiceModule) {
        this.mVsm = iVolteServiceModule;
    }

    public void setRegistrationHandler(RegistrationManagerHandler registrationManagerHandler) {
        this.mRegHandler = registrationManagerHandler;
    }

    public String getPcscfIpAddress(IRegisterTask iRegisterTask, String str) {
        if (iRegisterTask.getMno() == Mno.MTS_RUSSIA && iRegisterTask.isRcsOnly() && isNewPcscfListAvailable(iRegisterTask)) {
            iRegisterTask.getGovernor().resetPcscfList();
        }
        if (!iRegisterTask.getGovernor().hasValidPcscfIpList()) {
            List<String> retrievePcscfByProfileSettings = RegistrationUtils.retrievePcscfByProfileSettings(iRegisterTask, this.mPdnController, this.mRcsPolicyManager, this.mTelephonyManager.getIsimPcscf());
            this.mLastPcscfList = retrievePcscfByProfileSettings;
            if (CollectionUtils.isNullOrEmpty(retrievePcscfByProfileSettings)) {
                return null;
            }
            List<String> checkValidPcscfIp = iRegisterTask.getGovernor().checkValidPcscfIp(lookupPcscfIfRequired(iRegisterTask, this.mLastPcscfList, str));
            if (CollectionUtils.isNullOrEmpty(checkValidPcscfIp)) {
                return null;
            }
            iRegisterTask.getGovernor().updatePcscfIpList(checkValidPcscfIp);
            this.mRcsPolicyManager.updateDualRcsPcscfIp(iRegisterTask, checkValidPcscfIp);
            return iRegisterTask.getGovernor().getCurrentPcscfIp();
        }
        this.mRcsPolicyManager.updateDualRcsPcscfIp(iRegisterTask, null);
        return iRegisterTask.getGovernor().getCurrentPcscfIp();
    }

    @SuppressLint({"NewApi"})
    boolean isDomainPattern(String str) {
        return (TextUtils.isEmpty(str) || !Patterns.DOMAIN_NAME.matcher(str).matches() || InetAddresses.isNumericAddress(str)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0097, code lost:
    
        r6 = r13.mRcsPolicyManager.selectRcsTransportType(r14, "TLS");
        r7 = r13.mRcsPolicyManager.selectRcsDnsType(r14, r4);
        com.sec.internal.log.IMSLog.i(com.sec.internal.ims.core.NetworkEventController.LOG_TAG, r14.getPhoneId(), "ipver for NAPTR : " + r7);
        r14.setState(com.sec.internal.constants.ims.core.RegistrationConstants.RegisterTaskState.RESOLVING);
        r13.mRegMan.sendDnsQuery(r14, r16, r3, r4, "NAPTR", r6, r7, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> lookupPcscfIfRequired(com.sec.internal.interfaces.ims.core.IRegisterTask r14, java.util.List<java.lang.String> r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.NetworkEventController.lookupPcscfIfRequired(com.sec.internal.interfaces.ims.core.IRegisterTask, java.util.List, java.lang.String):java.util.List");
    }

    void onEpdgConnected(int i) {
        this.mRegHandler.removeMessages(135);
        this.mRegMan.updatePani(i);
        IMSLog.i(LOG_TAG, i, "onEpdgConnected:");
        if (RegistrationUtils.getNetworkEvent(i) == null) {
            return;
        }
        RegistrationUtils.getNetworkEvent(i).isEpdgConnected = true;
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().getPdnType() == 11) {
                    IMSLog.i(LOG_TAG, i, "onEpdgConnected: " + next.getState() + " mIsUpdateRegistering=" + next.mIsUpdateRegistering + " task=" + next.getProfile().getName() + " mno=" + next.mMno);
                    next.getGovernor().onEpdgConnected();
                    RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERED;
                    RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.REGISTERING;
                    if (next.isOneOf(registerTaskState, registerTaskState2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("EPDG HO : L2");
                        sb.append(this.mPdnController.getEpdgPhysicalInterface(i) == 2 ? "C" : "W");
                        next.setReason(sb.toString());
                        next.setEpdgHandoverInProgress(true);
                        next.setRegiRequestType(DiagnosisConstants.REGI_REQC.HAND_OVER);
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.EPDG_CONNECTED, (next.getState() == registerTaskState2 || next.getGovernor().blockImmediatelyUpdateRegi()) ? false : true);
                    } else {
                        this.mRegMan.tryRegister(i);
                    }
                }
            }
        }
    }

    void onEpdgDisconnected(int i) {
        this.mRegHandler.removeMessages(135);
        this.mRegMan.updatePani(i);
        IMSLog.i(LOG_TAG, i, "onEpdgDisconnected:");
        if (RegistrationUtils.getNetworkEvent(i) == null) {
            return;
        }
        RegistrationUtils.getNetworkEvent(i).isEpdgConnected = false;
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().getPdnType() == 11) {
                    IMSLog.i(LOG_TAG, i, "onEpdgDisconnected: " + next.getState() + " mIsUpdateRegistering=" + next.mIsUpdateRegistering + " task=" + next.getProfile().getName() + " mno=" + next.mMno);
                    IRegistrationGovernor governor = next.getGovernor();
                    governor.onEpdgDisconnected();
                    RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERED;
                    RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.REGISTERING;
                    if (next.isOneOf(registerTaskState, registerTaskState2)) {
                        if (governor.checkEmergencyInProgress() && next.getState() == registerTaskState) {
                            IMSLog.i(LOG_TAG, i, "onEpdgDisconnected: Skip re-registration due to Emergency registration");
                            RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
                            registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(27, i, 0, null), 300L);
                            return;
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("EPDG HO : ");
                            sb.append(this.mPdnController.getEpdgPhysicalInterface(i) == 2 ? "C" : "W");
                            sb.append("2L");
                            next.setReason(sb.toString());
                            next.setEpdgHandoverInProgress(true);
                            this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.EPDG_DISCONNECTED, next.getState() != registerTaskState2);
                        }
                    } else {
                        this.mRegMan.tryRegister(i);
                    }
                }
            }
        }
    }

    protected void onEpdgDeregisterRequested(int i) {
        this.mRegMan.sendDeregister(124, i);
    }

    protected void onPdnConnecting(int i, final int i2) {
        SlotBasedConfig.getInstance(i).getRegistrationTasks().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.NetworkEventController$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onPdnConnecting$0;
                lambda$onPdnConnecting$0 = NetworkEventController.lambda$onPdnConnecting$0((RegisterTask) obj);
                return lambda$onPdnConnecting$0;
            }
        }).map(new NetworkEventController$$ExternalSyntheticLambda1()).forEach(new Consumer() { // from class: com.sec.internal.ims.core.NetworkEventController$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((IRegistrationGovernor) obj).onPdnConnecting(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onPdnConnecting$0(RegisterTask registerTask) {
        return registerTask.getPdnType() == 11;
    }

    protected void onPdnConnected(RegisterTask registerTask) {
        boolean z;
        if (registerTask == null) {
            IMSLog.e(LOG_TAG, "task is null. Skip pdnConnected event");
            return;
        }
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        IMSLog.i(LOG_TAG, phoneId, "onPdnConnected: task=" + profile.getName() + " state=" + registerTask.getState());
        if (registerTask.getMno().isEur() && registerTask.getPdnType() == 11) {
            registerTask.getGovernor().releaseThrottle(6);
        }
        if (registerTask.getGovernor().needPendingPdnConnected()) {
            return;
        }
        if (registerTask.getMno().isChn() && profile.hasEmergencySupport()) {
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(phoneId);
            if (pendingRegistrationInternal != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                while (it.hasNext()) {
                    if (it.next().getProfile().hasEmergencySupport()) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                IMSLog.i(LOG_TAG, phoneId, "onPdnConnected: Emergency task already removed");
                return;
            }
        }
        if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTING)) {
            registerTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
            registerTask.getGovernor().resetPdnFailureInfo();
            profile.setUicclessEmergency(false);
            if (profile.hasEmergencySupport()) {
                boolean needEmergencyRegistration = needEmergencyRegistration(registerTask);
                IMSLog.i(LOG_TAG, phoneId, "onPdnConnected: need emergency Registration: " + needEmergencyRegistration);
                profile.setUicclessEmergency(needEmergencyRegistration ^ true);
                this.mRegMan.removeE911RegiTimer();
                if (this.mPdnController.isEmergencyEpdgConnected(phoneId)) {
                    registerTask.setRegistrationRat(18);
                }
            }
            registerTask.getGovernor().onPdnConnected();
            this.mRegMan.tryRegister(registerTask);
        }
    }

    boolean isTaskHasSepecificPdnType(IRegisterTask iRegisterTask) {
        return (iRegisterTask.getProfile() == null || iRegisterTask.getProfile().getPdnType() == -1) ? false : true;
    }

    protected void onPdnDisconnected(IRegisterTask iRegisterTask) {
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "onPdnDisconnected: " + iRegisterTask.getState());
        ISimManager iSimManager = this.mSimManagers.get(iRegisterTask.getPhoneId());
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(iRegisterTask.getPhoneId());
        if (pendingRegistrationInternal == null) {
            return;
        }
        RegistrationConstants.RegisterTaskState state = iRegisterTask.getState();
        RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERED;
        if (state == registerTaskState) {
            iRegisterTask.setDeregiReason(2);
        }
        RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.REGISTERING;
        if (iRegisterTask.isOneOf(registerTaskState2, registerTaskState)) {
            iRegisterTask.setReason("pdn disconnected - REGISTERED or REGISTERING");
            if (RegistrationUtils.isCmcProfile(iRegisterTask.getProfile()) && iRegisterTask.getState() == registerTaskState2) {
                iRegisterTask.getGovernor().releaseThrottle(5);
            }
            if (isTaskHasSepecificPdnType(iRegisterTask)) {
                if ((iRegisterTask.getMno() == Mno.KDDI && iRegisterTask.getProfile().hasEmergencySupport()) || (iRegisterTask.getMno().isAus() && iSimManager != null && !iSimManager.isSimLoaded())) {
                    this.mRegMan.tryDeregisterInternal(iRegisterTask, true, false);
                    this.mRegMan.stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
                } else {
                    this.mRegMan.tryDeregisterInternal(iRegisterTask, true, true);
                }
            } else {
                this.mRegMan.tryDeregisterInternal(iRegisterTask, true, false);
                this.mRegMan.stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
            }
        } else if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.EMERGENCY) {
            iRegisterTask.setReason("pdn disconnected - EMERGENCY");
            iRegisterTask.setDeregiReason(3);
            this.mRegMan.tryDeregisterInternal(iRegisterTask, true, false);
            this.mRegMan.stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
            pendingRegistrationInternal.remove(iRegisterTask);
            SlotBasedConfig.getInstance(iRegisterTask.getPhoneId()).removeExtendedProfile(iRegisterTask.getProfile().getId());
        } else if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.DEREGISTERING) {
            Log.i(LOG_TAG, "PDN disconnected received in DEREGISTERING state, send DEREGISTER_TIMEOUT event");
            this.mRegMan.stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
            if (this.mRegHandler.hasMessages(107, iRegisterTask)) {
                this.mRegHandler.removeMessages(107, iRegisterTask);
            }
            RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
            registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(107, iRegisterTask));
        } else {
            if (isTaskHasSepecificPdnType(iRegisterTask)) {
                boolean z = ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON;
                if ((iRegisterTask.getMno() == Mno.KDDI && iRegisterTask.getProfile().hasEmergencySupport()) || ((iRegisterTask.getMno().isChn() || iRegisterTask.getMno().isCanada()) && z && iRegisterTask.getPdnType() == 11)) {
                    this.mRegMan.stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
                    iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
                } else if (iRegisterTask.getState() != RegistrationConstants.RegisterTaskState.IDLE) {
                    iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONNECTING);
                }
            } else {
                this.mRegMan.stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            RegistrationManagerHandler registrationManagerHandler2 = this.mRegHandler;
            registrationManagerHandler2.sendMessageDelayed(registrationManagerHandler2.obtainMessage(2, Integer.valueOf(iRegisterTask.getPhoneId())), 1000L);
            if (iRegisterTask.getMno() == Mno.VZW) {
                iRegisterTask.getGovernor().releaseThrottle(5);
            }
        }
        if (iRegisterTask.getMno().isKor() && !iRegisterTask.isRcsOnly()) {
            iRegisterTask.getGovernor().releaseThrottle(5);
        }
        iRegisterTask.resetTaskOnPdnDisconnected();
        if (iRegisterTask.getMno().isKor()) {
            if (!iRegisterTask.isRcsOnly()) {
                this.mRegMan.setOmadmState(iRegisterTask.getPhoneId(), RegistrationManager.OmadmConfigState.IDLE);
                iRegisterTask.getGovernor().resetPcscfPreference();
                iRegisterTask.getGovernor().resetIPSecAllow();
            }
            iRegisterTask.getGovernor().resetAllRetryFlow();
        }
        RegistrationManagerHandler registrationManagerHandler3 = this.mRegHandler;
        registrationManagerHandler3.sendMessage(registrationManagerHandler3.obtainMessage(136, iRegisterTask.getPhoneId(), 0, null));
    }

    boolean needEmergencyRegistration(IRegisterTask iRegisterTask) {
        int phoneId = iRegisterTask.getPhoneId();
        ISimManager iSimManager = this.mSimManagers.get(phoneId);
        if (iSimManager == null || iSimManager.hasNoSim() || iRegisterTask.getMno().isKor() || ImsUtil.needForceToUsePsE911(phoneId, iSimManager.hasNoSim())) {
            return false;
        }
        if (iRegisterTask.getMno() == Mno.USCC && !iSimManager.isISimDataValid()) {
            return false;
        }
        if (iRegisterTask.getMno().isAus() && NetworkUtil.is3gppPsVoiceNetwork(iRegisterTask.getRegistrationRat()) && iRegisterTask.getPdnType() == 15 && (this.mPdnController.getVoiceRegState(phoneId) == 2 || this.mPdnController.getVoiceRegState(phoneId) == 1)) {
            Log.i(LOG_TAG, "needEmergencyRegistration[AUS]: limited mode but has valid SIM. Try register.");
            return true;
        }
        if (iRegisterTask.getMno().isCanada() && this.mPdnController.hasEmergencyServiceOnly(iRegisterTask.getPhoneId())) {
            Log.i(LOG_TAG, "needEmergencyRegistration: limited mode. Dont Skip for Canada.");
            return true;
        }
        if (iRegisterTask.getMno() != Mno.DOCOMO && this.mPdnController.hasEmergencyServiceOnly(iRegisterTask.getPhoneId())) {
            boolean emcAttachAuth = this.mTelephonyManager.getEmcAttachAuth(SimUtil.getSubId(phoneId));
            IMSLog.i(LOG_TAG, phoneId, "needEmergencyRegistration: emcAttachAuth=" + emcAttachAuth);
            if (iRegisterTask.getMno() == Mno.GCF && emcAttachAuth) {
                Log.i(LOG_TAG, "needEmergencyRegistration: limited mode. Dont Skip for GCF if EmcAttachAuth success");
                return true;
            }
            Log.i(LOG_TAG, "needEmergencyRegistration: limited mode. skip emergency registration.");
            return false;
        }
        if (iRegisterTask.getMno() != Mno.VZW || (this.mTelephonyManager.validateMsisdn(SimUtil.getSubId(phoneId)) && !this.mRegMan.isSelfActivationRequired(phoneId))) {
            return true;
        }
        Log.i(LOG_TAG, "Get PCO 5. Skip emergency registration.");
        return false;
    }

    void updateRat(int i, int i2) {
        UriGeneratorFactory uriGeneratorFactory = UriGeneratorFactory.getInstance();
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i2);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                this.mRegMan.updateRat(next, i);
                ImsRegistration imsRegistration = next.mReg;
                if (imsRegistration != null) {
                    Iterator it2 = imsRegistration.getImpuList().iterator();
                    while (it2.hasNext()) {
                        ImsUri uri = ((NameAddr) it2.next()).getUri();
                        for (UriGenerator.URIServiceType uRIServiceType : UriGenerator.URIServiceType.values()) {
                            if (uriGeneratorFactory.contains(uri, uRIServiceType)) {
                                uriGeneratorFactory.get(uri, uRIServiceType).updateRat(i);
                            }
                        }
                    }
                }
            }
        }
    }

    public int getNetType() {
        return this.mNetType;
    }

    public boolean isWiFi() {
        return this.mWiFi;
    }

    public boolean isNwChanged() {
        return this.mNwChanged;
    }

    public void setNwChanged(boolean z) {
        this.mNwChanged = z;
    }

    void onNetworkChanged(int i, boolean z, int i2) {
        NetworkState networkState;
        boolean isSuspendedWhileIrat = SlotBasedConfig.getInstance(i2).isSuspendedWhileIrat();
        IMSLog.i(LOG_TAG, i2, "onNetworkChanged: suspendByIrat=" + isSuspendedWhileIrat);
        if (!isSuspendedWhileIrat) {
            if (this.mPdnController.isNeedCellLocationUpdate() && (networkState = this.mPdnController.getNetworkState(i2)) != null) {
                networkState.setAllCellInfo(null);
            }
            this.mRegMan.updatePani(i2);
            updateRat(i, i2);
            notifyNetworkEvent(i, z, i2);
            return;
        }
        this.mNetType = i;
        this.mWiFi = z;
        this.mNwChanged = true;
    }

    void notifyNetworkEvent(int i, boolean z, int i2) {
        NetworkEvent networkEvent = RegistrationUtils.getNetworkEvent(i2);
        NetworkState networkState = this.mPdnController.getNetworkState(i2);
        if (networkEvent == null || networkState == null) {
            return;
        }
        if (SipTestManagerFactory.isSipTest()) {
            SipTestManagerFactory.getSipTestManager().notifyNetworkEvent(z, networkState, i2);
        }
        NetworkEvent buildNetworkEvent = NetworkEvent.buildNetworkEvent(i2, i, this.mTelephonyManager.getVoiceNetworkType(), this.mTelephonyManager.getCallState(), z, networkState.isEpdgConnected(), networkState.isEpdgAVailable(), networkEvent, networkState);
        if (buildNetworkEvent.equalsIgnoreEpdg(networkEvent)) {
            return;
        }
        onNetworkEventChanged(buildNetworkEvent, i2);
    }

    void reconnectPdn(RegisterTask registerTask) {
        if (registerTask.getProfile().hasEmergencySupport()) {
            return;
        }
        int decidedRat = RegistrationRatDecider.getDecidedRat(this.mContext, registerTask, this.mPdnController, this.mVsm);
        int selectPdnType = RegistrationUtils.selectPdnType(registerTask.getProfile(), decidedRat);
        int phoneId = registerTask.getPhoneId();
        NetworkEvent networkEvent = RegistrationUtils.getNetworkEvent(phoneId);
        if (networkEvent == null) {
            return;
        }
        String networkTypeName = TelephonyManagerExt.getNetworkTypeName(networkEvent.network);
        if (decidedRat == 0 && !networkEvent.outOfService) {
            IMSLog.i(LOG_TAG, phoneId, "Cancel ongoing PDN in " + networkTypeName);
            this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            if (registerTask.getMno() == Mno.VZW && NetworkUtil.is3gppLegacyNetwork(RegistrationUtils.getNetworkEvent(phoneId).network)) {
                registerTask.getGovernor().releaseThrottle(5);
            }
            registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            return;
        }
        if (selectPdnType != registerTask.getPdnType()) {
            IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "pdn type has been changed, reconnect.");
            this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            registerTask.setPdnType(selectPdnType);
            registerTask.setState(RegistrationConstants.RegisterTaskState.CONNECTING);
            if (registerTask.getGovernor().isMobilePreferredForRcs() && selectPdnType == 0) {
                PdnController pdnController = this.mPdnController;
                int translateNetworkBearer = pdnController.translateNetworkBearer(pdnController.getDefaultNetworkBearer());
                IMSLog.i(LOG_TAG, phoneId, "reconnectPdn startTimsTimer rcs pdn = " + selectPdnType);
                if (translateNetworkBearer == 1) {
                    registerTask.mGovernor.stopTimsTimer(RegistrationConstants.REASON_INTERNET_PDN_REQUEST);
                    this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                }
                registerTask.mGovernor.startTimsTimer(RegistrationConstants.REASON_INTERNET_PDN_REQUEST);
            }
            this.mPdnController.startPdnConnectivity(selectPdnType, registerTask, RegistrationUtils.getPhoneIdForStartConnectivity(registerTask));
            if (registerTask.getMno().isOneOf(Mno.VZW, Mno.CTCMO, Mno.CTC, Mno.ATT) || registerTask.getMno().isEmeasewaoce() || !(!registerTask.getMno().isKor() || registerTask.isRcsOnly() || RegistrationUtils.isCmcProfile(registerTask.getProfile()))) {
                registerTask.getGovernor().startTimsTimer(RegistrationConstants.REASON_IMS_PDN_REQUEST);
            }
        }
    }

    void onRetryTimeExpired(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().getPdnType() == 11) {
                    PendingIntent pendingIntent = this.mRetryIntentOnPdnFail;
                    if (pendingIntent != null) {
                        AlarmTimer.stop(this.mContext, pendingIntent);
                        this.mRetryIntentOnPdnFail = null;
                    }
                    Log.i(LOG_TAG, "RetrySetupEventReceiver: release throttle pdn fail");
                    next.getGovernor().releaseThrottle(4);
                    RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
                    registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(2, Integer.valueOf(i)));
                }
            }
        }
    }

    void onPdnFailed(final int i, final int i2, final int i3) {
        int oppositeSimSlot;
        ISimManager iSimManager;
        SlotBasedConfig.getInstance(i).getRegistrationTasks().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.NetworkEventController$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onPdnFailed$2;
                lambda$onPdnFailed$2 = NetworkEventController.lambda$onPdnFailed$2((RegisterTask) obj);
                return lambda$onPdnFailed$2;
            }
        }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.NetworkEventController$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NetworkEventController.this.lambda$onPdnFailed$3(i2, i, i3, (RegisterTask) obj);
            }
        });
        if (SimUtil.isDualIMS() && (iSimManager = this.mSimManagers.get((oppositeSimSlot = SimUtil.getOppositeSimSlot(i)))) != null && iSimManager.isSimAvailable()) {
            this.mRegHandler.sendTryRegister(oppositeSimSlot);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onPdnFailed$2(RegisterTask registerTask) {
        return registerTask.getPdnType() == 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPdnFailed$3(int i, int i2, int i3, RegisterTask registerTask) {
        PdnFailReason valueOf = PdnFailReason.valueOf(i);
        this.mEventLog.logAndAdd(i2, registerTask, String.format(Locale.US, "onPdnFailed: %s(%d)", valueOf, Integer.valueOf(i)));
        IMSLog.c(LogClass.REGI_PDN_FAILED, i2 + ",PDN FAIL:" + valueOf + "," + i);
        registerTask.getGovernor().onPdnRequestFailed(valueOf, i3);
        long retryTimeOnPdnFail = registerTask.getGovernor().getRetryTimeOnPdnFail();
        if (retryTimeOnPdnFail > 0) {
            PendingIntent pendingIntent = this.mRetryIntentOnPdnFail;
            if (pendingIntent != null) {
                AlarmTimer.stop(this.mContext, pendingIntent);
                this.mRetryIntentOnPdnFail = null;
            }
            Intent intent = new Intent(ImsConstants.Intents.ACTION_RETRYTIME_EXPIRED);
            intent.putExtra(ImsConstants.Intents.EXTRA_PHONE_ID, i2);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            this.mRetryIntentOnPdnFail = broadcast;
            AlarmTimer.start(this.mContext, broadcast, retryTimeOnPdnFail);
            registerTask.getGovernor().setRetryTimeOnPdnFail(-1L);
        }
    }

    boolean hasRetryIntentOnPdnFail() {
        return this.mRetryIntentOnPdnFail != null;
    }

    void onCheckUnprocessedOmadmConfig(int i) {
        if (this.mRegMan.getUnprocessedOmadmConfig(i)) {
            Log.i(LOG_TAG, "onCheckUnprocessedOmadmConfig<" + i + ">: triggerOmadmConfig");
            this.mRegMan.setOmadmState(i, RegistrationManager.OmadmConfigState.IDLE);
            triggerOmadmConfig(i);
        }
    }

    void onDmConfigCompleted(int i, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("onDmConfigCompleted<");
        sb.append(i);
        sb.append(">: ");
        sb.append(z ? "SUCCESS" : "TIMEOUT");
        Log.i(LOG_TAG, sb.toString());
        if (this.mRegMan.getUnprocessedOmadmConfig(i) && z) {
            this.mRegMan.setUnprocessedOmadmConfig(i, false);
        }
        this.mRegHandler.removeDmConfigTimeout(i);
        this.mRegMan.setOmadmState(i, RegistrationManager.OmadmConfigState.FINISHED);
        Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
        while (it.hasNext()) {
            it.next().getGovernor().checkProfileUpdateFromDM(true);
        }
        this.mRegMan.tryRegister();
    }

    void triggerOmadmConfig(int i) {
        Log.i(LOG_TAG, "triggerOmadmConfig<" + i + "> - mOmadmState : " + this.mRegMan.getOmadmState(i));
        RegistrationManager.OmadmConfigState omadmState = this.mRegMan.getOmadmState(i);
        RegistrationManager.OmadmConfigState omadmConfigState = RegistrationManager.OmadmConfigState.TRIGGERED;
        if (omadmState != omadmConfigState) {
            this.mRegMan.setUnprocessedOmadmConfig(i, true);
            this.mRegMan.setOmadmState(i, omadmConfigState);
            this.mRegHandler.sendDmConfigTimeout(i, getClass().getSimpleName());
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                RegisterTask next = it.next();
                if (next.getMno() == Mno.SKT && !next.isRcsOnly() && next.getProfile().getCmcType() == 0) {
                    ImsProfile profile = next.getProfile();
                    ArrayList arrayList = new ArrayList();
                    profile.setPcscfList(arrayList);
                    profile.setLboPcscfAddressList(arrayList);
                    profile.setLboPcscfPort(-1);
                    next.setProfile(profile);
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/Address", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/Address", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/Address", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/Address", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/Address", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/Address", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/AddressType", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/AddressType", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/AddressType", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/AddressType", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/AddressType", "");
                        contentValues.put("./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/AddressType", "");
                        contentValues.put(DmConfigModule.INTERNAL_KEY_PROCESS_NAME, "com.sec.imsservice");
                        this.mContext.getContentResolver().insert(UriUtil.buildUri(DmConfigModule.CONFIG_DM_PROVIDER, next.getPhoneId()), contentValues);
                        break;
                    } catch (Exception e) {
                        SimpleEventLog simpleEventLog = this.mEventLog;
                        StringBuilder sb = new StringBuilder();
                        sb.append("triggerOmadmConfig : update failure - ");
                        sb.append(e.getMessage() != null ? e.getMessage() : "null");
                        simpleEventLog.logAndAdd(sb.toString());
                    }
                }
            }
            setOmaDmStateDB(i, this.mRegMan.getOmadmState(i));
        }
    }

    private void setOmaDmStateDB(int i, RegistrationManager.OmadmConfigState omadmConfigState) {
        if (SimUtil.getMno().isKor() && omadmConfigState == RegistrationManager.OmadmConfigState.TRIGGERED) {
            Log.i(LOG_TAG, "setOmaDmStateDB<" + i + ">: " + omadmConfigState);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("dm_state", IMS_DM_START);
                contentValues.put("sim_slot_id", Integer.valueOf(i));
                this.mContext.getContentResolver().update(Uri.parse("content://com.ims.dm.ContentProvider/imsDmStart"), contentValues, null, null);
            } catch (Exception e) {
                SimpleEventLog simpleEventLog = this.mEventLog;
                StringBuilder sb = new StringBuilder();
                sb.append("setOmaDmStateDB : update failure - ");
                sb.append(e.getMessage() != null ? e.getMessage() : "null");
                simpleEventLog.logAndAdd(sb.toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f9, code lost:
    
        if (r1 == 20) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void onNetworkEventChanged(com.sec.internal.constants.ims.os.NetworkEvent r14, int r15) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.NetworkEventController.onNetworkEventChanged(com.sec.internal.constants.ims.os.NetworkEvent, int):void");
    }

    boolean handleNetworkEventOnRegister(int i, RegisterTask registerTask, NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        IVolteServiceModule iVolteServiceModule;
        if (networkEvent.outOfService) {
            IMSLog.i(LOG_TAG, i, "out of service.");
            handleRestrictionOnNetworkEventChanged(i, registerTask, networkEvent);
            handleOutOfServiceOnNetworkEvnentChanged(registerTask, i);
            return false;
        }
        if (registerTask.getMno().isKor() && !registerTask.isRcsOnly() && registerTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING && networkEvent.network != registerTask.getRegistrationRat()) {
            Log.i(LOG_TAG, "onNetworkEventChanged: setRegistrationRat");
            registerTask.setRegistrationRat(networkEvent.network);
        }
        if (updateEpdgStatusOnNetworkEventChanged(registerTask, networkEvent, networkEvent2)) {
            return false;
        }
        if (registerTask.getMno() == Mno.VZW) {
            if (NetworkUtil.is3gppLegacyNetwork(networkEvent.network) && NetworkUtil.is3gppPsVoiceNetwork(networkEvent2.network) && this.mRegHandler.hasMessages(121, Integer.valueOf(i))) {
                this.mRegHandler.removeMessages(121, Integer.valueOf(i));
                SlotBasedConfig.getInstance(i).enableSsac(true);
            }
            if (networkEvent.isVopsUpdated(networkEvent2) == NetworkEvent.VopsState.ENABLED && networkEvent.operatorNumeric.equals(networkEvent2.operatorNumeric)) {
                int intValue = DmConfigHelper.readInt(this.mContext, "tvolte_hys_timer", 60, i).intValue();
                IMSLog.i(LOG_TAG, i, "Pending re-regi to T_VoLTE_hys[" + intValue + "] secs.");
                if (this.mRegHandler.hasMessages(806)) {
                    this.mRegHandler.removeMessages(806);
                }
                this.mRegHandler.sendEmptyMessageDelayed(806, intValue * 1000);
                this.mRegMan.addPendingUpdateRegistration(registerTask, intValue);
                return false;
            }
            if (registerTask.getRegistrationRat() == 14 && NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network)) {
                int intValue2 = DmConfigHelper.readInt(this.mContext, "t_delay", 5, i).intValue();
                IMSLog.i(LOG_TAG, i, "onNetworkChanged: C2L, Tdelay=" + intValue2);
                if (intValue2 > 0) {
                    this.mRegMan.addPendingUpdateRegistration(registerTask, intValue2);
                    return false;
                }
            }
            if (this.mRegHandler.hasMessages(806)) {
                IMSLog.i(LOG_TAG, i, "do not update registration due to HYS");
                return false;
            }
        } else if (registerTask.getMno() == Mno.ATT) {
            if (this.mRegMan.getImsIconManager(registerTask.getPhoneId()) != null) {
                this.mRegMan.getImsIconManager(registerTask.getPhoneId()).updateRegistrationIcon();
            }
        } else if (registerTask.getMno() == Mno.SPRINT && !registerTask.isRcsOnly()) {
            if (networkEvent2.isDataRoaming != networkEvent.isDataRoaming || networkEvent2.isVoiceRoaming != networkEvent.isVoiceRoaming) {
                Log.i(LOG_TAG, "onNetworkChanged: roaming event changed, check location cache");
                registerTask.getGovernor().onLocationCacheExpiry();
            }
            if (networkEvent2.isPsOnlyReg != networkEvent.isPsOnlyReg || networkEvent2.isVoiceRoaming != networkEvent.isVoiceRoaming) {
                Log.i(LOG_TAG, "onNetworkEventChanged: roaming or ps-voice-only mode changed in registering/registered state");
                registerTask.getGovernor().onServiceStateDataChanged(networkEvent.isPsOnlyReg, networkEvent.isVoiceRoaming);
            }
        } else if (ConfigUtil.isRcsChn(registerTask.getMno()) && registerTask.isRcsOnly() && networkEvent.network == 16 && (iVolteServiceModule = this.mVsm) != null && iVolteServiceModule.hasCsCall(i)) {
            Log.i(LOG_TAG, "RCS deregister during CS call - GSM : same as OOS");
            registerTask.setDeregiReason(4);
            this.mRegMan.tryDeregisterInternal(registerTask, true, true);
            return false;
        }
        registerTask.setReason("by network event changed");
        this.mRegMan.updateRegistration(registerTask, RegistrationConstants.UpdateRegiReason.NETWORK_EVENT_CHANGED);
        return true;
    }

    boolean handleNetworkEventBeforeRegister(int i, RegisterTask registerTask, NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        int i2;
        IMSLog.i(LOG_TAG, i, "handleNetworkEventBeforeRegister: new network event=" + networkEvent + ", old network event=" + networkEvent2);
        boolean z = false;
        boolean z2 = (TextUtils.isEmpty(networkEvent2.operatorNumeric) || TextUtils.isEmpty(networkEvent.operatorNumeric) || TextUtils.equals(networkEvent2.operatorNumeric, networkEvent.operatorNumeric)) ? false : true;
        boolean z3 = networkEvent.isVopsUpdated(networkEvent2) == NetworkEvent.VopsState.ENABLED;
        if (registerTask.getMno().isOneOf(Mno.TMOUS, Mno.DISH)) {
            if (networkEvent.network == networkEvent2.network && !networkEvent.isWifiConnected) {
                IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: WiFi has turned off. release throttle.");
                registerTask.getGovernor().releaseThrottle(2);
            }
            if (registerTask.getGovernor().isThrottled()) {
                if (z2) {
                    registerTask.getGovernor().releaseThrottle(9);
                } else if (networkEvent.network != networkEvent2.network) {
                    registerTask.getGovernor().releaseThrottle(6);
                } else if (!networkEvent.outOfService && networkEvent2.outOfService) {
                    registerTask.getGovernor().releaseThrottle(14);
                }
            }
        }
        if (networkEvent.voiceOverPs == VoPsIndication.NOT_SUPPORTED && registerTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTING && registerTask.getPdnType() == 11 && NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network) && registerTask.getMno() != Mno.ATT && registerTask.getMno() != Mno.VZW && registerTask.getMno() != Mno.TRUEMOVE && registerTask.getMno() != Mno.AIS && registerTask.getMno() != Mno.SPRINT && !registerTask.getMno().isKor()) {
            this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
        }
        if (registerTask.getMno().isOneOf(Mno.BOG, Mno.TELECOM_ITALY, Mno.RJIL, Mno.H3G, Mno.CU) && registerTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTING && registerTask.getPdnType() == 11 && networkEvent.outOfService) {
            this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
        }
        if (RegistrationUtils.isCmcProfile(registerTask.getProfile()) && registerTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTING && networkEvent.isWifiConnected && !networkEvent2.isWifiConnected) {
            IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: Wifi connected in CMC profile. Stop the conneting PDN");
            this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
        }
        if (registerTask.getMno().isOneOf(Mno.CMCC, Mno.CU) && registerTask.getPdnType() == 11) {
            if (registerTask.getGovernor().isDelayedDeregisterTimerRunning()) {
                if (NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network)) {
                    IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: " + TelephonyManagerExt.getNetworkTypeName(networkEvent.network) + "attached while DelayedDeregisterTimer running.");
                    this.mRegMan.onDelayedDeregister(registerTask);
                } else {
                    IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: Do not stop IMS PDN on delayedDeregisterTimer running");
                }
                return false;
            }
            if (!NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network)) {
                registerTask.getGovernor().resetAllPcscfChecked();
            } else if (registerTask.getGovernor().isThrottled() && (i2 = networkEvent.network) == 20 && i2 != networkEvent2.network) {
                registerTask.getGovernor().releaseThrottle(6);
            }
            if (this.mTelephonyManager.getCallState() != 0 && networkEvent.network == 16) {
                return false;
            }
        }
        if (registerTask.getMno() == Mno.ROGERS) {
            boolean isHandoverBetweenEpdgAndLeagacy = isHandoverBetweenEpdgAndLeagacy(networkEvent.network, registerTask.getRegistrationRat());
            boolean z4 = NetworkUtil.is3gppLegacyNetwork(networkEvent.network) && "A4".equalsIgnoreCase(this.mTelephonyManager.getGroupIdLevel1(SimUtil.getSubId(i)));
            if (isHandoverBetweenEpdgAndLeagacy || z4) {
                if (isHandoverBetweenEpdgAndLeagacy) {
                    registerTask.setReason("Handover Between VoWifi and 2G/3G");
                } else {
                    registerTask.setReason("RWC 5G SIM doesn't support IMS on 2G/3G");
                }
                RegistrationConstants.RegisterTaskState state = registerTask.getState();
                RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.IDLE;
                if (state != registerTaskState) {
                    this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                    registerTask.setState(registerTaskState);
                }
                if (registerTask.getGovernor().isThrottled()) {
                    registerTask.getGovernor().releaseThrottle(6);
                }
            }
        }
        if (registerTask.getGovernor().isThrottled() && registerTask.getMno().isOneOf(Mno.TELUS, Mno.KOODO, Mno.ROGERS, Mno.VTR, Mno.EASTLINK, Mno.ATT) && z2) {
            registerTask.getGovernor().releaseThrottle(9);
        }
        if (registerTask.getGovernor().isThrottled() && registerTask.getMno().isOneOf(Mno.APT, Mno.YOIGO_SPAIN) && z2) {
            registerTask.getGovernor().releaseThrottle(6);
        }
        if (networkEvent.isDataRoaming && !registerTask.getGovernor().allowRoaming() && this.mPdnController.isNetworkRequested(registerTask)) {
            IMSLog.i(LOG_TAG, i, "stopPdnConnectivity(), task " + registerTask);
            this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            return false;
        }
        if (registerTask.getMno().isEmeasewaoce() && registerTask.getProfile().getPdnType() == 11 && registerTask.getGovernor().allowRoaming() && !networkEvent.outOfService && networkEvent2.isDataRoaming != networkEvent.isDataRoaming && registerTask.getGovernor().isThrottled()) {
            registerTask.getGovernor().releaseThrottle(11);
        }
        if (registerTask.getMno() == Mno.VZW || registerTask.getMno() == Mno.WIND) {
            if (!TextUtils.equals(networkEvent.operatorNumeric, networkEvent2.operatorNumeric)) {
                registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_PLMN_CHANGED);
                if (registerTask.getGovernor().getThrottleState() == IRegistrationGovernor.ThrottleState.PERMANENTLY_STOPPED) {
                    Log.i(LOG_TAG, "PLMN changed but Permanent Stopped. Do nothing!");
                } else {
                    if (networkEvent.voiceOverPs == VoPsIndication.SUPPORTED) {
                        registerTask.getGovernor().startTimsTimer(RegistrationConstants.REASON_PLMN_CHANGED);
                    }
                    if (registerTask.getGovernor().isThrottled()) {
                        registerTask.getGovernor().releaseThrottle(9);
                    }
                }
            }
            if (!DeviceUtil.isAirplaneModeOn(this.mContext) && !networkEvent.outOfService && networkEvent.voiceOverPs == VoPsIndication.SUPPORTED && NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network)) {
                z = true;
            }
            if ((registerTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTING && z) || z3) {
                registerTask.getGovernor().startTimsTimer(z3 ? RegistrationConstants.REASON_VOPS_CHANGED : RegistrationConstants.REASON_IMS_PDN_REQUEST);
            }
            if (networkEvent.network != networkEvent2.network && registerTask.getGovernor().isThrottled()) {
                registerTask.getGovernor().releaseThrottle(6);
            }
        }
        if (registerTask.getMno() == Mno.KDDI && networkEvent.network != networkEvent2.network && registerTask.getGovernor().isThrottled()) {
            Log.i(LOG_TAG, "Kddi throttled, check Network Map for network=" + networkEvent.network);
            int i3 = networkEvent.network;
            if (i3 == 13) {
                registerTask.getGovernor().releaseThrottle(12);
            } else if (i3 == 20) {
                registerTask.getGovernor().releaseThrottle(13);
            }
        }
        if (registerTask.getMno() == Mno.SPRINT && ImsProfile.hasVolteService(registerTask.getProfile()) && (networkEvent2.isPsOnlyReg != networkEvent.isPsOnlyReg || networkEvent2.isVoiceRoaming != networkEvent.isVoiceRoaming)) {
            Log.i(LOG_TAG, "onNetworkEventChanged: roaming or ps-voice-only mode changed in idle/connecting state");
            registerTask.getGovernor().onServiceStateDataChanged(RegistrationUtils.getNetworkEvent(i).isPsOnlyReg, RegistrationUtils.getNetworkEvent(i).isVoiceRoaming);
        }
        if (!registerTask.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED) || networkEvent2.network == networkEvent.network) {
            return true;
        }
        reconnectPdn(registerTask);
        return true;
    }

    private void handleNetworkEventOnDeregistering(int i, RegisterTask registerTask, NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        if (registerTask.getMno() == Mno.SPRINT && ImsProfile.hasVolteService(registerTask.getProfile()) && (networkEvent2.isPsOnlyReg != networkEvent.isPsOnlyReg || networkEvent2.isVoiceRoaming != networkEvent.isVoiceRoaming)) {
            IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: roaming or ps-voice-only mode changed in de-registering state");
            registerTask.getGovernor().onServiceStateDataChanged(networkEvent.isPsOnlyReg, networkEvent.isVoiceRoaming);
        }
        if (registerTask.getMno() == Mno.CU && registerTask.isKeepPdn() && registerTask.getDeregiReason() == 2 && RegistrationRatDecider.getDecidedRat(this.mContext, registerTask, this.mPdnController, this.mVsm) == 0) {
            IMSLog.i(LOG_TAG, i, "CU, if not in LTE,will stop pdn when in deregistering state caused by pdn lost");
            registerTask.setKeepPdn(false);
        }
    }

    private void handleNetworkEvent(int i, RegisterTask registerTask, NetworkEvent networkEvent, NetworkEvent networkEvent2, boolean z, boolean z2) {
        if (registerTask.getMno().isKor()) {
            handleRestrictionOnNetworkEventChanged(i, registerTask, networkEvent);
            boolean z3 = (TextUtils.isEmpty(networkEvent2.operatorNumeric) || TextUtils.isEmpty(networkEvent.operatorNumeric) || TextUtils.equals(networkEvent2.operatorNumeric, networkEvent.operatorNumeric)) ? false : true;
            if (registerTask.getGovernor().isThrottled() && registerTask.getGovernor().isThrottledforImsNotAvailable() && (z3 || this.mPdnController.isEpsOnlyReg(i))) {
                registerTask.getGovernor().releaseThrottle(9);
            }
            if (registerTask.getGovernor().isMobilePreferredForRcs()) {
                IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: event.isDataStateConnected: " + networkEvent.isDataStateConnected + " old.isDataStateConnected: " + networkEvent2.isDataStateConnected + " event.outOfService: " + networkEvent.outOfService + " old.outOfService: " + networkEvent2.outOfService + " task.getPdnType() " + registerTask.getPdnType() + " rat: " + registerTask.getRegistrationRat() + " isWifiConnected: " + this.mPdnController.isWifiConnected() + " " + registerTask.getProfile().getName() + "(" + registerTask.getState() + ")");
                if (((networkEvent.isDataStateConnected && !networkEvent2.isDataStateConnected) || (networkEvent.outOfService && !networkEvent2.outOfService)) && this.mPdnController.isWifiConnected() && registerTask.getPdnType() == 1 && registerTask.isOneOf(RegistrationConstants.RegisterTaskState.RESOLVING, RegistrationConstants.RegisterTaskState.RESOLVED, RegistrationConstants.RegisterTaskState.CONFIGURING, RegistrationConstants.RegisterTaskState.CONFIGURED, RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    isPreferredPdnForRCSRegister(registerTask, i, true);
                }
            }
            if (z || z2) {
                IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: do not call sendTryRegister");
            } else {
                IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: sendTryRegister");
                this.mRegHandler.sendTryRegister(i);
            }
        }
        if (networkEvent.isVopsUpdated(networkEvent2) == NetworkEvent.VopsState.DISABLED) {
            handleVopsDisabledOnNetworkEventChanged(registerTask, networkEvent, i);
        }
    }

    boolean updateEpdgStatusOnNetworkEventChanged(RegisterTask registerTask, NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        if (registerTask.getProfile().isEpdgSupported()) {
            if (networkEvent.isEpdgHOEvent(networkEvent2)) {
                return true;
            }
            if (registerTask.getMno() == Mno.VZW) {
                if ((this.mPdnController.isEpdgAvailable(registerTask.getPhoneId()) && networkEvent.network == 18 && networkEvent2.network == 18 && networkEvent.isPsOnlyReg != networkEvent2.isPsOnlyReg) | (this.mPdnController.isEpdgConnected(registerTask.getPhoneId()) && networkEvent.network != networkEvent2.network)) {
                    RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
                    registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(135, registerTask), 121000L);
                    return true;
                }
            }
        }
        return false;
    }

    private void handleOutOfServiceOnNetworkEvnentChanged(RegisterTask registerTask, int i) {
        IVolteServiceModule iVolteServiceModule;
        IVolteServiceModule iVolteServiceModule2;
        IMSLog.i(LOG_TAG, i, "out of service.");
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.RJIL) {
            IMSLog.i(LOG_TAG, i, "Set OutOfService True for RJIL");
            this.mVsm.setOutOfService(true, i);
        }
        if (registerTask.getRegistrationRat() != 18 && ConfigUtil.isRcsEur(simMno) && registerTask.isRcsOnly()) {
            Log.i(LOG_TAG, "set EVENT_RCS_DELAYED_DEREGISTER");
            this.mRegHandler.removeMessages(142);
            RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
            registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(142), 30000L);
        }
        if (ConfigUtil.isRcsChn(simMno) && registerTask.isRcsOnly() && (iVolteServiceModule2 = this.mVsm) != null && iVolteServiceModule2.hasCsCall(i)) {
            Log.i(LOG_TAG, "RCS deregister OOS during CS call");
            registerTask.setDeregiReason(4);
            this.mRegMan.tryDeregisterInternal(registerTask, true, true);
        }
        if (simMno == Mno.EE_ESN) {
            Log.i(LOG_TAG, "ESN send local deregi and PDN disconnect");
            this.mRegMan.tryDeregisterInternal(registerTask, true, false);
        }
        if (simMno.isOneOf(Mno.SMARTONE, Mno.ETISALAT_UAE) && (iVolteServiceModule = this.mVsm) != null && iVolteServiceModule.hasCsCall(i)) {
            Log.i(LOG_TAG, "Send local deregi and PDN disconnect after CSFB");
            this.mRegMan.tryDeregisterInternal(registerTask, true, false);
        }
        if (!this.mImsFramework.getBoolean(registerTask.getPhoneId(), GlobalSettingsConstants.Registration.REMOVE_ICON_NOSVC, false) || this.mRegMan.getImsIconManager(registerTask.getPhoneId()) == null) {
            return;
        }
        this.mRegMan.getImsIconManager(registerTask.getPhoneId()).updateRegistrationIcon();
    }

    private void handleRestrictionOnNetworkEventChanged(int i, RegisterTask registerTask, NetworkEvent networkEvent) {
        if (!registerTask.getMno().isKor() || registerTask.isRcsOnly() || RegistrationUtils.isCmcProfile(registerTask.getProfile())) {
            return;
        }
        if (!(networkEvent.isDataRoaming && registerTask.getGovernor().allowRoaming() && (!NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network) || networkEvent.voiceOverPs != VoPsIndication.SUPPORTED || networkEvent.outOfService)) && (networkEvent.isDataRoaming || SimUtil.getPhoneCount() <= 1 || i == SimUtil.getActiveDataPhoneId() || !SemSystemProperties.get("ro.boot.hardware", "").contains("qcom") || networkEvent.csOutOfService || networkEvent.voiceNetwork != 3)) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "handleRestrictionOnNetworkEventChanged: task:" + registerTask.getProfile().getName() + "(" + registerTask.getState() + ")");
        registerTask.setDeregiReason(2);
        registerTask.setReason("handleRestrictionOnNetworkEventChanged: VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(qcom non DDS is cs only in 3G)");
        this.mRegMan.tryDeregisterInternal(registerTask, false, false);
        IMSLog.i(LOG_TAG, i, "handleRestrictionOnNetworkEventChanged: VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(non DDS in 3G)");
        if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.DEREGISTERING)) {
            return;
        }
        this.mRegHandler.sendDisconnectPdnByVolteDisabled(registerTask, 0L);
    }

    private void handleSsacOnNetworkEventChanged(RegisterTask registerTask, int i, NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        if (registerTask.getMno() == Mno.VZW && this.mRegHandler.hasMessages(121, Integer.valueOf(i)) && !TextUtils.equals(networkEvent.operatorNumeric, networkEvent2.operatorNumeric)) {
            if (registerTask.getImsRegistration() == null) {
                IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: remove SSAC re-regi");
                this.mRegHandler.removeMessages(121, Integer.valueOf(i));
            }
            IMSLog.i(LOG_TAG, i, "onNetworkEventChanged: set SSAC to default");
            SlotBasedConfig.getInstance(i).enableSsac(true);
        }
    }

    void handleVopsDisabledOnNetworkEventChanged(RegisterTask registerTask, NetworkEvent networkEvent, int i) {
        if (registerTask.getMno() == Mno.VZW) {
            registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_VOPS_CHANGED);
            this.mRegHandler.removeMessages(132);
            if ((this.mTelephonyManager.isNetworkRoaming() || ImsUtil.isCdmalessEnabled(this.mContext, i)) && !this.mRegMan.getCsfbSupported(i)) {
                this.mRegMan.notifyImsNotAvailable(registerTask, true);
                return;
            }
            return;
        }
        if (!registerTask.getMno().isChn() || this.mRegMan.getCsfbSupported(i)) {
            return;
        }
        registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_VOPS_CHANGED);
        this.mRegHandler.removeMessages(132);
        if (registerTask.getMno().isOneOf(Mno.CTC, Mno.CTCMO) || (registerTask.getMno().isOneOf(Mno.CMCC, Mno.CU) && networkEvent.network == 20)) {
            this.mRegMan.notifyImsNotAvailable(registerTask, true);
        }
    }

    private void tryCmcRegisterOnNetworkEventChanged(NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        if (this.mCmcAccountManager.isCmcProfileAdded() || networkEvent.outOfService || !networkEvent2.outOfService) {
            return;
        }
        this.mCmcAccountManager.startCmcRegistration();
    }

    void updateUtOnNetworkEventChanged(int i, boolean z, NetworkEvent networkEvent, NetworkEvent networkEvent2) {
        boolean z2 = true;
        boolean z3 = !this.mImsFramework.getBoolean(i, GlobalSettingsConstants.SS.ENABLE_IN_ROAMING, true);
        if (z && !networkEvent.outOfService && z3) {
            boolean z4 = networkEvent2.isDataRoaming;
            boolean z5 = networkEvent.isDataRoaming;
            if (z4 == z5) {
                int i2 = networkEvent2.network;
                int i3 = networkEvent.network;
                if (i2 == i3) {
                    return;
                }
                if (i3 != 18 && i2 != 18) {
                    return;
                }
            }
            boolean z6 = networkEvent.network == 18;
            if (z5 && !z6) {
                z2 = false;
            }
            IUtServiceModule utServiceModule = this.mImsFramework.getServiceModuleManager().getUtServiceModule();
            if (utServiceModule != null) {
                utServiceModule.enableUt(i, z2);
            }
        }
    }

    boolean isPreferredPdnForRCSRegister(RegisterTask registerTask, int i, boolean z) {
        Mno mno = registerTask.getMno();
        boolean z2 = true;
        if (!mno.isKor() && mno != Mno.TMOBILE && mno != Mno.H3G) {
            return true;
        }
        int pdnType = registerTask.getPdnType();
        if (pdnType != 11 && pdnType != 15) {
            if (mno.isKor()) {
                boolean isNeedDelayedDeregister = registerTask.getGovernor().isNeedDelayedDeregister();
                PdnController pdnController = this.mPdnController;
                int translateNetworkBearer = pdnController.translateNetworkBearer(pdnController.getDefaultNetworkBearer());
                IMSLog.i(LOG_TAG, "isPreferredPdnForRCSRegister: isNeedDelayedDeregister [" + isNeedDelayedDeregister + "], preferred PDN [" + translateNetworkBearer + "], needDeregi [" + z + "]");
                if (registerTask.getGovernor().isMobilePreferredForRcs() && !z && isNeedDelayedDeregister && translateNetworkBearer == 1) {
                    if (!this.mRegHandler.hasMessages(18)) {
                        this.mEventLog.logAndAdd(i, "isPreferredPdnForRCSRegister : Delay event");
                        RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
                        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(18, registerTask), UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                    } else {
                        this.mEventLog.logAndAdd(i, "isPreferredPdnForRCSRegister : Now pending");
                    }
                } else {
                    deregisterByDefaultNwChanged(registerTask, i, z);
                }
                return true;
            }
            if (this.mPdnController.isWifiConnected() && NetworkUtil.isMobileDataConnected(this.mContext)) {
                int translateNetworkBearer2 = this.mPdnController.translateNetworkBearer(this.mPdnController.getDefaultNetworkBearer());
                if (pdnType != translateNetworkBearer2) {
                    deregisterByDefaultNwChanged(registerTask, i, z);
                    z2 = false;
                }
                SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
                if (pendingRegistrationInternal != null) {
                    Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                    while (it.hasNext()) {
                        RegisterTask next = it.next();
                        if (next != registerTask && next.isRcsOnly() && next.getPdnType() != translateNetworkBearer2) {
                            deregisterByDefaultNwChanged(next, i, z);
                        }
                    }
                }
            }
        }
        return z2;
    }

    private void deregisterByDefaultNwChanged(RegisterTask registerTask, int i, boolean z) {
        IMSLog.i(LOG_TAG, i, "deregisterByDefaultNwChanged: " + registerTask.getProfile().getName() + "(" + registerTask.getState() + ") needDeregi(" + z + ")");
        PdnController pdnController = this.mPdnController;
        boolean z2 = pdnController.translateNetworkBearer(pdnController.getDefaultNetworkBearer()) == 1;
        Mno mno = registerTask.getMno();
        if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
            if (mno.isKor() || mno == Mno.TMOBILE || mno == Mno.H3G) {
                if (!registerTask.getGovernor().isMobilePreferredForRcs() || z2 || z) {
                    registerTask.setDeregiReason(12);
                    this.mRegMan.tryDeregisterInternal(registerTask, false, false);
                    return;
                }
                return;
            }
            return;
        }
        if (mno.isKor()) {
            registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            if (registerTask.getGovernor().isMobilePreferredForRcs() && z2) {
                IMSLog.i(LOG_TAG, i, "deregisterByDefaultNwChanged: stop pdn");
                this.mRegMan.stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            }
        }
    }

    void onDefaultNetworkStateChanged(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                RegisterTask next = it.next();
                if (next.isRcsOnly()) {
                    isPreferredPdnForRCSRegister(next, i, false);
                    break;
                }
            }
        }
        RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(2, Integer.valueOf(i)), UtStateMachine.HTTP_READ_TIMEOUT_GCF);
    }

    void handOffEventTimeout(int i) {
        this.mEventLog.logAndAdd(i, "handOffEventTimeout: mNetType = " + getNetType() + ", mWiFi = " + isWiFi());
        this.mRegMan.suspendRegister(false, i);
    }

    protected void onEpdgIkeError(int i) {
        SlotBasedConfig.getInstance(i).getRegistrationTasks().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.NetworkEventController$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onEpdgIkeError$4;
                lambda$onEpdgIkeError$4 = NetworkEventController.lambda$onEpdgIkeError$4((RegisterTask) obj);
                return lambda$onEpdgIkeError$4;
            }
        }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.NetworkEventController$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NetworkEventController.lambda$onEpdgIkeError$5((RegisterTask) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onEpdgIkeError$4(RegisterTask registerTask) {
        return registerTask.getPdnType() == 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onEpdgIkeError$5(RegisterTask registerTask) {
        registerTask.getGovernor().onEpdgIkeError();
    }

    protected void onIpsecDisconnected(int i) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal;
        IMSLog.i(LOG_TAG, i, "onIpsecDisconnected:");
        int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, i);
        boolean isEnabled = VowifiConfig.isEnabled(this.mContext, i);
        int prefMode = VowifiConfig.getPrefMode(this.mContext, 2, i);
        IMSLog.i(LOG_TAG, i, "onIpsecDisconnected: VoWiFi : " + isEnabled + ", pref: " + prefMode + ", callType : " + voiceCallType);
        if (isEnabled && prefMode == 2 && voiceCallType == 1 && (pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i)) != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getMno().isTw() && next.getProfile().isEpdgSupported() && next.getProfile().getPdnType() == 11) {
                    if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING)) {
                        this.mRegMan.tryDeregisterInternal(next, false, false);
                    } else if (next.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTED, RegistrationConstants.RegisterTaskState.CONNECTING)) {
                        Log.i(LOG_TAG, "Stop pdn when ipsec disconnected.");
                        this.mRegMan.stopPdnConnectivity(next.getPdnType(), next);
                        next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                    }
                }
            }
        }
    }

    void onVoicePreferredChanged(int i) {
        Log.i(LOG_TAG, "onVoicePreferredChanged:");
        IVolteServiceModule iVolteServiceModule = this.mVsm;
        boolean z = false;
        if (iVolteServiceModule == null) {
            Log.e(LOG_TAG, "VolteServiceModule is not create yet so retry after 3 seconds");
            RegistrationManagerHandler registrationManagerHandler = this.mRegHandler;
            registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(123, i, 0, null), RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
            return;
        }
        iVolteServiceModule.onVoWiFiSwitched(i);
        if (this.mPdnController.isEpdgConnected(i)) {
            EpdgManager epdgManager = this.mVsm.getEpdgManager();
            int dataNetworkType = this.mTelephonyManager.getDataNetworkType();
            if (epdgManager != null) {
                z = epdgManager.isPossibleW2LHOAfterCallEndBySim(i);
                Log.i(LOG_TAG, "W2L available : " + z);
            }
            if (dataNetworkType == 13 && z) {
                Log.i(LOG_TAG, "EpdgEventReceiver, waiting for W2L HO event w/o re-regi");
            } else {
                this.mRegMan.updateRegistration(i, RegistrationConstants.UpdateRegiReason.EPDG_VOICEPREFERENCE_CHANGED);
            }
        }
    }

    protected void onLocalIpChanged(RegisterTask registerTask) {
        registerTask.getGovernor().onLocalIpChanged();
        if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
            registerTask.setReason("local IP changed");
            registerTask.setDeregiReason(5);
            this.mRegMan.tryDeregisterInternal(registerTask, true, true);
        }
        if (registerTask.getMno().isKor() && registerTask.isRcsOnly()) {
            return;
        }
        this.mRegMan.setOmadmState(registerTask.mPhoneId, RegistrationManager.OmadmConfigState.IDLE);
        registerTask.getGovernor().resetPcscfPreference();
        registerTask.getGovernor().resetIPSecAllow();
    }

    boolean onConfigUpdated(String str, int i) {
        IMSLog.i(LOG_TAG, i, "onConfigUpdated: " + str);
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return false;
        }
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.indexOf((CharSequence) str, ':') != -1) {
                this.mEventLog.logAndAdd(i, "Invalid DM item : " + str);
                IMSLog.c(LogClass.REGI_CONFIG_UPDATE, i + ",INVLD DM: " + str);
                return false;
            }
            this.mRegHandler.notifyDmValueChanged(str, i);
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return true;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            next.getGovernor().onConfigUpdated();
            if (iSimManager.getSimMno().isKor() && this.mRegMan.getOmadmState(i) == RegistrationManager.OmadmConfigState.FINISHED && !next.isRcsOnly()) {
                Log.i(LOG_TAG, "onConfigUpdated:  mOmadmState is FINISHED");
            } else if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                next.setReason("IMS configuration changed");
                this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.IMS_CONFIGURATION_CHANGED);
            } else if (next.getState() == RegistrationConstants.RegisterTaskState.CONNECTING) {
                reconnectPdn(next);
            }
        }
        return true;
    }

    private boolean isNewPcscfListAvailable(IRegisterTask iRegisterTask) {
        List<String> retrievePcscfByProfileSettings = RegistrationUtils.retrievePcscfByProfileSettings(iRegisterTask, this.mPdnController, this.mRcsPolicyManager, this.mTelephonyManager.getIsimPcscf());
        return (CollectionUtils.isNullOrEmpty(retrievePcscfByProfileSettings) || retrievePcscfByProfileSettings.equals(this.mLastPcscfList)) ? false : true;
    }
}
