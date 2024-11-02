package com.samsung.android.animation;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import com.samsung.android.animation.SemSweepListAnimator;

/* loaded from: classes5.dex */
public abstract class SemAbsSweepAnimationFilter {
    protected boolean mIsAnimationBack = false;

    public abstract ValueAnimator createActionUpAnimator(View view, float f, int i, float f2, boolean z);

    public abstract void doMoveAction(View view, float f, int i);

    public abstract void doRefresh();

    public abstract void doUpActionWhenAnimationUpdate(int i, float f);

    public abstract void draw(Canvas canvas);

    public abstract Rect getBitmapDrawableBound();

    public abstract float getEndXOfActionUpAnimator();

    public abstract void initAnimationFilter(View view, float f, int i, SemSweepListAnimator.OnSweepListener onSweepListener, SemSweepListAnimator.SweepConfiguration sweepConfiguration);

    public abstract void setForegroundView(View view);

    public boolean isAnimationBack() {
        return this.mIsAnimationBack;
    }
}
