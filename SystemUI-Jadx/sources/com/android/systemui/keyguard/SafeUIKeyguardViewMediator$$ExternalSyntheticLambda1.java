package com.android.systemui.keyguard;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SafeUIKeyguardViewMediator f$0;

    public /* synthetic */ SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1(SafeUIKeyguardViewMediator safeUIKeyguardViewMediator, int i) {
        this.$r8$classId = i;
        this.f$0 = safeUIKeyguardViewMediator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mTrustManager.reportKeyguardShowingChanged();
                return;
            case 1:
                SafeUIKeyguardViewMediator.$r8$lambda$GNdiXm3mHNV8n3Qc7UuNKv7SQHY(this.f$0);
                return;
            default:
                SafeUIKeyguardViewMediator.$r8$lambda$GIdRB5htbmIpZ8nvMvkSUjeggGI(this.f$0);
                return;
        }
    }
}
