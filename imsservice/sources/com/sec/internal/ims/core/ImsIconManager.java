package com.sec.internal.ims.core;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.StatusBarManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.TelephonyCallback;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.samsung.android.feature.SemFloatingFeature;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.Extensions;
import com.sec.imsservice.R;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.os.SecFeature;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimUtil$$ExternalSyntheticLambda3;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.ServiceStateWrapper;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.Locale;
import java.util.Optional;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class ImsIconManager {
    private static final String CMC_SD_ICON = "stat_sys_phone_call_skt";
    public static final String DEFAULT_VOLTE_REGI_ICON_ID = "stat_notify_volte_service_avaliable";
    private static final String DUAL_IMS_NO_CTC_VOLTE_ICON_NAME = "stat_sys_phone_no_volte_chn_hd";
    private static final String INTENT_ACTION_CONFIGURATION_CHANGED = "android.intent.action.CONFIGURATION_CHANGED";
    private static final String INTENT_ACTION_SILENT_REDIAL = "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL";
    private static final String LOG_TAG = "ImsIconManager";
    private static final int NOTIFICATION_BUILDER_ID = -26247;
    private static final String NO_CTC_VOLTE_ICON_NAME = "stat_sys_phone_no_volte_chn_ctc";
    private static final String PRIMARY_CHANNEL = "imsicon_channel";
    private static final String RCS_ICON_DESCRIPTION = "RCS";
    protected static final String RCS_ICON_NAME = "stat_notify_rcs_service_avaliable";
    protected static final String RCS_ICON_NAME_CHN = "stat_notify_rcs";
    protected static final String RCS_ICON_SLOT = "com.samsung.rcs";
    protected static final String VOLTE_ICON_SLOT_HEAD = "ims_volte";
    private static final String VoLTE_ICON_WFC_WARNING_NAME = "stat_notify_wfc_warning";
    ConnectivityManager mConnectivityManager;
    Context mContext;
    protected boolean mCurrentInRoaming;
    protected int mCurrentNetworkType;
    int mCurrentPhoneState;
    protected int mCurrentServiceState;
    protected int mCurrentVoiceRatType;
    final BroadcastReceiver mIconBroadcastReceiver;
    boolean mIsDuringEmergencyCall;
    boolean mIsSilentRedialInProgress;
    boolean mIsVonrEnabled;
    NotificationManager mNotificationManager;
    String mOmcCode;
    String mPackageName;
    PdnController mPdnController;
    int mPhoneId;
    IRegistrationManager mRegistrationManager;
    TelephonyCallback mTelephonyCallback;
    ITelephonyManager mTelephonyManager;
    boolean mUseDualVolteIcon;
    final ContentObserver mVolteNotiObserver;
    private final ContentObserver simSwitchChangeObserver;
    protected static final String[] RCS_ICON_NAME_DUAL = {"stat_notify_rcs_service_avaliable_1", "stat_notify_rcs_service_avaliable_2", "stat_notify_rcs_service_avaliable_dual"};
    private static final String[] CROSS_SIM_ICON_NAME = {"stat_sys_cross_sim_calling1_spr", "stat_sys_cross_sim_calling2_spr"};
    static boolean[] mShowVoWIFILabel = {false, false, false};
    static int[] mVowifiOperatorLabelOngoing = {0, 0};
    static String[] mWifiSubTextOnLockScreen = {"", ""};
    static String[] mVowifiOperatorLabel = {"", ""};
    protected boolean mIsDebuggable = Build.IS_DEBUGGABLE;
    protected String VOLTE_ICON_SLOT = "";
    int mLastVoLTEResourceId = -1;
    IconVisibility mLastVoLTEVisiblity = IconVisibility.UNKNOWN;
    IconVisibility mLastRcsVisiblity = IconVisibility.HIDE;
    Mno mMno = Mno.DEFAULT;
    boolean mIsFirstVoLTEIconShown = false;
    int mDisplayDensity = -1;
    boolean mForceRefreshIcon = false;

    public enum Icon {
        VOLTE,
        VOWIFI,
        VO5G
    }

    public enum IconVisibility {
        UNKNOWN,
        SHOW,
        HIDE
    }

    private class TelephonyCallbackImpl extends TelephonyCallback implements TelephonyCallback.ServiceStateListener, TelephonyCallback.CallStateListener {
        private int mPhoneId;

        private TelephonyCallbackImpl(int i) {
            this.mPhoneId = i;
        }

        @Override // android.telephony.TelephonyCallback.ServiceStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            IMSLog.d(ImsIconManager.LOG_TAG, this.mPhoneId, "onServiceStateChanged: " + serviceState);
            if (isUpdateRequires(serviceState)) {
                IMSLog.i(ImsIconManager.LOG_TAG, this.mPhoneId, "updateRegistrationIcon on RAT change");
                ImsIconManager.this.updateRegistrationIcon();
            }
        }

        private boolean isUpdateRequires(ServiceState serviceState) {
            ServiceStateWrapper serviceStateWrapper = new ServiceStateWrapper(serviceState);
            ImsIconManager imsIconManager = ImsIconManager.this;
            int i = imsIconManager.mCurrentNetworkType;
            int i2 = imsIconManager.mCurrentServiceState;
            int i3 = imsIconManager.mCurrentVoiceRatType;
            boolean z = imsIconManager.mCurrentInRoaming;
            imsIconManager.setCurrentNetworkType(serviceStateWrapper.getDataNetworkType());
            ImsIconManager.this.setCurrentServiceState(serviceStateWrapper.getDataRegState());
            ImsIconManager.this.setCurrentVoiceRatType(serviceStateWrapper.getVoiceNetworkType());
            ImsIconManager.this.setCurrentRoamingState(serviceStateWrapper.getVoiceRoaming());
            if (!ImsIconManager.this.mMno.isChn() && !ImsIconManager.this.mMno.isHkMo() && !ImsIconManager.this.mMno.isTw() && !ConfigUtil.isRcsEur(ImsIconManager.this.mMno) && !ImsIconManager.this.mMno.isOce() && !ImsIconManager.this.mMno.isLatin() && !ImsIconManager.this.mMno.isATTMexico() && !OmcCode.isKOROmcCode()) {
                return false;
            }
            return ((i2 != 0 && serviceStateWrapper.getDataRegState() == 0) || (i2 == 0 && serviceStateWrapper.getDataRegState() != 0)) || isNWTypeChangedUpdateRequires(i) || (ImsIconManager.this.mMno.isOneOf(Mno.CTC, Mno.CTCMO) && z != ImsIconManager.this.mCurrentInRoaming) || (ImsIconManager.this.mMno.isOneOf(Mno.CTC, Mno.CTCMO) && i3 != ImsIconManager.this.mCurrentVoiceRatType) || isSeparatedVo5gIcon(i, i3);
        }

        boolean isNWTypeChangedUpdateRequires(int i) {
            return isImsIconSupportedNW(i) != isImsIconSupportedNW(ImsIconManager.this.mCurrentNetworkType);
        }

        boolean isImsIconSupportedNW(int i) {
            return NetworkUtil.is3gppPsVoiceNetwork(i) || i == 18;
        }

        boolean isSeparatedVo5gIcon(int i, int i2) {
            if (!ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Registration.SEPARATE_VO5G_ICON, false)) {
                return false;
            }
            if (i == 18) {
                i = i2;
            }
            ImsIconManager imsIconManager = ImsIconManager.this;
            int i3 = imsIconManager.mCurrentNetworkType;
            if (i3 == 18) {
                i3 = imsIconManager.mCurrentVoiceRatType;
            }
            IMSLog.i(ImsIconManager.LOG_TAG, this.mPhoneId, "isSeparatedVo5gIcon oldCellularNetworkType :" + i + " , newCellularNetworkType :" + i3);
            return i != i3 && NetworkUtil.is3gppPsVoiceNetwork(i3);
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(int i) {
            if (i == ImsIconManager.this.mCurrentPhoneState) {
                return;
            }
            IMSLog.i(ImsIconManager.LOG_TAG, this.mPhoneId, "call state is changed to [" + i + "]");
            ImsIconManager.this.mCurrentPhoneState = i;
            if (i == 0 && (OmcCode.isKOROmcCode() || ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Call.HIDE_VOWIFI_ICON_WHEN_CS_CALL, false))) {
                ImsIconManager imsIconManager = ImsIconManager.this;
                imsIconManager.mIsSilentRedialInProgress = false;
                imsIconManager.updateRegistrationIcon();
            }
            if (i == 0 && ImsIconManager.this.getDuringEmergencyCall()) {
                ImsIconManager.this.setDuringEmergencyCall(false);
            }
        }
    }

    public ImsIconManager(Context context, IRegistrationManager iRegistrationManager, PdnController pdnController, Mno mno, int i) {
        this.mPhoneId = 0;
        this.mUseDualVolteIcon = false;
        ContentObserver contentObserver = new ContentObserver(new Handler()) { // from class: com.sec.internal.ims.core.ImsIconManager.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                if (uri != null) {
                    int i2 = !"phone1_on".equals(uri.getLastPathSegment()) ? 1 : 0;
                    IMSLog.i(ImsIconManager.LOG_TAG, ImsIconManager.this.mPhoneId, "onChange() " + uri.getLastPathSegment() + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + SimUtil.isSimActive(ImsIconManager.this.mContext, i2));
                    ImsIconManager.this.updateRegistrationIcon();
                }
            }
        };
        this.simSwitchChangeObserver = contentObserver;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.ImsIconManager.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                DisplayMetrics displayMetrics;
                int i2;
                String action = intent.getAction();
                IMSLog.d(ImsIconManager.LOG_TAG, ImsIconManager.this.mPhoneId, "Received intent: " + action + " extra: " + intent.getExtras());
                if (action.equals(ImsIconManager.INTENT_ACTION_SILENT_REDIAL)) {
                    ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(ImsIconManager.this.mPhoneId);
                    ImsIconManager imsIconManager = ImsIconManager.this;
                    if ((imsIconManager.mMno == Mno.SKT || ImsRegistry.getBoolean(imsIconManager.mPhoneId, GlobalSettingsConstants.Call.HIDE_VOWIFI_ICON_WHEN_CS_CALL, false)) && simManagerFromSimSlot != null && simManagerFromSimSlot.isSimAvailable()) {
                        IMSLog.i(ImsIconManager.LOG_TAG, ImsIconManager.this.mPhoneId, "Silent Redial Enabled");
                        if (SimUtil.getPhoneCount() > 1) {
                            int intExtra = intent.getIntExtra("SLOTID", -1);
                            ImsIconManager imsIconManager2 = ImsIconManager.this;
                            if (imsIconManager2.mPhoneId == intExtra) {
                                imsIconManager2.mIsSilentRedialInProgress = true;
                                imsIconManager2.updateRegistrationIcon();
                                return;
                            }
                            return;
                        }
                        ImsIconManager imsIconManager3 = ImsIconManager.this;
                        imsIconManager3.mIsSilentRedialInProgress = true;
                        imsIconManager3.updateRegistrationIcon();
                        return;
                    }
                    return;
                }
                if (!action.equals(ImsIconManager.INTENT_ACTION_CONFIGURATION_CHANGED) || (displayMetrics = ImsIconManager.this.mContext.getResources().getDisplayMetrics()) == null || ImsIconManager.this.mDisplayDensity == (i2 = displayMetrics.densityDpi)) {
                    return;
                }
                IMSLog.i(ImsIconManager.LOG_TAG, ImsIconManager.this.mPhoneId, "config is changed. update icon");
                ImsIconManager imsIconManager4 = ImsIconManager.this;
                imsIconManager4.mForceRefreshIcon = true;
                imsIconManager4.updateRegistrationIcon();
                ImsIconManager imsIconManager5 = ImsIconManager.this;
                imsIconManager5.mDisplayDensity = i2;
                imsIconManager5.mForceRefreshIcon = false;
            }
        };
        this.mIconBroadcastReceiver = broadcastReceiver;
        ContentObserver contentObserver2 = new ContentObserver(new Handler(Looper.myLooper())) { // from class: com.sec.internal.ims.core.ImsIconManager.3
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                IMSLog.i(ImsIconManager.LOG_TAG, ImsIconManager.this.mPhoneId, "call settins is changed. update icon");
                ImsIconManager.this.updateRegistrationIcon();
            }
        };
        this.mVolteNotiObserver = contentObserver2;
        this.mContext = context;
        this.mPackageName = context.getPackageName();
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(this.mContext);
        this.mRegistrationManager = iRegistrationManager;
        this.mPdnController = pdnController;
        this.mOmcCode = OmcCode.get();
        this.mUseDualVolteIcon = showDualVolteIcon();
        this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mPhoneId = i;
        this.mTelephonyCallback = new TelephonyCallbackImpl(i);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("volte_noti_settings"), true, contentObserver2);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_ACTION_SILENT_REDIAL);
        intentFilter.addAction(INTENT_ACTION_CONFIGURATION_CHANGED);
        this.mContext.registerReceiver(broadcastReceiver, intentFilter);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("phone1_on"), true, contentObserver);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("phone2_on"), true, contentObserver);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("esim_phone_on_1"), true, contentObserver);
        this.mNotificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        initConfiguration(mno, i);
    }

    public void initConfiguration(Mno mno, int i) {
        this.mMno = (Mno) Optional.ofNullable(mno).orElse(Mno.DEFAULT);
        this.mPhoneId = i;
        boolean z = false;
        this.mIsSilentRedialInProgress = false;
        this.mIsDuringEmergencyCall = false;
        if (ImsRegistry.getBoolean(i, GlobalSettingsConstants.Registration.SEPARATE_VO5G_ICON, false) && this.mTelephonyManager.semIsVoNrEnabled(i)) {
            z = true;
        }
        this.mIsVonrEnabled = z;
        registerPhoneStateListener();
        clearIcon(i);
        this.VOLTE_ICON_SLOT = getVolteIconSlot();
        IMSLog.i(LOG_TAG, this.mPhoneId, "initConfiguration: " + this.VOLTE_ICON_SLOT);
    }

    String getVolteIconSlot() {
        int eSimCount = SimUtil.getESimCount();
        int activeSimCount = SimUtil.getActiveSimCount(this.mContext);
        IMSLog.i(LOG_TAG, this.mPhoneId, "getVolteIconSlot: eSIM Count: " + eSimCount + ", active SIM count: " + activeSimCount);
        if (eSimCount == 1 && activeSimCount == 1) {
            return VOLTE_ICON_SLOT_HEAD;
        }
        if (eSimCount == 1 && activeSimCount == 2) {
            boolean booleanValue = ((Boolean) Optional.ofNullable(SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId)).map(new SimUtil$$ExternalSyntheticLambda3()).orElse(Boolean.FALSE)).booleanValue();
            StringBuilder sb = new StringBuilder();
            sb.append(VOLTE_ICON_SLOT_HEAD);
            sb.append(booleanValue ? "2" : "");
            return sb.toString();
        }
        if (eSimCount == 2) {
            int subId = SimUtil.getSubId(this.mPhoneId);
            int subId2 = SimUtil.getSubId(SimUtil.getOppositeSimSlot(this.mPhoneId));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(VOLTE_ICON_SLOT_HEAD);
            sb2.append(subId >= subId2 ? "2" : "");
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(VOLTE_ICON_SLOT_HEAD);
        sb3.append(this.mPhoneId != 0 ? "2" : "");
        return sb3.toString();
    }

    void clearIcon(int i) {
        if (!needShowRcsIcon(i)) {
            setIconVisibility(RCS_ICON_SLOT, IconVisibility.HIDE);
        }
        if (needShowNoCTCVoLTEIcon() || TextUtils.isEmpty(this.VOLTE_ICON_SLOT)) {
            return;
        }
        this.mLastVoLTEResourceId = -1;
        setIconVisibility(this.VOLTE_ICON_SLOT, IconVisibility.HIDE);
    }

    boolean isServiceAvailable(String str) {
        Mno mno;
        if ("ATT".equals(this.mOmcCode) || "APP".equals(this.mOmcCode)) {
            if (SimUtil.isSoftphoneEnabled()) {
                return true;
            }
            int currentNetworkByPhoneId = this.mRegistrationManager.getCurrentNetworkByPhoneId(this.mPhoneId);
            if (NetworkUtil.is3gppPsVoiceNetwork(currentNetworkByPhoneId) || currentNetworkByPhoneId == 18) {
                return true;
            }
            return ("mmtel".equals(str) || "mmtel-video".equals(str)) ? false : true;
        }
        Mno mno2 = this.mMno;
        if (mno2 != Mno.BOG && mno2 != Mno.ORANGE && mno2 != Mno.ORANGE_POLAND && mno2 != Mno.DIGI && mno2 != Mno.TELECOM_ITALY && mno2 != Mno.VODAFONE && !mno2.isTmobile() && (mno = this.mMno) != Mno.TELEKOM_ALBANIA && mno != Mno.VODAFONE_NEWZEALAND && mno != Mno.WINDTRE) {
            return true;
        }
        int currentNetworkByPhoneId2 = this.mRegistrationManager.getCurrentNetworkByPhoneId(this.mPhoneId);
        if (NetworkUtil.is3gppPsVoiceNetwork(currentNetworkByPhoneId2) || (currentNetworkByPhoneId2 == 18 && this.mPdnController.isEpdgConnected(this.mPhoneId))) {
            return "mmtel".equals(str) || "mmtel-video".equals(str);
        }
        return false;
    }

    boolean needShowNoCTCVoLTEIcon() {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        boolean z = false;
        if (simManagerFromSimSlot != null && this.mTelephonyManager.getRilSimOperator(this.mPhoneId).contains("CTC") && (this.mUseDualVolteIcon || this.mPhoneId == SimUtil.getActiveDataPhoneId())) {
            int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, this.mPhoneId);
            int i = Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0);
            if (voiceCallType == 0 && NetworkUtil.is3gppPsVoiceNetwork(this.mCurrentNetworkType) && i == 0 && simManagerFromSimSlot.isSimLoaded() && this.mTelephonyManager.getCurrentPhoneTypeForSlot(this.mPhoneId) != 2 && this.mCurrentVoiceRatType != 7 && !this.mCurrentInRoaming) {
                z = true;
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "needShowNoCTCVoLTEIcon: " + z);
        return z;
    }

    static class IconVisiblities {
        boolean mShowRcsIcon;
        boolean mShowVoWiFiIcon;
        boolean mShowVolteIcon;

        IconVisiblities() {
        }

        IconVisiblities(boolean z, boolean z2, boolean z3) {
            this.mShowVolteIcon = z;
            this.mShowVoWiFiIcon = z2;
            this.mShowRcsIcon = z3;
        }

        void setShowVolteIcon(boolean z) {
            this.mShowVolteIcon = z;
        }

        boolean isShowVolteIcon() {
            return this.mShowVolteIcon;
        }

        void setShowVoWiFiIcon(boolean z) {
            this.mShowVoWiFiIcon = z;
        }

        boolean isShowVowiFiIcon() {
            return this.mShowVoWiFiIcon;
        }

        void setShowRcsIcon(boolean z) {
            this.mShowRcsIcon = z;
        }

        boolean isShowRcsIcon() {
            return this.mShowRcsIcon;
        }
    }

    static class RegistrationStatus {
        boolean mCmcRegistered;
        boolean mCrossSimRegistered;
        boolean mIsRcsNetworkSuspended;
        boolean mRcsRegistered;
        boolean mVolteRegistered;
        boolean mVowifiRegistered;

        RegistrationStatus() {
        }

        RegistrationStatus(boolean z, boolean z2, boolean z3) {
            this.mVolteRegistered = z;
            this.mRcsRegistered = z2;
            this.mVowifiRegistered = z3;
        }

        void setVolteRegistered(boolean z) {
            this.mVolteRegistered = z;
        }

        boolean isVolteRegistered() {
            return this.mVolteRegistered;
        }

        void setCrossSimRegistered(boolean z) {
            this.mCrossSimRegistered = z;
        }

        boolean isCrossSimRegistered() {
            return this.mCrossSimRegistered;
        }

        void setRcsRegistered(boolean z) {
            this.mRcsRegistered = z;
        }

        boolean isRcsRegistered() {
            return this.mRcsRegistered;
        }

        public void setRcsNetworkSuspended(boolean z) {
            this.mIsRcsNetworkSuspended = z;
        }

        public boolean isRcsNetworkSuspended() {
            return this.mIsRcsNetworkSuspended;
        }

        void setVowifiRegistered(boolean z) {
            this.mVowifiRegistered = z;
        }

        boolean isVowifiRegistered() {
            return this.mVowifiRegistered;
        }

        void setCmcRegistered(boolean z) {
            this.mCmcRegistered = z;
        }

        boolean isCmcRegistered() {
            return this.mCmcRegistered;
        }

        boolean isAllRegistered() {
            return (isVolteRegistered() || isVowifiRegistered()) && isRcsRegistered();
        }
    }

    public void updateRegistrationIcon() {
        this.mUseDualVolteIcon = showDualVolteIcon();
        boolean z = false;
        int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, 0, this.mPhoneId);
        IconVisiblities updateShowIconSettings = updateShowIconSettings(voiceCallType);
        ImsRegistration[] registrationInfoByPhoneId = this.mRegistrationManager.getRegistrationInfoByPhoneId(this.mPhoneId);
        RegistrationStatus updateRegistrationStatus = updateRegistrationStatus(registrationInfoByPhoneId, voiceCallType);
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateRegistrationIcon: VoLTE [show: " + updateShowIconSettings.isShowVolteIcon() + ", regi: " + updateRegistrationStatus.isVolteRegistered() + "] VoWiFi [show: " + updateShowIconSettings.isShowVowiFiIcon() + ", regi: " + updateRegistrationStatus.isVowifiRegistered() + "] RCS [show: " + updateShowIconSettings.isShowRcsIcon() + ", regi: " + updateRegistrationStatus.isRcsRegistered() + "] CROSS SIM [regi: " + updateRegistrationStatus.isCrossSimRegistered() + "] (RcsNetworkSuspended: " + updateRegistrationStatus.isRcsNetworkSuspended() + ") (VoNREnabled: " + this.mIsVonrEnabled + ")");
        if (updateRegistrationStatus.isCmcRegistered() && registrationInfoByPhoneId != null && registrationInfoByPhoneId.length == 1) {
            z = true;
        }
        updateVolteIcon(updateShowIconSettings, updateRegistrationStatus, z);
        updateRcsIcon(updateShowIconSettings, updateRegistrationStatus);
        updateVoWifiLabel(updateShowIconSettings, updateRegistrationStatus);
    }

    IconVisiblities updateShowIconSettings(int i) {
        IconVisiblities iconVisiblities = new IconVisiblities();
        iconVisiblities.setShowVolteIcon(true);
        iconVisiblities.setShowVoWiFiIcon(ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Registration.SHOW_VOWIFI_REGI_ICON, false));
        iconVisiblities.setShowRcsIcon(true);
        boolean z = ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Registration.SHOW_VOLTE_REGI_ICON, false);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) >= 32 && ((simManagerFromSimSlot != null && "GenericIR92_US:Cellcom".equals(simManagerFromSimSlot.getSimMnoName())) || this.mMno.isOneOf(Mno.DPAC, Mno.GTA, Mno.ITE, Mno.SPRINT, Mno.ASTCA_US))) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Volte RegistrationIcon: need to turn off");
            z = false;
        }
        int i2 = ImsRegistry.getInt(this.mPhoneId, GlobalSettingsConstants.Registration.REMOVE_ICON_NOSVC, 0);
        if (!this.mIsDebuggable) {
            if (!z) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "Volte/RCS RegistrationIcon: turned off.");
                iconVisiblities.setShowVolteIcon(false);
            }
            if (!ConfigUtil.isRcsChn(this.mMno)) {
                iconVisiblities.setShowRcsIcon(false);
            }
        }
        if (ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Call.HIDE_VOWIFI_ICON_WHEN_CS_CALL, false) && iconVisiblities.isShowVowiFiIcon() && this.mIsSilentRedialInProgress) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "VoWIFI Special Req.: Hide vowifi icon when CSFB");
            iconVisiblities.setShowVoWiFiIcon(false);
        }
        if ("DCM".equals(this.mOmcCode) && this.mPdnController.getVopsIndication(this.mPhoneId) == VoPsIndication.NOT_SUPPORTED) {
            iconVisiblities.setShowVolteIcon(false);
        }
        if (this.mMno.isKor()) {
            if (OmcCode.isKOROmcCode()) {
                iconVisiblities.setShowVolteIcon(checkKORVolteIcon());
                return iconVisiblities;
            }
            if (i != 0) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "KOR requirement");
                iconVisiblities.setShowVolteIcon(false);
            }
        }
        if (i2 == 1 && (this.mCurrentServiceState != 0 || (!NetworkUtil.is3gppPsVoiceNetwork(this.mCurrentNetworkType) && this.mCurrentNetworkType != 18))) {
            iconVisiblities.setShowVolteIcon(false);
        }
        return iconVisiblities;
    }

    RegistrationStatus updateRegistrationStatus(ImsRegistration[] imsRegistrationArr, int i) {
        RegistrationStatus registrationStatus = new RegistrationStatus();
        if (OmcCode.isKOROmcCode() && this.mMno == Mno.KT) {
            int subId = SimUtil.getSubId(this.mPhoneId);
            if (subId < 0) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "updateRegistrationStatus : subId is invalid");
                return registrationStatus;
            }
            if (this.mTelephonyManager.getServiceStateForSubscriber(subId) == 0) {
                registrationStatus.setVolteRegistered(true);
            }
        }
        if (imsRegistrationArr == null) {
            return registrationStatus;
        }
        for (ImsRegistration imsRegistration : imsRegistrationArr) {
            if (isVoImsRegistered(imsRegistration)) {
                boolean isVoWiFiConnected = isVoWiFiConnected(imsRegistration);
                boolean isCrossSimConnected = isCrossSimConnected(imsRegistration);
                registrationStatus.setVolteRegistered((isVoWiFiConnected || isCrossSimConnected) ? false : true);
                registrationStatus.setVowifiRegistered(isVoWiFiConnected);
                registrationStatus.setCrossSimRegistered(isCrossSimConnected);
            }
            if (imsRegistration.getImsProfile().getCmcType() == 2 || imsRegistration.getImsProfile().getCmcType() == 4 || imsRegistration.getImsProfile().getCmcType() == 8) {
                registrationStatus.setCmcRegistered(true);
            }
            if (imsRegistration.hasRcsService()) {
                boolean z = !isSuspend(imsRegistration.getNetwork());
                registrationStatus.setRcsNetworkSuspended(!z);
                if (ConfigUtil.isRcsChn(this.mMno)) {
                    z = z && isInSvcAndOtherSimIdle();
                }
                registrationStatus.setRcsRegistered(z);
            }
            if (registrationStatus.isAllRegistered()) {
                break;
            }
        }
        if (getDuringEmergencyCall() && registrationStatus.isVowifiRegistered()) {
            Mno mno = this.mMno;
            if (mno == Mno.APT) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "APT special requirement");
                boolean z2 = i == 0;
                registrationStatus.setVolteRegistered(z2);
                registrationStatus.setVowifiRegistered(!z2);
            } else if (mno == Mno.VODAFONE_AUSTRALIA) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "Vodafone AUS special requirement");
                registrationStatus.setVowifiRegistered(false);
            }
        }
        return registrationStatus;
    }

    private boolean isSuspend(Network network) {
        return Optional.ofNullable(this.mConnectivityManager.getNetworkCapabilities(network)).filter(new Predicate() { // from class: com.sec.internal.ims.core.ImsIconManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isSuspend$0;
                lambda$isSuspend$0 = ImsIconManager.lambda$isSuspend$0((NetworkCapabilities) obj);
                return lambda$isSuspend$0;
            }
        }).isPresent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isSuspend$0(NetworkCapabilities networkCapabilities) {
        return !networkCapabilities.hasCapability(21);
    }

    boolean isVoImsRegistered(ImsRegistration imsRegistration) {
        return hasVolteService(imsRegistration) && !imsRegistration.getImsProfile().hasEmergencySupport() && imsRegistration.getImsProfile().getCmcType() == 0 && (isServiceAvailable("mmtel") || isServiceAvailable("mmtel-video"));
    }

    boolean isVoWiFiConnected(ImsRegistration imsRegistration) {
        int currentNetwork = this.mRegistrationManager.getCurrentNetwork(imsRegistration.getHandle());
        int regiRat = imsRegistration.getRegiRat();
        IMSLog.i(LOG_TAG, this.mPhoneId, "getRegiRat [" + regiRat + "], getCurrentNetwork [" + currentNetwork + "]");
        if (currentNetwork == 18 && this.mPdnController.isEpdgConnected(this.mPhoneId) && this.mPdnController.getEpdgPhysicalInterface(this.mPhoneId) == 1) {
            return this.mMno != Mno.CHT || regiRat == 18;
        }
        return false;
    }

    boolean isCrossSimConnected(ImsRegistration imsRegistration) {
        return this.mRegistrationManager.getCurrentNetwork(imsRegistration.getHandle()) == 18 && this.mPdnController.isEpdgConnected(this.mPhoneId) && this.mPdnController.getEpdgPhysicalInterface(this.mPhoneId) == 2;
    }

    boolean needDisplayVo5gIcon() {
        return (this.mMno != Mno.RJIL || this.mIsVonrEnabled) && this.mCurrentNetworkType == 20 && ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.Registration.SEPARATE_VO5G_ICON, false);
    }

    protected void updateVolteIcon(IconVisiblities iconVisiblities, RegistrationStatus registrationStatus, boolean z) {
        String str;
        String vowifiIconName;
        String string;
        if (TextUtils.isEmpty(this.VOLTE_ICON_SLOT)) {
            return;
        }
        String str2 = null;
        if (this.mUseDualVolteIcon) {
            if (registrationStatus.isVowifiRegistered() && iconVisiblities.isShowVowiFiIcon()) {
                vowifiIconName = getDualIMSIconName(Icon.VOWIFI);
                string = this.mContext.getResources().getString(R.string.DREAM_VOWIFI_T_DEX_OPT_ABB);
            } else if (registrationStatus.isVolteRegistered() && iconVisiblities.isShowVolteIcon()) {
                vowifiIconName = getDualIMSIconName(needDisplayVo5gIcon() ? Icon.VO5G : Icon.VOLTE);
                string = this.mContext.getResources().getString(R.string.DREAM_VOLTE_T_DEX_OPT_ABB);
            } else if (iconVisiblities.isShowVolteIcon() && needShowNoCTCVoLTEIcon()) {
                registrationStatus.setVolteRegistered(true);
                str = DUAL_IMS_NO_CTC_VOLTE_ICON_NAME + (this.mPhoneId + 1);
            } else {
                if (registrationStatus.isCrossSimRegistered()) {
                    str = getCrossSimIconName();
                }
                str = null;
            }
            String str3 = vowifiIconName;
            str2 = string;
            str = str3;
        } else {
            if (registrationStatus.isVolteRegistered() && iconVisiblities.isShowVolteIcon()) {
                vowifiIconName = needDisplayVo5gIcon() ? getVo5gIconName() : getVolteIconName();
                string = this.mContext.getResources().getString(R.string.DREAM_VOLTE_T_DEX_OPT_ABB);
            } else if (registrationStatus.isVowifiRegistered() && iconVisiblities.isShowVowiFiIcon()) {
                vowifiIconName = getVowifiIconName();
                string = this.mContext.getResources().getString(R.string.DREAM_VOWIFI_T_DEX_OPT_ABB);
            } else {
                if (iconVisiblities.isShowVolteIcon() && needShowNoCTCVoLTEIcon()) {
                    registrationStatus.setVolteRegistered(true);
                    str = NO_CTC_VOLTE_ICON_NAME;
                }
                str = null;
            }
            String str32 = vowifiIconName;
            str2 = string;
            str = str32;
        }
        if (str2 == null) {
            str2 = "";
        }
        if (this.mIsDebuggable && z) {
            registrationStatus.setVolteRegistered(true);
            str = CMC_SD_ICON;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "updateVolteIcon: iconNametoSet=" + str);
        if (!TextUtils.isEmpty(str)) {
            setIconSlot(this.VOLTE_ICON_SLOT, str, str2);
        }
        setIconVisibility(this.VOLTE_ICON_SLOT, getVolteIconVisibility(iconVisiblities, registrationStatus));
    }

    IconVisibility getVolteIconVisibility(IconVisiblities iconVisiblities, RegistrationStatus registrationStatus) {
        return ((iconVisiblities.isShowVolteIcon() && ((OmcCode.isKOROmcCode() && this.mMno.isKor()) || registrationStatus.isVolteRegistered())) || (iconVisiblities.isShowVowiFiIcon() && registrationStatus.isVowifiRegistered()) || registrationStatus.isCrossSimRegistered()) ? IconVisibility.SHOW : IconVisibility.HIDE;
    }

    IconVisibility getRcsIconVisibility(IconVisiblities iconVisiblities, RegistrationStatus registrationStatus) {
        return (iconVisiblities.isShowRcsIcon() && registrationStatus.isRcsRegistered()) ? IconVisibility.SHOW : IconVisibility.HIDE;
    }

    void updateRcsIcon(IconVisiblities iconVisiblities, RegistrationStatus registrationStatus) {
        IconVisibility iconVisibility;
        boolean z = ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.RCS.SHOW_REGI_ICON, true);
        IMSLog.i(LOG_TAG, this.mPhoneId, "isRcsIconVisible: " + z);
        if (!z) {
            iconVisiblities.setShowRcsIcon(false);
        }
        IconVisibility rcsIconVisibility = getRcsIconVisibility(iconVisiblities, registrationStatus);
        if (ConfigUtil.isRcsChn(this.mMno)) {
            if (rcsIconVisibility == IconVisibility.SHOW) {
                setIconSlot(RCS_ICON_SLOT, RCS_ICON_NAME_CHN, null);
            }
        } else if (this.mIsDebuggable) {
            RcsUtils.DualRcs.refreshDualRcsReg(this.mContext);
            char c = this.mPhoneId != 0 ? (char) 0 : (char) 1;
            if (this.mMno.isEur() && RcsUtils.DualRcs.isDualRcsSettings()) {
                iconVisibility = IconVisibility.SHOW;
                if (rcsIconVisibility == iconVisibility) {
                    if (isCounterSlotRcsTransferable()) {
                        setIconSlot(RCS_ICON_SLOT, RCS_ICON_NAME_DUAL[2], null);
                    } else {
                        setIconSlot(RCS_ICON_SLOT, RCS_ICON_NAME_DUAL[this.mPhoneId], null);
                    }
                } else if (isCounterSlotRcsTransferable()) {
                    setIconSlot(RCS_ICON_SLOT, RCS_ICON_NAME_DUAL[c], null);
                    rcsIconVisibility = iconVisibility;
                }
            } else {
                iconVisibility = IconVisibility.SHOW;
                if (rcsIconVisibility == iconVisibility) {
                    setIconSlot(RCS_ICON_SLOT, RCS_ICON_NAME, null);
                } else if (this.mPhoneId != SimUtil.getActiveDataPhoneId() && isCounterSlotRcsTransferable()) {
                    setIconSlot(RCS_ICON_SLOT, RCS_ICON_NAME, null);
                    rcsIconVisibility = iconVisibility;
                }
            }
        }
        setIconVisibility(RCS_ICON_SLOT, rcsIconVisibility);
    }

    void updateVoWifiLabel(IconVisiblities iconVisiblities, RegistrationStatus registrationStatus) {
        String string = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.Registration.VOWIFI_OPERATOR_LABEL, "");
        if (!iconVisiblities.isShowVowiFiIcon() || TextUtils.isEmpty(string)) {
            return;
        }
        fillWifiLabel();
        boolean checkSameVoWIFILabel = checkSameVoWIFILabel();
        int oppositeSimSlot = SimUtil.getOppositeSimSlot(this.mPhoneId);
        if (checkSameVoWIFILabel) {
            showWifiRegistrationStateQuickPanel(-1, isVoWiFiRegistered(oppositeSimSlot) || registrationStatus.isVowifiRegistered());
        } else {
            showWifiRegistrationStateQuickPanel(this.mPhoneId, registrationStatus.isVowifiRegistered());
        }
    }

    boolean hasVolteService(ImsRegistration imsRegistration) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (this.mMno == Mno.SPRINT || (simManagerFromSimSlot != null && "GenericIR92_US:Cellcom".equals(simManagerFromSimSlot.getSimMnoName()))) {
            return imsRegistration.hasService("mmtel") || imsRegistration.hasService("mmtel-video");
        }
        return imsRegistration.hasVolteService();
    }

    void fillWifiLabel() {
        int[] iArr = mVowifiOperatorLabelOngoing;
        int i = this.mPhoneId;
        iArr[i] = ImsRegistry.getInt(i, GlobalSettingsConstants.Registration.VOWIFI_OPERATOR_LABEL_ONGOING, 0);
        String[] strArr = mWifiSubTextOnLockScreen;
        int i2 = this.mPhoneId;
        strArr[i2] = ImsRegistry.getString(i2, GlobalSettingsConstants.Registration.VOWIFI_SUBTEXT_ON_LOCKSCREEN, "");
        String[] strArr2 = mVowifiOperatorLabel;
        int i3 = this.mPhoneId;
        strArr2[i3] = ImsRegistry.getString(i3, GlobalSettingsConstants.Registration.VOWIFI_OPERATOR_LABEL, "");
        int oppositeSimSlot = SimUtil.getOppositeSimSlot(this.mPhoneId);
        mVowifiOperatorLabelOngoing[oppositeSimSlot] = ImsRegistry.getInt(oppositeSimSlot, GlobalSettingsConstants.Registration.VOWIFI_OPERATOR_LABEL_ONGOING, 0);
        mWifiSubTextOnLockScreen[oppositeSimSlot] = ImsRegistry.getString(oppositeSimSlot, GlobalSettingsConstants.Registration.VOWIFI_SUBTEXT_ON_LOCKSCREEN, "");
        mVowifiOperatorLabel[oppositeSimSlot] = ImsRegistry.getString(oppositeSimSlot, GlobalSettingsConstants.Registration.VOWIFI_OPERATOR_LABEL, "");
    }

    boolean checkSameVoWIFILabel() {
        int oppositeSimSlot = SimUtil.getOppositeSimSlot(this.mPhoneId);
        int[] iArr = mVowifiOperatorLabelOngoing;
        int i = this.mPhoneId;
        if (iArr[i] == iArr[oppositeSimSlot]) {
            String[] strArr = mWifiSubTextOnLockScreen;
            if (TextUtils.equals(strArr[i], strArr[oppositeSimSlot])) {
                String[] strArr2 = mVowifiOperatorLabel;
                if (TextUtils.equals(strArr2[this.mPhoneId], strArr2[oppositeSimSlot])) {
                    return true;
                }
            }
        }
        return false;
    }

    boolean isVoWiFiRegistered(int i) {
        ImsRegistration[] registrationInfoByPhoneId = this.mRegistrationManager.getRegistrationInfoByPhoneId(i);
        if (registrationInfoByPhoneId != null) {
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (imsRegistration.hasVolteService() && !imsRegistration.getImsProfile().hasEmergencySupport() && ((isServiceAvailable("mmtel") || isServiceAvailable("mmtel-video")) && this.mRegistrationManager.getCurrentNetworkByPhoneId(i) == 18 && this.mPdnController.getEpdgPhysicalInterface(i) == 1 && this.mPdnController.isEpdgConnected(i))) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "isVoWIFIRegistered");
                    return true;
                }
            }
        }
        return false;
    }

    boolean isCounterSlotRcsTransferable() {
        ImsRegistration[] registrationInfoByPhoneId = this.mRegistrationManager.getRegistrationInfoByPhoneId(this.mPhoneId == 0 ? 1 : 0);
        boolean z = registrationInfoByPhoneId != null && Arrays.stream(registrationInfoByPhoneId).anyMatch(new Predicate() { // from class: com.sec.internal.ims.core.ImsIconManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isCounterSlotRcsTransferable$1;
                lambda$isCounterSlotRcsTransferable$1 = ImsIconManager.this.lambda$isCounterSlotRcsTransferable$1((ImsRegistration) obj);
                return lambda$isCounterSlotRcsTransferable$1;
            }
        });
        if (ConfigUtil.isRcsChn(this.mMno)) {
            return z && isInSvcAndOtherSimIdle();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$isCounterSlotRcsTransferable$1(ImsRegistration imsRegistration) {
        return imsRegistration.hasRcsService() && !isSuspend(imsRegistration.getNetwork());
    }

    boolean isInSvcAndOtherSimIdle() {
        boolean z = this.mCurrentServiceState == 0;
        boolean z2 = !isOtherSimInCallStatus();
        IMSLog.i(LOG_TAG, String.format(Locale.US, "isInSvcAndOtherSimIdle: In SVC %s, Other SIM Idle %s", Boolean.valueOf(z), Boolean.valueOf(z2)));
        return z && z2;
    }

    boolean isOtherSimInCallStatus() {
        if (SimUtil.isDSDACapableDevice()) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "isOtherSimInCallStatus: DSDA not need to check");
            return false;
        }
        int telephonyCallStatus = this.mRegistrationManager.getTelephonyCallStatus(this.mPhoneId == 0 ? 1 : 0);
        return telephonyCallStatus == 2 || telephonyCallStatus == 1;
    }

    synchronized void showWifiRegistrationStateQuickPanel(int i, boolean z) {
        boolean[] zArr = mShowVoWIFILabel;
        int i2 = i + 1;
        if (zArr[i2] == z) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "no need to update mShowVoWIFILabel[" + i + "]  aready [" + z + "]");
            return;
        }
        String str = i == -1 ? "imsicon_channel_both" : i == 0 ? "imsicon_channel_0" : "imsicon_channel_1";
        if (i != -1 && zArr[0]) {
            this.mNotificationManager.cancel("imsicon_channel_both", NOTIFICATION_BUILDER_ID);
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "show notification VoWiFi tag[" + i + "] in quick panel [" + z + "]");
        mShowVoWIFILabel[i2] = z;
        char c = i <= 0 ? (char) 0 : (char) 1;
        NotificationChannel notificationChannel = new NotificationChannel(PRIMARY_CHANNEL, str, 2);
        notificationChannel.setLockscreenVisibility(0);
        this.mNotificationManager.createNotificationChannel(notificationChannel);
        if (z) {
            Notification.Builder builder = new Notification.Builder(this.mContext, PRIMARY_CHANNEL);
            builder.setSmallIcon(getResourceIdByName("drawable", VoLTE_ICON_WFC_WARNING_NAME));
            builder.setContentTitle(mVowifiOperatorLabel[c]);
            builder.setWhen(0L).setShowWhen(false);
            builder.setAutoCancel(false);
            if (!TextUtils.isEmpty(mWifiSubTextOnLockScreen[c])) {
                String string = this.mContext.getResources().getString(getResourceIdByName("string", mWifiSubTextOnLockScreen[c]));
                builder.setContentText(string);
                builder.setStyle(new Notification.BigTextStyle().bigText(string));
            }
            if (mVowifiOperatorLabelOngoing[c] == 1) {
                builder.setOngoing(true);
            }
            this.mNotificationManager.notify(str, NOTIFICATION_BUILDER_ID, builder.build());
        } else {
            this.mNotificationManager.cancel(str, NOTIFICATION_BUILDER_ID);
        }
    }

    protected void setIconSlot(String str, String str2, String str3) {
        int resourceIdByName = getResourceIdByName("drawable", str2);
        boolean z = true;
        if (this.VOLTE_ICON_SLOT.equalsIgnoreCase(str)) {
            if (this.mLastVoLTEResourceId != resourceIdByName) {
                this.mLastVoLTEResourceId = resourceIdByName;
            } else {
                z = false;
            }
        } else {
            if (!RCS_ICON_SLOT.equalsIgnoreCase(str)) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "Wrong slot name: " + str);
                return;
            }
            str3 = RCS_ICON_DESCRIPTION;
        }
        if (z || this.mForceRefreshIcon) {
            try {
                ((StatusBarManager) this.mContext.getSystemService("statusbar")).setIcon(str, resourceIdByName, 0, str3);
                IMSLog.i(LOG_TAG, this.mPhoneId, "setIconSlot: " + str + ", " + str2 + " (id: " + resourceIdByName + ")");
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        }
    }

    protected void setIconVisibility(String str, IconVisibility iconVisibility) {
        boolean z;
        if (this.VOLTE_ICON_SLOT.equalsIgnoreCase(str)) {
            if (this.mLastVoLTEVisiblity != iconVisibility) {
                this.mLastVoLTEVisiblity = iconVisibility;
                z = true;
            } else {
                z = false;
            }
        } else if (RCS_ICON_SLOT.equalsIgnoreCase(str)) {
            if (this.mLastRcsVisiblity != iconVisibility) {
                this.mLastRcsVisiblity = iconVisibility;
                z = true;
            } else {
                z = false;
            }
            if (!z && iconVisibility != IconVisibility.SHOW && this.mForceRefreshIcon) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "RCS not registered on this SIM. Skip refresh.");
                return;
            }
        } else {
            IMSLog.e(LOG_TAG, this.mPhoneId, "Wrong slot name: " + str);
            return;
        }
        if (z || this.mForceRefreshIcon) {
            try {
                StatusBarManager statusBarManager = (StatusBarManager) this.mContext.getSystemService("statusbar");
                IconVisibility iconVisibility2 = IconVisibility.SHOW;
                statusBarManager.setIconVisibility(str, iconVisibility == iconVisibility2);
                if (this.VOLTE_ICON_SLOT.equalsIgnoreCase(str) && !this.mIsFirstVoLTEIconShown && iconVisibility == iconVisibility2) {
                    this.mIsFirstVoLTEIconShown = true;
                    IMSLog.e(LOG_TAG, this.mPhoneId, "!@Boot: setIconVisibility: " + str + ": [" + iconVisibility + "]");
                }
                IMSLog.i(LOG_TAG, this.mPhoneId, "setIconVisibility: " + str + ": [" + iconVisibility + "]");
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        }
    }

    protected int getResourceIdByName(String str, String str2) {
        return this.mContext.getResources().getIdentifier(str2, str, this.mPackageName);
    }

    boolean checkKORVolteIcon() {
        boolean z;
        ImsRegistration[] registrationInfoByPhoneId = this.mRegistrationManager.getRegistrationInfoByPhoneId(this.mPhoneId);
        if (registrationInfoByPhoneId != null) {
            z = false;
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (imsRegistration.hasService("mmtel") && imsRegistration.getImsProfile().getCmcType() == 0 && NetworkUtil.is3gppPsVoiceNetwork(this.mCurrentNetworkType)) {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (simManagerFromSimSlot == null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIcon : SimManager is null");
            return false;
        }
        int simState = this.mTelephonyManager.getSimState(simManagerFromSimSlot.getSimSlotIndex());
        if (simState == 0 || simState == 1) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIcon : SIM state is unknown or absent");
            return false;
        }
        if (this.mCurrentNetworkType == 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIcon : network is unknown.");
            return false;
        }
        if ("oversea".equals(this.mTelephonyManager.semGetTelephonyProperty(this.mPhoneId, ImsConstants.SystemProperties.CURRENT_PLMN, ""))) {
            if (this.mMno == Mno.LGU) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIcon : on roaming. Hide VoLTE icon");
                return false;
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIcon : on roaming. Volte featuremask = " + z);
            return z;
        }
        return checkKORVolteIconOperatorSpecifics(z);
    }

    boolean checkKORVolteIconOperatorSpecifics(boolean z) {
        boolean z2;
        int i;
        int subId = SimUtil.getSubId(this.mPhoneId);
        if (subId < 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : subId is invalid, return false");
            return false;
        }
        int serviceStateForSubscriber = this.mTelephonyManager.getServiceStateForSubscriber(subId);
        if (OmcCode.isKTTOmcCode() && this.mMno == Mno.KT) {
            int i2 = -1;
            int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, this.mPhoneId);
            if (voiceCallType != -1) {
                i2 = voiceCallType;
            } else if (Extensions.UserHandle.myUserId() != 0) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : Settings not found, return VOLTE_PREFERRED");
                i2 = 0;
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : Settings not found");
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : KT device and KT sim, ServiceState = " + serviceStateForSubscriber + ", voicecall_type = " + i2);
            if (serviceStateForSubscriber == 0) {
                return i2 == 0 || i2 == 2;
            }
            return false;
        }
        Mno mno = this.mMno;
        if (mno == Mno.LGU) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : SIM card is LGT, return false");
            return false;
        }
        if (!mno.isKor()) {
            return false;
        }
        if (this.mMno == Mno.SKT) {
            z2 = this.mIsSilentRedialInProgress;
            if (OmcCode.isSKTOmcCode()) {
                try {
                    i = Settings.System.getInt(this.mContext.getContentResolver(), "volte_noti_settings");
                } catch (Settings.SettingNotFoundException unused) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : volte_noti_settings is not exists");
                    i = 0;
                }
                IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : volte_noti_settings = " + i + ", isVolteFeatureEnabled = " + z + ", isHide = " + z2 + ", ServiceState = " + serviceStateForSubscriber);
                return i != 1 ? false : false;
            }
        } else {
            z2 = false;
        }
        i = 1;
        IMSLog.i(LOG_TAG, this.mPhoneId, "checkKORVolteIconOperatorSpecifics : volte_noti_settings = " + i + ", isVolteFeatureEnabled = " + z + ", isHide = " + z2 + ", ServiceState = " + serviceStateForSubscriber);
        return i != 1 ? false : false;
    }

    String getCrossSimIconName() {
        String[] strArr = CROSS_SIM_ICON_NAME;
        int i = this.mPhoneId;
        String str = strArr[i];
        IMSLog.i(LOG_TAG, i, "getCrossSimIconName() - " + str);
        return str;
    }

    String getVowifiIconName() {
        return ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.Registration.VOWIFI_ICON, "");
    }

    String getVo5gIconName() {
        return ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.Registration.VO5G_ICON, "");
    }

    String getVolteIconName() {
        if (OmcCode.isKOROmcCode() && this.mMno.isKor()) {
            return OmcCode.isKorOpenOmcCode() ? "stat_sys_phone_call" : OmcCode.isSKTOmcCode() ? CMC_SD_ICON : OmcCode.isKTTOmcCode() ? "stat_sys_phone_call_kt" : "stat_sys_phone_call_lgt";
        }
        String string = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.Registration.VOLTE_ICON, "");
        return !TextUtils.isEmpty(string) ? string : DEFAULT_VOLTE_REGI_ICON_ID;
    }

    String getDualIMSIconName(Icon icon) {
        String str;
        int i = this.VOLTE_ICON_SLOT.equals(VOLTE_ICON_SLOT_HEAD) ? 1 : 2;
        if (!this.mUseDualVolteIcon) {
            return DEFAULT_VOLTE_REGI_ICON_ID;
        }
        int i2 = AnonymousClass4.$SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon[icon.ordinal()];
        if (i2 == 1) {
            str = GlobalSettingsConstants.Registration.VOLTE_ICON + i;
        } else if (i2 == 2) {
            str = GlobalSettingsConstants.Registration.VOWIFI_ICON + i;
        } else if (i2 != 3) {
            str = "";
        } else {
            str = GlobalSettingsConstants.Registration.VO5G_ICON + i;
        }
        String string = str.isEmpty() ? "" : ImsRegistry.getString(this.mPhoneId, str, "");
        return (OmcCode.isKOROmcCode() && this.mMno.isKor()) ? OmcCode.isKorOpenOmcCode() ? "stat_sys_phone_call" : OmcCode.isSKTOmcCode() ? CMC_SD_ICON : OmcCode.isKTTOmcCode() ? "stat_sys_phone_call_kt" : "stat_sys_phone_call_lgt" : string;
    }

    /* renamed from: com.sec.internal.ims.core.ImsIconManager$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon;

        static {
            int[] iArr = new int[Icon.values().length];
            $SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon = iArr;
            try {
                iArr[Icon.VOLTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon[Icon.VOWIFI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon[Icon.VO5G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void registerPhoneStateListener() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "registerPhoneStateListener:");
        if (SimUtil.getSubId(this.mPhoneId) < 0) {
            return;
        }
        this.mTelephonyManager.registerTelephonyCallbackForSlot(this.mPhoneId, this.mContext.getMainExecutor(), this.mTelephonyCallback);
    }

    public void setCurrentNetworkType(int i) {
        this.mCurrentNetworkType = i;
    }

    public void setCurrentServiceState(int i) {
        this.mCurrentServiceState = i;
    }

    public void setCurrentVoiceRatType(int i) {
        this.mCurrentVoiceRatType = i;
    }

    public void setCurrentRoamingState(boolean z) {
        this.mCurrentInRoaming = z;
    }

    boolean showDualVolteIcon() {
        boolean isDualIMS = SimUtil.isDualIMS();
        int activeSimCount = SimUtil.getActiveSimCount(this.mContext);
        boolean equals = TextUtils.equals("tsds2", SemSystemProperties.get("persist.ril.esim.slotswitch", ""));
        boolean z = SemFloatingFeature.getInstance().getBoolean(SecFeature.FLOATING.SUPPORT_EMBEDDED_SIM);
        boolean hasSystemFeature = this.mContext.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.telephony.euicc");
        IMSLog.i(LOG_TAG, "supportDualVolte: " + isDualIMS + ", activeSimCount: " + activeSimCount + ", configESimSlotSwitch: " + equals + ", ESim Features - floating: " + z + ", eUicc: " + hasSystemFeature);
        if (!isDualIMS || activeSimCount < 2) {
            return false;
        }
        return !z || equals || hasSystemFeature;
    }

    public void setDuringEmergencyCall(boolean z) {
        if (this.mMno.isOneOf(Mno.VODAFONE_AUSTRALIA, Mno.APT)) {
            this.mIsDuringEmergencyCall = z;
            updateRegistrationIcon();
        }
    }

    public void setVo5gIcon(int i) {
        this.mIsVonrEnabled = i == 1;
        updateRegistrationIcon();
    }

    public boolean getDuringEmergencyCall() {
        return this.mIsDuringEmergencyCall;
    }

    boolean needShowRcsIcon(int i) {
        if (i == SimUtil.getActiveDataPhoneId() || !isCounterSlotRcsTransferable()) {
            return false;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "needShowRcsIcon: true");
        return true;
    }
}
