package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.os.IBinder;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import com.android.wm.shell.freeform.AdjustImeStateController;
import com.android.wm.shell.freeform.FreeformTaskTransitionHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface WindowDecorViewModel {
    default AdjustImeStateController asAdjustImeStateController() {
        return null;
    }

    void destroyWindowDecoration(ActivityManager.RunningTaskInfo runningTaskInfo);

    void onTaskChanging(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2);

    void onTaskClosing(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2);

    void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo);

    boolean onTaskOpening(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2);

    void onTransitionFinished(IBinder iBinder);

    void onTransitionMerged(IBinder iBinder, IBinder iBinder2);

    void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, TransitionInfo.Change change);

    void setFreeformTaskTransitionStarter(FreeformTaskTransitionHandler freeformTaskTransitionHandler);

    default void onTaskToBack(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    default void onTaskToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    default void onInit() {
    }
}
