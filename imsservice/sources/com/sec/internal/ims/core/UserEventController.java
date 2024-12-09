package com.sec.internal.ims.core;

import android.content.Context;
import android.util.Log;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.RegistrationManager;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.ServiceConstants;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegistrationHandlerNotifiable;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UserEventController {
    private static final String LOG_TAG = "RegiMgr-UsrEvtCtr";
    IConfigModule mConfigModule;
    Context mContext;
    PdnController mPdnController;
    RegistrationManagerHandler mRegHandler;
    RegistrationManagerBase mRegMan;
    List<ISimManager> mSimManagers;
    protected SimpleEventLog mSimpleEventLog;
    ITelephonyManager mTelephonyManager;
    IVolteServiceModule mVolteServiceModule;
    protected boolean mIsDeviceShutdown = false;
    protected int mCurrentUserId = Extensions.ActivityManager.getCurrentUser();

    public UserEventController(Context context, RegistrationManagerBase registrationManagerBase, PdnController pdnController, List<ISimManager> list, ITelephonyManager iTelephonyManager, SimpleEventLog simpleEventLog) {
        this.mContext = context;
        this.mRegMan = registrationManagerBase;
        this.mPdnController = pdnController;
        this.mSimManagers = list;
        this.mTelephonyManager = iTelephonyManager;
        this.mSimpleEventLog = simpleEventLog;
        Log.i(LOG_TAG, "Start with User " + this.mCurrentUserId);
    }

    public void setCurrentUserId(int i) {
        this.mCurrentUserId = i;
    }

    public void setVolteServiceModule(IVolteServiceModule iVolteServiceModule) {
        this.mVolteServiceModule = iVolteServiceModule;
    }

    public void setConfigModule(IConfigModule iConfigModule) {
        this.mConfigModule = iConfigModule;
    }

    public boolean isShuttingDown() {
        return this.mIsDeviceShutdown;
    }

    public int getCurrentUserId() {
        return this.mCurrentUserId;
    }

    protected void onDataUsageLimitReached(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "onDataUsageLimitReached: " + z);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return;
        }
        SlotBasedConfig.getInstance(i).setDataUsageExceed(z);
        for (RegisterTask registerTask : pendingRegistrationInternal) {
            if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                registerTask.setReason("data limited exceed");
                if (registerTask.getMno() == Mno.BELL) {
                    IMSLog.i(LOG_TAG, i, "onDataUsageLimitReached: force update " + registerTask);
                    this.mRegMan.updateRegistration(registerTask, RegistrationConstants.UpdateRegiReason.DATAUSAGE_LIMIT_REACHED_FORCED);
                } else {
                    this.mRegMan.updateRegistration(registerTask, RegistrationConstants.UpdateRegiReason.DATAUSAGE_LIMIT_REACHED);
                }
            }
        }
    }

    protected void onChatbotAgreementChanged(int i) {
        Log.i(LOG_TAG, "onChatbotAgreementChanged");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getProfile().hasService(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION) && next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING)) {
                    next.setReason("chatbot agreement changed");
                    this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.CHATBOT_AGREEMENT_CHANGED);
                }
            }
        }
    }

    protected void onMobileDataChanged(int i, int i2, NetworkEventController networkEventController) {
        IMSLog.i(LOG_TAG, i2, "onMobileDataChanged: " + i);
        for (int i3 = 0; i3 < this.mSimManagers.size(); i3++) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i3).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    next.setReason("mobile data changed : " + i);
                    Mno mno = next.getMno();
                    if (mno.isOneOf(Mno.ATT, Mno.BELL, Mno.VTR)) {
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_MOBILEDATA_CHANGED_FORCED);
                    } else if (mno == Mno.TMOUS && next.getProfile().getPdn().equals(DeviceConfigManager.IMS)) {
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_MOBILEDATA_CHANGED);
                    } else if (next.getGovernor().isMobilePreferredForRcs() && this.mPdnController.isWifiConnected() && i == 1) {
                        networkEventController.isPreferredPdnForRCSRegister(next, i2, true);
                    } else {
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_MOBILEDATA_CHANGED);
                    }
                }
            }
        }
        this.mRegMan.tryRegister(i2);
        if (i == 1) {
            for (int i4 = 0; i4 < this.mSimManagers.size(); i4++) {
                if (i4 != i2 && RcsUtils.DualRcs.isRegAllowed(this.mContext, i4)) {
                    IMSLog.i(LOG_TAG, i2, "onMobileDataChanged: tryRegister RCS on other slot");
                    this.mRegMan.tryRegister(i4);
                }
            }
        }
    }

    protected void onMobileDataPressedChanged(int i, int i2, NetworkEventController networkEventController) {
        IMSLog.i(LOG_TAG, i2, "onMobileDataPressedChanged: " + i);
        for (int i3 = 0; i3 < this.mSimManagers.size(); i3++) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i3).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && next.getGovernor().isMobilePreferredForRcs() && this.mPdnController.isWifiConnected() && i == 1) {
                    networkEventController.isPreferredPdnForRCSRegister(next, i2, true);
                    this.mRegHandler.sendTryRegister(next.getPhoneId(), UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                    return;
                }
            }
        }
    }

    protected void onRoamingDataChanged(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "onRoamingDataChanged: " + z);
        ISimManager iSimManager = this.mSimManagers.get(i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (iSimManager == null || pendingRegistrationInternal == null || iSimManager.getSimMno().isKor()) {
            return;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                next.setReason("roaming data changed : " + z);
                this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_ROAMINGDATA_CHANGED);
            }
        }
        this.mRegMan.tryRegister(i);
    }

    protected void onRoamingSettingsChanged(int i, int i2) {
        IMSLog.i(LOG_TAG, i2, "onRoamingSettingsChanged: " + i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i2);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (!RegistrationUtils.hasVolteService(next.getPhoneId(), next.getProfile()) && ConfigUtil.isRcsEur(next.getPhoneId()) && next.isRcsOnly()) {
                    if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        if (i == 0) {
                            next.setReason("Roaming Setting turned off");
                            this.mRegMan.tryDeregisterInternal(next, false, true);
                        }
                    } else if (i == 1 || i == 2) {
                        this.mRegMan.tryRegister(next.getPhoneId());
                    }
                }
            }
        }
    }

    protected void onVideoCallServiceSettingChanged(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "onVideoCallServiceSettingChanged:" + z);
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return;
        }
        Mno simMno = iSimManager.getSimMno();
        DmConfigHelper.setImsUserSetting(this.mContext, ImsConstants.SystemSettings.VILTE_SLOT1.getName(), !z ? 1 : 0, i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    if (simMno == Mno.VZW) {
                        next.setReason("Video Call state changed : " + z);
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_VIDEOCALLSTATE_CHANGED);
                    } else if (simMno == Mno.TMOUS) {
                        if (next.getRegistrationRat() == 18 && SemEmergencyManager.isEmergencyMode(this.mContext)) {
                            Log.i(LOG_TAG, "skip update registration");
                        } else {
                            next.setReason("Video Call state changed : " + z);
                            this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_VIDEOCALLSTATE_CHANGED_FORCED);
                        }
                    } else {
                        next.setReason("Video Call state changed : " + z);
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_VIDEOCALLSTATE_CHANGED_FORCED);
                    }
                }
            }
        }
    }

    protected void onRcsUserSettingChanged(int i, int i2) {
        Log.i(LOG_TAG, "onRcsUserSettingChanged: switch: " + i);
        Context context = this.mContext;
        ImsConstants.SystemSettings.SettingsItem settingsItem = ImsConstants.SystemSettings.RCS_USER_SETTING1;
        int imsUserSetting = DmConfigHelper.getImsUserSetting(context, settingsItem.getName(), i2);
        Mno simMno = SimUtil.getSimMno(i2);
        int acsVersion = this.mConfigModule.getAcsConfig(i2).getAcsVersion();
        if (i == 0) {
            if (simMno == Mno.SKT && (imsUserSetting == 1 || imsUserSetting == 3)) {
                if (acsVersion != -1 && acsVersion != -2) {
                    IMSLog.e(LOG_TAG, i2, simMno.getName() + ": treat RCS_DISABLED(0) as RCS_TURNING_OFF(2)");
                    i = 2;
                } else {
                    IMSLog.e(LOG_TAG, i2, simMno.getName() + ": already turnned off - acs version=" + acsVersion);
                }
            }
        } else if (i == 2 && simMno != Mno.SKT) {
            IMSLog.e(LOG_TAG, i2, simMno.getName() + ": RCS_TURNING_OFF(2) is not allowed set rcs_user_setting to 0");
            ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, 0, i2);
            return;
        }
        if (imsUserSetting == i) {
            Log.i(LOG_TAG, "same rcs_user_setting not changed : " + i);
            return;
        }
        if (imsUserSetting == -1 && i == 1) {
            IMSLog.i(LOG_TAG, i2, "Reset ACS settings : RCS user switch turned on first time.");
            this.mConfigModule.getAcsConfig(i2).resetAcsSettings();
        }
        updateOpMode(i2, imsUserSetting, i, simMno);
        Log.i(LOG_TAG, "modify internal ImsUserSetting(shared pref) from " + imsUserSetting + " to " + i);
        DmConfigHelper.setImsUserSetting(this.mContext, settingsItem.getName(), i, i2);
        updateRegistrationByRcsUserSettings(i2, i, simMno);
    }

    void onTTYmodeUpdated(int i, boolean z) {
        boolean z2;
        RegisterTask registerTask;
        boolean tTYMode = SlotBasedConfig.getInstance(i).getTTYMode();
        IMSLog.i(LOG_TAG, i, "onTTYmodeUpdated: current=" + tTYMode + " new=" + z);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null || tTYMode == z) {
            return;
        }
        SlotBasedConfig.getInstance(i).setTTYMode(Boolean.valueOf(z));
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                registerTask = null;
                break;
            } else {
                registerTask = it.next();
                if (RegistrationUtils.supportCsTty(registerTask)) {
                    z2 = true;
                    break;
                }
            }
        }
        if (z2) {
            Log.i(LOG_TAG, "onTTYmodeUpdated: isSupportCsTTY=" + z2 + " new=" + z);
            if (!z && !registerTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                this.mRegMan.tryRegister(i);
            } else {
                this.mRegMan.updateRegistration(i, RegistrationConstants.UpdateRegiReason.SETTING_TTYMODE_CHANGE);
            }
        }
    }

    void onRTTmodeUpdated(int i, boolean z) {
        boolean z2;
        RegisterTask registerTask;
        SlotBasedConfig slotBasedConfig = SlotBasedConfig.getInstance(i);
        boolean rTTMode = slotBasedConfig.getRTTMode();
        Log.i(LOG_TAG, "onRTTmodeUpdated: current=" + rTTMode + " new=" + z);
        if (rTTMode != z) {
            slotBasedConfig.setRTTMode(Boolean.valueOf(z));
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
            if (pendingRegistrationInternal == null || pendingRegistrationInternal.isEmpty()) {
                IMSLog.i(LOG_TAG, i, "RegiterTaskList is empty.");
                return;
            }
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                registerTask = it.next();
                int ttyType = registerTask.getProfile().getTtyType();
                if (ttyType == 4 || ttyType == 3) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
            registerTask = null;
            if (!z2 || registerTask == null || registerTask.getMno() == Mno.VZW || registerTask.getMno() == Mno.USCC) {
                return;
            }
            Log.i(LOG_TAG, "onRTTmodeUpdated: isSupportRTT=" + z2 + " new=" + z);
            StringBuilder sb = new StringBuilder();
            sb.append("onRTTmodeUpdated: force update ");
            sb.append(registerTask);
            IMSLog.i(LOG_TAG, i, sb.toString());
            registerTask.setReason("RTT changed : " + z);
            this.mRegMan.updateRegistration(registerTask, RegistrationConstants.UpdateRegiReason.SETTING_RTTMODE_CHANGE);
        }
    }

    void onVowifiServiceSettingChanged(int i, IRegistrationHandlerNotifiable iRegistrationHandlerNotifiable) {
        IMSLog.i(LOG_TAG, i, "onVowifiServiceSettingChanged:");
        IVolteServiceModule iVolteServiceModule = this.mVolteServiceModule;
        if (iVolteServiceModule == null) {
            Log.e(LOG_TAG, "VolteServiceModule is not create yet so retry after 3 seconds");
            iRegistrationHandlerNotifiable.notifyVowifiSettingChanged(i, RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
            return;
        }
        iVolteServiceModule.onVoWiFiSwitched(i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    int mobileDataNetworkType = this.mPdnController.getNetworkState(i).getMobileDataNetworkType();
                    if (NetworkUtil.is3gppPsVoiceNetwork(mobileDataNetworkType) && this.mTelephonyManager.isNetworkRoaming() && this.mRegMan.getNetworkEvent(i).voiceOverPs == VoPsIndication.SUPPORTED) {
                        IMSLog.i(LOG_TAG, i, "Skip updateRegistration under " + TelephonyManagerExt.getNetworkTypeName(mobileDataNetworkType) + " roaming NW");
                    } else {
                        next.setReason("VoWiFi settings changed");
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_VOWIFI_CHANGED);
                    }
                }
            }
        }
        this.mRegMan.tryRegister(i);
    }

    void onVolteServiceSettingChanged(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "onVolteServiceSettingChanged:" + z);
        ISimManager iSimManager = this.mSimManagers.get(i);
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (iSimManager == null || pendingRegistrationInternal == null) {
            return;
        }
        if (!iSimManager.isSimLoaded()) {
            IMSLog.i(LOG_TAG, i, "onVolteServiceSettingChanged: SIM is not available don't save setting");
            return;
        }
        Mno simMno = iSimManager.getSimMno();
        DmConfigHelper.setImsUserSetting(this.mContext, ImsConstants.SystemSettings.VOLTE_SLOT1.getName(), !z ? 1 : 0, i);
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.getRegistrationRat() == 18 && next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && this.mRegMan.getNetworkEvent(i).isEpdgConnected) {
                if (simMno.isOneOf(Mno.ORANGE_POLAND, Mno.TELIA_NORWAY, Mno.TELIA_SWE, Mno.ORANGE)) {
                    Log.i(LOG_TAG, "update eutrn param");
                    next.getGovernor().onVolteSettingChanged();
                }
                Log.i(LOG_TAG, "WFC is enabled. Do not modify regi status");
                return;
            }
            next.getGovernor().onVolteSettingChanged();
        }
        updateRegistrationByVolteServiceSettings(i, z, simMno);
    }

    void onEcVbcSettingChanged(int i) {
        Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
        while (it.hasNext()) {
            RegisterTask next = it.next();
            if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.REGISTERING)) {
                IMSLog.i(LOG_TAG, i, "set reason as EcVbc Setting Changed");
                next.setReason("EcVbc Setting Changed");
                this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_ECVBC_CHANGED, true);
            }
        }
    }

    void onUserSwitched() {
        this.mSimpleEventLog.logAndAdd("onUserSwitched by MUM");
        IMSLog.c(LogClass.REGI_USER_SWITCHED, ",USER SWITCHED");
        for (int i = 0; i < this.mSimManagers.size(); i++) {
            Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                    this.mRegMan.sendDeregister(1000, next.getPhoneId());
                    return;
                }
            }
        }
    }

    void onShuttingDown(int i) {
        boolean z;
        Log.i(LOG_TAG, "powerOff :" + i);
        if (i != -1) {
            this.mIsDeviceShutdown = true;
        }
        for (int i2 = 0; i2 < SimUtil.getPhoneCount(); i2++) {
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i2);
            if (pendingRegistrationInternal != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                while (true) {
                    z = false;
                    while (it.hasNext()) {
                        RegisterTask next = it.next();
                        if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                            next.setDeregiReason(23);
                            z = true;
                        }
                        if (next.getMno().isKor()) {
                            break;
                        }
                    }
                }
            } else {
                z = false;
            }
            if (z) {
                this.mRegMan.sendDeregister(12, i2);
            }
        }
    }

    void onLteDataNetworkModeSettingChanged(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "onLteDataNetworkModeSettingChanged:");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null) {
            return;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            it.next().getGovernor().onLteDataNetworkModeSettingChanged(z);
        }
    }

    protected void onFlightModeChanged(boolean z) {
        if (z) {
            for (int i = 0; i < this.mSimManagers.size(); i++) {
                this.mRegMan.setOmadmState(i, RegistrationManager.OmadmConfigState.IDLE);
                Iterator<RegisterTask> it = SlotBasedConfig.getInstance(i).getRegistrationTasks().iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    RegisterTask next = it.next();
                    try {
                        this.mConfigModule.getAcsConfig(i).setForceAcs(true);
                    } catch (NullPointerException unused) {
                        IMSLog.e(LOG_TAG, "ConfigModule - NullPointerException");
                    }
                    next.setReason("FlightMode On");
                    if (next.isOneOf(RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED)) {
                        this.mRegMan.stopPdnConnectivity(next.getPdnType(), next);
                        next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                    } else if (next.isOneOf(RegistrationConstants.RegisterTaskState.CONFIGURING, RegistrationConstants.RegisterTaskState.CONFIGURED)) {
                        if (next.getMno() == Mno.RJIL) {
                            next.setState(RegistrationConstants.RegisterTaskState.IDLE);
                        }
                    } else if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        if ((next.getMno().isChn() || next.getMno().isEur()) && RegistrationUtils.isDelayDeRegForNonADSOnFlightModeChanged(next)) {
                            Log.i(LOG_TAG, "QCT , non-ads send de-reg later");
                            this.mRegMan.setNonADSDeRegRequired(true);
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                    }
                    next.mIsUpdateRegistering = false;
                    next.getGovernor().resetPcscfList();
                    next.getGovernor().releaseThrottle(1);
                    next.getGovernor().stopTimsTimer(RegistrationConstants.REASON_AIRPLANE_MODE_ON);
                }
                if (z2) {
                    this.mRegMan.sendDeregister(12, i);
                }
            }
        }
        this.mRegMan.onFlightModeChanged(z);
    }

    private void updateOpMode(int i, int i2, int i3, Mno mno) {
        int parseInt;
        boolean z = false;
        boolean z2 = i2 == 1 || i2 == 3;
        boolean z3 = i3 == 1;
        boolean z4 = z3 != z2;
        if (mno.isKor() && (i2 == -2 || i2 == 3)) {
            IMSLog.i(LOG_TAG, i, "Changed rcs_user_setting by network. Skip change op mode.");
        } else {
            z = z4;
        }
        if (z) {
            String readStringParamWithPath = RcsConfigurationHelper.readStringParamWithPath(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.PATH.TC_POPUP_USER_ACCEPT, i));
            if (readStringParamWithPath != null) {
                try {
                    parseInt = Integer.parseInt(readStringParamWithPath);
                } catch (NumberFormatException unused) {
                    IMSLog.e(LOG_TAG, i, "Error while parsing integer in getIntValue() - NumberFormatException");
                }
                this.mConfigModule.changeOpMode(z3, i, parseInt);
            }
            parseInt = -1;
            this.mConfigModule.changeOpMode(z3, i, parseInt);
        }
    }

    private void updateRegistrationByVolteServiceSettings(int i, boolean z, Mno mno) {
        if (mno == Mno.TMOUS || mno.isKor()) {
            return;
        }
        if (z || mno.isOneOf(Mno.VZW, Mno.SPRINT, Mno.ATT)) {
            Log.i(LOG_TAG, "VoLTE switch changed, updateRegistration");
            this.mRegMan.updateRegistration(i, RegistrationConstants.UpdateRegiReason.SETTING_VOLTECALLSTATE_CHANGED);
            return;
        }
        Log.i(LOG_TAG, "VoLTE turned off, DeRegister");
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (!next.isRcsOnly() && !RegistrationUtils.isCmcProfile(next.getProfile())) {
                    if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        next.setReason("volte setting turned off");
                        next.setDeregiReason(73);
                        this.mRegMan.tryDeregisterInternal(next, false, false);
                    } else if (mno.isOneOf(Mno.CTC, Mno.CTCMO) || ConfigUtil.isRcsEur(mno) || mno.isOce()) {
                        RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.IDLE;
                        RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.CONNECTING;
                        RegistrationConstants.RegisterTaskState registerTaskState3 = RegistrationConstants.RegisterTaskState.CONNECTED;
                        if (next.isOneOf(registerTaskState, registerTaskState2, registerTaskState3)) {
                            this.mRegMan.getImsIconManager(i).updateRegistrationIcon();
                            if (next.isOneOf(registerTaskState2, registerTaskState3)) {
                                Log.i(LOG_TAG, "VoLTE turned off, no need to keep pdn.");
                                this.mRegMan.stopPdnConnectivity(next.getPdnType(), next);
                                next.setState(registerTaskState);
                            }
                        }
                    }
                }
            }
        }
    }

    private void updateRegistrationByRcsUserSettings(int i, int i2, Mno mno) {
        if (mno == Mno.SKT && i2 == 2) {
            Log.i(LOG_TAG, "RCS_TURNING_OFF: Ignore RCS disable for SKT until server responds");
            return;
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = RegistrationUtils.getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (RegistrationUtils.hasRcsService(i, next.getProfile(), this.mPdnController.isWifiConnected())) {
                    if (next.isRcsOnly()) {
                        if (i2 == 1) {
                            this.mRegHandler.sendTryRegister(next.getPhoneId());
                        } else {
                            this.mRegMan.deregister(next, false, true, "RCS USER SWITCH OFF");
                        }
                    } else if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        this.mRegMan.updateRegistration(next, RegistrationConstants.UpdateRegiReason.SETTING_RCSUSERSETTING_CHANGED);
                    } else if (i2 == 1) {
                        this.mRegHandler.sendTryRegister(next.getPhoneId());
                    } else {
                        this.mRegMan.deregister(next, false, true, "RCS USER SWITCH OFF");
                    }
                }
            }
        }
    }
}
