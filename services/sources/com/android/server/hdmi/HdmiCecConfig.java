package com.android.server.hdmi;

import android.R;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.INetd;
import android.os.Environment;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.util.ConcurrentUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class HdmiCecConfig {
    public final Context mContext;
    public final Object mLock;
    public final ArrayMap mSettingChangeListeners;
    public LinkedHashMap mSettings;
    public final StorageAdapter mStorageAdapter;

    /* loaded from: classes2.dex */
    public interface SettingChangeListener {
        void onChange(String str);
    }

    /* loaded from: classes2.dex */
    public class VerificationException extends RuntimeException {
        public VerificationException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public class StorageAdapter {
        public final Context mContext;
        public final SharedPreferences mSharedPrefs;

        public StorageAdapter(Context context) {
            this.mContext = context;
            this.mSharedPrefs = context.createDeviceProtectedStorageContext().getSharedPreferences(new File(new File(Environment.getDataSystemDirectory(), "shared_prefs"), "cec_config.xml"), 0);
        }

        public String retrieveSystemProperty(String str, String str2) {
            return SystemProperties.get(str, str2);
        }

        public void storeSystemProperty(String str, String str2) {
            SystemProperties.set(str, str2);
        }

        public String retrieveGlobalSetting(String str, String str2) {
            String string = Settings.Global.getString(this.mContext.getContentResolver(), str);
            return string != null ? string : str2;
        }

        public void storeGlobalSetting(String str, String str2) {
            Settings.Global.putString(this.mContext.getContentResolver(), str, str2);
        }

        public String retrieveSharedPref(String str, String str2) {
            return this.mSharedPrefs.getString(str, str2);
        }

        public void storeSharedPref(String str, String str2) {
            this.mSharedPrefs.edit().putString(str, str2).apply();
        }
    }

    /* loaded from: classes2.dex */
    public class Value {
        public final Integer mIntValue;
        public final String mStringValue;

        public Value(String str) {
            this.mStringValue = str;
            this.mIntValue = null;
        }

        public Value(Integer num) {
            this.mStringValue = null;
            this.mIntValue = num;
        }

        public String getStringValue() {
            return this.mStringValue;
        }

        public Integer getIntValue() {
            return this.mIntValue;
        }
    }

    /* loaded from: classes2.dex */
    public class Setting {
        public final Context mContext;
        public final String mName;
        public final boolean mUserConfigurable;
        public Value mDefaultValue = null;
        public List mAllowedValues = new ArrayList();

        public Setting(Context context, String str, int i) {
            this.mContext = context;
            this.mName = str;
            this.mUserConfigurable = context.getResources().getBoolean(i);
        }

        public String getName() {
            return this.mName;
        }

        public String getValueType() {
            return getDefaultValue().getStringValue() != null ? "string" : "int";
        }

        public Value getDefaultValue() {
            Value value = this.mDefaultValue;
            if (value != null) {
                return value;
            }
            throw new VerificationException("Invalid CEC setup for '" + getName() + "' setting. Setting has no default value.");
        }

        public boolean getUserConfigurable() {
            return this.mUserConfigurable;
        }

        public final void registerValue(Value value, int i, int i2) {
            if (this.mContext.getResources().getBoolean(i)) {
                this.mAllowedValues.add(value);
                if (this.mContext.getResources().getBoolean(i2)) {
                    if (this.mDefaultValue != null) {
                        Slog.e("HdmiCecConfig", "Failed to set '" + value + "' as a default for '" + getName() + "': Setting already has a default ('" + this.mDefaultValue + "').");
                        return;
                    }
                    this.mDefaultValue = value;
                }
            }
        }

        public void registerValue(String str, int i, int i2) {
            registerValue(new Value(str), i, i2);
        }

        public void registerValue(int i, int i2, int i3) {
            registerValue(new Value(Integer.valueOf(i)), i2, i3);
        }

        public List getAllowedValues() {
            return this.mAllowedValues;
        }
    }

    public HdmiCecConfig(Context context, StorageAdapter storageAdapter) {
        this.mLock = new Object();
        this.mSettingChangeListeners = new ArrayMap();
        this.mSettings = new LinkedHashMap();
        this.mContext = context;
        this.mStorageAdapter = storageAdapter;
        Setting registerSetting = registerSetting("hdmi_cec_enabled", R.bool.config_dozePulsePickup);
        registerSetting.registerValue(1, R.bool.config_dozeAlwaysOnDisplayAvailable, R.bool.config_dozeAlwaysOnEnabled);
        registerSetting.registerValue(0, R.bool.config_dontPreferApn, R.bool.config_dozeAfterScreenOffByDefault);
        Setting registerSetting2 = registerSetting("hdmi_cec_version", R.bool.config_dreamsEnabledByDefault);
        registerSetting2.registerValue(5, R.bool.config_dozeSupportsAodWallpaper, R.bool.config_dozeWakeLockScreenSensorAvailable);
        registerSetting2.registerValue(6, R.bool.config_dreamsActivatedOnDockByDefault, R.bool.config_dreamsActivatedOnSleepByDefault);
        Setting registerSetting3 = registerSetting("routing_control", R.bool.config_switch_phone_on_voice_reg_state_change);
        registerSetting3.registerValue(1, R.bool.config_swipeDisambiguation, R.bool.config_swipe_up_gesture_setting_available);
        registerSetting3.registerValue(0, R.bool.config_suspendWhenScreenOffDueToProximity, R.bool.config_sustainedPerformanceModeSupported);
        Setting registerSetting4 = registerSetting("soundbar_mode", R.bool.config_useAttentionLight);
        registerSetting4.registerValue(1, R.bool.config_use16BitTaskSnapshotPixelFormat, R.bool.config_useAssistantVolume);
        registerSetting4.registerValue(0, R.bool.config_unplugTurnsOnScreen, R.bool.config_usbChargingMessage);
        Setting registerSetting5 = registerSetting("power_control_mode", R.bool.config_enableCarDockHomeLaunch);
        registerSetting5.registerValue("to_tv", R.bool.config_enableAutoPowerModes, R.bool.config_enableBurnInProtection);
        registerSetting5.registerValue(INetd.IF_FLAG_BROADCAST, R.bool.config_dreamsEnabledOnBattery, R.bool.config_dreamsSupported);
        registerSetting5.registerValue("none", R.bool.config_duplicate_port_omadm_wappush, R.bool.config_eap_sim_based_auth_supported);
        registerSetting5.registerValue("to_tv_and_audio_system", R.bool.config_enableActivityRecognitionHardwareOverlay, R.bool.config_enableAppWidgetService);
        Setting registerSetting6 = registerSetting("power_state_change_on_active_source_lost", R.bool.config_enableHapticTextHandle);
        registerSetting6.registerValue("none", R.bool.config_enableCredentialFactoryResetProtection, R.bool.config_enableFusedLocationOverlay);
        registerSetting6.registerValue("standby_now", R.bool.config_enableGeocoderOverlay, R.bool.config_enableGeofenceOverlay);
        Setting registerSetting7 = registerSetting("system_audio_control", R.bool.config_useSmsAppService);
        registerSetting7.registerValue(1, R.bool.config_useFixedVolume, R.bool.config_useRoundIcon);
        registerSetting7.registerValue(0, R.bool.config_useDefaultFocusHighlight, R.bool.config_useDevInputEventForAudioJack);
        Setting registerSetting8 = registerSetting("system_audio_mode_muting", R.bool.config_use_sim_language_file);
        registerSetting8.registerValue(1, R.bool.config_useVolumeKeySounds, R.bool.config_useWebViewPacProcessor);
        registerSetting8.registerValue(0, R.bool.config_useSystemProvidedLauncherForSecondary, R.bool.config_useVideoPauseWorkaround);
        Setting registerSetting9 = registerSetting("volume_control_enabled", R.bool.config_windowIsRound);
        registerSetting9.registerValue(1, R.bool.config_windowActionBarSupported, R.bool.config_windowEnableCircularEmulatorDisplayOverlay);
        registerSetting9.registerValue(0, R.bool.config_wifiDisplaySupportsProtectedBuffers, R.bool.config_wimaxEnabled);
        Setting registerSetting10 = registerSetting("tv_wake_on_one_touch_play", R.bool.config_wakeOnDpadKeyPress);
        registerSetting10.registerValue(1, R.bool.config_wakeOnAssistKeyPress, R.bool.config_wakeOnBackKeyPress);
        registerSetting10.registerValue(0, R.bool.config_voice_capable, R.bool.config_volumeHushGestureEnabled);
        Setting registerSetting11 = registerSetting("tv_send_standby_on_sleep", R.bool.config_user_notification_of_restrictied_mobile_access);
        registerSetting11.registerValue(1, R.bool.config_use_strict_phone_number_comparation_for_russia, R.bool.config_use_voip_mode_for_ims);
        registerSetting11.registerValue(0, R.bool.config_use_strict_phone_number_comparation, R.bool.config_use_strict_phone_number_comparation_for_kazakhstan);
        Setting registerSetting12 = registerSetting("set_menu_language", R.bool.config_ui_enableFadingMarquee);
        registerSetting12.registerValue(1, R.bool.config_timeZoneRulesUpdateTrackingEnabled, R.bool.config_tintNotificationActionButtons);
        registerSetting12.registerValue(0, R.bool.config_syncstorageengine_masterSyncAutomatically, R.bool.config_tether_upstream_automatic);
        Setting registerSetting13 = registerSetting("rc_profile_tv", R.bool.config_supportsSystemDecorsOnSecondaryDisplays);
        registerSetting13.registerValue(0, R.bool.config_supportPreRebootSecurityLogs, R.bool.config_supportSpeakerNearUltrasound);
        registerSetting13.registerValue(2, R.bool.config_supportSystemNavigationKeys, R.bool.config_supportsInsecureLockScreen);
        registerSetting13.registerValue(6, R.bool.config_supportsRoundedCornersOnWindows, R.bool.config_supportsSplitScreenMultiWindow);
        registerSetting13.registerValue(10, R.bool.config_supportsMultiDisplay, R.bool.config_supportsMultiWindow);
        registerSetting13.registerValue(14, R.bool.config_supportLongPressPowerWhenNonInteractive, R.bool.config_supportMicNearUltrasound);
        Setting registerSetting14 = registerSetting("rc_profile_source_handles_root_menu", R.bool.config_sms_capable);
        registerSetting14.registerValue(1, R.bool.config_sip_wifi_only, R.bool.config_skipScreenOnBrightnessRamp);
        registerSetting14.registerValue(0, R.bool.config_skipSensorAvailable, R.bool.config_smart_battery_available);
        Setting registerSetting15 = registerSetting("rc_profile_source_handles_setup_menu", R.bool.config_stkNoAlphaUsrCnf);
        registerSetting15.registerValue(1, R.bool.config_sms_decode_gsm_8bit_data, R.bool.config_sms_force_7bit_encoding);
        registerSetting15.registerValue(0, R.bool.config_sms_utf8_support, R.bool.config_speed_up_audio_on_mt_calls);
        Setting registerSetting16 = registerSetting("rc_profile_source_handles_contents_menu", R.bool.config_showMenuShortcutsWhenKeyboardPresent);
        registerSetting16.registerValue(1, R.bool.config_sf_slowBlur, R.bool.config_showAreaUpdateInfoSettings);
        registerSetting16.registerValue(0, R.bool.config_showBuiltinWirelessChargingAnim, R.bool.config_showGesturalNavigationHints);
        Setting registerSetting17 = registerSetting("rc_profile_source_handles_top_menu", R.bool.config_supportDoubleTapWake);
        registerSetting17.registerValue(1, R.bool.config_strongAuthRequiredOnBoot, R.bool.config_supportAudioSourceUnprocessed);
        registerSetting17.registerValue(0, R.bool.config_supportAutoRotation, R.bool.config_supportBluetoothPersistedState);
        Setting registerSetting18 = registerSetting("rc_profile_source_handles_media_context_sensitive_menu", R.bool.config_single_volume);
        registerSetting18.registerValue(1, R.bool.config_showNavigationBar, R.bool.config_showSysuiShutdown);
        registerSetting18.registerValue(0, R.bool.config_showUserSwitcherByDefault, R.bool.config_silenceSensorAvailable);
        Setting registerSetting19 = registerSetting("query_sad_lpcm", R.bool.config_lockUiMode);
        registerSetting19.registerValue(1, R.bool.config_localDisplaysMirrorContent, R.bool.config_lockDayNightMode);
        registerSetting19.registerValue(0, R.bool.config_lidControlsScreenLock, R.bool.config_lidControlsSleep);
        Setting registerSetting20 = registerSetting("query_sad_dd", R.bool.config_expandLockScreenUserSwitcher);
        registerSetting20.registerValue(1, R.bool.config_enable_emergency_call_while_sim_locked, R.bool.config_enable_puk_unlock_screen);
        registerSetting20.registerValue(0, R.bool.config_enableWcgMode, R.bool.config_enableWifiDisplay);
        Setting registerSetting21 = registerSetting("query_sad_mpeg1", R.bool.config_overrideRemoteViewsActivityTransition);
        registerSetting21.registerValue(1, R.bool.config_notificationBadging, R.bool.config_notificationHeaderClickableForExpand);
        registerSetting21.registerValue(0, R.bool.config_nightDisplayAvailable, R.bool.config_noHomeScreen);
        Setting registerSetting22 = registerSetting("query_sad_mp3", R.bool.config_networkSamplingWakesDevice);
        registerSetting22.registerValue(1, R.bool.config_navBarNeedsScrim, R.bool.config_navBarTapThrough);
        registerSetting22.registerValue(0, R.bool.config_navBarAlwaysShowOnSideEdgeGesture, R.bool.config_navBarCanMove);
        Setting registerSetting23 = registerSetting("query_sad_mpeg2", R.bool.config_pinnerHomeApp);
        registerSetting23.registerValue(1, R.bool.config_pinnerAssistantApp, R.bool.config_pinnerCameraApp);
        registerSetting23.registerValue(0, R.bool.config_pdp_reject_enable_retry, R.bool.config_permissionsIndividuallyControlled);
        Setting registerSetting24 = registerSetting("query_sad_aac", R.bool.config_enableNewAutoSelectNetworkUI);
        registerSetting24.registerValue(1, R.bool.config_enableMultiUserUI, R.bool.config_enableNetworkLocationOverlay);
        registerSetting24.registerValue(0, R.bool.config_enableLockBeforeUnlockScreen, R.bool.config_enableLockScreenRotation);
        Setting registerSetting25 = registerSetting("query_sad_dts", R.bool.config_hotswapCapable);
        registerSetting25.registerValue(1, R.bool.config_hasRecents, R.bool.config_hearing_aid_profile_supported);
        registerSetting25.registerValue(0, R.bool.config_handleVolumeKeysInWindowManager, R.bool.config_hasPermanentDpad);
        Setting registerSetting26 = registerSetting("query_sad_atrac", R.bool.config_enableWallpaperService);
        registerSetting26.registerValue(1, R.bool.config_enableServerNotificationEffectsForAutomotive, R.bool.config_enableUpdateableTimeZoneRules);
        registerSetting26.registerValue(0, R.bool.config_enableNightMode, R.bool.config_enableScreenshotChord);
        Setting registerSetting27 = registerSetting("query_sad_onebitaudio", R.bool.config_requireCallCapableAccountForHandle);
        registerSetting27.registerValue(1, R.bool.config_preferenceFragmentClipToPadding, R.bool.config_quickSettingsSupported);
        registerSetting27.registerValue(0, R.bool.config_powerDecoupleAutoSuspendModeFromDisplay, R.bool.config_powerDecoupleInteractiveModeFromDisplay);
        Setting registerSetting28 = registerSetting("query_sad_ddp", R.bool.config_forceShowSystemBars);
        registerSetting28.registerValue(1, R.bool.config_fingerprintSupportsGestures, R.bool.config_focusScrollContainersInTouchMode);
        registerSetting28.registerValue(0, R.bool.config_faceAuthDismissesKeyguard, R.bool.config_fillMainBuiltInDisplayCutout);
        Setting registerSetting29 = registerSetting("query_sad_dtshd", R.bool.config_lidControlsDisplayFold);
        registerSetting29.registerValue(1, R.bool.config_keepRestrictedProfilesInBackground, R.bool.config_keyguardUserSwitcher);
        registerSetting29.registerValue(0, R.bool.config_inflateSignalStrength, R.bool.config_intrusiveNotificationLed);
        Setting registerSetting30 = registerSetting("query_sad_truehd", R.bool.config_safe_media_disable_on_volume_up);
        registerSetting30.registerValue(1, R.bool.config_restart_radio_on_pdp_fail_regular_deactivation, R.bool.config_reverseDefaultRotation);
        registerSetting30.registerValue(0, R.bool.config_requireRadioPowerOffOnSimRefreshReset, R.bool.config_restartRadioAfterProvisioning);
        Setting registerSetting31 = registerSetting("query_sad_dst", R.bool.config_guestUserEphemeral);
        registerSetting31.registerValue(1, R.bool.config_freeformWindowManagement, R.bool.config_goToSleepOnButtonPressTheaterMode);
        registerSetting31.registerValue(0, R.bool.config_forceSystemPackagesQueryable, R.bool.config_forceWindowDrawsStatusBarBackground);
        Setting registerSetting32 = registerSetting("query_sad_wmapro", R.bool.config_sf_limitedAlpha);
        registerSetting32.registerValue(1, R.bool.config_setColorTransformAccelerated, R.bool.config_setColorTransformAcceleratedPerLayer);
        registerSetting32.registerValue(0, R.bool.config_safe_media_volume_enabled, R.bool.config_sendAudioBecomingNoisy);
        Setting registerSetting33 = registerSetting("query_sad_max", R.bool.config_multiuserDelayUserDataLocking);
        registerSetting33.registerValue(1, R.bool.config_mms_content_disposition_support, R.bool.config_mobile_data_capable);
        registerSetting33.registerValue(0, R.bool.config_mainBuiltInDisplayIsRound, R.bool.config_maskMainBuiltInDisplayCutout);
        Setting registerSetting34 = registerSetting("earc_enabled", 17891648);
        registerSetting34.registerValue(1, 17891651, 17891652);
        registerSetting34.registerValue(0, 17891649, 17891650);
        verifySettings();
    }

    public HdmiCecConfig(Context context) {
        this(context, new StorageAdapter(context));
    }

    public final Setting registerSetting(String str, int i) {
        Setting setting = new Setting(this.mContext, str, i);
        this.mSettings.put(str, setting);
        return setting;
    }

    public final void verifySettings() {
        for (Setting setting : this.mSettings.values()) {
            setting.getDefaultValue();
            getStorage(setting);
            getStorageKey(setting);
        }
    }

    public final Setting getSetting(String str) {
        if (this.mSettings.containsKey(str)) {
            return (Setting) this.mSettings.get(str);
        }
        return null;
    }

    public final int getStorage(Setting setting) {
        String name = setting.getName();
        name.hashCode();
        char c = 65535;
        switch (name.hashCode()) {
            case -2072577869:
                if (name.equals("hdmi_cec_version")) {
                    c = 0;
                    break;
                }
                break;
            case -1788790343:
                if (name.equals("system_audio_mode_muting")) {
                    c = 1;
                    break;
                }
                break;
            case -1618836197:
                if (name.equals("set_menu_language")) {
                    c = 2;
                    break;
                }
                break;
            case -1275604441:
                if (name.equals("rc_profile_source_handles_media_context_sensitive_menu")) {
                    c = 3;
                    break;
                }
                break;
            case -1253675651:
                if (name.equals("rc_profile_source_handles_top_menu")) {
                    c = 4;
                    break;
                }
                break;
            case -1188289112:
                if (name.equals("rc_profile_source_handles_root_menu")) {
                    c = 5;
                    break;
                }
                break;
            case -1157203295:
                if (name.equals("query_sad_atrac")) {
                    c = 6;
                    break;
                }
                break;
            case -1154431553:
                if (name.equals("query_sad_dtshd")) {
                    c = 7;
                    break;
                }
                break;
            case -1146252564:
                if (name.equals("query_sad_mpeg1")) {
                    c = '\b';
                    break;
                }
                break;
            case -1146252563:
                if (name.equals("query_sad_mpeg2")) {
                    c = '\t';
                    break;
                }
                break;
            case -1081575217:
                if (name.equals("earc_enabled")) {
                    c = '\n';
                    break;
                }
                break;
            case -971363478:
                if (name.equals("query_sad_truehd")) {
                    c = 11;
                    break;
                }
                break;
            case -910325648:
                if (name.equals("rc_profile_source_handles_contents_menu")) {
                    c = '\f';
                    break;
                }
                break;
            case -890678558:
                if (name.equals("query_sad_wmapro")) {
                    c = '\r';
                    break;
                }
                break;
            case -412334364:
                if (name.equals("routing_control")) {
                    c = 14;
                    break;
                }
                break;
            case -314100402:
                if (name.equals("query_sad_lpcm")) {
                    c = 15;
                    break;
                }
                break;
            case -293445547:
                if (name.equals("rc_profile_source_handles_setup_menu")) {
                    c = 16;
                    break;
                }
                break;
            case -219770232:
                if (name.equals("power_state_change_on_active_source_lost")) {
                    c = 17;
                    break;
                }
                break;
            case -25374657:
                if (name.equals("power_control_mode")) {
                    c = 18;
                    break;
                }
                break;
            case 18371678:
                if (name.equals("soundbar_mode")) {
                    c = 19;
                    break;
                }
                break;
            case 73184058:
                if (name.equals("volume_control_enabled")) {
                    c = 20;
                    break;
                }
                break;
            case 261187356:
                if (name.equals("hdmi_cec_enabled")) {
                    c = 21;
                    break;
                }
                break;
            case 791759782:
                if (name.equals("rc_profile_tv")) {
                    c = 22;
                    break;
                }
                break;
            case 799280879:
                if (name.equals("query_sad_onebitaudio")) {
                    c = 23;
                    break;
                }
                break;
            case 1577324768:
                if (name.equals("query_sad_dd")) {
                    c = 24;
                    break;
                }
                break;
            case 1629183631:
                if (name.equals("tv_wake_on_one_touch_play")) {
                    c = 25;
                    break;
                }
                break;
            case 1652424675:
                if (name.equals("query_sad_aac")) {
                    c = 26;
                    break;
                }
                break;
            case 1652427664:
                if (name.equals("query_sad_ddp")) {
                    c = 27;
                    break;
                }
                break;
            case 1652428133:
                if (name.equals("query_sad_dst")) {
                    c = 28;
                    break;
                }
                break;
            case 1652428163:
                if (name.equals("query_sad_dts")) {
                    c = 29;
                    break;
                }
                break;
            case 1652436228:
                if (name.equals("query_sad_max")) {
                    c = 30;
                    break;
                }
                break;
            case 1652436624:
                if (name.equals("query_sad_mp3")) {
                    c = 31;
                    break;
                }
                break;
            case 2055627683:
                if (name.equals("tv_send_standby_on_sleep")) {
                    c = ' ';
                    break;
                }
                break;
            case 2118236132:
                if (name.equals("system_audio_control")) {
                    c = '!';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case ' ':
            case '!':
                return 2;
            default:
                throw new VerificationException("Invalid CEC setting '" + setting.getName() + "' storage.");
        }
    }

    public final String getStorageKey(Setting setting) {
        String name = setting.getName();
        name.hashCode();
        char c = 65535;
        switch (name.hashCode()) {
            case -2072577869:
                if (name.equals("hdmi_cec_version")) {
                    c = 0;
                    break;
                }
                break;
            case -1788790343:
                if (name.equals("system_audio_mode_muting")) {
                    c = 1;
                    break;
                }
                break;
            case -1618836197:
                if (name.equals("set_menu_language")) {
                    c = 2;
                    break;
                }
                break;
            case -1275604441:
                if (name.equals("rc_profile_source_handles_media_context_sensitive_menu")) {
                    c = 3;
                    break;
                }
                break;
            case -1253675651:
                if (name.equals("rc_profile_source_handles_top_menu")) {
                    c = 4;
                    break;
                }
                break;
            case -1188289112:
                if (name.equals("rc_profile_source_handles_root_menu")) {
                    c = 5;
                    break;
                }
                break;
            case -1157203295:
                if (name.equals("query_sad_atrac")) {
                    c = 6;
                    break;
                }
                break;
            case -1154431553:
                if (name.equals("query_sad_dtshd")) {
                    c = 7;
                    break;
                }
                break;
            case -1146252564:
                if (name.equals("query_sad_mpeg1")) {
                    c = '\b';
                    break;
                }
                break;
            case -1146252563:
                if (name.equals("query_sad_mpeg2")) {
                    c = '\t';
                    break;
                }
                break;
            case -1081575217:
                if (name.equals("earc_enabled")) {
                    c = '\n';
                    break;
                }
                break;
            case -971363478:
                if (name.equals("query_sad_truehd")) {
                    c = 11;
                    break;
                }
                break;
            case -910325648:
                if (name.equals("rc_profile_source_handles_contents_menu")) {
                    c = '\f';
                    break;
                }
                break;
            case -890678558:
                if (name.equals("query_sad_wmapro")) {
                    c = '\r';
                    break;
                }
                break;
            case -412334364:
                if (name.equals("routing_control")) {
                    c = 14;
                    break;
                }
                break;
            case -314100402:
                if (name.equals("query_sad_lpcm")) {
                    c = 15;
                    break;
                }
                break;
            case -293445547:
                if (name.equals("rc_profile_source_handles_setup_menu")) {
                    c = 16;
                    break;
                }
                break;
            case -219770232:
                if (name.equals("power_state_change_on_active_source_lost")) {
                    c = 17;
                    break;
                }
                break;
            case -25374657:
                if (name.equals("power_control_mode")) {
                    c = 18;
                    break;
                }
                break;
            case 18371678:
                if (name.equals("soundbar_mode")) {
                    c = 19;
                    break;
                }
                break;
            case 73184058:
                if (name.equals("volume_control_enabled")) {
                    c = 20;
                    break;
                }
                break;
            case 261187356:
                if (name.equals("hdmi_cec_enabled")) {
                    c = 21;
                    break;
                }
                break;
            case 791759782:
                if (name.equals("rc_profile_tv")) {
                    c = 22;
                    break;
                }
                break;
            case 799280879:
                if (name.equals("query_sad_onebitaudio")) {
                    c = 23;
                    break;
                }
                break;
            case 1577324768:
                if (name.equals("query_sad_dd")) {
                    c = 24;
                    break;
                }
                break;
            case 1629183631:
                if (name.equals("tv_wake_on_one_touch_play")) {
                    c = 25;
                    break;
                }
                break;
            case 1652424675:
                if (name.equals("query_sad_aac")) {
                    c = 26;
                    break;
                }
                break;
            case 1652427664:
                if (name.equals("query_sad_ddp")) {
                    c = 27;
                    break;
                }
                break;
            case 1652428133:
                if (name.equals("query_sad_dst")) {
                    c = 28;
                    break;
                }
                break;
            case 1652428163:
                if (name.equals("query_sad_dts")) {
                    c = 29;
                    break;
                }
                break;
            case 1652436228:
                if (name.equals("query_sad_max")) {
                    c = 30;
                    break;
                }
                break;
            case 1652436624:
                if (name.equals("query_sad_mp3")) {
                    c = 31;
                    break;
                }
                break;
            case 2055627683:
                if (name.equals("tv_send_standby_on_sleep")) {
                    c = ' ';
                    break;
                }
                break;
            case 2118236132:
                if (name.equals("system_audio_control")) {
                    c = '!';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return setting.getName();
            case 1:
                return setting.getName();
            case 2:
                return setting.getName();
            case 3:
                return setting.getName();
            case 4:
                return setting.getName();
            case 5:
                return setting.getName();
            case 6:
                return setting.getName();
            case 7:
                return setting.getName();
            case '\b':
                return setting.getName();
            case '\t':
                return setting.getName();
            case '\n':
                return setting.getName();
            case 11:
                return setting.getName();
            case '\f':
                return setting.getName();
            case '\r':
                return setting.getName();
            case 14:
                return setting.getName();
            case 15:
                return setting.getName();
            case 16:
                return setting.getName();
            case 17:
                return setting.getName();
            case 18:
                return setting.getName();
            case 19:
                return setting.getName();
            case 20:
                return setting.getName();
            case 21:
                return setting.getName();
            case 22:
                return setting.getName();
            case 23:
                return setting.getName();
            case 24:
                return setting.getName();
            case 25:
                return setting.getName();
            case 26:
                return setting.getName();
            case 27:
                return setting.getName();
            case 28:
                return setting.getName();
            case 29:
                return setting.getName();
            case 30:
                return setting.getName();
            case 31:
                return setting.getName();
            case ' ':
                return setting.getName();
            case '!':
                return setting.getName();
            default:
                throw new VerificationException("Invalid CEC setting '" + setting.getName() + "' storage key.");
        }
    }

    public String retrieveValue(Setting setting, String str) {
        int storage = getStorage(setting);
        String storageKey = getStorageKey(setting);
        if (storage == 0) {
            HdmiLogger.debug("Reading '" + storageKey + "' sysprop.", new Object[0]);
            return this.mStorageAdapter.retrieveSystemProperty(storageKey, str);
        }
        if (storage == 1) {
            HdmiLogger.debug("Reading '" + storageKey + "' global setting.", new Object[0]);
            return this.mStorageAdapter.retrieveGlobalSetting(storageKey, str);
        }
        if (storage != 2) {
            return null;
        }
        HdmiLogger.debug("Reading '" + storageKey + "' shared preference.", new Object[0]);
        return this.mStorageAdapter.retrieveSharedPref(storageKey, str);
    }

    public void storeValue(Setting setting, String str) {
        int storage = getStorage(setting);
        String storageKey = getStorageKey(setting);
        if (storage == 0) {
            HdmiLogger.debug("Setting '" + storageKey + "' sysprop.", new Object[0]);
            this.mStorageAdapter.storeSystemProperty(storageKey, str);
            return;
        }
        if (storage == 1) {
            HdmiLogger.debug("Setting '" + storageKey + "' global setting.", new Object[0]);
            this.mStorageAdapter.storeGlobalSetting(storageKey, str);
            return;
        }
        if (storage == 2) {
            HdmiLogger.debug("Setting '" + storageKey + "' shared pref.", new Object[0]);
            this.mStorageAdapter.storeSharedPref(storageKey, str);
            notifySettingChanged(setting);
        }
    }

    public void notifySettingChanged(final Setting setting) {
        synchronized (this.mLock) {
            ArrayMap arrayMap = (ArrayMap) this.mSettingChangeListeners.get(setting);
            if (arrayMap == null) {
                return;
            }
            for (Map.Entry entry : arrayMap.entrySet()) {
                final SettingChangeListener settingChangeListener = (SettingChangeListener) entry.getKey();
                ((Executor) entry.getValue()).execute(new Runnable() { // from class: com.android.server.hdmi.HdmiCecConfig.1
                    @Override // java.lang.Runnable
                    public void run() {
                        settingChangeListener.onChange(setting.getName());
                    }
                });
            }
        }
    }

    public void registerChangeListener(String str, SettingChangeListener settingChangeListener) {
        registerChangeListener(str, settingChangeListener, ConcurrentUtils.DIRECT_EXECUTOR);
    }

    public void registerChangeListener(String str, SettingChangeListener settingChangeListener, Executor executor) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        int storage = getStorage(setting);
        if (storage != 1 && storage != 2) {
            throw new IllegalArgumentException("Change listeners for setting '" + str + "' not supported.");
        }
        synchronized (this.mLock) {
            if (!this.mSettingChangeListeners.containsKey(setting)) {
                this.mSettingChangeListeners.put(setting, new ArrayMap());
            }
            ((ArrayMap) this.mSettingChangeListeners.get(setting)).put(settingChangeListener, executor);
        }
    }

    public void removeChangeListener(String str, SettingChangeListener settingChangeListener) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        synchronized (this.mLock) {
            if (this.mSettingChangeListeners.containsKey(setting)) {
                ArrayMap arrayMap = (ArrayMap) this.mSettingChangeListeners.get(setting);
                arrayMap.remove(settingChangeListener);
                if (arrayMap.isEmpty()) {
                    this.mSettingChangeListeners.remove(setting);
                }
            }
        }
    }

    public List getAllSettings() {
        return new ArrayList(this.mSettings.keySet());
    }

    public List getUserSettings() {
        ArrayList arrayList = new ArrayList();
        for (Setting setting : this.mSettings.values()) {
            if (setting.getUserConfigurable()) {
                arrayList.add(setting.getName());
            }
        }
        return arrayList;
    }

    public boolean isStringValueType(String str) {
        if (getSetting(str) == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        return getSetting(str).getValueType().equals("string");
    }

    public boolean isIntValueType(String str) {
        if (getSetting(str) == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        return getSetting(str).getValueType().equals("int");
    }

    public List getAllowedStringValues(String str) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getValueType().equals("string")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a string-type setting.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = setting.getAllowedValues().iterator();
        while (it.hasNext()) {
            arrayList.add(((Value) it.next()).getStringValue());
        }
        return arrayList;
    }

    public List getAllowedIntValues(String str) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getValueType().equals("int")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a string-type setting.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = setting.getAllowedValues().iterator();
        while (it.hasNext()) {
            arrayList.add(((Value) it.next()).getIntValue());
        }
        return arrayList;
    }

    public String getDefaultStringValue(String str) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getValueType().equals("string")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a string-type setting.");
        }
        return getSetting(str).getDefaultValue().getStringValue();
    }

    public int getDefaultIntValue(String str) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getValueType().equals("int")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a string-type setting.");
        }
        return getSetting(str).getDefaultValue().getIntValue().intValue();
    }

    public String getStringValue(String str) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getValueType().equals("string")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a string-type setting.");
        }
        HdmiLogger.debug("Getting CEC setting value '" + str + "'.", new Object[0]);
        return retrieveValue(setting, setting.getDefaultValue().getStringValue());
    }

    public int getIntValue(String str) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getValueType().equals("int")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a int-type setting.");
        }
        HdmiLogger.debug("Getting CEC setting value '" + str + "'.", new Object[0]);
        return Integer.parseInt(retrieveValue(setting, Integer.toString(setting.getDefaultValue().getIntValue().intValue())));
    }

    public void setStringValue(String str, String str2) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getUserConfigurable()) {
            throw new IllegalArgumentException("Updating CEC setting '" + str + "' prohibited.");
        }
        if (!setting.getValueType().equals("string")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a string-type setting.");
        }
        if (!getAllowedStringValues(str).contains(str2)) {
            throw new IllegalArgumentException("Invalid CEC setting '" + str + "' value: '" + str2 + "'.");
        }
        HdmiLogger.debug("Updating CEC setting '" + str + "' to '" + str2 + "'.", new Object[0]);
        storeValue(setting, str2);
    }

    public void setIntValue(String str, int i) {
        Setting setting = getSetting(str);
        if (setting == null) {
            throw new IllegalArgumentException("Setting '" + str + "' does not exist.");
        }
        if (!setting.getUserConfigurable()) {
            throw new IllegalArgumentException("Updating CEC setting '" + str + "' prohibited.");
        }
        if (!setting.getValueType().equals("int")) {
            throw new IllegalArgumentException("Setting '" + str + "' is not a int-type setting.");
        }
        if (!getAllowedIntValues(str).contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid CEC setting '" + str + "' value: '" + i + "'.");
        }
        HdmiLogger.debug("Updating CEC setting '" + str + "' to '" + i + "'.", new Object[0]);
        storeValue(setting, Integer.toString(i));
    }
}
