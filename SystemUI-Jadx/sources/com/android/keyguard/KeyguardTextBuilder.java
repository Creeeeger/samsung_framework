package com.android.keyguard;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.knox.accounts.HostAuth;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTextBuilder {
    public static KeyguardTextBuilder sInstance;
    public int mAddRemainingAttempt;
    public String mBiometricType;
    public final Context mContext;
    public final String mDeviceType;
    public String mDismissActionType;
    public boolean mIsFace;
    public boolean mIsFingerprint;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
    public final KnoxStateMonitor mKnoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
    public String mPromptReasonType;
    public String mSecurityType;
    public StrongAuthPopup mStrongAuthPopup;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardTextBuilder$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType;
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode;

        static {
            int[] iArr = new int[KeyguardConstants$KeyguardDismissActionType.values().length];
            $SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType = iArr;
            try {
                iArr[KeyguardConstants$KeyguardDismissActionType.KEYGUARD_DISMISS_ACTION_SHUTDOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType[KeyguardConstants$KeyguardDismissActionType.KEYGUARD_DISMISS_ACTION_REBOOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType[KeyguardConstants$KeyguardDismissActionType.KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType[KeyguardConstants$KeyguardDismissActionType.KEYGUARD_DISMISS_ACTION_DEFAULT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[KeyguardSecurityModel.SecurityMode.values().length];
            $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode = iArr2;
            try {
                iArr2[KeyguardSecurityModel.SecurityMode.PIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Pattern.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Password.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Biometric {
        Fingerprint("fingerprint"),
        Face("face"),
        MultiBiometrics("multi"),
        FaceFingerprint("facefingerprint");

        private final String mBiometric;

        Biometric(String str) {
            this.mBiometric = str;
        }

        public final String getType() {
            return this.mBiometric;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum BiometricSecurityLevel {
        Strong("strong"),
        Weak("weak"),
        IdleTimeout("idletimeout");

        private final String mBiometricSecurityLevel;

        BiometricSecurityLevel(String str) {
            this.mBiometricSecurityLevel = str;
        }

        public final String getType() {
            return this.mBiometricSecurityLevel;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum DismissActionType {
        /* JADX INFO: Fake field, exist only in values array */
        Active("active"),
        ShutDown("shutdown"),
        Reboot("reboot"),
        /* JADX INFO: Fake field, exist only in values array */
        Dex("dex"),
        FingerPrintError("fingerprinterror");

        private final String mDismissType;

        DismissActionType(String str) {
            this.mDismissType = str;
        }

        public final String getType() {
            return this.mDismissType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum PromptReason {
        Restart("restart"),
        Timeout("timeout"),
        NonStrongBiometricTimeout("nonstrongbiometrictimeout"),
        DeviceAdmin("deviceadmin"),
        ItPolicy("itpolicy");

        private final String mPromptReason;

        PromptReason(String str) {
            this.mPromptReason = str;
        }

        public final String getType() {
            return this.mPromptReason;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Security {
        PIN("pin"),
        Pattern("pattern"),
        Password(HostAuth.PASSWORD);

        private final String mSecurity;

        Security(String str) {
            this.mSecurity = str;
        }

        public final String getType() {
            return this.mSecurity;
        }
    }

    public KeyguardTextBuilder(Context context) {
        String str;
        this.mContext = context;
        if (DeviceType.isTablet()) {
            str = "tablet";
        } else {
            str = "none";
        }
        this.mDeviceType = str;
    }

    public static KeyguardTextBuilder getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new KeyguardTextBuilder(context);
        }
        return sInstance;
    }

    public final String getAddRemainingAttemptIndication(int i) {
        int i2 = this.mAddRemainingAttempt;
        Context context = this.mContext;
        if (i2 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(context.getString(i));
            sb.append(" (");
            Resources resources = context.getResources();
            int i3 = this.mAddRemainingAttempt;
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, resources.getQuantityString(R.plurals.kg_attempt_left, i3, Integer.valueOf(i3)), ")");
        }
        return context.getString(i);
    }

    public final String getDefaultSecurityMessage(KeyguardSecurityModel.SecurityMode securityMode) {
        String format;
        String str;
        String str2;
        String str3 = "";
        Context context = this.mContext;
        KnoxStateMonitor knoxStateMonitor = this.mKnoxStateMonitor;
        if (knoxStateMonitor != null) {
            KnoxStateMonitorImpl knoxStateMonitorImpl = (KnoxStateMonitorImpl) knoxStateMonitor;
            if (knoxStateMonitorImpl.isDeviceDisabledForMaxFailedAttempt()) {
                EdmMonitor edmMonitor = knoxStateMonitorImpl.mEdmMonitor;
                if (edmMonitor == null) {
                    str2 = null;
                } else {
                    str2 = edmMonitor.mPkgNameForMaxAttemptDisable;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(context.getString(android.R.string.launch_warning_title));
                if (!TextUtils.isEmpty(str2)) {
                    str3 = PathParser$$ExternalSyntheticOutline0.m("(", str2, ")");
                }
                sb.append(str3);
                return sb.toString();
            }
        }
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        updateSecurityMode(securityMode);
        updateCurrentState(false);
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        String str4 = "none";
        if (keyguardUpdateMonitor.is2StepVerification()) {
            if (keyguardUpdateMonitor.getUserUnlockedWithBiometric(currentUser)) {
                this.mBiometricType = "none";
            } else {
                if (this.mBiometricType.equals(Biometric.MultiBiometrics.getType())) {
                    return context.getResources().getString(R.string.kg_use_biometrics_first);
                }
                if (this.mBiometricType.equals(Biometric.Fingerprint.getType())) {
                    return context.getResources().getString(R.string.kg_use_fingerprint_first);
                }
            }
        }
        boolean z = this.mIsFace;
        String str5 = this.mDeviceType;
        if (z && (keyguardUpdateMonitor.isCameraDisabledByPolicy() || keyguardUpdateMonitor.isFaceDisabled(currentUser))) {
            if (this.mIsFingerprint) {
                if (!DismissActionType.ShutDown.getType().equals(this.mDismissActionType) && !DismissActionType.Reboot.getType().equals(this.mDismissActionType)) {
                    format = String.format(context.getResources().getString(R.string.kg_device_biometric_security_reason_instructions), "none", Biometric.FaceFingerprint.getType(), this.mSecurityType, PromptReason.ItPolicy.getType());
                } else {
                    format = String.format(context.getResources().getString(R.string.kg_device_biometric_security_active_instructions), str5, Biometric.Fingerprint.getType(), this.mSecurityType, this.mDismissActionType);
                }
            } else if (!DismissActionType.ShutDown.getType().equals(this.mDismissActionType) && !DismissActionType.Reboot.getType().equals(this.mDismissActionType)) {
                format = String.format(context.getResources().getString(R.string.kg_device_biometric_security_reason_instructions), "none", this.mBiometricType, this.mSecurityType, PromptReason.DeviceAdmin.getType());
            } else {
                format = String.format(context.getResources().getString(R.string.kg_device_biometric_security_active_instructions), str5, "none", this.mSecurityType, this.mDismissActionType);
            }
        } else if (!DismissActionType.ShutDown.getType().equals(this.mDismissActionType) && !DismissActionType.Reboot.getType().equals(this.mDismissActionType)) {
            if (DismissActionType.FingerPrintError.getType().equals(this.mDismissActionType)) {
                return context.getResources().getString(R.string.kg_finger_print_template_changed_error_message);
            }
            if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY || !this.mIsFingerprint) {
                str = "none";
            } else {
                str = Biometric.Fingerprint.getType();
            }
            if (!keyguardUpdateMonitor.isForgotPasswordView()) {
                str4 = str;
            }
            format = String.format(context.getResources().getString(R.string.kg_biometric_security_active_instructions), str4, this.mSecurityType, this.mDismissActionType);
        } else {
            format = String.format(context.getResources().getString(R.string.kg_device_biometric_security_active_instructions), str5, this.mBiometricType, this.mSecurityType, this.mDismissActionType);
        }
        int identifier = context.getResources().getIdentifier(format, "string", context.getPackageName());
        if (identifier != 0) {
            str3 = getAddRemainingAttemptIndication(identifier);
        } else {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Can't find default string id=", identifier, "KeyguardTextBuilder");
        }
        return str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getPromptSecurityMessage(com.android.keyguard.KeyguardSecurityModel.SecurityMode r6, int r7) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardTextBuilder.getPromptSecurityMessage(com.android.keyguard.KeyguardSecurityModel$SecurityMode, int):java.lang.String");
    }

    public final String getStrongAuthTimeOutMessage(KeyguardSecurityModel.SecurityMode securityMode) {
        String type;
        BiometricSecurityLevel biometricSecurityLevel;
        Context context = this.mContext;
        Resources resources = context.getResources();
        updateSecurityMode(securityMode);
        updateCurrentState(true);
        String string = resources.getString(R.string.kg_device_biometric_security_level_instructions);
        Object[] objArr = new Object[4];
        objArr[0] = this.mDeviceType;
        objArr[1] = this.mBiometricType;
        objArr[2] = this.mSecurityType;
        if (PromptReason.NonStrongBiometricTimeout.getType().equals(this.mPromptReasonType)) {
            if (!this.mKeyguardUpdateMonitor.mStrongAuthTracker.isNonStrongBiometricAllowedAfterIdleTimeout(KeyguardUpdateMonitor.getCurrentUser())) {
                biometricSecurityLevel = BiometricSecurityLevel.IdleTimeout;
            } else {
                biometricSecurityLevel = BiometricSecurityLevel.Weak;
            }
            type = biometricSecurityLevel.getType();
        } else {
            type = BiometricSecurityLevel.Strong.getType();
        }
        objArr[3] = type;
        int identifier = resources.getIdentifier(String.format(string, objArr), "string", context.getPackageName());
        if (identifier != 0) {
            return context.getString(identifier);
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("Can't find strong auth timeout string id=", identifier, "KeyguardTextBuilder");
        return "";
    }

    public final String getWarningAutoWipeMessage(int i, int i2) {
        Object obj;
        Object obj2;
        if (i == 1) {
            obj = "1";
        } else {
            obj = "none";
        }
        if (i2 == 1) {
            obj2 = "1";
        } else {
            obj2 = "none";
        }
        Context context = this.mContext;
        int identifier = context.getResources().getIdentifier(String.format(context.getResources().getString(R.string.kg_warning_device_attempt_remaining_auto_wipe), this.mDeviceType, obj, obj2), "string", context.getPackageName());
        if (identifier != 0) {
            if ("none".equals(obj) && "none".equals(obj2)) {
                return context.getString(identifier, Integer.valueOf(i), Integer.valueOf(i2));
            }
            if ("1".equals(obj)) {
                return context.getString(identifier, Integer.valueOf(i2));
            }
            return context.getString(identifier, Integer.valueOf(i));
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("Can't find the warning on auto wipe string id=", identifier, "KeyguardTextBuilder");
        return "";
    }

    public final void updateCurrentState(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        boolean z7 = false;
        if (!keyguardUpdateMonitor.isFingerprintDisabled(currentUser) && !keyguardUpdateMonitor.isBiometricErrorLockoutPermanent()) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.mAddRemainingAttempt = keyguardUpdateMonitor.getRemainingAttempt(0);
        int biometricType = keyguardUpdateMonitor.getBiometricType(currentUser);
        if (!z2 && (biometricType & 1) == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mIsFingerprint = z3;
        if (!z2 && (biometricType & 256) == 256) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.mIsFace = z4;
        if (!z) {
            if (z3 && keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true)) {
                z5 = true;
            } else {
                z5 = false;
            }
            this.mIsFingerprint = z5;
            boolean z8 = LsRune.SECURITY_FINGERPRINT_IN_DISPLAY;
            if (z8) {
                if (z5 && keyguardUpdateMonitor.isFingerprintDetectionRunning()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.mIsFingerprint = z6;
            }
            if (keyguardUpdateMonitor.is2StepVerification() && keyguardUpdateMonitor.getUserUnlockedWithBiometric(currentUser)) {
                this.mIsFingerprint = false;
            }
            if (!keyguardUpdateMonitor.isCameraDisabledByPolicy() && !keyguardUpdateMonitor.isFaceDisabled(currentUser)) {
                if ((this.mIsFace || (z8 && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isOneHandModeRunning())) && keyguardUpdateMonitor.isFaceDetectionRunning()) {
                    z7 = true;
                }
                this.mIsFace = z7;
            } else {
                if (this.mIsFace && keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(keyguardUpdateMonitor.getFaceStrongBiometric())) {
                    z7 = true;
                }
                this.mIsFace = z7;
            }
        }
        boolean z9 = this.mIsFingerprint;
        String str = "none";
        if (z9 && this.mIsFace) {
            this.mBiometricType = Biometric.MultiBiometrics.getType();
        } else if (z9) {
            this.mBiometricType = Biometric.Fingerprint.getType();
        } else if (this.mIsFace) {
            this.mBiometricType = Biometric.Face.getType();
        } else {
            this.mBiometricType = "none";
        }
        if (keyguardUpdateMonitor.isDismissActionExist()) {
            int i = AnonymousClass2.$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType[keyguardUpdateMonitor.getDismissActionType().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        this.mDismissActionType = "none";
                        return;
                    } else {
                        this.mDismissActionType = DismissActionType.FingerPrintError.getType();
                        return;
                    }
                }
                this.mDismissActionType = DismissActionType.Reboot.getType();
                return;
            }
            this.mDismissActionType = DismissActionType.ShutDown.getType();
            return;
        }
        if (keyguardUpdateMonitor.isForgotPasswordView()) {
            str = "prev";
        }
        this.mDismissActionType = str;
    }

    public final void updateSecurityMode(KeyguardSecurityModel.SecurityMode securityMode) {
        int i = AnonymousClass2.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[securityMode.ordinal()];
        if (i != 1) {
            if (i != 2) {
                this.mSecurityType = Security.Password.getType();
                return;
            } else {
                this.mSecurityType = Security.Pattern.getType();
                return;
            }
        }
        this.mSecurityType = Security.PIN.getType();
    }
}
