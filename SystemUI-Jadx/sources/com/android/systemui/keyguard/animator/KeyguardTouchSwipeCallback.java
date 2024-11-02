package com.android.systemui.keyguard.animator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardTouchSwipeCallback {
    void callUserActivity();

    void onUnlockExecuted();

    default void onAffordanceTap() {
    }

    default void setMotionAborted() {
    }
}
