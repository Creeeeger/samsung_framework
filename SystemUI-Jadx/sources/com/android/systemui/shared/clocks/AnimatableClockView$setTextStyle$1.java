package com.android.systemui.shared.clocks;

import android.animation.TimeInterpolator;
import com.android.systemui.animation.TextAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AnimatableClockView$setTextStyle$1 implements Runnable {
    public final /* synthetic */ Integer $color;
    public final /* synthetic */ long $delay;
    public final /* synthetic */ long $duration;
    public final /* synthetic */ TimeInterpolator $interpolator;
    public final /* synthetic */ Runnable $onAnimationEnd;
    public final /* synthetic */ float $textSize;
    public final /* synthetic */ int $weight;
    public final /* synthetic */ AnimatableClockView this$0;

    public AnimatableClockView$setTextStyle$1(AnimatableClockView animatableClockView, int i, float f, Integer num, long j, TimeInterpolator timeInterpolator, long j2, Runnable runnable) {
        this.this$0 = animatableClockView;
        this.$weight = i;
        this.$textSize = f;
        this.$color = num;
        this.$duration = j;
        this.$interpolator = timeInterpolator;
        this.$delay = j2;
        this.$onAnimationEnd = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextAnimator textAnimator = this.this$0.textAnimator;
        if (textAnimator != null) {
            TextAnimator.setTextStyle$default(textAnimator, this.$weight, this.$textSize, this.$color, false, this.$duration, this.$interpolator, this.$delay, this.$onAnimationEnd);
        }
        AnimatableClockView animatableClockView = this.this$0;
        TextAnimator textAnimator2 = animatableClockView.textAnimator;
        if (textAnimator2 != null) {
            textAnimator2.textInterpolator.glyphFilter = animatableClockView.glyphFilter;
        }
        Integer num = this.$color;
        if (num != null && !animatableClockView.isAnimationEnabled) {
            animatableClockView.setTextColor(num.intValue());
        }
    }
}
