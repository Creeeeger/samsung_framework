package com.sec.internal.ims.core;

import android.content.Context;
import android.os.Message;
import android.os.SemSystemProperties;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.google.SecImsServiceConnector;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.ImsGateConfig;
import com.sec.internal.ims.core.RegistrationManager;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.JibeRcsRegistration;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IMSLogTimer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes.dex */
abstract class RegistrationManagerInternal extends RegistrationManager {
    protected abstract void notifyImsNotAvailable(RegisterTask registerTask, boolean z);

    protected abstract void notifyImsNotAvailable(RegisterTask registerTask, boolean z, boolean z2);

    protected abstract void onDelayedDeregister(RegisterTask registerTask);

    RegistrationManagerInternal(IImsFramework iImsFramework, Context context, PdnController pdnController, List<ISimManager> list, ITelephonyManager iTelephonyManager, ICmcAccountManager iCmcAccountManager, IRcsPolicyManager iRcsPolicyManager) {
        this.mContext = context;
        this.mEmmCause = -1;
        this.mEventLog = new SimpleEventLog(context, IRegistrationManager.LOG_TAG, 3000);
        this.mImsFramework = iImsFramework;
        this.mTelephonyManager = iTelephonyManager;
        this.mPdnController = pdnController;
        this.mSimManagers = list;
        this.mCmcAccountManager = iCmcAccountManager;
        this.mRcsPolicyManager = iRcsPolicyManager;
        this.mSecImsServiceConnector = new SecImsServiceConnector(context);
        this.mJibeRcsRegistration = new JibeRcsRegistration(context);
        this.mAuEmergencyProfile = new SparseArray<>();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        this.mNetEvtCtr.setRegistrationHandler(this.mHandler);
        this.mHandler.init();
        this.mlegacyPhoneCount = ((TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY)).getPhoneCount();
    }

    private boolean updateSuspended(RegisterTask registerTask, boolean z, int i) {
        if (i == 0) {
            if (z == registerTask.mSuspended) {
                return false;
            }
            registerTask.mSuspended = z;
            if (registerTask.mSuspendByIrat || registerTask.mSuspendBySnapshot) {
                return false;
            }
        } else if (i == 1) {
            if (z == registerTask.mSuspendByIrat) {
                return false;
            }
            registerTask.mSuspendByIrat = z;
            if (registerTask.mSuspended || registerTask.mSuspendBySnapshot) {
                return false;
            }
        } else if (i == 2) {
            if (z == registerTask.mSuspendBySnapshot) {
                return false;
            }
            registerTask.mSuspendBySnapshot = z;
            if (registerTask.mSuspended || registerTask.mSuspendByIrat) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IRegistrationManager
    public void suspended(RegisterTask registerTask, boolean z, int i) {
        if (updateSuspended(registerTask, z, i)) {
            if (this.mRegStackIf.suspended(registerTask, z) && !z) {
                if (!this.mHandler.hasMessages(32)) {
                    this.mHandler.sendEmptyMessage(32);
                }
                this.mHandler.sendTryRegister(registerTask.getPhoneId());
            }
            if (z) {
                return;
            }
            if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTED)) {
                this.mHandler.sendTryRegister(registerTask.getPhoneId());
            } else if (registerTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
                this.mImsFramework.getServiceModuleManager().updateCapabilities(registerTask.getPhoneId());
            }
        }
    }

