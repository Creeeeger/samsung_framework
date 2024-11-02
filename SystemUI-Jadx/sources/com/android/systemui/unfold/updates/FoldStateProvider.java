package com.android.systemui.unfold.updates;

import com.android.systemui.unfold.util.CallbackController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface FoldStateProvider extends CallbackController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface FoldUpdatesListener {
        void onFoldUpdate(int i);

        default void onHingeAngleUpdate(float f) {
        }

        default void onUnfoldedScreenAvailable() {
        }
    }
}
