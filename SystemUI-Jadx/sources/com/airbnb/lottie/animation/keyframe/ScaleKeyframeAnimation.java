package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScaleKeyframeAnimation extends KeyframeAnimation {
    public final ScaleXY scaleXY;

    public ScaleKeyframeAnimation(List<Keyframe> list) {
        super(list);
        this.scaleXY = new ScaleXY();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        Object obj;
        ScaleXY scaleXY;
        Object obj2 = keyframe.startValue;
        if (obj2 != null && (obj = keyframe.endValue) != null) {
            ScaleXY scaleXY2 = (ScaleXY) obj2;
            ScaleXY scaleXY3 = (ScaleXY) obj;
            LottieValueCallback lottieValueCallback = this.valueCallback;
            if (lottieValueCallback == null || (scaleXY = (ScaleXY) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), scaleXY2, scaleXY3, f, getLinearCurrentKeyframeProgress(), this.progress)) == null) {
                float f2 = scaleXY2.scaleX;
                float f3 = scaleXY3.scaleX;
                PointF pointF = MiscUtils.pathFromDataCurrentPoint;
                float m = DependencyGraph$$ExternalSyntheticOutline0.m(f3, f2, f, f2);
                float f4 = scaleXY2.scaleY;
                float m2 = DependencyGraph$$ExternalSyntheticOutline0.m(scaleXY3.scaleY, f4, f, f4);
                ScaleXY scaleXY4 = this.scaleXY;
                scaleXY4.scaleX = m;
                scaleXY4.scaleY = m2;
                return scaleXY4;
            }
            return scaleXY;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
