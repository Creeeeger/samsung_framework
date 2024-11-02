package androidx.constraintlayout.motion.widget;

import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewTransitionController {
    public ArrayList animations;
    public final MotionLayout mMotionLayout;
    public HashSet mRelatedViews;
    public final ArrayList viewTransitions = new ArrayList();
    public final String TAG = "ViewTransitionController";
    public final ArrayList removeList = new ArrayList();

    public ViewTransitionController(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }
}
