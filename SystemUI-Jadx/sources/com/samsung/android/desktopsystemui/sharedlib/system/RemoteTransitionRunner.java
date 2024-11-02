package com.samsung.android.desktopsystemui.sharedlib.system;

import android.os.IBinder;
import android.view.SurfaceControl;
import android.window.TransitionInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface RemoteTransitionRunner {
    void startAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, Runnable runnable);

    default void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, Runnable runnable) {
    }
}
