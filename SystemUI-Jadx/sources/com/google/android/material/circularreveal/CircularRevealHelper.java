package com.google.android.material.circularreveal;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.math.MathUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CircularRevealHelper {
    public final Delegate delegate;
    public Drawable overlayDrawable;
    public CircularRevealWidget.RevealInfo revealInfo;
    public final Paint scrimPaint;
    public final View view;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Delegate {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(Delegate delegate) {
        this.delegate = delegate;
        View view = (View) delegate;
        this.view = view;
        view.setWillNotDraw(false);
        new Path();
        new Paint(7);
        Paint paint = new Paint(1);
        this.scrimPaint = paint;
        paint.setColor(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r10) {
        /*
            r9 = this;
            com.google.android.material.circularreveal.CircularRevealWidget$RevealInfo r0 = r9.revealInfo
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L17
            float r0 = r0.radius
            r3 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L11
            r0 = r2
            goto L12
        L11:
            r0 = r1
        L12:
            if (r0 == 0) goto L15
            goto L17
        L15:
            r0 = r1
            goto L18
        L17:
            r0 = r2
        L18:
            r0 = r0 ^ r2
            android.graphics.Paint r8 = r9.scrimPaint
            com.google.android.material.circularreveal.CircularRevealHelper$Delegate r3 = r9.delegate
            android.view.View r4 = r9.view
            if (r0 == 0) goto L45
            r3.actualDraw(r10)
            int r0 = r8.getColor()
            int r0 = android.graphics.Color.alpha(r0)
            if (r0 == 0) goto L30
            r0 = r2
            goto L31
        L30:
            r0 = r1
        L31:
            if (r0 == 0) goto L68
            r0 = 0
            r5 = 0
            int r3 = r4.getWidth()
            float r6 = (float) r3
            int r3 = r4.getHeight()
            float r7 = (float) r3
            r3 = r10
            r4 = r0
            r3.drawRect(r4, r5, r6, r7, r8)
            goto L68
        L45:
            r3.actualDraw(r10)
            int r0 = r8.getColor()
            int r0 = android.graphics.Color.alpha(r0)
            if (r0 == 0) goto L54
            r0 = r2
            goto L55
        L54:
            r0 = r1
        L55:
            if (r0 == 0) goto L68
            r0 = 0
            r5 = 0
            int r3 = r4.getWidth()
            float r6 = (float) r3
            int r3 = r4.getHeight()
            float r7 = (float) r3
            r3 = r10
            r4 = r0
            r3.drawRect(r4, r5, r6, r7, r8)
        L68:
            android.graphics.drawable.Drawable r0 = r9.overlayDrawable
            if (r0 == 0) goto L71
            com.google.android.material.circularreveal.CircularRevealWidget$RevealInfo r3 = r9.revealInfo
            if (r3 == 0) goto L71
            r1 = r2
        L71:
            if (r1 == 0) goto L9c
            android.graphics.Rect r0 = r0.getBounds()
            com.google.android.material.circularreveal.CircularRevealWidget$RevealInfo r1 = r9.revealInfo
            float r1 = r1.centerX
            int r2 = r0.width()
            float r2 = (float) r2
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r3
            float r1 = r1 - r2
            com.google.android.material.circularreveal.CircularRevealWidget$RevealInfo r2 = r9.revealInfo
            float r2 = r2.centerY
            int r0 = r0.height()
            float r0 = (float) r0
            float r0 = r0 / r3
            float r2 = r2 - r0
            r10.translate(r1, r2)
            android.graphics.drawable.Drawable r9 = r9.overlayDrawable
            r9.draw(r10)
            float r9 = -r1
            float r0 = -r2
            r10.translate(r9, r0)
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.circularreveal.CircularRevealHelper.draw(android.graphics.Canvas):void");
    }

    public final int getCircularRevealScrimColor() {
        return this.scrimPaint.getColor();
    }

    public final CircularRevealWidget.RevealInfo getRevealInfo() {
        boolean z;
        CircularRevealWidget.RevealInfo revealInfo = this.revealInfo;
        if (revealInfo == null) {
            return null;
        }
        CircularRevealWidget.RevealInfo revealInfo2 = new CircularRevealWidget.RevealInfo(revealInfo);
        if (revealInfo2.radius == Float.MAX_VALUE) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            float f = revealInfo2.centerX;
            float f2 = revealInfo2.centerY;
            View view = this.view;
            revealInfo2.radius = MathUtils.distanceToFurthestCorner(f, f2, view.getWidth(), view.getHeight());
        }
        return revealInfo2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isOpaque() {
        /*
            r3 = this;
            com.google.android.material.circularreveal.CircularRevealHelper$Delegate r0 = r3.delegate
            boolean r0 = r0.actualIsOpaque()
            r1 = 0
            if (r0 == 0) goto L24
            com.google.android.material.circularreveal.CircularRevealWidget$RevealInfo r3 = r3.revealInfo
            r0 = 1
            if (r3 == 0) goto L1f
            float r3 = r3.radius
            r2 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r3 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r3 != 0) goto L19
            r3 = r0
            goto L1a
        L19:
            r3 = r1
        L1a:
            if (r3 == 0) goto L1d
            goto L1f
        L1d:
            r3 = r1
            goto L20
        L1f:
            r3 = r0
        L20:
            r3 = r3 ^ r0
            if (r3 != 0) goto L24
            r1 = r0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.circularreveal.CircularRevealHelper.isOpaque():boolean");
    }

    public final void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.overlayDrawable = drawable;
        this.view.invalidate();
    }

    public final void setCircularRevealScrimColor(int i) {
        this.scrimPaint.setColor(i);
        this.view.invalidate();
    }

    public final void setRevealInfo(CircularRevealWidget.RevealInfo revealInfo) {
        boolean z;
        View view = this.view;
        if (revealInfo == null) {
            this.revealInfo = null;
        } else {
            CircularRevealWidget.RevealInfo revealInfo2 = this.revealInfo;
            if (revealInfo2 == null) {
                this.revealInfo = new CircularRevealWidget.RevealInfo(revealInfo);
            } else {
                float f = revealInfo.centerX;
                float f2 = revealInfo.centerY;
                float f3 = revealInfo.radius;
                revealInfo2.centerX = f;
                revealInfo2.centerY = f2;
                revealInfo2.radius = f3;
            }
            if (revealInfo.radius + 1.0E-4f >= MathUtils.distanceToFurthestCorner(revealInfo.centerX, revealInfo.centerY, view.getWidth(), view.getHeight())) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.revealInfo.radius = Float.MAX_VALUE;
            }
        }
        view.invalidate();
    }
}
