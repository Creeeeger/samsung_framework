package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PathKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AnimatablePathValue implements AnimatableValue {
    public final List keyframes;

    public AnimatablePathValue(List<Keyframe> list) {
        this.keyframes = list;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final BaseKeyframeAnimation createAnimation() {
        List list = this.keyframes;
        if (((Keyframe) list.get(0)).isStatic()) {
            return new PointKeyframeAnimation(list);
        }
        return new PathKeyframeAnimation(list);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final List getKeyframes() {
        return this.keyframes;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final boolean isStatic() {
        List list = this.keyframes;
        if (list.size() != 1 || !((Keyframe) list.get(0)).isStatic()) {
            return false;
        }
        return true;
    }
}
