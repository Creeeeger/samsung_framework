package com.android.keyguard;

import android.hardware.biometrics.BiometricSourceType;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUpdateMonitorCallback) obj).onBiometricAcquired(BiometricSourceType.FINGERPRINT, this.f$0);
                return;
            case 1:
                ((KeyguardUpdateMonitorCallback) obj).onBiometricAcquired(BiometricSourceType.FINGERPRINT, this.f$0);
                return;
            case 2:
                ((KeyguardUpdateMonitorCallback) obj).onTrustChanged(this.f$0);
                return;
            case 3:
                ((KeyguardUpdateMonitorCallback) obj).onEmergencyStateChanged(this.f$0);
                return;
            case 4:
                ((KeyguardUpdateMonitorCallback) obj).onDualDARInnerLockscreenRequirementChanged(this.f$0);
                return;
            default:
                ((KeyguardUpdateMonitorCallback) obj).onDlsViewModeChanged(this.f$0);
                return;
        }
    }
}
