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

/* loaded from: classes.dex */
public final class StrokeContent extends BaseStrokeContent {
    private final ColorKeyframeAnimation colorAnimation;
    private ValueCallbackKeyframeAnimation colorFilterAnimation;
    private final boolean hidden;
    private final BaseLayer layer;
    private final String name;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StrokeContent(com.airbnb.lottie.LottieDrawable r13, com.airbnb.lottie.model.layer.BaseLayer r14, com.airbnb.lottie.model.content.ShapeStroke r15) {
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
            r12.layer = r14
            java.lang.String r13 = r15.getName()
            r12.name = r13
            boolean r13 = r15.isHidden()
            r12.hidden = r13
            com.airbnb.lottie.model.animatable.AnimatableColorValue r13 = r15.getColor()
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r13 = r13.createAnimation()
            r15 = r13
            com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation r15 = (com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation) r15
            r12.colorAnimation = r15
            r13.addUpdateListener(r12)
            r14.addAnimation(r13)
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
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback, null);
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
        int intValue = this.colorAnimation.getIntValue();
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
