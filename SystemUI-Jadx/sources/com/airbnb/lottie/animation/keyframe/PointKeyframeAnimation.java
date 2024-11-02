package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PointKeyframeAnimation extends KeyframeAnimation {
    public final PointF point;

    public PointKeyframeAnimation(List<Keyframe> list) {
        super(list);
        this.point = new PointF();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        return getValue(keyframe, f, f, f);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final PointF getValue(Keyframe keyframe, float f, float f2, float f3) {
        Object obj;
        PointF pointF;
        Object obj2 = keyframe.startValue;
        if (obj2 != null && (obj = keyframe.endValue) != null) {
            PointF pointF2 = (PointF) obj2;
            PointF pointF3 = (PointF) obj;
            LottieValueCallback lottieValueCallback = this.valueCallback;
            if (lottieValueCallback != null && (pointF = (PointF) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), pointF2, pointF3, f, getLinearCurrentKeyframeProgress(), this.progress)) != null) {
                return pointF;
            }
            PointF pointF4 = this.point;
            float f4 = pointF2.x;
            float m = DependencyGraph$$ExternalSyntheticOutline0.m(pointF3.x, f4, f2, f4);
            float f5 = pointF2.y;
            pointF4.set(m, ((pointF3.y - f5) * f3) + f5);
            return pointF4;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
