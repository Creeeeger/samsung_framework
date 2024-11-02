package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class IntegerKeyframeAnimation extends KeyframeAnimation {
    public IntegerKeyframeAnimation(List<Keyframe> list) {
        super(list);
    }

    public final int getIntValue(Keyframe keyframe, float f) {
        Integer num;
        if (keyframe.startValue != null && keyframe.endValue != null) {
            LottieValueCallback lottieValueCallback = this.valueCallback;
            Object obj = keyframe.startValue;
            if (lottieValueCallback != null && (num = (Integer) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), (Integer) obj, (Integer) keyframe.endValue, f, getLinearCurrentKeyframeProgress(), this.progress)) != null) {
                return num.intValue();
            }
            if (keyframe.startValueInt == 784923401) {
                keyframe.startValueInt = ((Integer) obj).intValue();
            }
            int i = keyframe.startValueInt;
            if (keyframe.endValueInt == 784923401) {
                keyframe.endValueInt = ((Integer) keyframe.endValue).intValue();
            }
            int i2 = keyframe.endValueInt;
            PointF pointF = MiscUtils.pathFromDataCurrentPoint;
            return (int) ((f * (i2 - i)) + i);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        return Integer.valueOf(getIntValue(keyframe, f));
    }
}
