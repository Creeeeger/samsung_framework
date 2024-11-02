package com.android.systemui.statusbar.events;

import androidx.core.animation.Animator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface SystemStatusAnimationCallback {
    Animator onSystemEventAnimationBegin(boolean z);

    Animator onSystemEventAnimationFinish(boolean z, boolean z2);

    default void onHidePersistentDot(boolean z) {
    }

    default void onSystemStatusAnimationTransitionToPersistentDot(String str) {
    }
}
