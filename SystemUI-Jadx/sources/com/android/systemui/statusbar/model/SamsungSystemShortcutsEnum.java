package com.android.systemui.statusbar.model;

import android.content.Context;
import android.hardware.SensorPrivacyManager;
import android.hardware.input.InputDeviceIdentifier;
import android.hardware.input.InputManager;
import android.provider.DeviceConfig;
import android.view.InputDevice;
import android.view.KeyboardShortcutInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.samsung.android.feature.SemFloatingFeature;
import java.util.Optional;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SamsungSystemShortcutsEnum {
    public static final /* synthetic */ SamsungSystemShortcutsEnum[] $VALUES = {new AnonymousClass1(), new AnonymousClass2(), new AnonymousClass3(), new AnonymousClass4(), new AnonymousClass5(), new AnonymousClass6(), new AnonymousClass7(), new AnonymousClass8(), new AnonymousClass9(), new AnonymousClass10(), new AnonymousClass11(), new AnonymousClass12(), new AnonymousClass13(), new AnonymousClass14(), new AnonymousClass15(), new AnonymousClass16(), new AnonymousClass17(), new AnonymousClass18(), new AnonymousClass19(), new AnonymousClass20(), new AnonymousClass21(), new AnonymousClass22()};

    /* JADX INFO: Fake field, exist only in values array */
    SamsungSystemShortcutsEnum EF3;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass1 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass1() {
            this("SYSTEM_HOME", 0);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_home), 66, 65536));
        }

        private AnonymousClass1(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$10, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass10 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass10() {
            this("SYSTEM_MICROPHONE_ACCESS_ON_OFF", 9);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            SensorPrivacyManager sensorPrivacyManager = (SensorPrivacyManager) kshDataUtils.mContext.getSystemService("sensor_privacy");
            boolean z = true;
            if (!sensorPrivacyManager.supportsSensorToggle(1) || !DeviceConfig.getBoolean("privacy", "mic_toggle_enabled", true)) {
                z = false;
            }
            if (z) {
                return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_microphone_access_on_off), 29, 65537));
            }
            return Optional.empty();
        }

        private AnonymousClass10(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$11, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass11 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass11() {
            this("SYSTEM_LOCK_SCREEN", 10);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_lock_screen), 40, 65537));
        }

        private AnonymousClass11(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$12, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass12 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass12() {
            this("SYSTEM_SCREEN_OFF", 11);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_screen_off), 40, 65536));
        }

        private AnonymousClass12(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$13, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass13 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass13() {
            this("SYSTEM_CAPTURE_WINDOW", 12);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_capture_window), 120, 2));
        }

        private AnonymousClass13(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$14, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass14 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass14() {
            this("SYSTEM_SWITCH_LANGUAGES_SPACE_SHIFT_ON", 13);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_switch_languages), 62, 1));
        }

        private AnonymousClass14(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$15, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass15 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass15() {
            this("SYSTEM_SWITCH_LANGUAGES_SPACE_CTRL_ON", 14);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_switch_languages), 62, 4096));
        }

        private AnonymousClass15(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$16, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass16 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass16() {
            this("SYSTEM_SWITCH_LANGUAGES_SHIFT_ALT_LEFT_ON", 15);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_switch_languages), 1, 16));
        }

        private AnonymousClass16(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$17, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass17 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass17() {
            this("SYSTEM_START_EXIT_DEX_MODE", 16);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            kshDataUtils.getClass();
            if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP", false)) {
                return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_start_exit_dex_mode), 51, 65536));
            }
            return Optional.empty();
        }

        private AnonymousClass17(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$18, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass18 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass18() {
            this("SYSTEM_MAXIMIZE_WINDOW", 17);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_maximize_window), 19, 69632));
        }

        private AnonymousClass18(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$19, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass19 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass19() {
            this("SYSTEM_POPUP_VIEW", 18);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_popup_view), 20, 69632));
        }

        private AnonymousClass19(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass2 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass2() {
            this("SYSTEM_BACK", 1);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_back), 67, 65536));
        }

        private AnonymousClass2(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$20, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass20 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass20() {
            this("SYSTEM_SPLIT_SCREEN_VIEW_DPAD_LEFT", 19);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_split_screen_view), 21, 69632));
        }

        private AnonymousClass20(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$21, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass21 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass21() {
            this("SYSTEM_SPLIT_SCREEN_VIEW_DPAD_RIGHT", 20);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_split_screen_view), 22, 69632));
        }

        private AnonymousClass21(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$22, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass22 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass22() {
            this("SYSTEM_WIRELESS_KEYBOARD_SHARING", 21);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            InputManager inputManager = (InputManager) kshDataUtils.mContext.getSystemService("input");
            boolean z = false;
            for (int i : inputManager.getInputDeviceIds()) {
                InputDevice inputDevice = inputManager.getInputDevice(i);
                if (inputDevice != null && !inputDevice.isVirtual() && inputDevice.isFullKeyboard()) {
                    InputDeviceIdentifier identifier = inputDevice.getIdentifier();
                    int vendorId = identifier.getVendorId();
                    int productId = identifier.getProductId();
                    if ((vendorId == 1256 && productId == 41013) || "Tab S3 Book Cover Keyboard".equals(inputDevice.getName())) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_wireless_keyboard_sharing), 204, 65536));
            }
            return Optional.empty();
        }

        private AnonymousClass22(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass3 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass3() {
            this("SYSTEM_RECENT", 2);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_recents), 61, 2));
        }

        private AnonymousClass3(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass4 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass4() {
            this("SYSTEM_CLOSE_CURRENT_APP", 3);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_close_current_app), 134, 2));
        }

        private AnonymousClass4(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass5 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass5() {
            this("SYSTEM_SHOW_EMOJIS", 4);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            if (BasicRune.KEYBOARD_SUPPORT_EMOJI_SHORTCUT) {
                return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_show_emojis), 56, 65536));
            }
            return Optional.empty();
        }

        private AnonymousClass5(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass6 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass6() {
            this("SYSTEM_SHOW_KANJI_INPUT", 5);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            String languageTag;
            if (BasicRune.KEYBOARD_SUPPORT_EMOJI_SHORTCUT) {
                InputMethodSubtype currentInputMethodSubtype = ((InputMethodManager) kshDataUtils.mContext.getSystemService("input_method")).getCurrentInputMethodSubtype();
                if (currentInputMethodSubtype == null) {
                    languageTag = null;
                } else {
                    languageTag = currentInputMethodSubtype.getLanguageTag();
                }
                if (languageTag != null && languageTag.contains("ko")) {
                    return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_show_hanja_input), 55, 65536));
                }
            }
            return Optional.empty();
        }

        private AnonymousClass6(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$7, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass7 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass7() {
            this("SYSTEM_KEYBOARD_SHORTCUTS", 6);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_keyboard_shortcuts), 76, 65536));
        }

        private AnonymousClass7(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$8, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass8 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass8() {
            this("SYSTEM_NOTIFICATIONS", 7);
        }

        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        public final Optional getKshInfo(Context context, KshDataUtils kshDataUtils) {
            return Optional.of(new KeyboardShortcutInfo(context.getString(R.string.ksh_group_system_notifications), 42, 65536));
        }

        private AnonymousClass8(String str, int i) {
            super(str, i, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum$9, reason: invalid class name */
    /* loaded from: classes2.dex */
    public enum AnonymousClass9 extends SamsungSystemShortcutsEnum {
        public /* synthetic */ AnonymousClass9() {
            this("SYSTEM_CAMERA_ACCESS_ON_OFF", 8);
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
        
            if (android.provider.DeviceConfig.getBoolean("privacy", "camera_toggle_enabled", true) != false) goto L8;
         */
        @Override // com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.util.Optional getKshInfo(android.content.Context r2, com.android.systemui.statusbar.model.KshDataUtils r3) {
            /*
                r1 = this;
                android.content.Context r1 = r3.mContext
                java.lang.String r3 = "sensor_privacy"
                java.lang.Object r1 = r1.getSystemService(r3)
                android.hardware.SensorPrivacyManager r1 = (android.hardware.SensorPrivacyManager) r1
                r3 = 2
                boolean r1 = r1.supportsSensorToggle(r3)
                if (r1 == 0) goto L1f
                java.lang.String r1 = "privacy"
                java.lang.String r3 = "camera_toggle_enabled"
                r0 = 1
                boolean r1 = android.provider.DeviceConfig.getBoolean(r1, r3, r0)
                if (r1 == 0) goto L1f
                goto L20
            L1f:
                r0 = 0
            L20:
                if (r0 == 0) goto L38
                android.view.KeyboardShortcutInfo r1 = new android.view.KeyboardShortcutInfo
                r3 = 2131954206(0x7f130a1e, float:1.9544905E38)
                java.lang.String r2 = r2.getString(r3)
                r3 = 50
                r0 = 65537(0x10001, float:9.1837E-41)
                r1.<init>(r2, r3, r0)
                java.util.Optional r1 = java.util.Optional.of(r1)
                return r1
            L38:
                java.util.Optional r1 = java.util.Optional.empty()
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.model.SamsungSystemShortcutsEnum.AnonymousClass9.getKshInfo(android.content.Context, com.android.systemui.statusbar.model.KshDataUtils):java.util.Optional");
        }

        private AnonymousClass9(String str, int i) {
            super(str, i, 0);
        }
    }

    public /* synthetic */ SamsungSystemShortcutsEnum(String str, int i, int i2) {
        this(str, i);
    }

    public static SamsungSystemShortcutsEnum valueOf(String str) {
        return (SamsungSystemShortcutsEnum) Enum.valueOf(SamsungSystemShortcutsEnum.class, str);
    }

    public static SamsungSystemShortcutsEnum[] values() {
        return (SamsungSystemShortcutsEnum[]) $VALUES.clone();
    }

    public abstract Optional getKshInfo(Context context, KshDataUtils kshDataUtils);

    private SamsungSystemShortcutsEnum(String str, int i) {
    }
}
