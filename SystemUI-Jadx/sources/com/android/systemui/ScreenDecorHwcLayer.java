package com.android.systemui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.hardware.graphics.common.DisplayDecorationSupport;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.IndentingPrintWriter;
import android.view.DisplayCutout;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.util.DumpUtilsKt;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.io.PrintWriter;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenDecorHwcLayer extends DisplayCutoutBaseView {
    public static final boolean DEBUG_COLOR;
    public final int bgColor;
    public final Paint clearPaint;
    public final int color;
    public final ColorFilter cornerBgFilter;
    public final ColorFilter cornerFilter;
    public final Paint debugTransparentRegionPaint;
    public boolean hasBottomRoundedCorner;
    public boolean hasTopRoundedCorner;
    public int roundedCornerBottomSize;
    public Drawable roundedCornerDrawableBottom;
    public Drawable roundedCornerDrawableTop;
    public int roundedCornerTopSize;
    public final Rect tempRect;
    public final Rect transparentRect;
    public final boolean useInvertedAlphaColor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        DEBUG_COLOR = ScreenDecorations.DEBUG_COLOR;
    }

    public ScreenDecorHwcLayer(Context context, DisplayDecorationSupport displayDecorationSupport) {
        super(context);
        boolean z;
        this.transparentRect = new Rect();
        this.tempRect = new Rect();
        if (displayDecorationSupport.format == 56) {
            if (DEBUG_COLOR) {
                this.color = -16711936;
                this.bgColor = 0;
                this.useInvertedAlphaColor = false;
                Paint paint = new Paint();
                paint.setColor(788594432);
                paint.setStyle(Paint.Style.FILL);
                this.debugTransparentRegionPaint = paint;
            } else {
                if (displayDecorationSupport.alphaInterpretation == 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.useInvertedAlphaColor = z;
                if (z) {
                    this.color = 0;
                    this.bgColor = EmergencyPhoneWidget.BG_COLOR;
                } else {
                    this.color = EmergencyPhoneWidget.BG_COLOR;
                    this.bgColor = 0;
                }
                this.debugTransparentRegionPaint = null;
            }
            this.cornerFilter = new PorterDuffColorFilter(this.color, PorterDuff.Mode.SRC_IN);
            this.cornerBgFilter = new PorterDuffColorFilter(this.bgColor, PorterDuff.Mode.SRC_OUT);
            Paint paint2 = new Paint();
            this.clearPaint = paint2;
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            return;
        }
        throw new IllegalArgumentException(KeyAttributes$$ExternalSyntheticOutline0.m("Attempting to use unsupported mode ", PixelFormat.formatToString(displayDecorationSupport.format)));
    }

    public final void calculateTransparentRect() {
        boolean z;
        boolean z2;
        boolean z3;
        this.transparentRect.set(0, 0, getWidth(), getHeight());
        DisplayCutout displayCutout = this.displayInfo.displayCutout;
        if (displayCutout != null) {
            if (!displayCutout.getBoundingRectLeft().isEmpty()) {
                Rect rect = this.transparentRect;
                int i = displayCutout.getBoundingRectLeft().right;
                int i2 = this.transparentRect.left;
                if (i < i2) {
                    i = i2;
                }
                rect.left = i;
            }
            if (!displayCutout.getBoundingRectTop().isEmpty()) {
                Rect rect2 = this.transparentRect;
                int i3 = displayCutout.getBoundingRectTop().bottom;
                int i4 = this.transparentRect.top;
                if (i3 < i4) {
                    i3 = i4;
                }
                rect2.top = i3;
            }
            if (!displayCutout.getBoundingRectRight().isEmpty()) {
                Rect rect3 = this.transparentRect;
                int i5 = displayCutout.getBoundingRectRight().left;
                int i6 = this.transparentRect.right;
                if (i5 > i6) {
                    i5 = i6;
                }
                rect3.right = i5;
            }
            if (!displayCutout.getBoundingRectBottom().isEmpty()) {
                Rect rect4 = this.transparentRect;
                int i7 = displayCutout.getBoundingRectBottom().top;
                int i8 = this.transparentRect.bottom;
                if (i7 > i8) {
                    i7 = i8;
                }
                rect4.bottom = i7;
            }
        }
        if (!this.protectionRect.isEmpty()) {
            float centerX = this.protectionRect.centerX();
            float centerY = this.protectionRect.centerY();
            RectF rectF = this.protectionRect;
            float f = centerX - rectF.left;
            float f2 = this.cameraProtectionProgress;
            float f3 = f * f2;
            float f4 = (centerY - rectF.top) * f2;
            this.tempRect.set((int) Math.floor(centerX - f3), (int) Math.floor(centerY - f4), (int) Math.ceil(centerX + f3), (int) Math.ceil(centerY + f4));
            Rect rect5 = this.tempRect;
            int i9 = rect5.left;
            int i10 = rect5.top;
            int width = getWidth() - this.tempRect.right;
            int height = getHeight() - this.tempRect.bottom;
            int[] iArr = {i10, width, height};
            int i11 = i9;
            for (int i12 = 0; i12 < 3; i12++) {
                i11 = Math.min(i11, iArr[i12]);
            }
            if (i11 == i9) {
                Rect rect6 = this.transparentRect;
                int i13 = this.tempRect.right;
                int i14 = rect6.left;
                if (i13 < i14) {
                    i13 = i14;
                }
                rect6.left = i13;
            } else if (i11 == i10) {
                Rect rect7 = this.transparentRect;
                int i15 = this.tempRect.bottom;
                int i16 = rect7.top;
                if (i15 < i16) {
                    i15 = i16;
                }
                rect7.top = i15;
            } else if (i11 == width) {
                Rect rect8 = this.transparentRect;
                int i17 = this.tempRect.left;
                int i18 = rect8.right;
                if (i17 > i18) {
                    i17 = i18;
                }
                rect8.right = i17;
            } else if (i11 == height) {
                Rect rect9 = this.transparentRect;
                int i19 = this.tempRect.top;
                int i20 = rect9.bottom;
                if (i19 > i20) {
                    i19 = i20;
                }
                rect9.bottom = i19;
            }
        }
        DisplayCutout displayCutout2 = this.displayInfo.displayCutout;
        if (displayCutout2 != null) {
            if (displayCutout2.getBoundingRectTop().isEmpty() && displayCutout2.getBoundingRectBottom().isEmpty()) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (displayCutout2.getBoundingRectLeft().isEmpty() && displayCutout2.getBoundingRectRight().isEmpty()) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
            z2 = false;
        }
        if (getWidth() < getHeight()) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            if (!z2 && z) {
                Rect rect10 = this.transparentRect;
                int roundedCornerSizeByPosition = getRoundedCornerSizeByPosition(0);
                Rect rect11 = this.transparentRect;
                int i21 = rect11.left;
                if (roundedCornerSizeByPosition < i21) {
                    roundedCornerSizeByPosition = i21;
                }
                rect10.left = roundedCornerSizeByPosition;
                int width2 = getWidth() - getRoundedCornerSizeByPosition(2);
                int i22 = this.transparentRect.right;
                if (width2 > i22) {
                    width2 = i22;
                }
                rect11.right = width2;
                return;
            }
            Rect rect12 = this.transparentRect;
            int roundedCornerSizeByPosition2 = getRoundedCornerSizeByPosition(1);
            Rect rect13 = this.transparentRect;
            int i23 = rect13.top;
            if (roundedCornerSizeByPosition2 < i23) {
                roundedCornerSizeByPosition2 = i23;
            }
            rect12.top = roundedCornerSizeByPosition2;
            int height2 = getHeight() - getRoundedCornerSizeByPosition(3);
            int i24 = this.transparentRect.bottom;
            if (height2 > i24) {
                height2 = i24;
            }
            rect13.bottom = height2;
            return;
        }
        if (z2 && !z) {
            Rect rect14 = this.transparentRect;
            int roundedCornerSizeByPosition3 = getRoundedCornerSizeByPosition(1);
            Rect rect15 = this.transparentRect;
            int i25 = rect15.top;
            if (roundedCornerSizeByPosition3 < i25) {
                roundedCornerSizeByPosition3 = i25;
            }
            rect14.top = roundedCornerSizeByPosition3;
            int height3 = getHeight() - getRoundedCornerSizeByPosition(3);
            int i26 = this.transparentRect.bottom;
            if (height3 > i26) {
                height3 = i26;
            }
            rect15.bottom = height3;
            return;
        }
        Rect rect16 = this.transparentRect;
        int roundedCornerSizeByPosition4 = getRoundedCornerSizeByPosition(0);
        Rect rect17 = this.transparentRect;
        int i27 = rect17.left;
        if (roundedCornerSizeByPosition4 < i27) {
            roundedCornerSizeByPosition4 = i27;
        }
        rect16.left = roundedCornerSizeByPosition4;
        int width3 = getWidth() - getRoundedCornerSizeByPosition(2);
        int i28 = this.transparentRect.right;
        if (width3 > i28) {
            width3 = i28;
        }
        rect17.right = width3;
    }

    @Override // com.android.systemui.DisplayCutoutBaseView
    public final void drawCutoutProtection(Canvas canvas) {
        canvas.drawPath(this.cutoutPath, this.paintForCameraProtection);
    }

    public final void drawRoundedCorner(Canvas canvas, Drawable drawable, int i) {
        if (this.useInvertedAlphaColor) {
            float f = i;
            canvas.drawRect(0.0f, 0.0f, f, f, this.clearPaint);
            if (drawable != null) {
                drawable.setColorFilter(this.cornerBgFilter);
            }
        } else if (drawable != null) {
            drawable.setColorFilter(this.cornerFilter);
        }
        if (drawable != null) {
            drawable.draw(canvas);
        }
        if (drawable != null) {
            drawable.clearColorFilter();
        }
    }

    @Override // com.android.systemui.DisplayCutoutBaseView
    public final void dump(PrintWriter printWriter) {
        IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.increaseIndent();
        asIndenting.println("ScreenDecorHwcLayer:");
        super.dump(printWriter);
        asIndenting.println("this=" + this);
        asIndenting.println("transparentRect=" + this.transparentRect);
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("hasTopRoundedCorner=", this.hasTopRoundedCorner, asIndenting);
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("hasBottomRoundedCorner=", this.hasBottomRoundedCorner, asIndenting);
        asIndenting.println("roundedCornerTopSize=" + this.roundedCornerTopSize);
        asIndenting.println("roundedCornerBottomSize=" + this.roundedCornerBottomSize);
        asIndenting.decreaseIndent();
    }

    @Override // android.view.View
    public final boolean gatherTransparentRegion(Region region) {
        if (region != null) {
            calculateTransparentRect();
            if (DEBUG_COLOR) {
                region.setEmpty();
                return false;
            }
            region.op(this.transparentRect, Region.Op.INTERSECT);
            return false;
        }
        return false;
    }

    public final int getRoundedCornerSizeByPosition(int i) {
        int i2;
        int i3 = ((this.displayRotation + 0) + i) % 4;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        return this.roundedCornerBottomSize;
                    }
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Incorrect position: ", i));
                }
                i2 = this.roundedCornerTopSize;
                int i4 = this.roundedCornerBottomSize;
                if (i2 < i4) {
                    return i4;
                }
            } else {
                return this.roundedCornerTopSize;
            }
        } else {
            i2 = this.roundedCornerTopSize;
            int i5 = this.roundedCornerBottomSize;
            if (i2 < i5) {
                return i5;
            }
        }
        return i2;
    }

    @Override // com.android.systemui.DisplayCutoutBaseView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getParent().requestTransparentRegion(this);
        if (!DEBUG_COLOR) {
            getViewRootImpl().setDisplayDecoration(true);
        }
        if (this.useInvertedAlphaColor) {
            this.paint.set(this.clearPaint);
            this.paintForCameraProtection.set(this.clearPaint);
            this.paintForCameraProtection.setStyle(Paint.Style.FILL_AND_STROKE);
            this.paintForCameraProtection.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.camera_protection_stroke_width));
            return;
        }
        this.paint.setColor(this.color);
        this.paint.setStyle(Paint.Style.FILL);
    }

    @Override // com.android.systemui.DisplayCutoutBaseView, android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        int i2;
        int width;
        int width2;
        if (this.useInvertedAlphaColor) {
            canvas.drawColor(this.bgColor);
        }
        if (this.hasTopRoundedCorner || this.hasBottomRoundedCorner) {
            for (int i3 = 0; i3 < 4; i3++) {
                canvas.save();
                int i4 = (((i3 * 90) - (this.displayRotation * 90)) + 360) % 360;
                canvas.rotate(i4);
                if (i4 != 0 && i4 != 90) {
                    if (i4 != 180) {
                        if (i4 == 270) {
                            width2 = getHeight();
                        } else {
                            throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Incorrect degree: ", i4));
                        }
                    } else {
                        width2 = getWidth();
                    }
                    i = -width2;
                } else {
                    i = 0;
                }
                float f = i;
                if (i4 != 0) {
                    if (i4 != 90) {
                        if (i4 != 180) {
                            if (i4 != 270) {
                                throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Incorrect degree: ", i4));
                            }
                        } else {
                            width = getHeight();
                        }
                    } else {
                        width = getWidth();
                    }
                    i2 = -width;
                    canvas.translate(f, i2);
                    if (!this.hasTopRoundedCorner && (i3 == 0 || i3 == 1)) {
                        drawRoundedCorner(canvas, this.roundedCornerDrawableTop, this.roundedCornerTopSize);
                    } else if (this.hasBottomRoundedCorner && (i3 == 3 || i3 == 2)) {
                        drawRoundedCorner(canvas, this.roundedCornerDrawableBottom, this.roundedCornerBottomSize);
                    }
                    canvas.restore();
                }
                i2 = 0;
                canvas.translate(f, i2);
                if (!this.hasTopRoundedCorner) {
                }
                if (this.hasBottomRoundedCorner) {
                    drawRoundedCorner(canvas, this.roundedCornerDrawableBottom, this.roundedCornerBottomSize);
                }
                canvas.restore();
            }
        }
        super.onDraw(canvas);
        Paint paint = this.debugTransparentRegionPaint;
        if (paint != null) {
            canvas.drawRect(this.transparentRect, paint);
        }
    }

    @Override // com.android.systemui.DisplayCutoutBaseView
    public final void onUpdate() {
        getParent().requestTransparentRegion(this);
    }
}
