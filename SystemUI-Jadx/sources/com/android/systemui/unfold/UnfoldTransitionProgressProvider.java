package com.android.systemui.unfold;

import com.android.systemui.unfold.util.CallbackController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface UnfoldTransitionProgressProvider extends CallbackController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TransitionProgressListener {
        default void onTransitionProgress(float f) {
        }

        default void onTransitionFinished() {
        }

        default void onTransitionFinishing() {
        }

        default void onTransitionStarted() {
        }
    }
}
