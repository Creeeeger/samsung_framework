package com.android.wm.shell.activityembedding;

import android.R;
import android.content.Context;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.android.internal.policy.TransitionAnimation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActivityEmbeddingAnimationSpec {
    public final Interpolator mFastOutExtraSlowInInterpolator;
    public final LinearInterpolator mLinearInterpolator = new LinearInterpolator();
    public final TransitionAnimation mTransitionAnimation;
    public float mTransitionAnimationScaleSetting;

    public ActivityEmbeddingAnimationSpec(Context context) {
        this.mTransitionAnimation = new TransitionAnimation(context, false, "ActivityEmbeddingAnimSpec");
        this.mFastOutExtraSlowInInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_extra_slow_in);
    }
}
