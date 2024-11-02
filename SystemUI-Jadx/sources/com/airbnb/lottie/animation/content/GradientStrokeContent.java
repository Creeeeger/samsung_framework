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

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GradientStrokeContent extends BaseStrokeContent {
    public final RectF boundsRect;
    public final int cacheSteps;
    public final GradientColorKeyframeAnimation colorAnimation;
    public ValueCallbackKeyframeAnimation colorCallbackAnimation;
    public final PointKeyframeAnimation endPointAnimation;
    public final boolean hidden;
    public final LongSparseArray linearGradientCache;
    public final String name;
    public final LongSparseArray radialGradientCache;
    public final PointKeyframeAnimation startPointAnimation;
    public final GradientType type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public GradientStrokeContent(com.airbnb.lottie.LottieDrawable r14, com.airbnb.lottie.model.layer.BaseLayer r15, com.airbnb.lottie.model.content.GradientStroke r16) {
        /*
            r13 = this;
            r10 = r13
            r11 = r15
            r12 = r16
            com.airbnb.lottie.model.content.ShapeStroke$LineCapType r0 = r12.capType
            r0.getClass()
            int[] r1 = com.airbnb.lottie.model.content.ShapeStroke.AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 2
            r2 = 1
            if (r0 == r2) goto L1d
            if (r0 == r1) goto L1a
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.SQUARE
            goto L1f
        L1a:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.ROUND
            goto L1f
        L1d:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.BUTT
        L1f:
            r3 = r0
            com.airbnb.lottie.model.content.ShapeStroke$LineJoinType r0 = r12.joinType
            r0.getClass()
            int[] r4 = com.airbnb.lottie.model.content.ShapeStroke.AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType
            int r0 = r0.ordinal()
            r0 = r4[r0]
            if (r0 == r2) goto L3c
            if (r0 == r1) goto L39
            r1 = 3
            if (r0 == r1) goto L36
            r0 = 0
            goto L3e
        L36:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.ROUND
            goto L3e
        L39:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.MITER
            goto L3e
        L3c:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.BEVEL
        L3e:
            r4 = r0
            float r5 = r12.miterLimit
            com.airbnb.lottie.model.animatable.AnimatableIntegerValue r6 = r12.opacity
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r7 = r12.width
            java.util.List r8 = r12.lineDashPattern
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r9 = r12.dashOffset
            r0 = r13
            r1 = r14
            r2 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            androidx.collection.LongSparseArray r0 = new androidx.collection.LongSparseArray
            r0.<init>()
            r10.linearGradientCache = r0
            androidx.collection.LongSparseArray r0 = new androidx.collection.LongSparseArray
            r0.<init>()
            r10.radialGradientCache = r0
            android.graphics.RectF r0 = new android.graphics.RectF
            r0.<init>()
            r10.boundsRect = r0
            java.lang.String r0 = r12.name
            r10.name = r0
            com.airbnb.lottie.model.content.GradientType r0 = r12.gradientType
            r10.type = r0
            boolean r0 = r12.hidden
            r10.hidden = r0
            r0 = r14
            com.airbnb.lottie.LottieComposition r0 = r0.composition
            float r0 = r0.getDuration()
            r1 = 1107296256(0x42000000, float:32.0)
            float r0 = r0 / r1
            int r0 = (int) r0
            r10.cacheSteps = r0
            com.airbnb.lottie.model.animatable.AnimatableGradientColorValue r0 = r12.gradientColor
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r0 = r0.createAnimation()
            r1 = r0
            com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation r1 = (com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation) r1
            r10.colorAnimation = r1
            r0.addUpdateListener(r13)
            r15.addAnimation(r0)
            com.airbnb.lottie.model.animatable.AnimatablePointValue r0 = r12.startPoint
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r0 = r0.createAnimation()
            r1 = r0
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r1 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r1
            r10.startPointAnimation = r1
            r0.addUpdateListener(r13)
            r15.addAnimation(r0)
            com.airbnb.lottie.model.animatable.AnimatablePointValue r0 = r12.endPoint
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r0 = r0.createAnimation()
            r1 = r0
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r1 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r1
            r10.endPointAnimation = r1
            r0.addUpdateListener(r13)
            r15.addAnimation(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.GradientStrokeContent.<init>(com.airbnb.lottie.LottieDrawable, com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.content.GradientStroke):void");
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
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.colorCallbackAnimation = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            baseLayer.addAnimation(this.colorCallbackAnimation);
        }
    }

    public final int[] applyDynamicColorsIfNeeded(int[] iArr) {
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
            LongSparseArray longSparseArray = this.linearGradientCache;
            shader = (LinearGradient) longSparseArray.get(gradientHash);
            if (shader == null) {
                PointF pointF = (PointF) pointKeyframeAnimation2.getValue();
                PointF pointF2 = (PointF) pointKeyframeAnimation.getValue();
                GradientColor gradientColor = (GradientColor) gradientColorKeyframeAnimation.getValue();
                shader = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, applyDynamicColorsIfNeeded(gradientColor.colors), gradientColor.positions, Shader.TileMode.CLAMP);
                longSparseArray.put(gradientHash, shader);
            }
        } else {
            long gradientHash2 = getGradientHash();
            LongSparseArray longSparseArray2 = this.radialGradientCache;
            shader = (RadialGradient) longSparseArray2.get(gradientHash2);
            if (shader == null) {
                PointF pointF3 = (PointF) pointKeyframeAnimation2.getValue();
                PointF pointF4 = (PointF) pointKeyframeAnimation.getValue();
                GradientColor gradientColor2 = (GradientColor) gradientColorKeyframeAnimation.getValue();
                int[] applyDynamicColorsIfNeeded = applyDynamicColorsIfNeeded(gradientColor2.colors);
                float[] fArr = gradientColor2.positions;
                shader = new RadialGradient(pointF3.x, pointF3.y, (float) Math.hypot(pointF4.x - r10, pointF4.y - r11), applyDynamicColorsIfNeeded, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(gradientHash2, shader);
            }
        }
        shader.setLocalMatrix(matrix);
        this.paint.setShader(shader);
        super.draw(canvas, matrix, i);
    }

    public final int getGradientHash() {
        int i;
        float f = this.startPointAnimation.progress;
        float f2 = this.cacheSteps;
        int round = Math.round(f * f2);
        int round2 = Math.round(this.endPointAnimation.progress * f2);
        int round3 = Math.round(this.colorAnimation.progress * f2);
        if (round != 0) {
            i = round * 527;
        } else {
            i = 17;
        }
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        if (round3 != 0) {
            return i * 31 * round3;
        }
        return i;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.name;
    }
}
