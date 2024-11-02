package com.airbnb.lottie.value;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class LottieValueCallback {
    public final LottieFrameInfo frameInfo;
    public final Object value;

    public LottieValueCallback() {
        this.frameInfo = new LottieFrameInfo();
        this.value = null;
    }

    public Object getValue(LottieFrameInfo lottieFrameInfo) {
        return this.value;
    }

    public final Object getValueInternal(float f, float f2, Object obj, Object obj2, float f3, float f4, float f5) {
        LottieFrameInfo lottieFrameInfo = this.frameInfo;
        lottieFrameInfo.startFrame = f;
        lottieFrameInfo.endFrame = f2;
        lottieFrameInfo.startValue = obj;
        lottieFrameInfo.endValue = obj2;
        lottieFrameInfo.linearKeyframeProgress = f3;
        lottieFrameInfo.interpolatedKeyframeProgress = f4;
        lottieFrameInfo.overallProgress = f5;
        return getValue(lottieFrameInfo);
    }

    public LottieValueCallback(Object obj) {
        this.frameInfo = new LottieFrameInfo();
        this.value = null;
        this.value = obj;
    }
}
