package com.sec.internal.ims.config;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseBooleanArray;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.ChnStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.interfaces.ims.config.IWorkflow;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ConfigTrigger {
    private static final String EXTRA_IS_IIDTOKEN = "is_iid_token_needed";
    private static final String EXTRA_IS_RCS_REGI = "is_rcs_registered";
    private static final String EXTRA_PHONE_ID = "phoneId";
    private static final String INTENT_ACTION_RCS_AUTOCONFIG_START = "com.android.ims.RCS_AUTOCONFIG_START";
    private static final String LOG_TAG = "ConfigTrigger";
    private static final String MESSAGE_PACKAGE_NAME = "com.samsung.android.messaging";
    private IConfigModule mCm;
    private final Context mContext;
    private final SimpleEventLog mEventLog;
    private boolean[] mReAutoConfigPerformed;
    private boolean[] mReadyStartForceCmd;
    private IRegistrationManager mRm;
    private boolean mNeedResetConfig = false;
    private boolean mDualSimRcsAutoConfig = false;
    private SparseBooleanArray mReadyStartCmdList = new SparseBooleanArray();
    private Map<Integer, DiagnosisConstants.RCSA_ATRE> mAcsTryReason = new ConcurrentHashMap();
    private Map<Integer, DiagnosisConstants.RCSA_TDRE> mTokenDeletedReason = new ConcurrentHashMap();

    public ConfigTrigger(Context context, IRegistrationManager iRegistrationManager, IConfigModule iConfigModule, SimpleEventLog simpleEventLog) {
        this.mReadyStartForceCmd = null;
        this.mReAutoConfigPerformed = null;
        this.mContext = context;
        this.mRm = iRegistrationManager;
        this.mCm = iConfigModule;
        this.mEventLog = simpleEventLog;
        int phoneCount = SimUtil.getPhoneCount();
        if (phoneCount <= 0) {
            IMSLog.i(LOG_TAG, "an amount of SIM slots (" + phoneCount + ") is not valid");
            return;
        }
        this.mReAutoConfigPerformed = new boolean[phoneCount];
        this.mReadyStartForceCmd = new boolean[phoneCount];
    }

    void resetReAutoConfigOption(int i) {
        try {
            this.mReAutoConfigPerformed[i] = false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            IMSLog.d(LOG_TAG, "there is no such a SIM slot number: " + i);
        }
    }

    protected void setStateforTriggeringACS(int i) {
        IMSLog.i(LOG_TAG, i, "setStateforTriggeringACS:");
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        List<IRegisterTask> pendingRegistration = this.mRm.getPendingRegistration(i);
        if (simManagerFromSimSlot == null || pendingRegistration == null) {
            return;
        }
        Mno simMno = simManagerFromSimSlot.getSimMno();
        if (simManagerFromSimSlot.hasNoSim() || !ConfigUtil.isRcsAvailable(this.mContext, i, simManagerFromSimSlot) || this.mCm.getAcsConfig(i).isAcsCompleted() || simMno.isKor()) {
            return;
        }
        for (IRegisterTask iRegisterTask : pendingRegistration) {
            if (isWaitAutoconfig(iRegisterTask) && (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.IDLE || (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.CONFIGURED && (simMno == Mno.SPRINT || simMno == Mno.TCE || simMno == Mno.CLARO_ARGENTINA || simMno == Mno.CLARO_COLOMBIA || simMno == Mno.CLARO_BRAZIL || simMno == Mno.TIM_BRAZIL)))) {
                this.mEventLog.logAndAdd(i, "RegisterTask setState: CONFIGURING");
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.CONFIGURING);
            }
        }
    }

    protected void setRegisterFromApp(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "setRegisterFromApp:");
        List<IRegisterTask> pendingRegistration = this.mRm.getPendingRegistration(i);
        if (pendingRegistration == null) {
            return;
        }
        if (z) {
            for (IRegisterTask iRegisterTask : pendingRegistration) {
                if (iRegisterTask.isRcsOnly() && iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONFIGURED)) {
                    IMSLog.i(LOG_TAG, i, "setRegisterFromApp: set AcsCompleteStatus as false");
                    this.mCm.getAcsConfig(i).setAcsCompleteStatus(false);
                }
            }
            setAcsTryReason(i, DiagnosisConstants.RCSA_ATRE.FROM_APP);
        }
        this.mRm.requestTryRegister(i);
    }

    protected boolean isWaitAutoconfig(IRegisterTask iRegisterTask) {
        int phoneId = iRegisterTask.getPhoneId();
        String str = LOG_TAG;
        IMSLog.i(str, phoneId, "isWaitAutoConfig:");
        Mno mno = iRegisterTask.getMno();
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(phoneId);
        boolean isSimMobilityActivatedForAmRcs = ImsUtil.isSimMobilityActivatedForAmRcs(this.mContext, phoneId);
        if (!ConfigUtil.getGlobalGcEnabled(this.mContext, phoneId) && (ImsUtil.isSimMobilityActivatedForRcs(phoneId) || isSimMobilityActivatedForAmRcs)) {
            boolean z = true;
            if (iRegisterTask.getProfile().getEnableRcs() || isSimMobilityActivatedForAmRcs) {
                IMSLog.i(str, phoneId, "isWaitAutoConfig: RCS is enabled in SIM mobility");
            } else if (!OmcCode.isKorOpenOmcCode() || !mno.isKor()) {
                z = false;
            }
            if (!z) {
                IMSLog.i(str, phoneId, "isWaitAutoConfig: This is a other country SIM, RCS disabled in SIM mobility");
                return false;
            }
        }
        if (!ConfigUtil.isRcsAvailable(this.mContext, phoneId, simManagerFromSimSlot) || (this.mCm.getAcsConfig(phoneId).isAcsCompleted() && !(mno.isKor() && this.mCm.getAcsConfig(phoneId).needForceAcs()))) {
            return false;
        }
        return iRegisterTask.getProfile().getNeedAutoconfig();
    }

    protected boolean triggerAutoConfig(boolean z, int i, List<IRegisterTask> list) {
        IServiceModuleManager serviceModuleManager;
        String str = LOG_TAG;
        IMSLog.i(str, i, "triggerAutoConfig: forceAutoconfig: " + z);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        boolean z2 = false;
        if (simManagerFromSimSlot == null || list == null) {
            IMSLog.i(str, i, "triggerAutoConfig: sm/regiTaskList is null");
            return false;
        }
        Mno simMno = simManagerFromSimSlot.getSimMno();
        if ((ConfigUtil.isRcsEur(i) || ConfigUtil.isRcsCanada(simMno)) && (serviceModuleManager = ImsRegistry.getServiceModuleManager()) != null) {
            serviceModuleManager.checkRcsServiceModules(list, i);
        }
        if (!simManagerFromSimSlot.hasNoSim() && ConfigUtil.isRcsAvailable(this.mContext, i, simManagerFromSimSlot) && (!this.mCm.getAcsConfig(i).isAcsCompleted() || (simMno.isKor() && this.mCm.getAcsConfig(i).needForceAcs()))) {
            IMSLog.i(str, i, "triggerAutoConfig: try to start autoConfig");
            if (simMno.isKor()) {
                triggerAutoConfigForKor(z, i, list);
                return false;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("phoneId", i);
            if (simMno == Mno.SWISSCOM) {
                synchronized (this.mRm) {
                    List<IRegisterTask> pendingRegistration = this.mRm.getPendingRegistration(SimUtil.getOppositeSimSlot(i));
                    if (pendingRegistration != null) {
                        Iterator<IRegisterTask> it = pendingRegistration.iterator();
                        while (it.hasNext()) {
                            if (it.next().getState() == RegistrationConstants.RegisterTaskState.CONFIGURING) {
                                IMSLog.i(LOG_TAG, i, "stop triggerAutoConfig because other slot is configuring");
                                this.mCm.sendConfigMessageDelayed(15, i, Boolean.valueOf(z), 25000);
                                return false;
                            }
                        }
                    }
                    setStateforTriggeringACS(i);
                }
            } else {
                setStateforTriggeringACS(i);
            }
            if (getDualSimRcsAutoConfig()) {
                if (ConfigUtil.isRcsEur(simMno)) {
                    IConfigModule iConfigModule = this.mCm;
                    iConfigModule.startAutoConfigDualsim(i, iConfigModule.obtainConfigMessage(13, bundle));
                } else {
                    IConfigModule iConfigModule2 = this.mCm;
                    iConfigModule2.startAutoConfig(z, iConfigModule2.obtainConfigMessage(13, bundle), i);
                }
                setDualSimRcsAutoConfig(false);
            } else {
                IConfigModule iConfigModule3 = this.mCm;
                iConfigModule3.startAutoConfig(z, iConfigModule3.obtainConfigMessage(13, bundle), i);
            }
        } else {
            IMSLog.i(str, i, "triggerAutoConfig: unable to start autoConfig");
            if (ConfigUtil.isRcsEur(simMno) || simMno.isOce()) {
                try {
                    if (!this.mReAutoConfigPerformed[i] && (!ImsRegistry.getConfigModule().isRcsEnabled(i))) {
                        IMSLog.i(str, i, "attempt to start autoConfig will be made one more time");
                        this.mReAutoConfigPerformed[i] = true;
                    }
                } catch (NullPointerException unused) {
                    IMSLog.i(LOG_TAG, i, "information about performing re-autoconfiguration is unavailable");
                }
            }
        }
        return z2;
    }

    protected void triggerAutoConfigForKor(boolean z, int i, List<IRegisterTask> list) {
        for (IRegisterTask iRegisterTask : list) {
            if (iRegisterTask.isRcsOnly()) {
                RegistrationConstants.RegisterTaskState state = iRegisterTask.getState();
                RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.CONFIGURING;
                if (state == registerTaskState && isWaitAutoconfig(iRegisterTask)) {
                    IMSLog.i(LOG_TAG, i, "triggerAutoConfigForKor: already autoconfiguration is processing and not get complete notify yet");
                    return;
                }
                if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED && isWaitAutoconfig(iRegisterTask)) {
                    this.mEventLog.logAndAdd(i, "RegisterTask setState: CONFIGURING");
                    iRegisterTask.setState(registerTaskState);
                }
                Bundle bundle = new Bundle();
                bundle.putInt("phoneId", iRegisterTask.getPhoneId());
                if (this.mCm.getAcsConfig(i).needForceAcs()) {
                    IConfigModule iConfigModule = this.mCm;
                    iConfigModule.startAutoConfig(true, iConfigModule.obtainConfigMessage(13, bundle), i);
                    return;
                } else {
                    IConfigModule iConfigModule2 = this.mCm;
                    iConfigModule2.startAutoConfig(z, iConfigModule2.obtainConfigMessage(13, bundle), i);
                    return;
                }
            }
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
            if (simManagerFromSimSlot != null && TextUtils.isEmpty(simManagerFromSimSlot.getMsisdn()) && iRegisterTask.getPdnType() == 11 && iRegisterTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERED) {
                IMSLog.i(LOG_TAG, i, "triggerAutoConfigForKor: MSISDN is null, try to RCS ACS after registered VoLTE");
                return;
            }
        }
    }

    protected boolean isValidAcsVersion(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "isValidAcsVersion:");
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null || simManagerFromSimSlot.hasNoSim()) {
            return false;
        }
        if (!RcsUtils.DualRcs.isRegAllowed(this.mContext, i)) {
            IMSLog.i(str, i, "DDS set to other SIM");
            return false;
        }
        if (!ConfigUtil.getGlobalGcEnabled(this.mContext, i) && !ConfigUtil.isSimMobilityRCS(this.mContext, i, simManagerFromSimSlot, this.mRm)) {
            IMSLog.i(str, i, "isValidAcsVersion: This is a other country SIM, RCS disabled in SIM mobility");
            return false;
        }
        boolean z = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, 0, i) == 1;
        Integer rcsConfVersion = this.mCm.getRcsConfVersion(i);
        boolean isAcsCompleted = this.mCm.getAcsConfig(i).isAcsCompleted();
        boolean checkMdmRcsStatus = ConfigUtil.checkMdmRcsStatus(this.mContext, i);
        IMSLog.i(str, i, "RCS switch: " + z + ", version: " + rcsConfVersion + ", isRcsAcsCompleted: " + isAcsCompleted);
        if (!checkMdmRcsStatus) {
            IMSLog.i(str, i, "RCS service isn't allowed by MDM");
            return false;
        }
        if (!isAcsCompleted) {
            IMSLog.i(str, i, "RCS switch is on & config version: " + rcsConfVersion + ". This shouldn't happen!");
            return z;
        }
        if (!z) {
            Mno simMno = simManagerFromSimSlot.getSimMno();
            String acsServerType = ConfigUtil.getAcsServerType(i);
            if ((simMno != Mno.ATT && simMno != Mno.VZW) || ImsConstants.RCS_AS.JIBE.equals(acsServerType)) {
                IMSLog.i(str, i, "userSetting is disabled");
                return false;
            }
        }
        if (rcsConfVersion != null && rcsConfVersion.intValue() != 0 && rcsConfVersion.intValue() >= 0) {
            return true;
        }
        IMSLog.i(str, i, "version is improper : " + rcsConfVersion);
        return false;
    }

    protected void tryAutoConfig(IWorkflow iWorkflow, int i, boolean z, boolean z2) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "tryAutoConfig: mobileNetwork: " + z2);
        if (iWorkflow == null) {
            IMSLog.i(str, i, "tryAutoConfig: workflow is null");
            return;
        }
        IMSLog.c(LogClass.CM_TRY_ACS, i + ",FORCE:" + getReadyStartForceCmd(i) + ",RST:" + getNeedResetConfig());
        this.mCm.getAvailableNetwork(i);
        boolean updateMobileNetworkforDualRcs = this.mCm.updateMobileNetworkforDualRcs(i);
        StringBuilder sb = new StringBuilder();
        sb.append("tryAutoConfig: updateMobileNetworkforDualRcs: ");
        sb.append(updateMobileNetworkforDualRcs);
        IMSLog.i(str, i, sb.toString());
        if (getDualSimRcsAutoConfig()) {
            iWorkflow.startAutoConfigDualsim(updateMobileNetworkforDualRcs);
            setDualSimRcsAutoConfig(false);
        } else if (getReadyStartForceCmd(i)) {
            if (getNeedResetConfig()) {
                iWorkflow.forceAutoConfigNeedResetConfig(updateMobileNetworkforDualRcs);
                setNeedResetConfig(false);
            } else {
                iWorkflow.forceAutoConfig(updateMobileNetworkforDualRcs);
            }
            setReadyStartForceCmd(i, false);
        } else {
            IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
            if (z && (rcsStrategy instanceof ChnStrategy)) {
                iWorkflow.forceAutoConfig(updateMobileNetworkforDualRcs);
            } else {
                iWorkflow.startAutoConfig(updateMobileNetworkforDualRcs);
            }
        }
        if (ConfigUtil.isRcsChn(SimUtil.getSimMno(i))) {
            return;
        }
        setReadyStartCmdList(i, false);
    }

    protected void startAutoConfig(boolean z, Message message, int i) {
        IMSLog.i(LOG_TAG, i, "startAutoConfig: forced: " + z);
        IMSLog.c(LogClass.CM_START_ACS, i + ",FORCE:" + z);
        if (!z) {
            startConfig(2, message, i);
        } else {
            startConfig(1, message, i);
        }
    }

    protected void startAutoConfigDualsim(int i, Message message) {
        startConfig(9, message, i);
    }

    protected void startConfig(int i, Message message, int i2) {
        this.mCm.sendConfigMessage(0, i2);
        String str = LOG_TAG;
        IMSLog.i(str, i2, "startConfig: cmd: " + i);
        if (i == 1 || i == 2) {
            sendRcsAutoconfigStart(i2);
        } else {
            if (i != 20 && i != 27) {
                switch (i) {
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        break;
                    case 9:
                        break;
                    default:
                        Log.i(str, "unknown cmd");
                        return;
                }
            }
            this.mCm.sendConfigMessage(i, i2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("onComplete: ");
        sb.append(message != null ? message.toString() : "null");
        Log.i(str, sb.toString());
        this.mEventLog.logAndAdd(i2, "Autoconfig start: cmd: " + i);
        this.mCm.sendConfigMessage(i, i2);
    }

    protected void setAcsTryReason(int i, DiagnosisConstants.RCSA_ATRE rcsa_atre) {
        this.mEventLog.logAndAdd(i, "setAutoconfigTryReason: " + rcsa_atre.toString());
        IMSLog.c(LogClass.CM_ACS_TRY_REASON, i + ",TR:" + rcsa_atre.toString());
        this.mAcsTryReason.put(Integer.valueOf(i), rcsa_atre);
    }

    protected DiagnosisConstants.RCSA_ATRE getAcsTryReason(int i) {
        DiagnosisConstants.RCSA_ATRE rcsa_atre = this.mAcsTryReason.get(Integer.valueOf(i));
        if (rcsa_atre != null) {
            return rcsa_atre;
        }
        DiagnosisConstants.RCSA_ATRE rcsa_atre2 = DiagnosisConstants.RCSA_ATRE.INIT;
        this.mAcsTryReason.put(Integer.valueOf(i), rcsa_atre2);
        return rcsa_atre2;
    }

    protected void resetAcsTryReason(int i) {
        DiagnosisConstants.RCSA_ATRE rcsa_atre = this.mAcsTryReason.get(Integer.valueOf(i));
        if (rcsa_atre == null || rcsa_atre != DiagnosisConstants.RCSA_ATRE.INIT) {
            this.mAcsTryReason.put(Integer.valueOf(i), DiagnosisConstants.RCSA_ATRE.INIT);
        }
    }

    protected void setTokenDeletedReason(int i, DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        this.mEventLog.logAndAdd(i, "setAutoconfigTryReason: " + rcsa_tdre.toString());
        IMSLog.c(LogClass.CM_ACS_TRY_REASON, i + ",TR:" + rcsa_tdre.toString());
        this.mTokenDeletedReason.put(Integer.valueOf(i), rcsa_tdre);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DiagnosisConstants.RCSA_TDRE lambda$getTokenDeletedReason$0(Integer num) {
        return DiagnosisConstants.RCSA_TDRE.INIT;
    }

    protected DiagnosisConstants.RCSA_TDRE getTokenDeletedReason(int i) {
        return this.mTokenDeletedReason.computeIfAbsent(Integer.valueOf(i), new Function() { // from class: com.sec.internal.ims.config.ConfigTrigger$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DiagnosisConstants.RCSA_TDRE lambda$getTokenDeletedReason$0;
                lambda$getTokenDeletedReason$0 = ConfigTrigger.lambda$getTokenDeletedReason$0((Integer) obj);
                return lambda$getTokenDeletedReason$0;
            }
        });
    }

    protected void resetTokenDeletedReason(int i) {
        if (this.mTokenDeletedReason.get(Integer.valueOf(i)) == null) {
            this.mTokenDeletedReason.put(Integer.valueOf(i), DiagnosisConstants.RCSA_TDRE.INIT);
        }
    }

    protected boolean getDualSimRcsAutoConfig() {
        return this.mDualSimRcsAutoConfig;
    }

    protected void setDualSimRcsAutoConfig(boolean z) {
        Log.i(LOG_TAG, "setDualSimRcsAutoConfig: isDualSimAcs: " + z);
        this.mDualSimRcsAutoConfig = z;
    }

    protected boolean getReadyStartCmdList(int i) {
        return this.mReadyStartCmdList.get(i);
    }

    protected void setReadyStartCmdList(int i, boolean z) {
        this.mReadyStartCmdList.put(i, z);
    }

    protected int getReadyStartCmdListIndexOfKey(int i) {
        return this.mReadyStartCmdList.indexOfKey(i);
    }

    protected boolean getReadyStartForceCmd(int i) {
        return this.mReadyStartForceCmd[i];
    }

    protected void setReadyStartForceCmd(int i, boolean z) {
        Log.i(LOG_TAG, "setReadyStartForceCmd[" + i + "]: readyStartForceCmd: " + z);
        this.mReadyStartForceCmd[i] = z;
    }

    protected boolean getNeedResetConfig() {
        return this.mNeedResetConfig;
    }

    protected void setNeedResetConfig(boolean z) {
        Log.i(LOG_TAG, "setNeedResetConfig: needResetConfig: " + z);
        this.mNeedResetConfig = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean tryAutoconfiguration(com.sec.internal.interfaces.ims.core.IRegisterTask r9) {
        /*
            r8 = this;
            int r0 = r9.getPhoneId()
            com.sec.internal.interfaces.ims.config.IConfigModule r1 = r8.mCm
            com.sec.internal.ims.config.params.ACSConfig r1 = r1.getAcsConfig(r0)
            android.content.Context r2 = r8.mContext
            r3 = 1
            int r2 = com.sec.internal.constants.ims.ImsConstants.SystemSettings.getRcsUserSetting(r2, r3, r0)
            r4 = 0
            if (r2 != r3) goto L16
            r2 = r3
            goto L17
        L16:
            r2 = r4
        L17:
            if (r1 == 0) goto L44
            int r5 = r1.getAcsVersion()
            r6 = -2
            if (r5 != r6) goto L44
            if (r2 == 0) goto L44
            java.lang.String r2 = com.sec.internal.ims.config.ConfigTrigger.LOG_TAG
            java.lang.String r5 = "ACS version: -2, IMS RCS switch enabled - set force autoconfig NOW."
            android.util.Log.i(r2, r5)
            com.sec.internal.constants.Mno r5 = r9.getMno()
            boolean r5 = com.sec.internal.ims.util.ConfigUtil.isRcsChn(r5)
            if (r5 == 0) goto L3f
            boolean r5 = r1.isRcsDisabled()
            if (r5 == 0) goto L3f
            java.lang.String r5 = "CHN Need block ACS when user setting is ON."
            android.util.Log.i(r2, r5)
            goto L44
        L3f:
            r1.clear()
            r2 = r3
            goto L45
        L44:
            r2 = r4
        L45:
            com.sec.internal.interfaces.ims.core.IRegistrationManager r5 = r8.mRm
            java.util.List r5 = r5.getPendingRegistration(r0)
            boolean r6 = com.sec.internal.helper.CollectionUtils.isNullOrEmpty(r5)
            if (r6 == 0) goto L52
            return r4
        L52:
            boolean r6 = r8.isWaitAutoconfig(r9)
            if (r6 == 0) goto La3
            java.lang.String r6 = com.sec.internal.ims.config.ConfigTrigger.LOG_TAG
            java.lang.String r7 = "autoconfig is not ready"
            com.sec.internal.log.IMSLog.i(r6, r0, r7)
            com.sec.internal.constants.Mno r0 = r9.getMno()
            boolean r0 = r0.isKor()
            if (r0 == 0) goto L79
            com.sec.internal.constants.ims.core.RegistrationConstants$RegisterTaskState r0 = r9.getState()
            com.sec.internal.constants.ims.core.RegistrationConstants$RegisterTaskState r1 = com.sec.internal.constants.ims.core.RegistrationConstants.RegisterTaskState.CONNECTED
            if (r0 != r1) goto La3
            int r9 = r9.getPhoneId()
            r8.triggerAutoConfig(r4, r9, r5)
            return r3
        L79:
            if (r1 == 0) goto L9b
            boolean r0 = r1.isRcsDisabled()
            if (r0 == 0) goto L9b
            com.sec.internal.constants.Mno r0 = r9.getMno()
            boolean r0 = com.sec.internal.ims.util.ConfigUtil.isRcsEurNonRjil(r0)
            if (r0 != 0) goto L95
            com.sec.internal.constants.Mno r0 = r9.getMno()
            boolean r0 = com.sec.internal.ims.util.ConfigUtil.isRcsChn(r0)
            if (r0 == 0) goto L9b
        L95:
            java.lang.String r8 = "Version & validity == 0. Autoconfiguration will be performed after next reboot"
            android.util.Log.i(r6, r8)
            return r3
        L9b:
            int r9 = r9.getPhoneId()
            r8.triggerAutoConfig(r2, r9, r5)
            return r3
        La3:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.ConfigTrigger.tryAutoconfiguration(com.sec.internal.interfaces.ims.core.IRegisterTask):boolean");
    }

    protected void setRcsClientConfiguration(int i, IWorkflow iWorkflow, String str, String str2, String str3, String str4, String str5) {
        boolean isGoogDmaPackageInuse = ConfigUtil.isGoogDmaPackageInuse(this.mContext, i);
        String str6 = LOG_TAG;
        IMSLog.i(str6, i, "setRcsClientConfiguration: isAmDefault: " + isGoogDmaPackageInuse);
        if (RcsUtils.isImsSingleRegiRequired(this.mContext, i) && isGoogDmaPackageInuse && iWorkflow != null) {
            IMSLog.i(str6, i, "setRcsClientConfiguration: imsSingleRegi is required: try to set rcc info");
            iWorkflow.setRcsClientConfiguration(str, str2, str3, str4, str5);
        }
    }

    protected void triggerAutoConfiguration(int i) {
        boolean isGoogDmaPackageInuse = ConfigUtil.isGoogDmaPackageInuse(this.mContext, i);
        String rcsClientConfiguration = SecImsNotifier.getInstance().getRcsClientConfiguration(i, 2);
        String str = LOG_TAG;
        IMSLog.i(str, i, "triggerAutoConfiguration: isAmDefault: " + isGoogDmaPackageInuse + "clientVendor: " + rcsClientConfiguration);
        if (TextUtils.equals(rcsClientConfiguration, ConfigConstants.PVALUE.GOOG_DEFAULT_CLIENT_VENDOR) && isGoogDmaPackageInuse) {
            IMSLog.i(str, i, "triggerAutoConfiguration: imsSingleRegi is required: try to trigger autoConfig forcibly");
            List<IRegisterTask> pendingRegistration = this.mRm.getPendingRegistration(i);
            if (pendingRegistration != null) {
                Iterator<IRegisterTask> it = pendingRegistration.iterator();
                while (it.hasNext()) {
                    if (it.next().getProfile().getNeedAutoconfig()) {
                        this.mCm.getAcsConfig(i).setAcsCompleteStatus(false);
                        triggerAutoConfig(true, i, pendingRegistration);
                    }
                }
            }
        }
    }

    protected void sendRcsAutoconfigStart(int i) {
        String acsServerType = ConfigUtil.getAcsServerType(i);
        Mno simMno = SimUtil.getSimMno(i);
        String valueOf = String.valueOf(WorkflowBase.OpMode.DISABLE_TEMPORARY);
        IStorageAdapter storage = this.mCm.getStorage(i);
        if (storage != null) {
            valueOf = storage.read(ConfigConstants.PATH.RCS_STATE);
        }
        boolean isIidTokenNeeded = ConfigUtil.isIidTokenNeeded(this.mContext, i, valueOf);
        boolean z = false;
        for (ImsRegistration imsRegistration : SlotBasedConfig.getInstance(i).getImsRegistrations().values()) {
            z = imsRegistration.hasService("options") || imsRegistration.hasService("im") || imsRegistration.hasService("slm");
            if (z) {
                break;
            }
        }
        if (ImsConstants.RCS_AS.JIBE.equals(acsServerType) || ImsConstants.RCS_AS.SEC.equals(acsServerType) || simMno.isEmeasewaoce()) {
            if (this.mCm.isConfigModuleBootUp() || this.mCm.isMessagingReady()) {
                Log.i(LOG_TAG, "sendBroadcast com.android.ims.RCS_AUTOCONFIG_START");
                Intent intent = new Intent();
                intent.setAction(INTENT_ACTION_RCS_AUTOCONFIG_START);
                intent.putExtra(EXTRA_IS_IIDTOKEN, isIidTokenNeeded);
                intent.putExtra(EXTRA_IS_RCS_REGI, z);
                intent.putExtra("phoneId", i);
                intent.setPackage("com.samsung.android.messaging");
                intent.addFlags(LogClass.SIM_EVENT);
                this.mContext.sendBroadcast(intent);
                return;
            }
            this.mCm.sendConfigMessageDelayed(26, i, null, 2000);
        }
    }
}
