package com.android.systemui.screenshot.sep.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CaptureEffectView extends View {
    public int mEffectSize;
    public final Paint mPaint;
    public final Path mPath;
    public float mRoundRectX;
    public float mRoundRectY;

    public CaptureEffectView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        updatePath(getWidth(), getHeight());
        canvas.drawPath(this.mPath, this.mPaint);
        super.onDraw(canvas);
    }

    public void setEffectParams(int i, int i2, int i3) {
        this.mEffectSize = i;
        this.mRoundRectX = i2;
        this.mRoundRectY = i3;
    }

    public void updatePath(int i, int i2) {
        int i3 = this.mEffectSize;
        int i4 = i - i3;
        int i5 = i2 - i3;
        this.mPath.reset();
        float f = i3;
        float f2 = i3;
        this.mPath.moveTo(f, f2);
        this.mPath.addRoundRect(new RectF(f, f2, i4, i5), this.mRoundRectX, this.mRoundRectY, Path.Direction.CW);
        this.mPath.setFillType(Path.FillType.INVERSE_EVEN_ODD);
    }

    public CaptureEffectView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(EmergencyPhoneWidget.BG_COLOR);
        this.mPath = new Path();
    }

    public void setDegree(float f) {
    }
}
