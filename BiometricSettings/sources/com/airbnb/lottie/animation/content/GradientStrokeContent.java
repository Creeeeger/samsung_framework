package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.LottieValueCallback;

/* loaded from: classes.dex */
public final class GradientStrokeContent extends BaseStrokeContent {
    private final RectF boundsRect;
    private final int cacheSteps;
    private final GradientColorKeyframeAnimation colorAnimation;
    private ValueCallbackKeyframeAnimation colorCallbackAnimation;
    private final PointKeyframeAnimation endPointAnimation;
    private final boolean hidden;
    private final LongSparseArray<LinearGradient> linearGradientCache;
    private final String name;
    private final LongSparseArray<RadialGradient> radialGradientCache;
    private final PointKeyframeAnimation startPointAnimation;
    private final GradientType type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public GradientStrokeContent(com.airbnb.lottie.LottieDrawable r13, com.airbnb.lottie.model.layer.BaseLayer r14, com.airbnb.lottie.model.content.GradientStroke r15) {
        /*
            r12 = this;
            com.airbnb.lottie.model.content.ShapeStroke$LineCapType r0 = r15.getCapType()
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == 0) goto L13
            if (r0 == r1) goto L10
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.SQUARE
            goto L15
        L10:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.ROUND
            goto L15
        L13:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.BUTT
        L15:
            r5 = r0
            com.airbnb.lottie.model.content.ShapeStroke$LineJoinType r0 = r15.getJoinType()
            int r0 = r0.ordinal()
            if (r0 == 0) goto L2d
            if (r0 == r1) goto L2a
            r1 = 2
            if (r0 == r1) goto L27
            r0 = 0
            goto L2f
        L27:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.BEVEL
            goto L2f
        L2a:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.ROUND
            goto L2f
        L2d:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.MITER
        L2f:
            r6 = r0
            float r7 = r15.getMiterLimit()
            com.airbnb.lottie.model.animatable.AnimatableIntegerValue r8 = r15.getOpacity()
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r9 = r15.getWidth()
            java.util.List r10 = r15.getLineDashPattern()
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r11 = r15.getDashOffset()
            r2 = r12
            r3 = r13
            r4 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            androidx.collection.LongSparseArray r0 = new androidx.collection.LongSparseArray
            r0.<init>()
            r12.linearGradientCache = r0
            androidx.collection.LongSparseArray r0 = new androidx.collection.LongSparseArray
            r0.<init>()
            r12.radialGradientCache = r0
            android.graphics.RectF r0 = new android.graphics.RectF
            r0.<init>()
            r12.boundsRect = r0
            java.lang.String r0 = r15.getName()
            r12.name = r0
            com.airbnb.lottie.model.content.GradientType r0 = r15.getGradientType()
            r12.type = r0
            boolean r0 = r15.isHidden()
            r12.hidden = r0
            com.airbnb.lottie.LottieComposition r13 = r13.getComposition()
            float r13 = r13.getDuration()
            r0 = 1107296256(0x42000000, float:32.0)
            float r13 = r13 / r0
            int r13 = (int) r13
            r12.cacheSteps = r13
            com.airbnb.lottie.model.animatable.AnimatableGradientColorValue r13 = r15.getGradientColor()
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r13 = r13.createAnimation()
            r0 = r13
            com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation r0 = (com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation) r0
            r12.colorAnimation = r0
            r13.addUpdateListener(r12)
            r14.addAnimation(r13)
            com.airbnb.lottie.model.animatable.AnimatablePointValue r13 = r15.getStartPoint()
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r13 = r13.createAnimation()
            r0 = r13
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r0 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r0
            r12.startPointAnimation = r0
            r13.addUpdateListener(r12)
            r14.addAnimation(r13)
            com.airbnb.lottie.model.animatable.AnimatablePointValue r13 = r15.getEndPoint()
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r13 = r13.createAnimation()
            r15 = r13
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r15 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r15
            r12.endPointAnimation = r15
            r13.addUpdateListener(r12)
            r14.addAnimation(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.GradientStrokeContent.<init>(com.airbnb.lottie.LottieDrawable, com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.content.GradientStroke):void");
    }

    private int[] applyDynamicColorsIfNeeded(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.colorCallbackAnimation;
        if (valueCallbackKeyframeAnimation != null) {
            Integer[] numArr = (Integer[]) valueCallbackKeyframeAnimation.getValue();
            int i = 0;
            if (iArr.length == numArr.length) {
                while (i < iArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i < numArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            }
        }
        return iArr;
    }

    private int getGradientHash() {
        float progress = this.startPointAnimation.getProgress();
        float f = this.cacheSteps;
        int round = Math.round(progress * f);
        int round2 = Math.round(this.endPointAnimation.getProgress() * f);
        int round3 = Math.round(this.colorAnimation.getProgress() * f);
        int i = round != 0 ? round * 527 : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    public final void addValueCallback(LottieValueCallback lottieValueCallback, Object obj) {
        super.addValueCallback(lottieValueCallback, obj);
        if (obj == LottieProperty.GRADIENT_COLOR) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.colorCallbackAnimation;
            BaseLayer baseLayer = this.layer;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.colorCallbackAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback, null);
            this.colorCallbackAnimation = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            baseLayer.addAnimation(this.colorCallbackAnimation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        if (this.hidden) {
            return;
        }
        getBounds(this.boundsRect, matrix, false);
        GradientType gradientType = GradientType.LINEAR;
        GradientType gradientType2 = this.type;
        GradientColorKeyframeAnimation gradientColorKeyframeAnimation = this.colorAnimation;
        PointKeyframeAnimation pointKeyframeAnimation = this.endPointAnimation;
        PointKeyframeAnimation pointKeyframeAnimation2 = this.startPointAnimation;
        if (gradientType2 == gradientType) {
            long gradientHash = getGradientHash();
            LongSparseArray<LinearGradient> longSparseArray = this.linearGradientCache;
            shader = (LinearGradient) longSparseArray.get(gradientHash);
            if (shader == null) {
                PointF value = pointKeyframeAnimation2.getValue();
                PointF value2 = pointKeyframeAnimation.getValue();
                GradientColor value3 = gradientColorKeyframeAnimation.getValue();
                shader = new LinearGradient(value.x, value.y, value2.x, value2.y, applyDynamicColorsIfNeeded(value3.getColors()), value3.getPositions(), Shader.TileMode.CLAMP);
                longSparseArray.put(gradientHash, shader);
            }
        } else {
            long gradientHash2 = getGradientHash();
            LongSparseArray<RadialGradient> longSparseArray2 = this.radialGradientCache;
            shader = (RadialGradient) longSparseArray2.get(gradientHash2);
            if (shader == null) {
                PointF value4 = pointKeyframeAnimation2.getValue();
                PointF value5 = pointKeyframeAnimation.getValue();
                GradientColor value6 = gradientColorKeyframeAnimation.getValue();
                int[] applyDynamicColorsIfNeeded = applyDynamicColorsIfNeeded(value6.getColors());
                float[] positions = value6.getPositions();
                shader = new RadialGradient(value4.x, value4.y, (float) Math.hypot(value5.x - r10, value5.y - r11), applyDynamicColorsIfNeeded, positions, Shader.TileMode.CLAMP);
                longSparseArray2.put(gradientHash2, shader);
            }
        }
        shader.setLocalMatrix(matrix);
        this.paint.setShader(shader);
        super.draw(canvas, matrix, i);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.name;
    }
}
