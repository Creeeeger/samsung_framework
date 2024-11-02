package com.android.systemui.keyguard;

import android.animation.ValueAnimator;
import android.view.IRemoteAnimationRunner;
import com.android.systemui.keyguard.SafeUIKeyguardViewMediator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ IRemoteAnimationRunner.Stub f$0;

    public /* synthetic */ SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda1(IRemoteAnimationRunner.Stub stub, int i) {
        this.$r8$classId = i;
        this.f$0 = stub;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ValueAnimator valueAnimator = ((SafeUIKeyguardViewMediator.AnonymousClass7) this.f$0).mOccludeByDreamAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    return;
                }
                return;
            default:
                SafeUIKeyguardViewMediator.AnonymousClass8 anonymousClass8 = (SafeUIKeyguardViewMediator.AnonymousClass8) this.f$0;
                int i = SafeUIKeyguardViewMediator.AnonymousClass8.$r8$clinit;
                anonymousClass8.getClass();
                return;
        }
    }
}
