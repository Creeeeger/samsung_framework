package com.android.systemui.statusbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.android.systemui.LsRune;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.util.ColorUtilKt;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.util.ArrayList;
import java.util.function.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LightRevealScrim extends View implements PanelScreenShotLogger.LogProvider {
    public final Paint dimPaint;
    public final Paint gradientPaint;
    public float interpolatedRevealAmount;
    public boolean isScrimOpaque;
    public Consumer isScrimOpaqueChangedListener;
    public float revealAmount;
    public float revealDimGradientEndColorAlpha;
    public LightRevealEffect revealEffect;
    public final PointF revealGradientCenter;
    public final int revealGradientEndColor;
    public float revealGradientEndColorAlpha;
    public float revealGradientHeight;
    public float revealGradientWidth;
    public final Matrix shaderGradientMatrix;
    public float startColorAlpha;
    public int viewHeight;
    public int viewWidth;

    public LightRevealScrim(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, null, null, 12, null);
    }

    public static void leaveLog$default(LightRevealScrim lightRevealScrim, Integer num, Float f, Float f2, int i) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            f = null;
        }
        if ((i & 4) != 0) {
            f2 = null;
        }
        Log.d("ScrimController", lightRevealScrim.dumpLog(num, f, f2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0027, code lost:
    
        if (r10 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x004e, code lost:
    
        if (r9 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String dumpLog(java.lang.Integer r8, java.lang.Float r9, java.lang.Float r10) {
        /*
            r7 = this;
            com.android.systemui.statusbar.LightRevealEffect r0 = r7.revealEffect
            boolean r1 = r7.isScrimOpaque
            java.lang.String r2 = ")"
            java.lang.String r3 = " -> "
            java.lang.String r4 = "("
            if (r10 == 0) goto L29
            float r10 = r10.floatValue()
            float r5 = r7.revealAmount
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r4)
            r6.append(r10)
            r6.append(r3)
            r6.append(r5)
            r6.append(r2)
            java.lang.String r10 = r6.toString()
            if (r10 != 0) goto L2f
        L29:
            float r10 = r7.revealAmount
            java.lang.Float r10 = java.lang.Float.valueOf(r10)
        L2f:
            if (r9 == 0) goto L50
            float r9 = r9.floatValue()
            float r5 = r7.getAlpha()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r4)
            r6.append(r9)
            r6.append(r3)
            r6.append(r5)
            r6.append(r2)
            java.lang.String r9 = r6.toString()
            if (r9 != 0) goto L58
        L50:
            float r9 = r7.getAlpha()
            java.lang.Float r9 = java.lang.Float.valueOf(r9)
        L58:
            if (r8 == 0) goto L68
            int r8 = r8.intValue()
            int r5 = r7.getVisibility()
            java.lang.String r8 = androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m(r4, r8, r3, r5, r2)
            if (r8 != 0) goto L70
        L68:
            int r7 = r7.getVisibility()
            java.lang.Integer r8 = java.lang.Integer.valueOf(r7)
        L70:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r2 = "updateLightReveal revealEffect="
            r7.<init>(r2)
            r7.append(r0)
            java.lang.String r0 = ", opaque="
            r7.append(r0)
            r7.append(r1)
            java.lang.String r0 = " revealAmount="
            r7.append(r0)
            r7.append(r10)
            java.lang.String r10 = " alpha="
            r7.append(r10)
            r7.append(r9)
            java.lang.String r9 = " vis="
            r7.append(r9)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.LightRevealScrim.dumpLog(java.lang.Integer, java.lang.Float, java.lang.Float):java.lang.String");
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        PanelScreenShotLogger.INSTANCE.getClass();
        PanelScreenShotLogger.addHeaderLine("LightRevealScrim", arrayList);
        arrayList.add(dumpLog(null, null, null));
        return arrayList;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        if (canvas != null && this.revealGradientWidth > 0.0f && this.revealGradientHeight > 0.0f) {
            if (this.revealAmount == 0.0f) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                float f = this.startColorAlpha;
                if (f > 0.0f) {
                    canvas.drawColor(ColorUtilKt.getColorWithAlpha(f, this.revealGradientEndColor));
                }
                Matrix matrix = this.shaderGradientMatrix;
                matrix.setScale(this.revealGradientWidth, this.revealGradientHeight, 0.0f, 0.0f);
                PointF pointF = this.revealGradientCenter;
                matrix.postTranslate(pointF.x, pointF.y);
                this.gradientPaint.getShader().setLocalMatrix(matrix);
                if (LsRune.AOD_LIGHT_REVEAL) {
                    canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.dimPaint);
                }
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.gradientPaint);
                return;
            }
        }
        if (this.revealAmount < 1.0f && canvas != null) {
            canvas.drawColor(this.revealGradientEndColor);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.viewWidth = getMeasuredWidth();
        this.viewHeight = getMeasuredHeight();
    }

    @Override // android.view.View
    public final void setAlpha(float f) {
        boolean z;
        if (LsRune.AOD_LIGHT_REVEAL) {
            float alpha = getAlpha();
            super.setAlpha(f);
            updateScrimOpaque();
            if (alpha == f) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                leaveLog$default(this, null, Float.valueOf(alpha), null, 5);
                return;
            }
            return;
        }
        super.setAlpha(f);
        updateScrimOpaque();
    }

    public final void setPaintColorFilter() {
        this.gradientPaint.setColorFilter(new PorterDuffColorFilter(ColorUtilKt.getColorWithAlpha(this.revealGradientEndColorAlpha, this.revealGradientEndColor), PorterDuff.Mode.MULTIPLY));
        if (LsRune.AOD_LIGHT_REVEAL) {
            this.dimPaint.setColor(ColorUtilKt.getColorWithAlpha(this.revealDimGradientEndColorAlpha, this.revealGradientEndColor));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        if (r2 != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setRevealAmount(float r6) {
        /*
            r5 = this;
            float r0 = r5.revealAmount
            int r1 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            r2 = 1
            r3 = 0
            if (r1 != 0) goto La
            r1 = r2
            goto Lb
        La:
            r1 = r3
        Lb:
            if (r1 != 0) goto L6a
            boolean r1 = com.android.systemui.LsRune.AOD_LIGHT_REVEAL
            if (r1 == 0) goto L4f
            r5.revealAmount = r6
            com.android.systemui.statusbar.LightRevealEffect r1 = r5.revealEffect
            r1.setRevealAmountOnScrim(r6, r5)
            r5.updateScrimOpaque()
            boolean r1 = com.android.systemui.statusbar.phone.SecLsScrimControlHelper.DEBUG
            if (r1 != 0) goto L45
            r1 = 0
            int r4 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r4 != 0) goto L26
            r4 = r2
            goto L27
        L26:
            r4 = r3
        L27:
            if (r4 != 0) goto L45
            r4 = 1065353216(0x3f800000, float:1.0)
            int r6 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r6 != 0) goto L31
            r6 = r2
            goto L32
        L31:
            r6 = r3
        L32:
            if (r6 != 0) goto L45
            int r6 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r6 != 0) goto L3a
            r6 = r2
            goto L3b
        L3a:
            r6 = r3
        L3b:
            if (r6 != 0) goto L45
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 != 0) goto L42
            goto L43
        L42:
            r2 = r3
        L43:
            if (r2 == 0) goto L59
        L45:
            java.lang.Float r6 = java.lang.Float.valueOf(r0)
            r0 = 3
            r1 = 0
            leaveLog$default(r5, r1, r1, r6, r0)
            goto L59
        L4f:
            r5.revealAmount = r6
            com.android.systemui.statusbar.LightRevealEffect r0 = r5.revealEffect
            r0.setRevealAmountOnScrim(r6, r5)
            r5.updateScrimOpaque()
        L59:
            float r6 = r5.revealAmount
            r0 = 100
            float r0 = (float) r0
            float r6 = r6 * r0
            int r6 = (int) r6
            r0 = 4096(0x1000, double:2.0237E-320)
            java.lang.String r2 = "light_reveal_amount"
            android.os.Trace.traceCounter(r0, r2, r6)
            r5.invalidate()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.LightRevealScrim.setRevealAmount(float):void");
    }

    public final void setRevealEffect(LightRevealEffect lightRevealEffect) {
        if (!Intrinsics.areEqual(this.revealEffect, lightRevealEffect)) {
            this.revealEffect = lightRevealEffect;
            lightRevealEffect.setRevealAmountOnScrim(this.revealAmount, this);
            invalidate();
        }
    }

    public final void setRevealGradientBounds(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        this.revealGradientWidth = f5;
        float f6 = f4 - f2;
        this.revealGradientHeight = f6;
        PointF pointF = this.revealGradientCenter;
        pointF.x = (f5 / 2.0f) + f;
        pointF.y = (f6 / 2.0f) + f2;
    }

    public final void setRevealGradientEndColorAlpha(float f) {
        boolean z;
        if (this.revealGradientEndColorAlpha == f) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            this.revealGradientEndColorAlpha = f;
            setPaintColorFilter();
        }
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        if (LsRune.AOD_LIGHT_REVEAL) {
            int visibility = getVisibility();
            super.setVisibility(i);
            updateScrimOpaque();
            if (visibility != i) {
                leaveLog$default(this, Integer.valueOf(visibility), null, null, 6);
                return;
            }
            return;
        }
        super.setVisibility(i);
        updateScrimOpaque();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (getVisibility() == 0) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateScrimOpaque() {
        /*
            r4 = this;
            float r0 = r4.revealAmount
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r1 = 1
            r2 = 0
            if (r0 != 0) goto Lb
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            if (r0 == 0) goto L24
            float r0 = r4.getAlpha()
            r3 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L1a
            r0 = r1
            goto L1b
        L1a:
            r0 = r2
        L1b:
            if (r0 == 0) goto L24
            int r0 = r4.getVisibility()
            if (r0 != 0) goto L24
            goto L25
        L24:
            r1 = r2
        L25:
            boolean r0 = r4.isScrimOpaque
            if (r0 == r1) goto L38
            r4.isScrimOpaque = r1
            java.util.function.Consumer r4 = r4.isScrimOpaqueChangedListener
            if (r4 == 0) goto L30
            goto L31
        L30:
            r4 = 0
        L31:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            r4.accept(r0)
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.LightRevealScrim.updateScrimOpaque():void");
    }

    public LightRevealScrim(Context context, AttributeSet attributeSet, Integer num) {
        this(context, attributeSet, num, null, 8, null);
    }

    public /* synthetic */ LightRevealScrim(Context context, AttributeSet attributeSet, Integer num, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : num2);
    }

    public LightRevealScrim(Context context, AttributeSet attributeSet, Integer num, Integer num2) {
        super(context, attributeSet);
        this.revealAmount = 1.0f;
        this.revealEffect = LiftReveal.INSTANCE;
        this.revealGradientCenter = new PointF();
        this.viewWidth = num != null ? num.intValue() : 0;
        this.viewHeight = num2 != null ? num2.intValue() : 0;
        this.revealGradientEndColor = EmergencyPhoneWidget.BG_COLOR;
        this.interpolatedRevealAmount = 1.0f;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(EmergencyPhoneWidget.BG_COLOR);
        this.dimPaint = paint;
        Paint paint2 = new Paint();
        paint2.setShader(new RadialGradient(0.0f, 0.0f, 1.0f, new int[]{0, -1}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        this.gradientPaint = paint2;
        this.shaderGradientMatrix = new Matrix();
        this.revealEffect.setRevealAmountOnScrim(this.revealAmount, this);
        setPaintColorFilter();
        invalidate();
        PanelScreenShotLogger.INSTANCE.addLogProvider("LightRevealScrim", this);
    }
}
