package com.android.systemui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HardwareBgDrawable extends LayerDrawable {
    public final Drawable[] mLayers;
    public final Paint mPaint;
    public final boolean mRoundTop;

    public HardwareBgDrawable(boolean z, Drawable[] drawableArr) {
        super(drawableArr);
        this.mPaint = new Paint();
        if (drawableArr.length == 2) {
            this.mRoundTop = z;
            this.mLayers = drawableArr;
            return;
        }
        throw new IllegalArgumentException("Need 2 layers");
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i = bounds.top;
        int i2 = i + 0;
        int i3 = bounds.bottom;
        if (i2 > i3) {
            i2 = i3;
        }
        if (this.mRoundTop) {
            this.mLayers[0].setBounds(bounds.left, i, bounds.right, i2);
        } else {
            this.mLayers[1].setBounds(bounds.left, i2, bounds.right, i3);
        }
        if (this.mRoundTop) {
            this.mLayers[1].draw(canvas);
            this.mLayers[0].draw(canvas);
        } else {
            this.mLayers[0].draw(canvas);
            this.mLayers[1].draw(canvas);
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HardwareBgDrawable(boolean r5, boolean r6, android.content.Context r7) {
        /*
            r4 = this;
            if (r6 == 0) goto L6
            r0 = 2131234521(0x7f080ed9, float:1.808521E38)
            goto L9
        L6:
            r0 = 2131234519(0x7f080ed7, float:1.8085206E38)
        L9:
            r1 = 1
            if (r5 == 0) goto L21
            android.graphics.drawable.Drawable r6 = r7.getDrawable(r0)
            android.graphics.drawable.Drawable r6 = r6.mutate()
            android.graphics.drawable.Drawable r0 = r7.getDrawable(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            android.graphics.drawable.Drawable[] r6 = new android.graphics.drawable.Drawable[]{r6, r0}
            goto L43
        L21:
            r2 = 2
            android.graphics.drawable.Drawable[] r2 = new android.graphics.drawable.Drawable[r2]
            android.graphics.drawable.Drawable r0 = r7.getDrawable(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r3 = 0
            r2[r3] = r0
            if (r6 == 0) goto L35
            r6 = 2131234532(0x7f080ee4, float:1.8085232E38)
            goto L38
        L35:
            r6 = 2131234520(0x7f080ed8, float:1.8085208E38)
        L38:
            android.graphics.drawable.Drawable r6 = r7.getDrawable(r6)
            android.graphics.drawable.Drawable r6 = r6.mutate()
            r2[r1] = r6
            r6 = r2
        L43:
            r0 = r6[r1]
            r1 = 16843827(0x1010433, float:2.369657E-38)
            android.content.res.ColorStateList r7 = com.android.settingslib.Utils.getColorAttr(r1, r7)
            r0.setTintList(r7)
            r4.<init>(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.HardwareBgDrawable.<init>(boolean, boolean, android.content.Context):void");
    }
}
