package com.android.wm.shell.splitscreen;

import android.animation.ValueAnimator;
import com.android.wm.shell.splitscreen.SplitScreenTransitions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenTransitions$$ExternalSyntheticLambda7 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ ValueAnimator f$1;

    public /* synthetic */ SplitScreenTransitions$$ExternalSyntheticLambda7(Object obj, ValueAnimator valueAnimator, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = valueAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplitScreenTransitions splitScreenTransitions = (SplitScreenTransitions) this.f$0;
                splitScreenTransitions.mAnimations.remove(this.f$1);
                splitScreenTransitions.onFinish(null, null);
                return;
            default:
                SplitScreenTransitions.AnonymousClass1 anonymousClass1 = (SplitScreenTransitions.AnonymousClass1) this.f$0;
                anonymousClass1.this$0.mAnimations.remove(this.f$1);
                anonymousClass1.this$0.onFinish(null, null);
                return;
        }
    }
}
