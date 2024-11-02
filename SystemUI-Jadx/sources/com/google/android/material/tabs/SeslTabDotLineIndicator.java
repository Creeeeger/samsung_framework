package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SeslTabDotLineIndicator extends SeslAbsIndicatorView {
    public final int mDiameter;
    public final Paint mPaint;
    public int mWidth;

    public SeslTabDotLineIndicator(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mWidth != getWidth() || this.mWidth == 0) {
            this.mWidth = getWidth();
        }
        if ((isPressed() || isSelected()) && (getBackground() instanceof ColorDrawable)) {
            int width = (getWidth() - getPaddingStart()) - getPaddingEnd();
            float height = getHeight() / 2.0f;
            int i = this.mDiameter;
            float f = i / 2.0f;
            canvas.drawRoundRect(0.0f, height - f, width, height + f, i, i, this.mPaint);
        }
    }

    @Override // com.google.android.material.tabs.SeslAbsIndicatorView
    public final void onHide() {
        setAlpha(0.0f);
    }

    @Override // com.google.android.material.tabs.SeslAbsIndicatorView
    public final void onSetSelectedIndicatorColor(int i) {
        this.mPaint.setColor(i);
    }

    @Override // com.google.android.material.tabs.SeslAbsIndicatorView
    public final void onShow() {
        startReleaseEffect();
    }

    @Override // com.google.android.material.tabs.SeslAbsIndicatorView
    public final void startPressEffect() {
        setAlpha(1.0f);
        invalidate();
    }

    @Override // com.google.android.material.tabs.SeslAbsIndicatorView
    public final void startReleaseEffect() {
        setAlpha(1.0f);
    }

    public SeslTabDotLineIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SeslTabDotLineIndicator(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeslTabDotLineIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.mDiameter = (int) TypedValue.applyDimension(1, 2.5f, displayMetrics);
        TypedValue.applyDimension(1, 2.5f, displayMetrics);
        TypedValue.applyDimension(1, 5.0f, displayMetrics);
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setFlags(1);
    }
}
