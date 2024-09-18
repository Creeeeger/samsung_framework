package com.samsung.android.globalactions.util;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.globalactions.presentation.SamsungGlobalActionsManager;
import com.samsung.android.globalactions.presentation.features.Features;
import com.samsung.android.view.SemWindowManager;

/* loaded from: classes5.dex */
public class SystemConditionChecker implements ConditionChecker {
    private static final String TAG = "SystemConditionChecker";
    private final Features mFeatures;
    private final LogWrapper mLogWrapper;
    private final UtilFactory mUtilFactory;

    public SystemConditionChecker(UtilFactory utilFactory, Features features, LogWrapper logWrapper) {
        this.mUtilFactory = utilFactory;
        this.mFeatures = features;
        this.mLogWrapper = logWrapper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.globalactions.util.SystemConditionChecker$1, reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$globalactions$util$SystemConditions;

        static {
            int[] iArr = new int[SystemConditions.values().length];
            $SwitchMap$com$samsung$android$globalactions$util$SystemConditions = iArr;
            try {
                iArr[SystemConditions.GET_MOBILE_DATA_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ENCRYPTION_STATUS_ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_LOGOUT_ENABLED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SECURE_KEYGUARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FMM_LOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_CARRIRER_LOCK_PLUS_ENABLED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_RMM_LOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_USER_UNLOCKED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_KIDS_HOME_MODE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SEC_FOTA_CLIENT_PACKAGE_ENABLED.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.CAN_SET_MODE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_UPSM_ENABLED.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_EMERGENCY_MODE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_MODIFYING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_BUG_REPORT_MODE.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_NAV_BAR_GESTURE_ENABLED.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_TASK_BAR_ENABLED.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_MISSING_PHONE_LOCK.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_AIRPLANE_MODE.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_LOCK_NETWORK_AND_SECURITY.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DOMESTIC_OTA_MODE.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_TABLET_DEVICE.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_TSAFE_LOCK.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SIM_LOCK.ordinal()] = 25;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.HAS_ANY_SIM.ordinal()] = 26;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ALLOWED_SAFE_BOOT.ordinal()] = 27;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_LOCK_DOWN_IN_POWER_MENU.ordinal()] = 28;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DEVICE_OWNER.ordinal()] = 29;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_CURRENT_USER_SECURE.ordinal()] = 30;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_STRONG_AUTH_FOR_LOCK_DOWN.ordinal()] = 31;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_VOICE_ASSISTANT_MODE.ordinal()] = 32;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_WHITE_THEME.ordinal()] = 33;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ULTRA_POWER_SAVING_MODE.ordinal()] = 34;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SHOP_DEMO.ordinal()] = 35;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS.ordinal()] = 36;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_EMERGENCY_MODE.ordinal()] = 37;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_EMERGENCY_CALL.ordinal()] = 38;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_MEDICAL_INFO.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_WIFI_ONLY_DEVICE.ordinal()] = 40;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_SF_EFFECT.ordinal()] = 41;
            } catch (NoSuchFieldError e41) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_CAPTURED_BLUR.ordinal()] = 42;
            } catch (NoSuchFieldError e42) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_POWER_OFF_LOCK.ordinal()] = 43;
            } catch (NoSuchFieldError e43) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.PWD_CHANGE_ENFORCED.ordinal()] = 44;
            } catch (NoSuchFieldError e44) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_EMERGENCY_MODE_USER_AGREEMENT.ordinal()] = 45;
            } catch (NoSuchFieldError e45) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_RBM_MODE.ordinal()] = 46;
            } catch (NoSuchFieldError e46) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_POWER_OFF_UNLOCK_ALWAYS_REQUIRED.ordinal()] = 47;
            } catch (NoSuchFieldError e47) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_POWER_OFF_UNLOCK_ONLY_LOCKSCREEN_REQUIRED.ordinal()] = 48;
            } catch (NoSuchFieldError e48) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_POWER_OFF_UNLOCK_NOT_REQUIRED.ordinal()] = 49;
            } catch (NoSuchFieldError e49) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.SUPPORT_SECONDARY_DISPLAY_AS_COVER.ordinal()] = 50;
            } catch (NoSuchFieldError e50) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.FRONT_LARGE_COVER_DISPLAY.ordinal()] = 51;
            } catch (NoSuchFieldError e51) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_VALID_VERSION.ordinal()] = 52;
            } catch (NoSuchFieldError e52) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DO_PROVISIONING_MODE.ordinal()] = 53;
            } catch (NoSuchFieldError e53) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DESKTOP_MODE_STANDALONE.ordinal()] = 54;
            } catch (NoSuchFieldError e54) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DESKTOP_MODE_DUAL_VIEW.ordinal()] = 55;
            } catch (NoSuchFieldError e55) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FOLDED.ordinal()] = 56;
            } catch (NoSuchFieldError e56) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_BIKE_MODE.ordinal()] = 57;
            } catch (NoSuchFieldError e57) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_IN_LOCK_TASK_MODE.ordinal()] = 58;
            } catch (NoSuchFieldError e58) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_REPAIR_MODE.ordinal()] = 59;
            } catch (NoSuchFieldError e59) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FOLD_DEVICE.ordinal()] = 60;
            } catch (NoSuchFieldError e60) {
            }
        }
    }

    private boolean isEnabled(SystemConditions facadeEnum) {
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$globalactions$util$SystemConditions[facadeEnum.ordinal()]) {
            case 1:
                return ((TelephonyManagerWrapper) this.mUtilFactory.get(TelephonyManagerWrapper.class)).isDataEnabled();
            case 2:
                return ((DevicePolicyManagerWrapper) this.mUtilFactory.get(DevicePolicyManagerWrapper.class)).isEncryptionStatusActive();
            case 3:
                return ((DevicePolicyManagerWrapper) this.mUtilFactory.get(DevicePolicyManagerWrapper.class)).isLogoutEnabled();
            case 4:
                return ((KeyGuardManagerWrapper) this.mUtilFactory.get(KeyGuardManagerWrapper.class)).isSecureKeyguard();
            case 5:
                return ((LockPatternUtilsWrapper) this.mUtilFactory.get(LockPatternUtilsWrapper.class)).isFMMLocked();
            case 6:
                return ((LockPatternUtilsWrapper) this.mUtilFactory.get(LockPatternUtilsWrapper.class)).isCarrierLockPlusEnabled();
            case 7:
                return ((LockPatternUtilsWrapper) this.mUtilFactory.get(LockPatternUtilsWrapper.class)).isRMMLocked();
            case 8:
                return ((LockPatternUtilsWrapper) this.mUtilFactory.get(LockPatternUtilsWrapper.class)).isUserUnLocked();
            case 9:
                return ((PackageManagerWrapper) this.mUtilFactory.get(PackageManagerWrapper.class)).isKidsHomeMode();
            case 10:
                return ((PackageManagerWrapper) this.mUtilFactory.get(PackageManagerWrapper.class)).isATTFOTAPackageAvailable();
            case 11:
                return ((PackageManagerWrapper) this.mUtilFactory.get(PackageManagerWrapper.class)).isSecFOTAPackageAvailable();
            case 12:
                return ((SemEmergencyManagerWrapper) this.mUtilFactory.get(SemEmergencyManagerWrapper.class)).canSetMode();
            case 13:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isMinimalBatteryUse();
            case 14:
                return ((SemEmergencyManagerWrapper) this.mUtilFactory.get(SemEmergencyManagerWrapper.class)).isEmergencyMode();
            case 15:
                return ((SemEmergencyManagerWrapper) this.mUtilFactory.get(SemEmergencyManagerWrapper.class)).isModifying();
            case 16:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isBugReportMode();
            case 17:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isNavBarGestureType();
            case 18:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isTaskBarEnabled();
            case 19:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isMissingPhoneLock();
            case 20:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isAirplaneMode();
            case 21:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isLockNetworkAndSecurityOn();
            case 22:
                return ((SystemPropertiesWrapper) this.mUtilFactory.get(SystemPropertiesWrapper.class)).isDomesticOtaMode();
            case 23:
                return ((SystemPropertiesWrapper) this.mUtilFactory.get(SystemPropertiesWrapper.class)).isTabletDevice();
            case 24:
                return ((TSafeLockUtil) this.mUtilFactory.get(TSafeLockUtil.class)).isTSafeLock();
            case 25:
                return ((TelephonyManagerWrapper) this.mUtilFactory.get(TelephonyManagerWrapper.class)).isSimLock();
            case 26:
                return ((TelephonyManagerWrapper) this.mUtilFactory.get(TelephonyManagerWrapper.class)).hasAnySim();
            case 27:
                return ((UserManagerWrapper) this.mUtilFactory.get(UserManagerWrapper.class)).isAllowedSafeBoot();
            case 28:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isLockDownInPowerMenu();
            case 29:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isDeviceOwner();
            case 30:
                return ((KeyGuardManagerWrapper) this.mUtilFactory.get(KeyGuardManagerWrapper.class)).isCurrentUserSecure();
            case 31:
                return ((LockPatternUtilsWrapper) this.mUtilFactory.get(LockPatternUtilsWrapper.class)).isStrongAuthForLockDown();
            case 32:
                return ((AccessibilityManagerWrapper) this.mUtilFactory.get(AccessibilityManagerWrapper.class)).isVoiceAssistantMode();
            case 33:
                return ((ThemeChecker) this.mUtilFactory.get(ThemeChecker.class)).isWhiteTheme();
            case 34:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isUltraPowerSavingMode();
            case 35:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isShopDemo();
            case 36:
                return ((SamsungGlobalActionsManager) this.mUtilFactory.get(SamsungGlobalActionsManager.class)).isFOTAAvailableForGlobalActions();
            case 37:
                return this.mFeatures.isEnabled("SAFETY_CARE");
            case 38:
                return ((TelephonyManagerWrapper) this.mUtilFactory.get(TelephonyManagerWrapper.class)).hasTelephonyRadio();
            case 39:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isMedicalInfoAccess();
            case 40:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isWifiOnlyDevice();
            case 41:
                return this.mFeatures.isEnabled("SF_EFFECT");
            case 42:
                return this.mFeatures.isEnabled("CAPTURED_BLUR");
            case 43:
                return this.mFeatures.isEnabled("POWER_OFF_LOCK");
            case 44:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isPasswordChangeEnforced();
            case 45:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isEmergencyModeUserAgreement();
            case 46:
                return ((SemReserveBatteryWrapper) this.mUtilFactory.get(SemReserveBatteryWrapper.class)).isReserveBatteryMode();
            case 47:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isPowerOffUnlockAlwaysRequired();
            case 48:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isPowerOffUnlockOnlyLockscreenRequired();
            case 49:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isPowerOffUnlockNotRequired();
            case 50:
                return SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP");
            case 51:
                return SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY").contains("LARGESCREEN");
            case 52:
                return ((SemPersonaWrapper) this.mUtilFactory.get(SemPersonaWrapper.class)).isValidVersion();
            case 53:
                return ((SemPersonaWrapper) this.mUtilFactory.get(SemPersonaWrapper.class)).isDOProvisioningMode();
            case 54:
                return ((DesktopModeManagerWrapper) this.mUtilFactory.get(DesktopModeManagerWrapper.class)).isDesktopModeStandalone();
            case 55:
                return ((DesktopModeManagerWrapper) this.mUtilFactory.get(DesktopModeManagerWrapper.class)).isDesktopModeDualView();
            case 56:
                return SemWindowManager.getInstance().isFolded();
            case 57:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isBikeMode();
            case 58:
                return ((ActivityManagerWrapper) this.mUtilFactory.get(ActivityManagerWrapper.class)).isInLockTaskMode();
            case 59:
                return ((SettingsWrapper) this.mUtilFactory.get(SettingsWrapper.class)).isRepairMode();
            case 60:
                return false;
            default:
                return false;
        }
    }

    @Override // com.samsung.android.globalactions.util.ConditionChecker
    public boolean isEnabled(Object name) {
        try {
            Long time = Long.valueOf(System.currentTimeMillis());
            SystemConditions condition = SystemConditions.valueOf(name.toString());
            boolean ret = isEnabled(condition);
            Long current = Long.valueOf(System.currentTimeMillis());
            this.mLogWrapper.i(TAG, NavigationBarInflaterView.SIZE_MOD_START + condition.name().toLowerCase() + "] " + ret + " (" + (current.longValue() - time.longValue()) + NavigationBarInflaterView.KEY_CODE_END);
            return ret;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
