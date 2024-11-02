package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.LottieValueCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StrokeContent extends BaseStrokeContent {
    public final ColorKeyframeAnimation colorAnimation;
    public ValueCallbackKeyframeAnimation colorFilterAnimation;
    public final boolean hidden;
    public final BaseLayer layer;
    public final String name;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StrokeContent(com.airbnb.lottie.LottieDrawable r14, com.airbnb.lottie.model.layer.BaseLayer r15, com.airbnb.lottie.model.content.ShapeStroke r16) {
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
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r9 = r12.offset
            r0 = r13
            r1 = r14
            r2 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r10.layer = r11
            java.lang.String r0 = r12.name
            r10.name = r0
            boolean r0 = r12.hidden
            r10.hidden = r0
            com.airbnb.lottie.model.animatable.AnimatableColorValue r0 = r12.color
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r0 = r0.createAnimation()
            r1 = r0
            com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation r1 = (com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation) r1
            r10.colorAnimation = r1
            r0.addUpdateListener(r13)
            r15.addAnimation(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.StrokeContent.<init>(com.airbnb.lottie.LottieDrawable, com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.content.ShapeStroke):void");
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    public final void addValueCallback(LottieValueCallback lottieValueCallback, Object obj) {
        super.addValueCallback(lottieValueCallback, obj);
        Integer num = LottieProperty.STROKE_COLOR;
        ColorKeyframeAnimation colorKeyframeAnimation = this.colorAnimation;
        if (obj == num) {
            colorKeyframeAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.COLOR_FILTER) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.colorFilterAnimation;
            BaseLayer baseLayer = this.layer;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.colorFilterAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.colorFilterAnimation = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            baseLayer.addAnimation(colorKeyframeAnimation);
        }
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i) {
        if (this.hidden) {
            return;
        }
        ColorKeyframeAnimation colorKeyframeAnimation = this.colorAnimation;
        int intValue = colorKeyframeAnimation.getIntValue(colorKeyframeAnimation.getCurrentKeyframe(), colorKeyframeAnimation.getInterpolatedCurrentKeyframeProgress());
        LPaint lPaint = this.paint;
        lPaint.setColor(intValue);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.colorFilterAnimation;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.getValue());
        }
        super.draw(canvas, matrix, i);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final String getName() {
        return this.name;
    }
}
