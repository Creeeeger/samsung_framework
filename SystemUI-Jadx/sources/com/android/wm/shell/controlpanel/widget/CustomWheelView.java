package com.android.wm.shell.controlpanel.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathDashPathEffect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.android.wm.shell.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CustomWheelView extends View {
    public final float[] mIntervals;
    public final Paint mPaint;
    public final Path mShape;
    public final int mSplitOrientation;

    public CustomWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.DividerView, 0, 0);
        try {
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 5);
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(1, 5);
            int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(2, 3);
            this.mSplitOrientation = obtainStyledAttributes.getInt(4, 0);
            obtainStyledAttributes.recycle();
            float f = dimensionPixelSize2;
            float f2 = dimensionPixelSize;
            float f3 = dimensionPixelSize3;
            this.mIntervals = new float[]{f, f2, f3};
            Paint paint = new Paint();
            this.mPaint = paint;
            Path path = new Path();
            this.mShape = path;
            float f4 = dimensionPixelSize2 / 2;
            path.addRoundRect(new RectF(0.0f, 0.0f, f, f3), f4, f4, Path.Direction.CW);
            paint.setPathEffect(new PathDashPathEffect(path, f2, 0.0f, PathDashPathEffect.Style.MORPH));
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        startAnimation(AnimationUtils.loadAnimation(((View) this).mContext, com.android.systemui.R.anim.fadein));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaint.setShader(new LinearGradient(getWidth() / 2, 0.0f, getWidth() / 2, getHeight(), new int[]{getResources().getColor(com.android.systemui.R.color.flex_scroll_wheel_start), getResources().getColor(com.android.systemui.R.color.flex_scroll_wheel_center), getResources().getColor(com.android.systemui.R.color.flex_scroll_wheel_end)}, (float[]) null, Shader.TileMode.CLAMP));
        if (this.mSplitOrientation == 0) {
            float height = (getHeight() + this.mIntervals[2]) / 2.0f;
            canvas.drawLine(0.0f, height, getWidth(), height, this.mPaint);
        } else {
            float width = (getWidth() + this.mIntervals[2]) / 2.0f;
            canvas.drawLine(width, 0.0f, width, getHeight(), this.mPaint);
        }
    }

    public final void onFadeOutAnimation() {
        startAnimation(AnimationUtils.loadAnimation(((View) this).mContext, com.android.systemui.R.anim.fadeout));
    }

    public final void updateScrollView(int i) {
        this.mPaint.setPathEffect(new PathDashPathEffect(this.mShape, this.mIntervals[1], i, PathDashPathEffect.Style.MORPH));
        super.invalidate();
    }

    public CustomWheelView(Context context) {
        this(context, null);
    }
}
