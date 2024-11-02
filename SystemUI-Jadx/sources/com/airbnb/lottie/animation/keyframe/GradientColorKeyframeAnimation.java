package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GradientColorKeyframeAnimation extends KeyframeAnimation {
    public final GradientColor gradientColor;

    public GradientColorKeyframeAnimation(List<Keyframe> list) {
        super(list);
        GradientColor gradientColor = (GradientColor) list.get(0).startValue;
        int length = gradientColor != null ? gradientColor.colors.length : 0;
        this.gradientColor = new GradientColor(new float[length], new int[length]);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        GradientColor gradientColor = (GradientColor) keyframe.startValue;
        GradientColor gradientColor2 = (GradientColor) keyframe.endValue;
        GradientColor gradientColor3 = this.gradientColor;
        gradientColor3.getClass();
        int[] iArr = gradientColor.colors;
        int length = iArr.length;
        int[] iArr2 = gradientColor2.colors;
        if (length == iArr2.length) {
            for (int i = 0; i < iArr.length; i++) {
                float f2 = gradientColor.positions[i];
                float f3 = gradientColor2.positions[i];
                PointF pointF = MiscUtils.pathFromDataCurrentPoint;
                gradientColor3.positions[i] = DependencyGraph$$ExternalSyntheticOutline0.m(f3, f2, f, f2);
                gradientColor3.colors[i] = GammaEvaluator.evaluate(f, iArr[i], iArr2[i]);
            }
            return gradientColor3;
        }
        StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
        sb.append(iArr.length);
        sb.append(" vs ");
        throw new IllegalArgumentException(ConstraintWidget$$ExternalSyntheticOutline0.m(sb, iArr2.length, ")"));
    }
}
