package com.android.keyguard;

import com.android.keyguard.KeyguardUpdateMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardUpdateMonitor$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ KeyguardUpdateMonitor$$ExternalSyntheticLambda2(int i, KeyguardUpdateMonitor keyguardUpdateMonitor, boolean z) {
        this.f$0 = keyguardUpdateMonitor;
        this.f$1 = z;
        this.f$2 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                KeyguardUpdateMonitor keyguardUpdateMonitor = (KeyguardUpdateMonitor) this.f$0;
                boolean z = this.f$1;
                int i = this.f$2;
                keyguardUpdateMonitor.mLogger.logReportSuccessfulBiometricUnlock(i, z);
                keyguardUpdateMonitor.mLockPatternUtils.reportSuccessfulBiometricUnlock(z, i);
                return;
            default:
                KeyguardUpdateMonitor.AnonymousClass2 anonymousClass2 = (KeyguardUpdateMonitor.AnonymousClass2) this.f$0;
                KeyguardUpdateMonitor.this.mBiometricEnabledForUser.put(this.f$2, this.f$1);
                KeyguardUpdateMonitor.this.mHandler.post(new KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0(anonymousClass2, 0));
                return;
        }
    }

    public /* synthetic */ KeyguardUpdateMonitor$$ExternalSyntheticLambda2(KeyguardUpdateMonitor.AnonymousClass2 anonymousClass2, int i, boolean z) {
        this.f$0 = anonymousClass2;
        this.f$2 = i;
        this.f$1 = z;
    }
}
