package com.android.systemui.edgelighting.effect.view;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AbsToastView extends FrameLayout {
    public Boolean isAnimating;
    public boolean mIsHiding;
    public int mMaxWidth;
    public int mMinWidth;
    public int mScreenWidth;
    public boolean mToastFullColor;
    public AnimatorSet mTranslationXAnimatorSet;
    public AnimatorSet mTranslationYAnimatorSet;

    public AbsToastView(Context context) {
        super(context);
        this.isAnimating = Boolean.FALSE;
        this.mToastFullColor = false;
        this.mIsHiding = false;
        this.mMinWidth = 95;
        this.mMaxWidth = 730;
    }

    public AbsToastView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isAnimating = Boolean.FALSE;
        this.mToastFullColor = false;
        this.mIsHiding = false;
        this.mMinWidth = 95;
        this.mMaxWidth = 730;
    }

    public AbsToastView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isAnimating = Boolean.FALSE;
        this.mToastFullColor = false;
        this.mIsHiding = false;
        this.mMinWidth = 95;
        this.mMaxWidth = 730;
    }
}
