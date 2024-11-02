package com.samsung.systemui.splugins.pluginlock;

import android.view.MotionEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface PluginLockTouchManager {
    boolean isIntercepting();

    boolean isTouchOnItemViewArea(MotionEvent motionEvent);

    boolean onAnimatorTouchEvent(MotionEvent motionEvent);

    boolean onTouchEvent(MotionEvent motionEvent);

    void setFullscreenMode(boolean z);

    void setIntercept(boolean z);
}
