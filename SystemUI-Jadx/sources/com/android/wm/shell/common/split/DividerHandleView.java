package com.android.wm.shell.common.split;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import com.android.wm.shell.R;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DividerHandleView extends View {
    public final int mCircleDiameter;
    public final int mCircleMargin;
    public int mCurrentHeight;
    public int mCurrentWidth;
    public final int mHandleType;
    public final int mHeight;
    public final int mHorizontalHandlerTopMargin;
    public final boolean mIsHorizontalDivision;
    public final Paint mPaint;
    public final int mWidth;

    static {
        Class<Integer> cls = Integer.class;
        new Property(cls, "width") { // from class: com.android.wm.shell.common.split.DividerHandleView.1
            @Override // android.util.Property
            public final Object get(Object obj) {
                return Integer.valueOf(((DividerHandleView) obj).mCurrentWidth);
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                DividerHandleView dividerHandleView = (DividerHandleView) obj;
                dividerHandleView.mCurrentWidth = ((Integer) obj2).intValue();
                dividerHandleView.invalidate();
            }
        };
        new Property(cls, "height") { // from class: com.android.wm.shell.common.split.DividerHandleView.2
            @Override // android.util.Property
            public final Object get(Object obj) {
                return Integer.valueOf(((DividerHandleView) obj).mCurrentHeight);
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                DividerHandleView dividerHandleView = (DividerHandleView) obj;
                dividerHandleView.mCurrentHeight = ((Integer) obj2).intValue();
                dividerHandleView.invalidate();
            }
        };
    }

    public DividerHandleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.mPaint = paint;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.DividerHandleView, 0, 0);
        try {
            int i = obtainStyledAttributes.getInt(0, 0);
            this.mHandleType = i;
            boolean z = true;
            if (i == 0) {
                if (getResources().getConfiguration().orientation != 1) {
                    z = false;
                }
            } else {
                z = obtainStyledAttributes.getBoolean(1, true);
            }
            this.mIsHorizontalDivision = z;
            obtainStyledAttributes.recycle();
            if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && i == 2) {
                if (z) {
                    this.mWidth = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.cell_divider_handle_width);
                    this.mHeight = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.cell_divider_handle_height);
                } else {
                    this.mWidth = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.cell_divider_handle_height);
                    this.mHeight = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.cell_divider_handle_width);
                }
            } else {
                this.mWidth = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.split_divider_handle_width);
                this.mHeight = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.split_divider_handle_height);
            }
            paint.setColor(getResources().getColor(com.android.systemui.R.color.split_divider_handle_circle));
            this.mCircleMargin = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.split_divider_handle_circle_margin);
            this.mCircleDiameter = Math.min(this.mWidth, this.mHeight);
            if (CoreRune.MW_MULTI_SPLIT_DIVIDER) {
                this.mHorizontalHandlerTopMargin = z ? getResources().getDimensionPixelSize(com.android.systemui.R.dimen.multi_split_docked_divider_horizontal_handler_margin_top) : 0;
            }
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width = getWidth();
        float f = (width - r1) / 2.0f;
        float f2 = this.mCircleDiameter + f;
        int height = getHeight();
        int i = this.mCircleDiameter;
        float f3 = this.mHorizontalHandlerTopMargin + ((height - i) / 2.0f);
        int i2 = this.mHandleType;
        if (i2 != 0 && i2 != 1) {
            if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && i2 == 2) {
                float width2 = getWidth() / 2;
                float height2 = getHeight() / 2;
                if (this.mIsHorizontalDivision) {
                    float f4 = width2 - (this.mCircleMargin / 2);
                    float f5 = this.mCircleDiameter;
                    canvas.drawOval(f4 - f5, f3, f4, f3 + f5, this.mPaint);
                    float f6 = width2 + (this.mCircleMargin / 2);
                    float f7 = this.mCircleDiameter;
                    canvas.drawOval(f6, f3, f6 + f7, f3 + f7, this.mPaint);
                    return;
                }
                float f8 = height2 - (this.mCircleMargin / 2);
                canvas.drawOval(f, f8 - this.mCircleDiameter, f2, f8, this.mPaint);
                float f9 = height2 + (this.mCircleMargin / 2);
                canvas.drawOval(f, f9, f2, f9 + this.mCircleDiameter, this.mPaint);
                return;
            }
            return;
        }
        float f10 = i;
        float f11 = f10 + f3;
        if (this.mIsHorizontalDivision) {
            float f12 = f - this.mCircleMargin;
            canvas.drawOval(f12 - f10, f3, f12, f11, this.mPaint);
            canvas.drawOval(f, f3, f2, f11, this.mPaint);
            float f13 = f2 + this.mCircleMargin;
            canvas.drawOval(f13, f3, f13 + this.mCircleDiameter, f11, this.mPaint);
            return;
        }
        float f14 = f3 - this.mCircleMargin;
        canvas.drawOval(f, f14 - f10, f2, f14, this.mPaint);
        canvas.drawOval(f, f3, f2, f11, this.mPaint);
        float f15 = f11 + this.mCircleMargin;
        canvas.drawOval(f, f15, f2, f15 + this.mCircleDiameter, this.mPaint);
    }
}
