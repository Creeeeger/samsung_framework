package com.android.systemui.keyguard.animator;

import android.animation.AnimatorSet;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DragViewController extends ViewAnimationController {
    public final List dragViews;
    public final List onlyAlphaDragViews;
    public AnimatorSet restoreAnimatorSet;
    public AnimatorSet unlockViewHideAnimatorSet;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public DragViewController(KeyguardTouchAnimator keyguardTouchAnimator) {
        super(keyguardTouchAnimator);
        this.dragViews = CollectionsKt__CollectionsKt.listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        this.onlyAlphaDragViews = CollectionsKt__CollectionsKt.listOf(6, 7, 9);
        this.unlockViewHideAnimatorSet = new AnimatorSet();
        this.restoreAnimatorSet = new AnimatorSet();
    }

    public static AnimatorSet createAnimatorSet$default(DragViewController dragViewController, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (i != 0) {
            if (i == 1) {
                animatorSet.setDuration(400L);
                animatorSet.setInterpolator(dragViewController.SINE_OUT_33);
                dragViewController.restoreAnimatorSet = animatorSet;
            }
        } else {
            animatorSet.setInterpolator(dragViewController.SINE_IN_33);
            animatorSet.setDuration(100L);
            dragViewController.unlockViewHideAnimatorSet = animatorSet;
        }
        return animatorSet;
    }
}
