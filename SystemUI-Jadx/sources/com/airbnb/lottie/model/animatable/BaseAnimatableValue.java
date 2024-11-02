package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.value.Keyframe;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BaseAnimatableValue implements AnimatableValue {
    public final List keyframes;

    public BaseAnimatableValue(Object obj) {
        this((List<Keyframe>) Collections.singletonList(new Keyframe(obj)));
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final List getKeyframes() {
        return this.keyframes;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final boolean isStatic() {
        List list = this.keyframes;
        if (list.isEmpty()) {
            return true;
        }
        if (list.size() == 1 && ((Keyframe) list.get(0)).isStatic()) {
            return true;
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        List list = this.keyframes;
        if (!list.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(list.toArray()));
        }
        return sb.toString();
    }

    public BaseAnimatableValue(List<Keyframe> list) {
        this.keyframes = list;
    }
}
