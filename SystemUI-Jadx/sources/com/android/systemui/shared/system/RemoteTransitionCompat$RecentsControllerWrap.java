package com.android.systemui.shared.system;

import android.app.ActivityTaskManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.IRecentsAnimationController;
import android.view.SurfaceControl;
import android.window.PictureInPictureSurfaceTransaction;
import android.window.TaskSnapshot;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
class RemoteTransitionCompat$RecentsControllerWrap extends IRecentsAnimationController.Default {
    public PictureInPictureSurfaceTransaction mPipTransaction = null;
    public boolean mWillFinishToHome = false;

    public final void detachNavigationBarFromApp(boolean z) {
        try {
            ActivityTaskManager.getService().detachNavigationBarFromApp((IBinder) null);
        } catch (RemoteException e) {
            Log.e("RemoteTransitionCompat", "Failed to detach the navigation bar from app", e);
        }
    }

    public final void finish(boolean z, boolean z2) {
        Log.e("RemoteTransitionCompat", "Duplicate call to finish", new RuntimeException());
    }

    public final boolean removeTask(int i) {
        return false;
    }

    public final TaskSnapshot screenshotTask(int i) {
        try {
            return ActivityTaskManager.getService().takeTaskSnapshot(i, true);
        } catch (RemoteException e) {
            Log.e("RemoteTransitionCompat", "Failed to screenshot task", e);
            return null;
        }
    }

    public final void setFinishTaskTransaction(int i, PictureInPictureSurfaceTransaction pictureInPictureSurfaceTransaction, SurfaceControl surfaceControl) {
        this.mPipTransaction = pictureInPictureSurfaceTransaction;
    }

    public final void setInputConsumerEnabled(boolean z) {
        if (!z) {
            return;
        }
        try {
            ActivityTaskManager.getService().setFocusedTask(0);
        } catch (RemoteException e) {
            Log.e("RemoteTransitionCompat", "Failed to set focused task", e);
        }
    }

    public final void setWillFinishToHome(boolean z) {
        this.mWillFinishToHome = z;
    }

    public final void animateNavigationBarToApp(long j) {
    }

    public final void setAnimationTargetsBehindSystemBars(boolean z) {
    }

    public final void cleanupScreenshot() {
    }

    public final void setDeferCancelUntilNextTransition(boolean z, boolean z2) {
    }
}
