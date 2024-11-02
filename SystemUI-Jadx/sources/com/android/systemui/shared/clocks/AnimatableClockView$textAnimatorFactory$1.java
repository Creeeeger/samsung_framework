package com.android.systemui.shared.clocks;

import android.text.Layout;
import com.android.systemui.animation.TextAnimator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AnimatableClockView$textAnimatorFactory$1 extends Lambda implements Function2 {
    public static final AnimatableClockView$textAnimatorFactory$1 INSTANCE = new AnimatableClockView$textAnimatorFactory$1();

    public AnimatableClockView$textAnimatorFactory$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new TextAnimator((Layout) obj, 30, (Function0) obj2);
    }
}
