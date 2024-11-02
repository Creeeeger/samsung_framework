package com.android.systemui.media.audiovisseekbar.renderer.track.auto;

import android.animation.ArgbEvaluator;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.android.systemui.media.audiovisseekbar.config.AudioVisSeekBarConfig;
import com.android.systemui.media.audiovisseekbar.config.RendererConfig;
import com.android.systemui.media.audiovisseekbar.renderer.BaseRenderer;
import com.android.systemui.media.audiovisseekbar.utils.DimensionUtilsKt;
import com.android.systemui.media.audiovisseekbar.utils.animator.SingleStateValueAnimator;
import com.android.systemui.media.audiovisseekbar.utils.easing.CustomPathInterpolator;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MultiWaveAreaTrackRenderer extends BaseRenderer {
    public final int cycleCount;
    public final ArgbEvaluator evaluator;
    public final RectF leftCornerBounds;
    public final CustomPathInterpolator leftTopCornerPath;
    public final int numWaves;
    public final Path path;
    public final Paint pathPaint;
    public float phase;
    public final float phaseShift;
    public final CustomPathInterpolator scalePath;
    public final int stepX;
    public final SingleStateValueAnimator widthScale;

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
    }

    public MultiWaveAreaTrackRenderer(View view, AudioVisSeekBarConfig audioVisSeekBarConfig) {
        super(view, audioVisSeekBarConfig);
        this.numWaves = 2;
        this.cycleCount = 3;
        this.phaseShift = -0.025f;
        this.stepX = 2;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.pathPaint = paint;
        this.path = new Path();
        this.evaluator = new ArgbEvaluator();
        this.scalePath = new CustomPathInterpolator();
        this.widthScale = new SingleStateValueAnimator(0.0f, 200L, null, null, 13, null);
        this.leftTopCornerPath = new CustomPathInterpolator();
        this.leftCornerBounds = new RectF();
    }

    @Override // com.android.systemui.media.audiovisseekbar.renderer.BaseRenderer
    public final void onLayout(RectF rectF) {
        super.onLayout(rectF);
        RendererConfig.INSTANCE.getClass();
        float dpToPx = DimensionUtilsKt.dpToPx(8.0f) / 2.0f;
        float centerY = getCenterY() - dpToPx;
        float centerY2 = getCenterY() + dpToPx;
        RectF rectF2 = this.leftCornerBounds;
        float f = rectF.left;
        rectF2.set(f, centerY, (dpToPx * 2) + f, centerY2);
        CustomPathInterpolator customPathInterpolator = this.leftTopCornerPath;
        customPathInterpolator.reset();
        customPathInterpolator.addArc(rectF2, 180.0f, 90.0f);
        customPathInterpolator.updatePath();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    @Override // com.android.systemui.media.audiovisseekbar.renderer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onThumbLocationChanged(float r12) {
        /*
            r11 = this;
            super.onThumbLocationChanged(r12)
            android.graphics.RectF r12 = r11.bounds
            float r0 = r12.width()
            int r0 = (int) r0
            r1 = 1090519040(0x41000000, float:8.0)
            r2 = 1
            r3 = 0
            if (r0 < 0) goto L1e
            com.android.systemui.media.audiovisseekbar.config.RendererConfig r4 = com.android.systemui.media.audiovisseekbar.config.RendererConfig.INSTANCE
            r4.getClass()
            float r4 = com.android.systemui.media.audiovisseekbar.utils.DimensionUtilsKt.dpToPx(r1)
            int r4 = (int) r4
            if (r0 >= r4) goto L1e
            r4 = r2
            goto L1f
        L1e:
            r4 = r3
        L1f:
            r5 = 2
            r6 = 1065353216(0x3f800000, float:1.0)
            com.android.systemui.media.audiovisseekbar.utils.animator.SingleStateValueAnimator r7 = r11.widthScale
            if (r4 == 0) goto L2d
            r0 = 1036831949(0x3dcccccd, float:0.1)
            r7.animateTo(r0)
            goto L65
        L2d:
            com.android.systemui.media.audiovisseekbar.config.RendererConfig r4 = com.android.systemui.media.audiovisseekbar.config.RendererConfig.INSTANCE
            r4.getClass()
            float r4 = com.android.systemui.media.audiovisseekbar.utils.DimensionUtilsKt.dpToPx(r1)
            int r4 = (int) r4
            android.view.View r8 = r11.view
            int r9 = r8.getWidth()
            int r10 = r11.cycleCount
            int r10 = r10 * r5
            int r9 = r9 / r10
            if (r0 >= r9) goto L47
            if (r4 > r0) goto L47
            r4 = r2
            goto L48
        L47:
            r4 = r3
        L48:
            if (r4 == 0) goto L51
            r0 = 1050253722(0x3e99999a, float:0.3)
            r7.animateTo(r0)
            goto L65
        L51:
            int r4 = r8.getWidth()
            int r4 = r4 / r10
            int r8 = r8.getWidth()
            if (r0 > r8) goto L5f
            if (r4 > r0) goto L5f
            goto L60
        L5f:
            r2 = r3
        L60:
            if (r2 == 0) goto L65
            r7.animateTo(r6)
        L65:
            com.android.systemui.media.audiovisseekbar.utils.easing.CustomPathInterpolator r11 = r11.scalePath
            r11.reset()
            com.android.systemui.media.audiovisseekbar.config.RendererConfig r0 = com.android.systemui.media.audiovisseekbar.config.RendererConfig.INSTANCE
            r0.getClass()
            float r0 = com.android.systemui.media.audiovisseekbar.utils.DimensionUtilsKt.dpToPx(r1)
            r2 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 / r2
            r3 = 0
            r11.moveTo(r0, r3)
            float r0 = com.android.systemui.media.audiovisseekbar.utils.DimensionUtilsKt.dpToPx(r1)
            float r0 = r0 / r2
            float r1 = r12.width()
            float r2 = (float) r5
            float r1 = r1 / r2
            r11.quadTo(r0, r6, r1, r6)
            float r0 = r12.width()
            float r12 = r12.width()
            r11.quadTo(r0, r6, r12, r3)
            r11.updatePath()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.audiovisseekbar.renderer.track.auto.MultiWaveAreaTrackRenderer.onThumbLocationChanged(float):void");
    }
}
