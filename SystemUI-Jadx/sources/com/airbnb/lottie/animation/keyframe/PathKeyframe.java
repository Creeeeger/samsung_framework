package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PathKeyframe extends Keyframe {
    public Path path;
    public final Keyframe pointKeyFrame;

    public PathKeyframe(LottieComposition lottieComposition, Keyframe keyframe) {
        super(lottieComposition, (PointF) keyframe.startValue, (PointF) keyframe.endValue, keyframe.interpolator, keyframe.xInterpolator, keyframe.yInterpolator, keyframe.startFrame, keyframe.endFrame);
        this.pointKeyFrame = keyframe;
        createPath();
    }

    public final void createPath() {
        boolean z;
        Object obj;
        Object obj2 = this.endValue;
        Object obj3 = this.startValue;
        if (obj2 != null && obj3 != null && ((PointF) obj3).equals(((PointF) obj2).x, ((PointF) obj2).y)) {
            z = true;
        } else {
            z = false;
        }
        if (obj3 != null && (obj = this.endValue) != null && !z) {
            PointF pointF = (PointF) obj3;
            PointF pointF2 = (PointF) obj;
            Keyframe keyframe = this.pointKeyFrame;
            PointF pointF3 = keyframe.pathCp1;
            PointF pointF4 = keyframe.pathCp2;
            Utils.AnonymousClass1 anonymousClass1 = Utils.threadLocalPathMeasure;
            Path path = new Path();
            path.moveTo(pointF.x, pointF.y);
            if (pointF3 != null && pointF4 != null && (pointF3.length() != 0.0f || pointF4.length() != 0.0f)) {
                float f = pointF3.x + pointF.x;
                float f2 = pointF.y + pointF3.y;
                float f3 = pointF2.x;
                float f4 = f3 + pointF4.x;
                float f5 = pointF2.y;
                path.cubicTo(f, f2, f4, f5 + pointF4.y, f3, f5);
            } else {
                path.lineTo(pointF2.x, pointF2.y);
            }
            this.path = path;
        }
    }
}
