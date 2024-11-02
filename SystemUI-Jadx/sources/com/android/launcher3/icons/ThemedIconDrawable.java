package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import com.android.launcher3.icons.FastBitmapDrawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ThemedIconDrawable extends FastBitmapDrawable {
    public final BitmapInfo bitmapInfo;
    public final int colorBg;
    public final int colorFg;
    public final Bitmap mBgBitmap;
    public final ColorFilter mBgFilter;
    public final Paint mBgPaint;
    public final ColorFilter mMonoFilter;
    public final Bitmap mMonoIcon;
    public final Paint mMonoPaint;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ThemedConstantState extends FastBitmapDrawable.FastBitmapConstantState {
        public final BitmapInfo bitmapInfo;
        public final int colorBg;
        public final int colorFg;

        public ThemedConstantState(BitmapInfo bitmapInfo, int i, int i2) {
            super(bitmapInfo.icon, bitmapInfo.color);
            this.bitmapInfo = bitmapInfo;
            this.colorBg = i;
            this.colorFg = i2;
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable.FastBitmapConstantState
        public final FastBitmapDrawable createDrawable() {
            return new ThemedIconDrawable(this);
        }
    }

    public ThemedIconDrawable(ThemedConstantState themedConstantState) {
        super(themedConstantState.mBitmap, themedConstantState.colorFg);
        Paint paint = new Paint(3);
        this.mMonoPaint = paint;
        Paint paint2 = new Paint(3);
        this.mBgPaint = paint2;
        BitmapInfo bitmapInfo = themedConstantState.bitmapInfo;
        this.bitmapInfo = bitmapInfo;
        int i = themedConstantState.colorBg;
        this.colorBg = i;
        int i2 = themedConstantState.colorFg;
        this.colorFg = i2;
        this.mMonoIcon = bitmapInfo.mMono;
        BlendModeColorFilter blendModeColorFilter = new BlendModeColorFilter(i2, BlendMode.SRC_IN);
        this.mMonoFilter = blendModeColorFilter;
        paint.setColorFilter(blendModeColorFilter);
        this.mBgBitmap = bitmapInfo.mWhiteShadowLayer;
        BlendModeColorFilter blendModeColorFilter2 = new BlendModeColorFilter(i, BlendMode.SRC_IN);
        this.mBgFilter = blendModeColorFilter2;
        paint2.setColorFilter(blendModeColorFilter2);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void drawInternal(Canvas canvas, Rect rect) {
        canvas.drawBitmap(this.mBgBitmap, (Rect) null, rect, this.mBgPaint);
        canvas.drawBitmap(this.mMonoIcon, (Rect) null, rect, this.mMonoPaint);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final FastBitmapDrawable.FastBitmapConstantState newConstantState() {
        return new ThemedConstantState(this.bitmapInfo, this.colorBg, this.colorFg);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void updateFilter() {
        int i;
        ColorFilter colorFilter;
        ColorFilter colorFilter2;
        super.updateFilter();
        if (this.mIsDisabled) {
            i = (int) (this.mDisabledAlpha * 255.0f);
        } else {
            i = 255;
        }
        this.mBgPaint.setAlpha(i);
        Paint paint = this.mBgPaint;
        if (this.mIsDisabled) {
            colorFilter = new BlendModeColorFilter(FastBitmapDrawable.getDisabledColor(this.colorBg), BlendMode.SRC_IN);
        } else {
            colorFilter = this.mBgFilter;
        }
        paint.setColorFilter(colorFilter);
        this.mMonoPaint.setAlpha(i);
        Paint paint2 = this.mMonoPaint;
        if (this.mIsDisabled) {
            colorFilter2 = new BlendModeColorFilter(FastBitmapDrawable.getDisabledColor(this.colorFg), BlendMode.SRC_IN);
        } else {
            colorFilter2 = this.mMonoFilter;
        }
        paint2.setColorFilter(colorFilter2);
    }
}
