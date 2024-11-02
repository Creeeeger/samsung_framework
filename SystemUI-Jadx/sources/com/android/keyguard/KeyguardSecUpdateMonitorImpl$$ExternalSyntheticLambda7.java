package com.android.keyguard;

import android.hardware.biometrics.BiometricSourceType;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUpdateMonitorCallback) obj).onUnlocking();
                return;
            case 1:
                ((KeyguardUpdateMonitorCallback) obj).onLockModeChanged();
                return;
            case 2:
                ((KeyguardUpdateMonitorCallback) obj).onOwnerInfoChanged();
                return;
            case 3:
                ((KeyguardUpdateMonitorCallback) obj).onLocaleChanged();
                return;
            case 4:
                ((KeyguardUpdateMonitorCallback) obj).onSystemDialogsShowing();
                return;
            case 5:
                ((KeyguardUpdateMonitorCallback) obj).onOfflineStateChanged();
                return;
            case 6:
                ((KeyguardUpdateMonitorCallback) obj).onRemoteLockInfoChanged();
                return;
            case 7:
                ((KeyguardUpdateMonitorCallback) obj).onUdfpsFingerDown$1();
                return;
            case 8:
                ((KeyguardUpdateMonitorCallback) obj).onUdfpsFingerUp$1();
                return;
            case 9:
                ((KeyguardUpdateMonitorCallback) obj).onFailedUnlockAttemptChanged();
                return;
            case 10:
                ((KeyguardUpdateMonitorCallback) obj).onBiometricAuthFailed(BiometricSourceType.FINGERPRINT);
                return;
            case 11:
                ((KeyguardUpdateMonitorCallback) obj).onBiometricAuthFailed(BiometricSourceType.FACE);
                return;
            case 12:
                ((KeyguardUpdateMonitorCallback) obj).onBiometricLockoutChanged(true);
                return;
            case 13:
                ((KeyguardUpdateMonitorCallback) obj).onUserUnlocked();
                return;
            default:
                ((KeyguardUpdateMonitorCallback) obj).onBiometricLockoutChanged(false);
                return;
        }
    }
}