    protected void buildTask(int i) {
        ISimManager iSimManager;
        RegistrationManagerInternal registrationManagerInternal = this;
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "buildTask:");
        if (!RegistrationUtils.hasLoadedProfile(i)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "buildTask: no profile found.");
            return;
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null || (iSimManager = registrationManagerInternal.mSimManagers.get(i)) == null) {
            return;
        }
        ArrayList<ImsProfile> arrayList = new ArrayList();
        for (ImsProfile imsProfile : SlotBasedConfig.getInstance(i).getProfiles()) {
            ImsProfile imsProfile2 = SlotBasedConfig.getInstance(i).getExtendedProfiles().get(Integer.valueOf(imsProfile.getId()));
            if (imsProfile2 != null) {
                imsProfile.setExtImpuList(imsProfile2.getExtImpuList());
            }
            arrayList.add(imsProfile);
        }
        for (Map.Entry<Integer, ImsProfile> entry : SlotBasedConfig.getInstance(i).getExtendedProfiles().entrySet()) {
            if (registrationManagerInternal.isAdhocProfile(entry.getValue())) {
                arrayList.add(entry.getValue());
            }
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            arrayList.remove(it.next().getProfile());
        }
        RegistrationConstants.RegistrationType valueOf = RegistrationConstants.RegistrationType.valueOf(registrationManagerInternal.mImsFramework.getInt(i, GlobalSettingsConstants.Registration.DEFAULT_RCS_VOLTE_REGISTRATION, -1));
        if (valueOf != RegistrationConstants.RegistrationType.IMS_PROFILE_BASED_REG) {
            int rcsVolteSingleReg = registrationManagerInternal.mRcsPolicyManager.getRegiConfig(i).getRcsVolteSingleReg();
            if (rcsVolteSingleReg == -1) {
                rcsVolteSingleReg = valueOf.getValue();
            }
            valueOf = RegistrationConstants.RegistrationType.valueOf(rcsVolteSingleReg);
        }
        RegistrationConstants.RegistrationType registrationType = valueOf;
        SlotBasedConfig.getInstance(i).setRcsVolteSingleRegistration(registrationType);
        ImsProfile imsProfile3 = null;
        for (ImsProfile imsProfile4 : arrayList) {
            if (!imsProfile4.hasEmergencySupport()) {
                if (imsProfile4.getEnableStatus() != 2) {
                    registrationManagerInternal.mEventLog.logAndAdd(i, "buildTask: [" + imsProfile4.getName() + "] - Disabled profile");
                } else if (registrationType != RegistrationConstants.RegistrationType.IMS_PROFILE_BASED_REG && registrationManagerInternal.isSingleReg(registrationType, i) && ConfigUtil.isRcsOnly(imsProfile4) && registrationManagerInternal.mConfigModule.isValidConfigDb(i)) {
                    registrationManagerInternal.mEventLog.logAndAdd(i, "buildTask: [" + imsProfile4.getName() + "] - RcsVolteSingleRegistration");
                    imsProfile3 = imsProfile4;
                } else if (!RegistrationUtils.isSatisfiedCarrierRequirement(i, imsProfile4, Mno.fromName(imsProfile4.getMnoName()), registrationManagerInternal.mImsFramework.getInt(i, GlobalSettingsConstants.SS.ENABLE_GBA, 0), iSimManager.isGBASupported())) {
                    registrationManagerInternal.mEventLog.logAndAdd(i, "buildTask: [" + imsProfile4.getName() + "] - Unsatisfying carrier requirement");
                } else {
                    pendingRegistrationInternal.add(new RegisterTask(imsProfile4, this, registrationManagerInternal.mTelephonyManager, registrationManagerInternal.mPdnController, registrationManagerInternal.mContext, registrationManagerInternal.mVsm, registrationManagerInternal.mConfigModule, i));
                }
            }
            registrationManagerInternal = this;
        }
        if (imsProfile3 != null) {
            pendingRegistrationInternal.get(0).getGovernor().enableRcsOverIms(imsProfile3);
        }
        Collections.sort(pendingRegistrationInternal, new Comparator() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$buildTask$0;
                lambda$buildTask$0 = RegistrationManagerInternal.lambda$buildTask$0((RegisterTask) obj, (RegisterTask) obj2);
                return lambda$buildTask$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$buildTask$0(RegisterTask registerTask, RegisterTask registerTask2) {
        return registerTask2.mProfile.getPriority() - registerTask.mProfile.getPriority();
    }

    private boolean isSingleReg(RegistrationConstants.RegistrationType registrationType, int i) {
        return registrationType == RegistrationConstants.RegistrationType.SINGLE_REG || (registrationType == RegistrationConstants.RegistrationType.DUAL_WHEN_ROAMING_REG && !this.mTelephonyManager.isNetworkRoaming(SimUtil.getSubId(i)));
    }

    protected void clearTask(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "clearTask:");
        if (SimUtil.isSoftphoneEnabled()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "skip clearTask for softphone");
            return;
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask registerTask = (RegisterTask) it.next();
            if (!RegistrationUtils.isCmcProfile(registerTask.getProfile()) || this.mHandler.hasMessages(42)) {
                this.mHandler.removeMessages(22, registerTask);
                registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_SIM_REFRESH);
                registerTask.getGovernor().clear();
                stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                IMSLog.i(IRegistrationManager.LOG_TAG, i, "Remove task: " + registerTask);
                arrayList.add(registerTask);
                this.mRegStackIf.removeUserAgent(registerTask);
                if (registerTask.mMno == Mno.TMOBILE && registerTask.getProfile().getPdnType() == 11) {
                    registerTask.stopDailyReRegisterTimer();
                }
            }
        }
        pendingRegistrationInternal.removeAll(arrayList);
        this.mJibeRcsRegistration.clearTasks(i);
    }

    protected void onImsProfileUpdateDone(int i) {
        buildTask(i);
        this.mImsFramework.notifyImsReady(true, i);
        notifySimMobilityStatusChanged(i, this.mSimManagers.get(i));
        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(2, Integer.valueOf(i)), 500L);
    }

    protected void tryRegister(int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "tryRegister:");
        ISimManager simManager = getSimManager(i);
        if (simManager == null) {
            return;
        }
        boolean pendingHasEmergencyTask = RegistrationUtils.pendingHasEmergencyTask(i, simManager.getSimMno());
        this.mHandler.removeMessages(2, Integer.valueOf(i));
        if (this.mUserEvtCtr.isShuttingDown()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "Device is getting shutdown");
            return;
        }
        if (this.mHandler.hasMessages(36)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, i, "Sim refresh is ongoing. retry after 2s");
            this.mHandler.sendTryRegister(i, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
            return;
        }
        logTask();
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                boolean pendingRcsRegister = this.mRcsPolicyManager.pendingRcsRegister(next, getPendingRegistration(i), i);
                boolean hasNoSim = simManager.hasNoSim();
                boolean hasMessages = this.mHandler.hasMessages(107);
                ITelephonyManager iTelephonyManager = this.mTelephonyManager;
                PdnController pdnController = this.mPdnController;
                IVolteServiceModule iVolteServiceModule = this.mVsm;
                if (!RegistrationUtils.needToSkipTryRegister(next, pendingRcsRegister, hasNoSim, hasMessages, iTelephonyManager, pdnController, iVolteServiceModule != null && iVolteServiceModule.hasEmergencyCall(SimUtil.getOppositeSimSlot(i)))) {
                    RegistrationConstants.RegistrationType rcsVolteSingleRegistration = SlotBasedConfig.getInstance(i).getRcsVolteSingleRegistration();
                    if (rcsVolteSingleRegistration != RegistrationConstants.RegistrationType.IMS_PROFILE_BASED_REG && next.isRcsOnly() && next.getState() == RegistrationConstants.RegisterTaskState.CONFIGURED) {
                        int rcsVolteSingleReg = this.mRcsPolicyManager.getRegiConfig(i).getRcsVolteSingleReg();
                        if (rcsVolteSingleReg == -1) {
                            rcsVolteSingleReg = rcsVolteSingleRegistration.getValue();
                        }
                        RegistrationConstants.RegistrationType valueOf = RegistrationConstants.RegistrationType.valueOf(rcsVolteSingleReg);
                        SlotBasedConfig.getInstance(i).setRcsVolteSingleRegistration(valueOf);
                        if (isSingleReg(valueOf, i)) {
                            ImsProfile profile = next.getProfile();
                            pendingRegistrationInternal.remove(next);
                            pendingRegistrationInternal.get(0).getGovernor().enableRcsOverIms(profile);
                        }
                    }
                    if (!next.getProfile().hasEmergencySupport() && next.getGovernor().hasEmergencyTaskInPriority(pendingRegistrationInternal)) {
                        this.mHandler.sendTryRegister(i, 500L);
                    } else if (tryRegister(next) && pendingHasEmergencyTask && !getNetworkEvent(next.getPhoneId()).outOfService) {
                        IMSLog.i(IRegistrationManager.LOG_TAG, i, "tryRegister: pending EM regi for the sequential regi of Lab TC.");
                        return;
                    }
                }
            }
        }
    }

    protected boolean tryRegister(RegisterTask registerTask) {
        if (checkForTryRegister(registerTask)) {
            return true;
        }
        int regiFailReason = registerTask.getRegiFailReason();
        if (regiFailReason > DiagnosisConstants.REGI_FRSN.UNKNOWN.getCode() && regiFailReason != registerTask.getLastRegiFailReason()) {
            reportRegistrationStatus(registerTask);
            IMSLog.c(LogClass.REGI_TRY_REGISTER, registerTask.getPhoneId() + "," + registerTask.getMno().getName() + "," + registerTask.getProfile().getPdn() + ",REG FAIL:" + DiagnosisConstants.REGI_FRSN.valueOf(regiFailReason));
        }
        DiagnosisConstants.REGI_FRSN valueOf = DiagnosisConstants.REGI_FRSN.valueOf(regiFailReason);
        if (!valueOf.isOneOf(DiagnosisConstants.REGI_FRSN.VOPS_OFF, DiagnosisConstants.REGI_FRSN.USER_SETTINGS_OFF, DiagnosisConstants.REGI_FRSN.MAIN_SWITCHES_OFF, DiagnosisConstants.REGI_FRSN.ROAMING_NOT_SUPPORTED, DiagnosisConstants.REGI_FRSN.DATA_RAT_IS_NOT_PS_VOICE, DiagnosisConstants.REGI_FRSN.ONGOING_OTA)) {
            return false;
        }
        IMSLog.lazer(registerTask, "NOT_TRIGGERED : reason - " + valueOf);
        return false;
    }

    protected boolean checkForTryRegister(RegisterTask registerTask) {
        ImsProfile profile = registerTask.getProfile();
        int phoneId = registerTask.getPhoneId();
        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "checkForTryRegister id: " + profile.getId());
        if (this.mUserEvtCtr.isShuttingDown()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "Device is getting shutdown");
            return false;
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(phoneId);
        if (pendingRegistrationInternal == null || !pendingRegistrationInternal.contains(registerTask)) {
            IMSLog.e(IRegistrationManager.LOG_TAG, phoneId, registerTask, "checkForTryRegister UNKNOWN task. (it should be removed task)");
            return false;
        }
        int decidedRat = RegistrationRatDecider.getDecidedRat(this.mContext, registerTask, this.mPdnController, this.mVsm);
        registerTask.setRegistrationRat(decidedRat);
        if (!registerTask.getGovernor().isReadyToDualRegister(isTryingCmcDualRegi(phoneId, registerTask))) {
            this.mHandler.sendTryRegister(phoneId, 2500L);
            return false;
        }
        ISimManager iSimManager = this.mSimManagers.get(phoneId);
        if (iSimManager == null) {
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.SIMMANAGER_NULL.getCode());
            return false;
        }
        boolean z = ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON;
        boolean isNetworkRoaming = this.mTelephonyManager.isNetworkRoaming();
        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "checkInitialRegistrationIsReady: APM ON [" + z + "], Roamimg [" + isNetworkRoaming + "]");
        if (!RegistrationUtils.checkInitialRegistrationIsReady(registerTask, getPendingRegistration(phoneId), z, isNetworkRoaming, iSimManager.hasNoSim(), this.mRcsPolicyManager, this.mHandler)) {
            return false;
        }
        if (!registerTask.getGovernor().isReadyToRegister(decidedRat)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "checkForTryRegister: isReadyToRegister = false");
            if (!registerTask.isKeepPdn() && registerTask.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED) && registerTask.getPdnType() == 11) {
                Log.i(IRegistrationManager.LOG_TAG, "stopPdnConnectivity. IMS PDN should not be established in this case.");
                stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            if (registerTask.getRegiFailReason() == DiagnosisConstants.REGI_FRSN.UNKNOWN.getCode()) {
                registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.GVN_NOT_READY.getCode());
            }
            return false;
        }
        RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.IDLE;
        if (registerTask.isOneOf(registerTaskState, RegistrationConstants.RegisterTaskState.RESOLVED, RegistrationConstants.RegisterTaskState.CONFIGURED, RegistrationConstants.RegisterTaskState.CONNECTED)) {
            Context context = this.mContext;
            boolean isRcsAvailable = ConfigUtil.isRcsAvailable(context, phoneId, iSimManager);
            boolean isCdmConfigured = RegistrationUtils.isCdmConfigured(this.mImsFramework, phoneId);
            boolean z2 = getOmadmState(phoneId) != RegistrationManager.OmadmConfigState.FINISHED;
            IVolteServiceModule iVolteServiceModule = this.mVsm;
            if (!RegistrationUtils.checkConfigForInitialRegistration(context, registerTask, isRcsAvailable, isCdmConfigured, z2, iVolteServiceModule != null && iVolteServiceModule.hasEmergencyCall(phoneId), this.mRcsPolicyManager, this.mHandler, this.mNetEvtCtr)) {
                return false;
            }
            int selectPdnType = RegistrationUtils.selectPdnType(profile, decidedRat);
            registerTask.setPdnType(selectPdnType);
            Set<String> serviceForNetwork = getServiceForNetwork(profile, decidedRat, ConfigUtil.isRcsEur(phoneId) && registerTask.isRcsOnly(), phoneId);
            if (checkServicesForInitialRegistration(registerTask, serviceForNetwork)) {
                return tryInitialRegistration(registerTask, decidedRat, selectPdnType, serviceForNetwork);
            }
            return false;
        }
        if (registerTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "tryRegister: already registering.");
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.ALREADY_REGISTERING.getCode());
            return false;
        }
        if (registerTask.getState() != RegistrationConstants.RegisterTaskState.CONNECTING || registerTask.getMno() != Mno.TELEFONICA_UK || !registerTask.isKeepPdn() || registerTask.getPdnType() != 11 || registerTask.getRegistrationRat() != 0) {
            return true;
        }
        Log.i(IRegistrationManager.LOG_TAG, "stopPdnConnectivity, Network Changing to 3G/2G during Task:CONNECTING");
        stopPdnConnectivity(registerTask.getPdnType(), registerTask);
        registerTask.setState(registerTaskState);
        return false;
    }

    protected boolean tryInitialRegistration(RegisterTask registerTask, int i, int i2, Set<String> set) {
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        if (this.mImsFramework.getCmcConnectivityController().isEnabledWifiDirectFeature() && tryInitialP2pRegistration(registerTask, i, i2, set)) {
            return true;
        }
        if (this.mPdnController.isConnected(i2, registerTask) && (registerTask.getNetworkConnected() != null || profile.hasEmergencySupport())) {
            if (registerTask.isSuspended()) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "tryRegister: network is suspended " + i2 + ". try Register once network is resumed.");
                registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NETWORK_SUSPENDED.getCode());
                return false;
            }
            registerTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
            registerTask.setKeepPdn(true);
            if (registerTask.getGovernor().isMobilePreferredForRcs() && i2 == 0) {
                IMSLog.i(IRegistrationManager.LOG_TAG, registerTask.getPhoneId(), "tryRegister: startTimsTimer connected pdn = " + i2);
                PdnController pdnController = this.mPdnController;
                if (pdnController.translateNetworkBearer(pdnController.getDefaultNetworkBearer()) == 1) {
                    registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_INTERNET_PDN_REQUEST);
                }
                registerTask.getGovernor().startTimsTimer(RegistrationConstants.REASON_INTERNET_PDN_REQUEST);
            }
            this.mPdnController.startPdnConnectivity(i2, registerTask, RegistrationUtils.getPhoneIdForStartConnectivity(registerTask));
            if (registerTask.getGovernor().isReadyToGetReattach()) {
                Log.i(IRegistrationManager.LOG_TAG, "keep pdn and block trying registration. return");
                return false;
            }
            if (registerTask.isRcsOnly() && ConfigUtil.isRcsEurNonRjil(registerTask.getMno()) && this.mTelephonyManager.getCallState(SimUtil.getOppositeSimSlot(phoneId)) != 0 && this.mPdnController.getDataState(phoneId) == 3) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "tryRegister: block trying registration because other slot is on calling. return");
                return false;
            }
            if (registerTask.isRcsOnly() && ConfigUtil.isRcsChn(registerTask.getMno()) && this.mTelephonyManager.getCallState(phoneId) != 0 && phoneId != SimUtil.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId())) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "tryRegister: block trying registration while on calling because default mobile data use the other slot. return");
                return false;
            }
            String pcscfIpAddress = this.mNetEvtCtr.getPcscfIpAddress(registerTask, this.mPdnController.getInterfaceName(registerTask));
            if (TextUtils.isEmpty(pcscfIpAddress)) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "tryRegister: pcscf is null. return..");
                registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.EMPTY_PCSCF.getCode());
                if (registerTask.getMno() == Mno.KT && profile.getPcscfPreference() != 0) {
                    Log.i(IRegistrationManager.LOG_TAG, "tryRegister: pcscf is null. return here for dns query retry");
                    return false;
                }
                if (profile.hasEmergencySupport()) {
                    if (registerTask.getMno() == Mno.KDDI) {
                        RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                        registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(2, Integer.valueOf(phoneId)), 1000L);
                    } else {
                        RegistrationUtils.sendEmergencyRegistrationFailed(registerTask);
                    }
                }
                this.mEventLog.logAndAdd(phoneId, registerTask, "regi failed due to empty p-cscf");
                if (registerTask.getPdnType() == 11) {
                    Mno mno = registerTask.getMno();
                    if (mno.isUSA() || mno.isCanada() || mno.isLatin()) {
                        stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                        registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
                        registerTask.setDeregiReason(42);
                        onRegisterError(registerTask, -1, SipErrorBase.EMPTY_PCSCF, 0L);
                    }
                    if (mno.isOneOf(Mno.CTC, Mno.CTCMO)) {
                        Log.i(IRegistrationManager.LOG_TAG, "tryRegister: pcscf is null. Notify registration state to CP.");
                        notifyImsNotAvailable(registerTask, false);
                        if (getImsIconManager(phoneId) != null) {
                            Log.i(IRegistrationManager.LOG_TAG, "tryRegister: pcscf is null. fresh icon once.");
                            getImsIconManager(phoneId).updateRegistrationIcon();
                        }
                    }
                    if (mno.isOneOf(Mno.CMCC, Mno.CU) && i == 20) {
                        Log.i(IRegistrationManager.LOG_TAG, "tryRegister: pcscf is null. Notify registration state to CP in NR rat.");
                        notifyImsNotAvailable(registerTask, true);
                    }
                    if (mno.isEmeasewaoce()) {
                        Log.i(IRegistrationManager.LOG_TAG, "tryRegister: pcscf is null. Notify registration state to CP");
                        notifyImsNotAvailable(registerTask, true);
                    }
                }
                return false;
            }
            this.mEventLog.logAndAdd(phoneId, registerTask, "tryInitialRegistration on pdn: " + i2 + ". Register now.");
            StringBuilder sb = new StringBuilder();
            sb.append("InitialRegi : rat = ");
            sb.append(i);
            registerTask.setReason(sb.toString());
            if (i == 18 && this.mPdnController.getEpdgPhysicalInterface(registerTask.getPhoneId()) == 2) {
                registerTask.setReason("InitialRegi (Cross SIM Calling) : rat = " + i);
            }
            return registerInternal(registerTask, pcscfIpAddress, set);
        }
        return tryStartPdnConnectivity(registerTask, profile, i, i2);
    }

    boolean tryInitialP2pRegistration(RegisterTask registerTask, int i, int i2, Set<String> set) {
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        int cmcType = profile.getCmcType();
        if (cmcType == 5 || cmcType == 7 || cmcType == 8) {
            IMSLog.d(IRegistrationManager.LOG_TAG, phoneId, registerTask, "tryInitialRegistration, skip pdn connect");
            registerTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
            registerTask.setKeepPdn(true);
            if (cmcType == 7) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "tryRegister, setPcscfHostname for [WIFI-DIRECT] server: " + registerTask.getProfile().getDomain());
                registerTask.setPcscfHostname(registerTask.getProfile().getDomain());
            }
            new ArrayList();
            List<String> pcscfList = profile.getPcscfList();
            if (pcscfList == null || pcscfList.isEmpty()) {
                Log.d(IRegistrationManager.LOG_TAG, "tryRegister: pcscf is invalid");
                return false;
            }
            registerTask.mGovernor.updatePcscfIpList(pcscfList);
            Iterator<String> it = pcscfList.iterator();
            if (it.hasNext()) {
                String next = it.next();
                Log.d(IRegistrationManager.LOG_TAG, "tryRegister: wifi-direct or mobile-hotspot registration: " + next);
                registerTask.setReason("InitialRegi : rat = " + i);
                registerInternal(registerTask, next, set);
                return true;
            }
        }
        return false;
    }

    boolean tryStartPdnConnectivity(RegisterTask registerTask, ImsProfile imsProfile, int i, int i2) {
        int phoneId = registerTask.getPhoneId();
        if (RegistrationUtils.hasRcsService(phoneId, imsProfile) && i != 18 && !RegistrationUtils.hasVolteService(phoneId, imsProfile) && !RcsUtils.UiUtils.getRcsUserConsent(this.mContext, this.mTelephonyManager, phoneId)) {
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.RCS_ONLY_NEEDED.getCode());
            return false;
        }
        this.mEventLog.logAndAdd(phoneId, registerTask, "tryRegister: connecting to network " + i2);
        registerTask.setState(RegistrationConstants.RegisterTaskState.CONNECTING);
        if (registerTask.getGovernor().isMobilePreferredForRcs() && i2 == 0) {
            IMSLog.i(IRegistrationManager.LOG_TAG, registerTask.getPhoneId(), "tryRegister: startTimsTimer rcs pdn = " + i2);
            PdnController pdnController = this.mPdnController;
            if (pdnController.translateNetworkBearer(pdnController.getDefaultNetworkBearer()) == 1) {
                registerTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_INTERNET_PDN_REQUEST);
                stopPdnConnectivity(registerTask.getPdnType(), registerTask);
            }
            registerTask.getGovernor().startTimsTimer(RegistrationConstants.REASON_INTERNET_PDN_REQUEST);
        }
        this.mPdnController.startPdnConnectivity(i2, registerTask, RegistrationUtils.getPhoneIdForStartConnectivity(registerTask));
        Mno mno = registerTask.getMno();
        if (mno.isOneOf(Mno.VZW, Mno.KDDI, Mno.CTCMO, Mno.CTC, Mno.ATT) || mno.isEmeasewaoce() || (registerTask.mMno.isKor() && !registerTask.isRcsOnly() && !RegistrationUtils.isCmcProfile(imsProfile))) {
            registerTask.getGovernor().startTimsTimer(RegistrationConstants.REASON_IMS_PDN_REQUEST);
        }
        if (imsProfile.getPdnType() == 11) {
            IMSLogTimer.setPdnStartTime(phoneId, true);
            IMSLog.lazer(registerTask, "PDN REQUEST : type - " + i2 + " <+" + ((IMSLogTimer.getPdnStartTime(phoneId) - IMSLogTimer.getLatchEndTime(phoneId)) / 1000.0d) + "s>");
        } else {
            IMSLog.lazer(registerTask, "PDN REQUEST : type - " + i2);
        }
        return true;
    }

    boolean checkServicesForInitialRegistration(RegisterTask registerTask, Set<String> set) {
        int phoneId = registerTask.getPhoneId();
        if (CollectionUtils.isNullOrEmpty(set)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask.getProfile().getName() + ": no ims service for current rat" + registerTask.getRegistrationRat());
            NetworkEvent networkEvent = getNetworkEvent(phoneId);
            boolean z = ImsConstants.SystemSettings.AIRPLANE_MODE.get(this.mContext, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON;
            if (!z) {
                if (networkEvent != null && !networkEvent.outOfService) {
                    notifyImsNotAvailable(registerTask, false);
                }
                if (registerTask.getMno().isOneOf(Mno.CTC, Mno.CTCMO) && getImsIconManager(phoneId) != null && registerTask.getPdnType() == 11) {
                    Log.i(IRegistrationManager.LOG_TAG, "no ims service. fresh icon once.");
                    getImsIconManager(phoneId).updateRegistrationIcon();
                }
            }
            if (networkEvent != null && !networkEvent.outOfService) {
                if (registerTask.getMno().isOneOf(Mno.OPTUS) && networkEvent.network == 20 && z) {
                    return false;
                }
                stopPdnConnectivity(registerTask.getPdnType(), registerTask);
                registerTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            IMSLog.c(LogClass.REGI_FILTERED_ALL_SERVICES, phoneId + ",FILTERED ALL:" + registerTask.getPdnType());
            return false;
        }
        int registrationRat = registerTask.getRegistrationRat();
        if (registrationRat == 0) {
            IMSLog.e(IRegistrationManager.LOG_TAG, phoneId, "tryRegister: crap. No service?");
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.NETWORK_UNKNOWN.getCode());
            return false;
        }
        if (!registerTask.getGovernor().isLocationInfoLoaded(registrationRat)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "location is not loaded");
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.LOCATION_NOT_LOADED.getCode());
            return false;
        }
        List<RegisterTask> priorityRegiedTask = RegistrationUtils.getPriorityRegiedTask(false, registerTask);
        if (priorityRegiedTask.isEmpty()) {
            return true;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "deregi found lowerPriority task " + priorityRegiedTask);
        for (RegisterTask registerTask2 : priorityRegiedTask) {
            registerTask2.setDeregiReason(46);
            deregister(registerTask2, false, false, "deregi found lowerPriority task");
        }
        return false;
    }

    protected void onManualRegister(ImsProfile imsProfile, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "onManualRegister: profile " + imsProfile.getName());
        ISimManager iSimManager = this.mSimManagers.get(i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (iSimManager == null || pendingRegistrationInternal == null) {
            return;
        }
        this.mImsFramework.getServiceModuleManager().serviceStartDeterminer(Collections.singletonList(imsProfile), i);
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        boolean z = false;
        while (it.hasNext()) {
            RegisterTask next = it.next();
            ImsProfile profile = next.getProfile();
            if (profile.getCmcType() == 1 || profile.getCmcType() == 2) {
                if (imsProfile.getCmcType() == profile.getCmcType()) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, i, "onManualRegister: cmc register task already manual registered");
                    return;
                }
            } else if (profile.getCmcType() > 2 && profile.getName().equals(imsProfile.getName())) {
                IMSLog.d(IRegistrationManager.LOG_TAG, "Task with profile name already exists, update imsprofile");
                next.setProfile(imsProfile);
                if (profile.getCmcType() == 4 || profile.getCmcType() == 8) {
                    IMSLog.d(IRegistrationManager.LOG_TAG, "onManualRegister: releaseThrottle, resetRetry");
                    next.mGovernor.releaseThrottle(8);
                    next.mGovernor.resetRetry();
                    next.mGovernor.updatePcscfIpList(imsProfile.getPcscfList());
                }
                z = true;
            }
        }
        SlotBasedConfig.getInstance(i).addExtendedProfile(imsProfile.getId(), imsProfile);
        RegisterTask registerTask = new RegisterTask(imsProfile, this, this.mTelephonyManager, this.mPdnController, this.mContext, this.mVsm, this.mConfigModule, i);
        SecImsNotifier.getInstance().updateAdhocProfile(i, imsProfile, true);
        if (iSimManager.isSimLoaded() || imsProfile.isSoftphoneEnabled() || imsProfile.isSamsungMdmnEnabled()) {
            this.mImsFramework.notifyImsReady(true, i);
            if (!z) {
                pendingRegistrationInternal.add(registerTask);
            }
            tryRegister(i);
        }
    }

    protected void tryEmergencyRegister(RegisterTask registerTask) {
        boolean z;
        IMSLog.i(IRegistrationManager.LOG_TAG, registerTask.getPhoneId(), "tryEmergencyRegister:");
        this.mHandler.removeMessages(118);
        this.mHandler.removeMessages(155);
        if (registerTask.getProfile().getE911RegiTime() > 0 && !this.mPdnController.isConnected(registerTask.getPdnType(), registerTask)) {
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(155, registerTask), r0.getE911RegiTime() * 1000);
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(registerTask.getPhoneId());
        if (pendingRegistrationInternal == null) {
            return;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (registerTask.getProfile().equals(it.next().getProfile())) {
                z = true;
                break;
            }
        }
        if (!z) {
            pendingRegistrationInternal.add(registerTask);
        }
        tryRegister(registerTask.getPhoneId());
    }

    protected void onManualDeregister(int i, boolean z, int i2) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "onManualDeregister: profile id:" + i + ", explicitDeregi:" + z);
        RegisterTask registerTaskByProfileId = getRegisterTaskByProfileId(i, i2);
        final SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i2);
        if (registerTaskByProfileId == null || pendingRegistrationInternal == null) {
            Log.i(IRegistrationManager.LOG_TAG, "onManualDeregister: profile not found.");
            startSilentEmergency();
            return;
        }
        ImsProfile profile = registerTaskByProfileId.getProfile();
        if (RegistrationUtils.needToNotifyImsReady(profile, i2)) {
            this.mEventLog.logAndAdd(i2, "onManualDeregister: notify IMS ready [false]");
            this.mImsFramework.notifyImsReady(false, i2);
        }
        Log.i(IRegistrationManager.LOG_TAG, "onManualDeregister: deregistering profile " + profile.getName());
        registerTaskByProfileId.getGovernor().stopTimsTimer(RegistrationConstants.REASON_MANUAL_DEREGI);
        Optional.ofNullable(registerTaskByProfileId.getGovernor().onManualDeregister(z)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SlotBasedConfig.RegisterTaskList.this.remove((IRegisterTask) obj);
            }
        });
        SlotBasedConfig.getInstance(registerTaskByProfileId.getPhoneId()).removeExtendedProfile(profile.getId());
        startSilentEmergency();
    }

    protected void startSilentEmergency() {
        Message message = this.mHasSilentE911;
        if (message != null) {
            startEmergencyRegistration(this.mPhoneIdForSilentE911, message);
            this.mHasSilentE911 = null;
            this.mPhoneIdForSilentE911 = -1;
        }
    }

    protected void triggerFullNetworkRegistration(final int i, final int i2) {
        Optional.ofNullable((RegisterTask) SlotBasedConfig.getInstance(i).getRegistrationTasks().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$triggerFullNetworkRegistration$1;
                lambda$triggerFullNetworkRegistration$1 = RegistrationManagerInternal.lambda$triggerFullNetworkRegistration$1((RegisterTask) obj);
                return lambda$triggerFullNetworkRegistration$1;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$triggerFullNetworkRegistration$3;
                lambda$triggerFullNetworkRegistration$3 = RegistrationManagerInternal.lambda$triggerFullNetworkRegistration$3((RegisterTask) obj);
                return lambda$triggerFullNetworkRegistration$3;
            }
        }).findFirst().orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda6
            @Override // java.util.function.Supplier
            public final Object get() {
                RegisterTask lambda$triggerFullNetworkRegistration$4;
                lambda$triggerFullNetworkRegistration$4 = RegistrationManagerInternal.this.lambda$triggerFullNetworkRegistration$4(i);
                return lambda$triggerFullNetworkRegistration$4;
            }
        })).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationManagerInternal.lambda$triggerFullNetworkRegistration$5(i, i2, (RegisterTask) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$triggerFullNetworkRegistration$1(RegisterTask registerTask) {
        return registerTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$triggerFullNetworkRegistration$3(RegisterTask registerTask) {
        return ((Boolean) Optional.ofNullable(registerTask.getImsRegistration()).map(new Function() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$triggerFullNetworkRegistration$2;
                lambda$triggerFullNetworkRegistration$2 = RegistrationManagerInternal.lambda$triggerFullNetworkRegistration$2((ImsRegistration) obj);
                return lambda$triggerFullNetworkRegistration$2;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$triggerFullNetworkRegistration$2(ImsRegistration imsRegistration) {
        return Boolean.valueOf(imsRegistration.hasService("im"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RegisterTask lambda$triggerFullNetworkRegistration$4(int i) {
        IMSLog.e(IRegistrationManager.LOG_TAG, i, "triggerFullNetworkRegistration: Not registered for chat.");
        tryRegister(i);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$triggerFullNetworkRegistration$5(int i, int i2, RegisterTask registerTask) {
        IMSLog.e(IRegistrationManager.LOG_TAG, i, registerTask, "triggerFullNetworkRegistration: error code: " + i2);
        registerTask.getGovernor().onSipError("im", new SipError(i2));
    }

    protected void onUpdateSipDelegateRegistration(int i) {
        boolean updateRegistration = updateRegistration(i, RegistrationConstants.UpdateRegiReason.SIPDELEGATE_UPDATE);
        SimpleEventLog simpleEventLog = this.mEventLog;
        StringBuilder sb = new StringBuilder();
        sb.append("onUpdateSipDelegateRegistration: ");
        sb.append(updateRegistration ? "Success" : "Fail");
        simpleEventLog.logAndAdd(i, sb.toString());
        if (updateRegistration) {
            this.mHandler.removeMessages(59, Integer.valueOf(i));
        }
    }

    protected boolean updateRegistration(int i, RegistrationConstants.UpdateRegiReason updateRegiReason) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        boolean z = false;
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getPhoneId() == i) {
                    if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        z |= updateRegistration(next, updateRegiReason);
                    } else {
                        tryRegister(next);
                    }
                }
            }
        }
        return z;
    }

    protected boolean updateRegistration(RegisterTask registerTask, RegistrationConstants.UpdateRegiReason updateRegiReason) {
        boolean updateRegistration = updateRegistration(registerTask, updateRegiReason, false);
        this.mRegStackIf.updatePani(registerTask);
        return updateRegistration;
    }

    protected boolean updateRegistration(RegisterTask registerTask, RegistrationConstants.UpdateRegiReason updateRegiReason, boolean z) {
        boolean isForceUpdateReason = updateRegiReason.isForceUpdateReason();
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        int decidedRat = RegistrationRatDecider.getDecidedRat(this.mContext, registerTask, this.mPdnController, this.mVsm);
        this.mEventLog.logAndAdd(phoneId, registerTask, "updateRegistration: reason=" + updateRegiReason.toString() + "|" + registerTask.getReason() + ", rat=" + decidedRat + ", isForceReRegi=" + isForceUpdateReason + ", immediately=" + z);
        NetworkEvent networkEvent = getNetworkEvent(phoneId);
        if (networkEvent == null) {
            IMSLog.e(IRegistrationManager.LOG_TAG, phoneId, "updateRegistration: profile=" + profile.getName() + ", NetworkEvent is null");
            return false;
        }
        String updateRegiPendingReason = registerTask.getGovernor().getUpdateRegiPendingReason(decidedRat, networkEvent, isForceUpdateReason, z);
        if (!TextUtils.isEmpty(updateRegiPendingReason)) {
            this.mEventLog.logAndAdd(phoneId, registerTask, "updateRegistration: Pending by [" + updateRegiPendingReason + "]");
            if (isForceUpdateReason) {
                registerTask.mHasForcedPendingUpdate = true;
            } else {
                registerTask.mHasPendingUpdate = true;
            }
            registerTask.setImmediatePendingUpdate(z);
            if (registerTask.isEpdgHandoverInProgress()) {
                registerTask.setHasPendingEpdgHandover(true);
            }
            return false;
        }
        if (registerTask.getGovernor().determineDeRegistration(decidedRat, networkEvent.network) || registerTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERED) {
            this.mEventLog.logAndAdd(phoneId, registerTask, "Stop updateRegistration");
            return false;
        }
        if (!registerTask.getGovernor().isLocationInfoLoaded(decidedRat)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "location info is not loaded");
            return false;
        }
        if (registerTask.getMno() == Mno.RJIL) {
            if (this.mRcsPolicyManager.doRcsConfig(registerTask, getPendingRegistration(phoneId))) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, registerTask, "RCS auto-configuration triggered..");
                return false;
            }
        }
        return compareSvcAndDoUpdateRegistration(registerTask, isForceUpdateReason, z, decidedRat, networkEvent);
    }

    private boolean compareSvcAndDoUpdateRegistration(RegisterTask registerTask, boolean z, boolean z2, int i, NetworkEvent networkEvent) {
        boolean z3;
        int registrationRat = registerTask.getRegistrationRat();
        registerTask.setRegistrationRat(i);
        int phoneId = registerTask.getPhoneId();
        ImsRegistration imsRegistration = SlotBasedConfig.getInstance(phoneId).getImsRegistrations().get(Integer.valueOf(IRegistrationManager.getRegistrationInfoId(registerTask.getProfile().getId(), phoneId)));
        if (imsRegistration == null) {
            IMSLog.e(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: reg is null for " + registerTask.getProfile().getName());
            return false;
        }
        Set<String> services = imsRegistration.getServices();
        Set<String> serviceForNetwork = getServiceForNetwork(registerTask.getProfile(), i, ConfigUtil.isRcsEur(phoneId) && registerTask.isRcsOnly(), phoneId);
        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: registered service oldSvc" + services);
        if (CollectionUtils.isNullOrEmpty(serviceForNetwork)) {
            registerTask.setReason("empty service list : " + networkEvent.network);
            registerTask.setDeregiReason(72);
            if (registerTask.isRcsOnly() && phoneId != SimUtil.getActiveDataPhoneId()) {
                tryDeregisterInternal(registerTask, true, false);
            } else {
                tryDeregisterInternal(registerTask, false, false);
            }
            return false;
        }
        if (registerTask.getMno() != Mno.TMOUS || i == registrationRat || registrationRat != 18 || this.mPdnController.isEpdgConnected(phoneId)) {
            z3 = z;
        } else {
            registerTask.setReason("Force update registration due to RAT mismatch.");
            z3 = true;
        }
        if (!services.contains("datachannel") && serviceForNetwork.contains("datachannel")) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: Remove DataChannel service from newSvc");
            serviceForNetwork.remove("datachannel");
        }
        Set<String> set = serviceForNetwork;
        if (RegistrationUtils.determineUpdateRegistration(registerTask, registrationRat, i, services, serviceForNetwork, z3)) {
            HashSet hashSet = new HashSet();
            for (String str : services) {
                Set<String> set2 = set;
                if (!set2.contains(str)) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: Add to delete service" + str);
                    hashSet.add(str);
                }
                set = set2;
            }
            Set<String> set3 = set;
            if (!hashSet.isEmpty()) {
                this.mImsFramework.getServiceModuleManager().notifyRcsDeregistering(hashSet, imsRegistration);
            }
            if (registerTask.getImsRegistration() != null) {
                registerTask.getImsRegistration().setCurrentRat(i);
            }
            if (!registerTask.getGovernor().isReadyToDualRegister(isTryingCmcDualRegi(phoneId, registerTask))) {
                if (z3) {
                    registerTask.mHasForcedPendingUpdate = true;
                } else {
                    registerTask.mHasPendingUpdate = true;
                }
                if (registerTask.isEpdgHandoverInProgress()) {
                    registerTask.setHasPendingEpdgHandover(true);
                }
                registerTask.setImmediatePendingUpdate(z2);
                this.mHandler.sendEmptyMessageDelayed(32, 1500L);
                return false;
            }
            registerTask.setReason("rat = " + registerTask.getRegistrationRat() + "(" + networkEvent.network + "), " + registerTask.getReason());
            registerInternal(registerTask, null, set3);
            return true;
        }
        if (RegistrationUtils.skipReRegi(registerTask, registrationRat, i)) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: handle ImplicitReRegi. previousRat=" + registrationRat + ", rat=" + i);
            ImsRegistration imsRegistration2 = registerTask.getImsRegistration();
            if (imsRegistration2 != null && !imsRegistration2.getEpdgStatus() && i != 18 && registrationRat != 18) {
                imsRegistration2.setCurrentRat(i);
                if (i != registrationRat) {
                    IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: handle ImplicitReRegi. notify Ims Phone");
                    SecImsNotifier.getInstance().notifyImsRegistration(imsRegistration2, true, new ImsRegistrationError());
                    this.mImsFramework.getServiceModuleManager().notifyImsRegistration(imsRegistration2, true, new ImsRegistrationError().getSipErrorCode());
                }
            }
            if (getImsIconManager(phoneId) != null) {
                boolean z4 = this.mImsFramework.getBoolean(phoneId, GlobalSettingsConstants.Registration.REMOVE_ICON_NOSVC, false);
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "compareSvcAndDoUpdateRegistration: updateRegistrationIcon: remove_icon_nosvc: " + z4);
                if (z4) {
                    getImsIconManager(phoneId).updateRegistrationIcon();
                }
            }
        }
        registerTask.setReason("");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean registerInternal(com.sec.internal.ims.core.RegisterTask r26, java.lang.String r27, java.util.Set<java.lang.String> r28) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationManagerInternal.registerInternal(com.sec.internal.ims.core.RegisterTask, java.lang.String, java.util.Set):boolean");
    }

    private boolean needVolteOnlyRegForDualRcs(int i) {
        return SimUtil.isDualIMS() && RcsUtils.DualRcs.needToCheckOmcCodeAndSimMno(i) && !RcsUtils.DualRcs.dualRcsPolicyCase(this.mContext, i);
    }

    Capabilities getOwnCapabilities(ImsProfile imsProfile, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, i, "getOwnCapabilities:");
        ICapabilityDiscoveryModule capabilityDiscoveryModule = this.mImsFramework.getServiceModuleManager().getCapabilityDiscoveryModule();
        Integer rcsConfVersion = this.mConfigModule.getRcsConfVersion(i);
        if (imsProfile.getNeedAutoconfig() && capabilityDiscoveryModule != null && capabilityDiscoveryModule.isRunning() && rcsConfVersion != null && rcsConfVersion.intValue() > 0 && RcsUtils.UiUtils.isRcsEnabledinSettings(this.mContext, i) && (RcsUtils.DualRcs.isDualRcsReg() || (!needVolteOnlyRegForDualRcs(i) && i == SimUtil.getActiveDataPhoneId()))) {
            Capabilities ownCapabilitiesBase = capabilityDiscoveryModule.getOwnCapabilitiesBase(i);
            if (ownCapabilitiesBase == null) {
                Log.i(IRegistrationManager.LOG_TAG, "getOwnCapabilities: ownCap is null, create empty Capabilities");
                return new Capabilities();
            }
            if (ownCapabilitiesBase.getFeature() != Capabilities.FEATURE_OFFLINE_RCS_USER) {
                return ownCapabilitiesBase;
            }
            Log.i(IRegistrationManager.LOG_TAG, "getOwnCapabilities: no feature present, check for VoLTE only features");
            return setVolteFeatures(ownCapabilitiesBase, imsProfile, i);
        }
        return setVolteFeatures(new Capabilities(), imsProfile, i);
    }

    Capabilities setVolteFeatures(Capabilities capabilities, ImsProfile imsProfile, int i) {
        IVolteServiceModule iVolteServiceModule = this.mVsm;
        if (iVolteServiceModule != null) {
            capabilities.setFeatures(iVolteServiceModule.getSupportFeature(i));
        }
        if (RegistrationUtils.isCmcProfile(imsProfile)) {
            capabilities.addFeature(Capabilities.getTagFeature(Capabilities.FEATURE_TAG_MMTEL));
            Log.i(IRegistrationManager.LOG_TAG, "getOwnCapabilities : add mmtel to Capabilities for CMC-REGI");
        }
        return capabilities;
    }

    protected void tryEmergencyRegister(int i, ImsProfile imsProfile, Message message, boolean z) {
        if (imsProfile.getPdnType() == 11) {
            for (ImsRegistration imsRegistration : getRegistrationInfo()) {
                if (imsRegistration.getImsProfile().getPdnType() == 11) {
                    Log.i(IRegistrationManager.LOG_TAG, "startEmergencyRegistration: Emergency is supported via IMS PDN");
                    message.sendToTarget();
                    return;
                }
            }
        }
        RegisterTask registerTask = new RegisterTask(imsProfile, this, this.mTelephonyManager, this.mPdnController, this.mContext, this.mVsm, this.mConfigModule, i);
        registerTask.setResultMessage(message);
        registerTask.setProfile(imsProfile);
        if (registerTask.getMno() == Mno.ATT) {
            registerTask.mKeepPdn = true;
        }
        if (z && (registerTask.getMno() == Mno.TELSTRA || registerTask.getMno().isCanada())) {
            this.mRegStackIf.configure(i);
        }
        this.mHandler.requestTryEmergencyRegister(registerTask);
    }

    protected void tryDeregisterInternal(IRegisterTask iRegisterTask, boolean z, boolean z2) {
        iRegisterTask.setKeepPdn(z2);
        IUserAgent userAgent = iRegisterTask.getUserAgent();
        ImsRegistration imsRegistration = SlotBasedConfig.getInstance(iRegisterTask.getPhoneId()).getImsRegistrations().get(Integer.valueOf(IRegistrationManager.getRegistrationInfoId(iRegisterTask.getProfile().getId(), iRegisterTask.getPhoneId())));
        if (imsRegistration != null) {
            imsRegistration.setDeregiReason(iRegisterTask.getDeregiReason());
            this.mImsFramework.getServiceModuleManager().notifyDeregistering(imsRegistration);
            this.mSecImsServiceConnector.getSipTransportImpl(imsRegistration.getPhoneId()).notifyDeRegistering(imsRegistration);
        }
        if (iRegisterTask.getGovernor().isNeedDelayedDeregister() || ((iRegisterTask.getProfile().getCmcType() == 1 || (userAgent != null && userAgent.getSuspendState())) && !z)) {
            iRegisterTask.getGovernor().setNeedDelayedDeregister(false);
            this.mHandler.requestDelayedDeRegister(iRegisterTask, z, 300L);
        } else {
            deregisterInternal(iRegisterTask, z);
        }
    }

    protected void deregisterInternal(IRegisterTask iRegisterTask, boolean z) {
        int phoneId = iRegisterTask.getPhoneId();
        this.mEventLog.logAndAdd(phoneId, iRegisterTask, "deregisterInternal: local=" + z + " reason=" + iRegisterTask.getReason());
        if (this.mHandler.hasMessages(145, iRegisterTask)) {
            this.mHandler.removeMessages(145, iRegisterTask);
        }
        if (iRegisterTask.getUserAgent() == null) {
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, iRegisterTask, "deregister: ua is null");
            if (iRegisterTask.getMno() != Mno.KDDI && iRegisterTask.getProfile().hasEmergencySupport()) {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, iRegisterTask, "deregister: this task will be deleted. do nothing");
                return;
            }
            if (this.mPdnController.isConnected(iRegisterTask.getPdnType(), iRegisterTask)) {
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
            } else {
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
            if (iRegisterTask.getMno() == Mno.KDDI) {
                this.mHandler.sendTryRegister(phoneId, 200L);
                return;
            } else {
                this.mHandler.sendTryRegister(phoneId, 500L);
                return;
            }
        }
        this.mRegStackIf.deregisterInternal(iRegisterTask, z);
        iRegisterTask.setReason("");
        this.mHandler.setDeregisterTimeout(iRegisterTask);
        if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED || iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING || (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.EMERGENCY && iRegisterTask.needKeepEmergencyTask())) {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.DEREGISTERING);
        }
        this.mHandler.removeMessages(100, iRegisterTask);
    }

    protected void onRegistered(IRegisterTask iRegisterTask) {
        int phoneId = iRegisterTask.getPhoneId();
        StringBuilder sb = new StringBuilder();
        IMSLogTimer.setVolteRegisterEndTime(phoneId);
        IMSLog.i(IRegistrationManager.LOG_TAG, "#IMSREGI - KPI[" + phoneId + "]: " + iRegisterTask.getRegistrationRat() + " LATCH " + ((IMSLogTimer.getLatchEndTime(phoneId) - IMSLogTimer.getLatchStartTime(phoneId)) / 1000.0d) + "s");
        IMSLog.i(IRegistrationManager.LOG_TAG, "#IMSREGI - KPI[" + phoneId + "]: PDN Setup " + (((double) (IMSLogTimer.getPdnEndTime(phoneId) - IMSLogTimer.getPdnStartTime(phoneId))) / 1000.0d) + "s [Request by IMS : " + IMSLogTimer.getIsImsPdnRequest(phoneId) + "]");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("#IMSREGI - KPI[");
        sb2.append(phoneId);
        sb2.append("]: SIP Registration ");
        sb2.append(((double) (IMSLogTimer.getVolteRegisterEndTime(phoneId) - IMSLogTimer.getVolteRegisterStartTime(phoneId))) / 1000.0d);
        sb2.append("s");
        IMSLog.i(IRegistrationManager.LOG_TAG, sb2.toString());
        sb.append("#IMSREGI - KPI[");
        sb.append(phoneId);
        sb.append("]: Total Time ");
        sb.append((IMSLogTimer.getVolteRegisterEndTime(phoneId) - IMSLogTimer.getLatchStartTime(phoneId)) / 1000.0d);
        sb.append("s, <Gap IMS PDN from Request to Connected : ");
        sb.append((IMSLogTimer.getVolteRegisterStartTime(phoneId) - IMSLogTimer.getPdnEndTime(phoneId)) / 1000.0d);
        sb.append("s>, <Gap Latch from Data Attch to PDN Request : ");
        sb.append((IMSLogTimer.getPdnStartTime(phoneId) - IMSLogTimer.getLatchEndTime(phoneId)) / 1000.0d);
        if (IMSLogTimer.getIsImsPdnRequest(phoneId)) {
            sb.append("s>");
        } else {
            sb.append("s (Request by RIL)>");
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, sb.toString());
        if (iRegisterTask.getUserAgent() == null) {
            this.mEventLog.logAndAdd(phoneId, iRegisterTask, "onRegistered: Failed to process. UA has already removed");
            return;
        }
        if (!this.mRegStackIf.isUserAgentInRegistered(iRegisterTask)) {
            this.mEventLog.logAndAdd(phoneId, iRegisterTask, "onRegistered: Failed to process. UA is not registered!");
            return;
        }
        ImsRegistration imsRegistration = iRegisterTask.getImsRegistration();
        int registrationRat = iRegisterTask.getRegistrationRat();
        if (iRegisterTask.getPdnType() == 11) {
            registrationRat = this.mPdnController.isEpdgConnected(phoneId) ? 18 : this.mPdnController.getNetworkState(phoneId).getMobileDataNetworkType();
        }
        imsRegistration.setRegiRat(registrationRat);
        imsRegistration.setCurrentRat(registrationRat);
        ImsProfile profile = iRegisterTask.getProfile();
        SlotBasedConfig.getInstance(phoneId).addImsRegistration(IRegistrationManager.getRegistrationInfoId(profile.getId(), phoneId), imsRegistration);
        this.mEventLog.logAndAdd(phoneId, iRegisterTask, "onRegistered: RAT = " + iRegisterTask.getRegistrationRat() + ", profile=" + profile.getName() + ", service=" + Arrays.toString(imsRegistration.getServices().toArray()));
        IMSLog.c(LogClass.REGI_REGISTERED, phoneId + ",REG OK:" + iRegisterTask.getRegistrationRat() + ":" + iRegisterTask.getMno().getName() + ":" + profile.getPdn() + ":" + DiagnosisConstants.convertServiceSetToHex(imsRegistration.getServices()));
        if (ImsGateConfig.isGateEnabled()) {
            IMSLog.g("GATE", "<GATE-M>IMS_ENABLED_PS_IND_" + SemSystemProperties.get(ImsConstants.SystemProperties.PS_INDICATOR) + "</GATE-M>");
        }
        iRegisterTask.setState(RegistrationConstants.RegisterTaskState.REGISTERED);
        iRegisterTask.clearUpdateRegisteringFlag();
        iRegisterTask.setIsRefreshReg(false);
        UriGeneratorFactory.getInstance().updateUriGenerator(imsRegistration, this.mRcsPolicyManager.getRcsNetworkUriType(phoneId, profile.getRemoteUriType(), profile.getNeedAutoconfig()));
        RegistrationUtils.updateImsIcon(iRegisterTask);
        if (SimUtil.isDualIMS()) {
            tryRegister(ImsConstants.Phone.SLOT_1);
            tryRegister(ImsConstants.Phone.SLOT_2);
        } else {
            tryRegister(phoneId);
        }
        notifyImsRegistration(imsRegistration, true, iRegisterTask, new ImsRegistrationError());
        if (iRegisterTask.getProfile().hasEmergencySupport() && iRegisterTask.getResultMessage() != null) {
            iRegisterTask.getResultMessage().sendToTarget();
            iRegisterTask.setResultMessage(null);
        }
        if (!SimUtil.isSoftphoneEnabled()) {
            RegistrationUtils.saveRegisteredImpu(this.mContext, imsRegistration, getSimManager(phoneId));
        } else {
            this.mAresLookupRequired = true;
        }
        iRegisterTask.getGovernor().onRegistrationDone();
        this.mHandler.sendEmptyMessage(32);
        reportRegistrationStatus(iRegisterTask);
        DiagnosisConstants.REGI_REQC regiRequestType = iRegisterTask.getRegiRequestType();
        DiagnosisConstants.REGI_REQC regi_reqc = DiagnosisConstants.REGI_REQC.REFRESH;
        if (regiRequestType != regi_reqc) {
            reportRegistrationCount(iRegisterTask);
        }
        reportDualImsStatus(phoneId);
        IMSLog.lazer(iRegisterTask, ImsConstants.Intents.EXTRA_REGISTERED);
        iRegisterTask.setReason("");
        iRegisterTask.setEpdgHandoverInProgress(false);
        iRegisterTask.setRegiRequestType(regi_reqc);
        iRegisterTask.setDeregiReason(41);
    }

    protected void onRegisterError(IRegisterTask iRegisterTask, int i, SipError sipError, long j) {
        int phoneId = iRegisterTask.getPhoneId();
        this.mEventLog.logAndAdd(phoneId, iRegisterTask, "onRegisterError: error " + sipError + " retryAfterMs " + j);
        IMSLog.c(LogClass.REGI_REGISTER_ERROR, iRegisterTask.getPhoneId() + ",REG ERR:" + iRegisterTask.getMno().getName() + ":" + iRegisterTask.getProfile().getPdn() + ":" + sipError + ":" + j);
        iRegisterTask.setEpdgHandoverInProgress(false);
        if (SipErrorBase.UNAUTHORIZED.equals(sipError) && !iRegisterTask.isRcsOnly()) {
            return;
        }
        if ((iRegisterTask.getMno() == Mno.KDDI || iRegisterTask.getMno().isKor()) && (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED || iRegisterTask.isRefreshReg())) {
            iRegisterTask.setIsRefreshReg(true);
            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "onRegisterError: mIsRefreshReg " + iRegisterTask.isRefreshReg());
        } else if (this.mPdnController.isConnected(iRegisterTask.getPdnType(), iRegisterTask)) {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
        } else {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
        }
        removeAdhocProfile(phoneId, iRegisterTask);
        makeThrottle(phoneId, iRegisterTask);
        try {
            if (iRegisterTask.getProfile().hasEmergencySupport()) {
                if (iRegisterTask.getMno() == Mno.VZW) {
                    if (SipErrorBase.SIP_TIMEOUT.equals(sipError)) {
                        iRegisterTask.getGovernor().onRegistrationError(sipError, j, false);
                        if (iRegisterTask.getGovernor().getFailureCount() < 2) {
                            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "onRegisterError: Emergency Registration timed out. Retry.");
                        }
                    }
                    RegistrationUtils.sendEmergencyRegistrationFailed(iRegisterTask);
                } else if (iRegisterTask.getMno() == Mno.KDDI) {
                    iRegisterTask.getGovernor().onRegistrationError(sipError, j, false);
                    if (iRegisterTask.getGovernor().isAnonymousEmergencyCallRequired()) {
                        RegistrationUtils.sendEmergencyRegistrationFailed(iRegisterTask);
                        IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "onRegisterError: notify Emergency Registration failure for Anonymous Call");
                    }
                } else {
                    if (iRegisterTask.getProfile().getE911RegiTime() > 0 && SipErrorBase.SIP_TIMEOUT.equals(sipError)) {
                        iRegisterTask.getGovernor().onRegistrationError(sipError, j, false);
                        if (iRegisterTask.getGovernor().getFailureCount() < iRegisterTask.getGovernor().getNumOfEmerPcscfIp()) {
                            IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "onRegisterError: Emergency Registration Error Retry to next PCSCF");
                        }
                    }
                    RegistrationUtils.sendEmergencyRegistrationFailed(iRegisterTask);
                }
                this.mRegStackIf.onRegisterError(iRegisterTask, i, sipError, j);
                return;
            }
            iRegisterTask.getGovernor().onRegistrationError(sipError, j, false);
            int failureType = iRegisterTask.getGovernor().getFailureType();
            int detailedDeRegiReason = iRegisterTask.getGovernor().getDetailedDeRegiReason(failureType);
            if (iRegisterTask.getDeregiCause(sipError) == 32) {
                failureType = 32;
            }
            if (failureType != 16) {
                iRegisterTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_IMS_NOT_AVAILABLE);
            }
            boolean isEpdgConnected = this.mPdnController.isEpdgConnected(phoneId);
            if (iRegisterTask.getImsRegistration() != null) {
                isEpdgConnected = iRegisterTask.getImsRegistration().getEpdgStatus();
            }
            try {
                notifyImsRegistration(ImsRegistration.getBuilder().setHandle(i).setImsProfile(new ImsProfile(iRegisterTask.getProfile())).setServices(iRegisterTask.getProfile().getServiceSet(Integer.valueOf(iRegisterTask.getRegistrationRat()))).setEpdgStatus(isEpdgConnected).setPdnType(iRegisterTask.getPdnType()).setUuid(getUuid(phoneId, iRegisterTask.getProfile())).setInstanceId(getInstanceId(phoneId, iRegisterTask.getPdnType(), iRegisterTask.getProfile())).setNetwork(iRegisterTask.getNetworkConnected()).setRegiRat(iRegisterTask.getRegistrationRat()).setPhoneId(phoneId).build(), false, iRegisterTask, new ImsRegistrationError(sipError.getCode(), sipError.getReason(), detailedDeRegiReason, failureType));
                reportRegistrationStatus(iRegisterTask);
                reportRegistrationCount(iRegisterTask);
                IMSLog.lazer(iRegisterTask, "REGISTRATION FAILED : " + sipError);
                this.mRegStackIf.onRegisterError(iRegisterTask, i, sipError, j);
            } catch (Throwable th) {
                th = th;
                this.mRegStackIf.onRegisterError(iRegisterTask, i, sipError, j);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005e, code lost:
    
        if (((java.lang.Integer) java.util.Optional.ofNullable(r5.mAuEmergencyProfile.get(r6)).map(new com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda1()).orElse(-1)).intValue() == r7.getProfile().getId()) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void removeAdhocProfile(int r6, com.sec.internal.interfaces.ims.core.IRegisterTask r7) {
        /*
            r5 = this;
            java.util.List<com.sec.internal.interfaces.ims.core.ISimManager> r0 = r5.mSimManagers
            java.lang.Object r0 = r0.get(r6)
            com.sec.internal.interfaces.ims.core.ISimManager r0 = (com.sec.internal.interfaces.ims.core.ISimManager) r0
            com.sec.internal.ims.core.SlotBasedConfig$RegisterTaskList r1 = com.sec.internal.ims.core.RegistrationUtils.getPendingRegistrationInternal(r6)
            if (r0 == 0) goto Lc7
            if (r1 != 0) goto L12
            goto Lc7
        L12:
            com.sec.internal.constants.Mno r2 = r7.getMno()
            boolean r2 = r2.isAus()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L61
            com.sec.ims.settings.ImsProfile r2 = r7.getProfile()
            boolean r2 = r2.hasEmergencySupport()
            if (r2 == 0) goto L61
            com.sec.internal.constants.Mno r2 = r0.getDevMno()
            boolean r0 = com.sec.internal.ims.core.RegistrationUtils.checkAusEmergencyCall(r2, r6, r0)
            if (r0 == 0) goto L61
            android.util.SparseArray<com.sec.ims.settings.ImsProfile> r5 = r5.mAuEmergencyProfile
            java.lang.Object r5 = r5.get(r6)
            com.sec.ims.settings.ImsProfile r5 = (com.sec.ims.settings.ImsProfile) r5
            java.util.Optional r5 = java.util.Optional.ofNullable(r5)
            com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda1 r0 = new com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda1
            r0.<init>()
            java.util.Optional r5 = r5.map(r0)
            r0 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object r5 = r5.orElse(r0)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            com.sec.ims.settings.ImsProfile r0 = r7.getProfile()
            int r0 = r0.getId()
            if (r5 != r0) goto L89
            goto L8a
        L61:
            com.sec.internal.ims.core.SlotBasedConfig r5 = com.sec.internal.ims.core.SlotBasedConfig.getInstance(r6)
            java.util.List r5 = r5.getProfiles()
            java.util.Iterator r5 = r5.iterator()
        L6d:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L89
            java.lang.Object r0 = r5.next()
            com.sec.ims.settings.ImsProfile r0 = (com.sec.ims.settings.ImsProfile) r0
            int r0 = r0.getId()
            com.sec.ims.settings.ImsProfile r2 = r7.getProfile()
            int r2 = r2.getId()
            if (r0 != r2) goto L6d
            r4 = r3
            goto L6d
        L89:
            r3 = r4
        L8a:
            if (r3 != 0) goto Lc7
            com.sec.internal.ims.core.SlotBasedConfig r5 = com.sec.internal.ims.core.SlotBasedConfig.getInstance(r6)
            java.util.Map r5 = r5.getExtendedProfiles()
            com.sec.ims.settings.ImsProfile r0 = r7.getProfile()
            int r0 = r0.getId()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            boolean r5 = r5.containsKey(r0)
            if (r5 != 0) goto Lc7
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "onDeregisterd: remove RegisterTask: "
            r5.append(r0)
            com.sec.ims.settings.ImsProfile r0 = r7.getProfile()
            java.lang.String r0 = r0.getName()
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "RegiMgr"
            com.sec.internal.log.IMSLog.i(r0, r6, r5)
            r1.remove(r7)
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationManagerInternal.removeAdhocProfile(int, com.sec.internal.interfaces.ims.core.IRegisterTask):void");
    }

    void makeThrottle(int i, IRegisterTask iRegisterTask) {
        if (iRegisterTask.getProfile().getCmcType() == 8) {
            IMSLog.d(IRegistrationManager.LOG_TAG, i, "onRegisterError: don't retry register");
            iRegisterTask.getGovernor().makeThrottle();
        }
    }

    protected void onDeregistered(IRegisterTask iRegisterTask, SipError sipError, long j, boolean z, boolean z2) {
        final int phoneId = iRegisterTask.getPhoneId();
        this.mEventLog.logAndAdd(phoneId, iRegisterTask, "onDeregistered: rat=" + iRegisterTask.getRegistrationRat() + ", error=" + sipError + ", retryAfterMs=" + j + ", isRequestedDeregi=" + z + ", pcscfGone=" + z2 + ", reason=" + iRegisterTask.getDeregiReason() + ", keepPdn=" + iRegisterTask.isKeepPdn());
        if (ImsGateConfig.isGateEnabled()) {
            IMSLog.g("GATE", "<GATE-M>IMS_DISABLED</GATE-M>");
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(phoneId);
        if (pendingRegistrationInternal == null) {
            return;
        }
        if (iRegisterTask.getMno().isKor() && iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERED) {
            iRegisterTask.setIsRefreshReg(true);
        }
        iRegisterTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.OFFSET_DEREGI_REASON.getCode() + iRegisterTask.getDeregiReason());
        reportRegistrationStatus(iRegisterTask);
        IMSLog.lazer(iRegisterTask, "DE-REGISTERED : Reason - " + iRegisterTask.getDeregiReason());
        ImsRegistration remove = SlotBasedConfig.getInstance(phoneId).getImsRegistrations().remove(Integer.valueOf(IRegistrationManager.getRegistrationInfoId(iRegisterTask.getProfile().getId(), phoneId)));
        iRegisterTask.clearUpdateRegisteringFlag();
        if (!iRegisterTask.getMno().isKor() || !iRegisterTask.isRefreshReg() || z) {
            iRegisterTask.setIsRefreshReg(false);
        }
        RegistrationUtils.updateImsIcon(iRegisterTask);
        if (remove != null) {
            int deregiCause = iRegisterTask.getDeregiCause(sipError);
            notifyImsRegistration(remove, false, iRegisterTask, new ImsRegistrationError(sipError.getCode(), sipError.getReason(), iRegisterTask.getDeregiReason(), deregiCause));
            if (deregiCause == 32) {
                iRegisterTask.getGovernor().stopTimsTimer(RegistrationConstants.REASON_IMS_NOT_AVAILABLE);
                Log.i(IRegistrationManager.LOG_TAG, "ImsNotAvailable has sent by onDeregistered.");
                SlotBasedConfig.getInstance(phoneId).setNotifiedImsNotAvailable(true);
            }
        }
        if ((iRegisterTask.getMno().isChn() || iRegisterTask.getMno().isEur()) && this.mIsNonADSDeRegRequired) {
            sendDeregister(12, SimUtil.getOppositeSimSlot(phoneId));
            this.mIsNonADSDeRegRequired = false;
        }
        if (iRegisterTask.getProfile().hasEmergencySupport()) {
            if (this.mMoveNextPcscf) {
                iRegisterTask.getProfile().setUicclessEmergency(true);
                iRegisterTask.getGovernor().increasePcscfIdx();
                this.mMoveNextPcscf = false;
            } else {
                IMSLog.i(IRegistrationManager.LOG_TAG, phoneId, "onDeregistered: leave it to EMERGENCY state.");
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.EMERGENCY);
                iRegisterTask.setIsRefreshReg(false);
                if (iRegisterTask.getMno() == Mno.KDDI) {
                    this.mRegStackIf.onDeregistered(iRegisterTask, sipError, j, z);
                    if (iRegisterTask.isKeepPdn()) {
                        return;
                    }
                    stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
                    iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
                    return;
                }
                return;
            }
        }
        if (this.mPdnController.isConnected(iRegisterTask.getPdnType(), iRegisterTask)) {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONNECTED);
        } else if (iRegisterTask.isKeepPdn()) {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONNECTING);
        } else {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
        }
        if (this.mJibeRcsRegistration.needClearTasks(phoneId)) {
            this.mHandler.post(new Runnable() { // from class: com.sec.internal.ims.core.RegistrationManagerInternal$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationManagerInternal.this.lambda$onDeregistered$6(phoneId);
                }
            });
        }
        iRegisterTask.setImsRegistration(null);
        removeAdhocProfile(pendingRegistrationInternal, iRegisterTask);
        SecImsNotifier.getInstance().updateAdhocProfile(phoneId, iRegisterTask.getProfile(), false);
        if (z) {
            handleSolicitedDeregistration(iRegisterTask, sipError);
        } else if (z2) {
            iRegisterTask.getGovernor().resetPcscfList();
            this.mHandler.sendEmptyMessage(32);
            RegistrationManagerHandler registrationManagerHandler = this.mHandler;
            registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(2, Integer.valueOf(iRegisterTask.getPhoneId())));
        } else {
            handleUnSolicitedDeregistration(iRegisterTask, sipError, j);
        }
        IMSLog.c(LogClass.REGI_DEREGISTERED, phoneId + ",DEREG:" + iRegisterTask.getMno().getName() + ":" + iRegisterTask.getProfile().getPdn() + ":" + iRegisterTask.getState());
        iRegisterTask.setReason("");
        iRegisterTask.getGovernor().onDeregistrationDone(z);
        iRegisterTask.setDeregiReason(41);
        iRegisterTask.setIsRefreshReg(false);
        this.mRegStackIf.onDeregistered(iRegisterTask, sipError, j, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDeregistered$6(int i) {
        this.mEventLog.logAndAdd(i, "onDeregistered: All de-registered. Reset tasks after profile update");
        clearTask(i);
        onImsProfileUpdateDone(i);
    }

    void handleSolicitedDeregistration(IRegisterTask iRegisterTask, SipError sipError) {
        if (!iRegisterTask.isKeepPdn()) {
            if (iRegisterTask.getMno() == Mno.GCF && iRegisterTask.getProfile().getPdn().equals(DeviceConfigManager.IMS) && (iRegisterTask.getDeregiCause(sipError) == 2 || iRegisterTask.getDeregiReason() == 73)) {
                RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                registrationManagerHandler.sendMessageDelayed(registrationManagerHandler.obtainMessage(133, iRegisterTask), 500L);
            } else {
                stopPdnConnectivity(iRegisterTask.getPdnType(), iRegisterTask);
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
                if (!iRegisterTask.getMno().isKor() || !iRegisterTask.isRcsOnly()) {
                    setOmadmState(iRegisterTask.getPhoneId(), RegistrationManager.OmadmConfigState.IDLE);
                }
            }
        }
        tryNextRegistration(iRegisterTask, iRegisterTask.getDeregiReason());
    }

    void handleUnSolicitedDeregistration(IRegisterTask iRegisterTask, SipError sipError, long j) {
        this.mEventLog.logAndAdd(iRegisterTask.getPhoneId(), iRegisterTask, "onDeregistered: registration error = " + sipError);
        if (SipErrorBase.isRegiTerminatedError(sipError)) {
            iRegisterTask.getGovernor().onRegistrationTerminated(sipError, j, true);
        } else {
            iRegisterTask.getGovernor().onRegistrationError(sipError, j, true);
        }
        if (!this.mPdnController.isConnected(iRegisterTask.getPdnType(), iRegisterTask)) {
            iRegisterTask.getGovernor().resetPcscfList();
        } else {
            iRegisterTask.setKeepPdn(true);
        }
    }

    void onPendingUpdateRegistration() {
        this.mHandler.removeMessages(32);
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                RegistrationConstants.RegisterTaskState state = next.getState();
                RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.REGISTERED;
                if (state == registerTaskState && next.mHasForcedPendingUpdate) {
                    Log.i(IRegistrationManager.LOG_TAG, "onPendingUpdateRegistration: forced " + next.getProfile().getName());
                    next.mHasForcedPendingUpdate = false;
                    if (next.hasPendingEpdgHandover()) {
                        next.setHasPendingEpdgHandover(false);
                        next.setEpdgHandoverInProgress(true);
                    }
                    if (next.isImmediatePendingUpdate()) {
                        updateRegistration(next, RegistrationConstants.UpdateRegiReason.FORCED_PENDING_UPDATE, true);
                    } else {
                        updateRegistration(next, RegistrationConstants.UpdateRegiReason.FORCED_PENDING_UPDATE);
                    }
                } else if (next.getState() == registerTaskState && next.mHasPendingUpdate) {
                    Log.i(IRegistrationManager.LOG_TAG, "onPendingUpdateRegistration: " + next.getProfile().getName());
                    next.mHasPendingUpdate = false;
                    if (next.hasPendingEpdgHandover()) {
                        next.setHasPendingEpdgHandover(false);
                        next.setEpdgHandoverInProgress(true);
                    }
                    if (next.isImmediatePendingUpdate()) {
                        updateRegistration(next, RegistrationConstants.UpdateRegiReason.PENDING_UPDATE, true);
                    } else {
                        updateRegistration(next, RegistrationConstants.UpdateRegiReason.PENDING_UPDATE);
                    }
                } else if (next.getState() == registerTaskState && next.hasPendingDeregister()) {
                    Log.i(IRegistrationManager.LOG_TAG, "onPendingDeRegistration: " + next.getProfile().getName());
                    next.setHasPendingDeregister(false);
                    tryDeregisterInternal(next, false, true);
                }
            }
        }
    }

    private void removeAdhocProfile(SlotBasedConfig.RegisterTaskList registerTaskList, IRegisterTask iRegisterTask) {
        boolean z;
        Iterator<ImsProfile> it = SlotBasedConfig.getInstance(iRegisterTask.getPhoneId()).getProfiles().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().getId() == iRegisterTask.getProfile().getId()) {
                z = true;
                break;
            }
        }
        if (z || iRegisterTask.getProfile().hasEmergencySupport() || SlotBasedConfig.getInstance(iRegisterTask.getPhoneId()).getExtendedProfiles().containsKey(Integer.valueOf(iRegisterTask.getProfile().getId()))) {
            return;
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "onDeregisterd: Remove RegiTask for [" + iRegisterTask.getProfile().getName() + "]");
        registerTaskList.remove(iRegisterTask);
    }

    void tryNextRegistration(IRegisterTask iRegisterTask, int i) {
        if (iRegisterTask.getPdnType() == 11) {
            long j = RegistrationGovernor.RETRY_AFTER_PDNLOST_MS;
            if (i == 2) {
                iRegisterTask.getGovernor().addDelay(RegistrationGovernor.RETRY_AFTER_PDNLOST_MS, 1);
            } else if (i == 24) {
                iRegisterTask.getGovernor().addDelay(RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
            } else if (i == 27) {
                j = 1000;
                iRegisterTask.getGovernor().addDelay(1000L);
            } else if (i == 21 && iRegisterTask.isKeepPdn()) {
                iRegisterTask.getGovernor().addDelay(RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
            } else {
                j = 0;
            }
            if (iRegisterTask.getMno() == Mno.KDDI) {
                this.mHandler.sendEmptyMessage(32);
                RegistrationManagerHandler registrationManagerHandler = this.mHandler;
                registrationManagerHandler.sendMessage(registrationManagerHandler.obtainMessage(2, Integer.valueOf(iRegisterTask.getPhoneId())));
                return;
            } else {
                long j2 = j + 300;
                this.mHandler.sendEmptyMessageDelayed(32, j2);
                RegistrationManagerHandler registrationManagerHandler2 = this.mHandler;
                registrationManagerHandler2.sendMessageDelayed(registrationManagerHandler2.obtainMessage(2, Integer.valueOf(iRegisterTask.getPhoneId())), j2);
                return;
            }
        }
        this.mHandler.sendEmptyMessage(32);
        RegistrationManagerHandler registrationManagerHandler3 = this.mHandler;
        registrationManagerHandler3.sendMessage(registrationManagerHandler3.obtainMessage(2, Integer.valueOf(iRegisterTask.getPhoneId())));
    }

    protected void onSubscribeError(IRegisterTask iRegisterTask, SipError sipError) {
        this.mEventLog.logAndAdd(iRegisterTask.getPhoneId(), iRegisterTask, "onSubscribeError: error " + sipError);
        iRegisterTask.getGovernor().onSubscribeError(0, sipError);
    }

    protected void onForcedUpdateRegistrationRequested(RegisterTask registerTask) {
        registerTask.setReason("forced update registration");
        updateRegistration(registerTask, RegistrationConstants.UpdateRegiReason.FORCED_UPDATE);
    }

    protected void onRefreshRegistration(IRegisterTask iRegisterTask, int i) {
        IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "onRefreshRegistration: profile " + iRegisterTask.getProfile().getName() + " handle : " + i);
        if (!SimUtil.isMultiSimSupported()) {
            IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "This model is not for Dual IMS.");
            return;
        }
        if (this.mVsm != null) {
            for (int i2 = 0; i2 < this.mSimManagers.size(); i2++) {
                Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i2).getRegistrationTasks().iterator();
                while (it.hasNext()) {
                    ImsRegistration imsRegistration = it.next().mReg;
                    if (imsRegistration != null && imsRegistration.getHandle() != i && this.mVsm.getSessionCount(i2) > 0 && !this.mVsm.hasEmergencyCall(i2) && this.mVsm.hasActiveCall(i2)) {
                        IMSLog.i(IRegistrationManager.LOG_TAG, i2, "Active VoLTE call exists on this slot. Try to de-regi.");
                        tryDeregisterInternal(iRegisterTask, true, true);
                        return;
                    }
                }
            }
        }
        IMSLog.i(IRegistrationManager.LOG_TAG, iRegisterTask.getPhoneId(), "onRefreshRegistration: No de-registration has triggered");
    }

    protected void setDelayedDeregisterTimerRunning(IRegisterTask iRegisterTask, boolean z) {
        if (iRegisterTask.getProfile().hasService("mmtel") || iRegisterTask.getProfile().hasService("mmtel-video")) {
            this.mVsm.setDelayedDeregisterTimerRunning(iRegisterTask.getPhoneId(), z);
        }
        if (iRegisterTask.getProfile().hasService("smsip")) {
            this.mImsFramework.getServiceModuleManager().getSmsServiceModule().setDelayedDeregisterTimerRunning(iRegisterTask.getPhoneId(), z);
        }
    }

    private boolean isTryingCmcDualRegi(int i, IRegisterTask iRegisterTask) {
        IRegisterTask cmcRegisterTask = this.mCmcAccountManager.getCmcRegisterTask(SimUtil.getOppositeSimSlot(i));
        return (cmcRegisterTask == null || cmcRegisterTask.getState() == RegistrationConstants.RegisterTaskState.IDLE || !RegistrationUtils.isCmcProfile(iRegisterTask.getProfile())) ? false : true;
    }
}
