package com.android.wm.shell.compatui;

import android.app.ActivityTaskManager;
import android.app.IActivityTaskManager;
import android.app.TaskInfo;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.view.IWindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.wm.shell.compatui.CompatUIController;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BoundsCompatUIController {
    public final AccessibilityManager mAccessibilityManager;
    public final BoundsCompatUIWindowManager mBoundsCompatUIWindowManager;
    public final CompatUIController.CompatUICallback mCallback;
    public final Context mContext;
    public final CompatUIController mController;
    public boolean mIsRotationFrozen;
    public TaskInfo mTaskInfo;
    public final String TAG = "BoundsCompatUIController";
    public int mOrientationPolicy = 31;
    public int mAlignment = 17;
    public final IWindowManager mWindowManager = WindowManagerGlobal.getWindowManagerService();
    public final IActivityTaskManager mActivityTaskManager = ActivityTaskManager.getService();
    public final Handler mHandler = new Handler(Looper.myLooper());

    public BoundsCompatUIController(Context context, BoundsCompatUIWindowManager boundsCompatUIWindowManager, TaskInfo taskInfo, CompatUIController.CompatUICallback compatUICallback, CompatUIController compatUIController) {
        this.mContext = context;
        this.mBoundsCompatUIWindowManager = boundsCompatUIWindowManager;
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.mTaskInfo = taskInfo;
        this.mCallback = compatUICallback;
        this.mController = compatUIController;
    }

    public static boolean isAlignedVertically(TaskInfo taskInfo) {
        if (CoreRune.FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT && taskInfo.topActivityBounds.width() > taskInfo.topActivityBounds.height()) {
            return true;
        }
        return false;
    }

    public final Rect getActivityBounds() {
        if (CoreRune.FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT) {
            return new Rect(this.mTaskInfo.topActivityBounds);
        }
        return null;
    }

    public final void setBoundsCompatAlignment(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (CoreRune.FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT) {
            int i6 = this.mAlignment;
            int i7 = i6 & 112;
            int i8 = i6 & 7;
            String str = this.TAG;
            if (i == 48) {
                if ((i6 & 80) == 80) {
                    i5 = i8 | 16;
                } else {
                    i5 = i8 | 48;
                }
                this.mAlignment = i5;
            } else if (i == 80) {
                if ((i6 & 48) == 48) {
                    i4 = i8 | 16;
                } else {
                    i4 = i8 | 80;
                }
                this.mAlignment = i4;
            } else if (i == 3) {
                if ((i6 & 5) == 5) {
                    i3 = i7 | 1;
                } else {
                    i3 = i7 | 3;
                }
                this.mAlignment = i3;
            } else if (i == 5) {
                if ((i6 & 3) == 3) {
                    i2 = i7 | 1;
                } else {
                    i2 = i7 | 5;
                }
                this.mAlignment = i2;
            } else {
                Log.i(str, "Nothing to do");
                return;
            }
            try {
                this.mActivityTaskManager.setBoundsCompatAlignment(this.mAlignment);
            } catch (RemoteException e) {
                Log.e(str, "Failed to set bounds compat alignment", e);
            }
        }
    }

    public final void setOrientationControlPolicy(int i) {
        this.mOrientationPolicy = i;
        try {
            this.mActivityTaskManager.setOrientationControlPolicy(UserHandle.getCallingUserId(), this.mTaskInfo.baseActivity.getPackageName(), i);
            IWindowManager iWindowManager = this.mWindowManager;
            iWindowManager.setWindowingMode(0, iWindowManager.getWindowingMode(0));
        } catch (RemoteException e) {
            Log.e(this.TAG, "enableOrientationControlPolicy failed", e);
        }
    }

    public final String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append(this.TAG);
        sb.append("{taskId=");
        sb.append(this.mTaskInfo.taskId);
        sb.append("(");
        sb.append(this.mTaskInfo.baseActivity.getPackageName());
        sb.append("), taskConfig=");
        sb.append(this.mTaskInfo.getConfiguration());
        sb.append(", inSizeCompat=");
        TaskInfo taskInfo = this.mTaskInfo;
        if (taskInfo.topActivityInSizeCompat && !taskInfo.topActivityInFixedAspectRatio && !taskInfo.topActivityInDisplayCompat) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        sb.append(", inFixedAspectRatio=");
        sb.append(this.mTaskInfo.topActivityInFixedAspectRatio);
        sb.append(", inDisplayCompat=");
        sb.append(this.mTaskInfo.topActivityInDisplayCompat);
        sb.append(", rotationFrozen=");
        sb.append(this.mIsRotationFrozen);
        sb.append(", orientationPolicy=");
        sb.append(this.mOrientationPolicy);
        sb.append(", activityBounds=");
        sb.append(this.mTaskInfo.topActivityBounds);
        sb.append(", taskOrientation=");
        sb.append(this.mTaskInfo.getConfiguration().orientation);
        sb.append(", contextOrientation=");
        sb.append(this.mContext.getResources().getConfiguration().orientation);
        sb.append(", alignment=0x");
        sb.append(Integer.toHexString(this.mAlignment));
        sb.append(", resizeable=");
        sb.append(this.mTaskInfo.isResizeable);
        sb.append(", visible=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.mTaskInfo.isVisible, "}");
    }
}
