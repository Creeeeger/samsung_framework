package com.android.wm.shell.pip;

import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda0;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface Pip {
    default boolean isExitingPipTask(int i) {
        return false;
    }

    default void addPipExclusionBoundsChangeListener(Consumer consumer) {
    }

    default void removePipExclusionBoundsChangeListener(Consumer consumer) {
    }

    default void setOnIsInPipStateChangedListener(EdgeBackGestureHandler$$ExternalSyntheticLambda0 edgeBackGestureHandler$$ExternalSyntheticLambda0) {
    }

    default void showPictureInPictureMenu() {
    }

    default void onSystemUiStateChanged(long j, boolean z) {
    }
}
