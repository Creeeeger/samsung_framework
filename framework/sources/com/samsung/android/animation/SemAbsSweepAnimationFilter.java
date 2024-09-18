package com.samsung.android.animation;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import com.samsung.android.animation.SemSweepListAnimator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class SemAbsSweepAnimationFilter {
    protected boolean mIsAnimationBack = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ValueAnimator createActionUpAnimator(View view, float f, int i, float f2, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void doMoveAction(View view, float f, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void doRefresh();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void doUpActionWhenAnimationUpdate(int i, float f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void draw(Canvas canvas);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Rect getBitmapDrawableBound();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract float getEndXOfActionUpAnimator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void initAnimationFilter(View view, float f, int i, SemSweepListAnimator.OnSweepListener onSweepListener, SemSweepListAnimator.SweepConfiguration sweepConfiguration);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setForegroundView(View view);

    public boolean isAnimationBack() {
        return this.mIsAnimationBack;
    }
}
