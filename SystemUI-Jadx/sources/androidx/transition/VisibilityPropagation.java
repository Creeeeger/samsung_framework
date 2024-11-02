package androidx.transition;

import android.view.View;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class VisibilityPropagation extends TransitionPropagation {
    public static final String[] VISIBILITY_PROPAGATION_VALUES = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    public static int getViewCoordinate(TransitionValues transitionValues, int i) {
        int[] iArr;
        if (transitionValues == null || (iArr = (int[]) transitionValues.values.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    @Override // androidx.transition.TransitionPropagation
    public final void captureValues(TransitionValues transitionValues) {
        HashMap hashMap = (HashMap) transitionValues.values;
        Integer num = (Integer) hashMap.get("android:visibility:visibility");
        View view = transitionValues.view;
        if (num == null) {
            num = Integer.valueOf(view.getVisibility());
        }
        hashMap.put("android:visibilityPropagation:visibility", num);
        view.getLocationOnScreen(r1);
        int round = Math.round(view.getTranslationX()) + r1[0];
        int[] iArr = {round};
        iArr[0] = (view.getWidth() / 2) + round;
        int round2 = Math.round(view.getTranslationY()) + iArr[1];
        iArr[1] = round2;
        iArr[1] = (view.getHeight() / 2) + round2;
        hashMap.put("android:visibilityPropagation:center", iArr);
    }

    @Override // androidx.transition.TransitionPropagation
    public final void getPropagationProperties() {
    }
}
