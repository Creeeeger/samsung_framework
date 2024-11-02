package com.android.wm.shell.splitscreen;

import android.animation.ValueAnimator;
import com.android.wm.shell.common.HandlerExecutor;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenTransitions$$ExternalSyntheticLambda5 implements Consumer {
    public final /* synthetic */ SplitScreenTransitions f$0;
    public final /* synthetic */ ValueAnimator f$1;

    public /* synthetic */ SplitScreenTransitions$$ExternalSyntheticLambda5(SplitScreenTransitions splitScreenTransitions, ValueAnimator valueAnimator) {
        this.f$0 = splitScreenTransitions;
        this.f$1 = valueAnimator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        SplitScreenTransitions splitScreenTransitions = this.f$0;
        splitScreenTransitions.mAnimations.remove(this.f$1);
        if (((Boolean) obj).booleanValue()) {
            ((HandlerExecutor) splitScreenTransitions.mTransitions.mMainExecutor).execute(new SplitScreenTransitions$$ExternalSyntheticLambda4(splitScreenTransitions, 2));
        }
    }
}
