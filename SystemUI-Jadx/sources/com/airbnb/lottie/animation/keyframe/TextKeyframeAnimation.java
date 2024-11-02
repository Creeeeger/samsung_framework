package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TextKeyframeAnimation extends KeyframeAnimation {
    public TextKeyframeAnimation(List<Keyframe> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        Object obj;
        float floatValue;
        DocumentData documentData;
        LottieValueCallback lottieValueCallback = this.valueCallback;
        Object obj2 = keyframe.startValue;
        if (lottieValueCallback != null) {
            float f2 = keyframe.startFrame;
            Float f3 = keyframe.endFrame;
            if (f3 == null) {
                floatValue = Float.MAX_VALUE;
            } else {
                floatValue = f3.floatValue();
            }
            DocumentData documentData2 = (DocumentData) obj2;
            Object obj3 = keyframe.endValue;
            if (obj3 == null) {
                documentData = documentData2;
            } else {
                documentData = (DocumentData) obj3;
            }
            return (DocumentData) lottieValueCallback.getValueInternal(f2, floatValue, documentData2, documentData, f, getInterpolatedCurrentKeyframeProgress(), this.progress);
        }
        if (f == 1.0f && (obj = keyframe.endValue) != null) {
            return (DocumentData) obj;
        }
        return (DocumentData) obj2;
    }
}
