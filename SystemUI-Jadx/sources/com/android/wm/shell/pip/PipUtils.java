package com.android.wm.shell.pip;

import android.app.ActivityTaskManager;
import android.app.RemoteAction;
import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.util.TypedValue;
import android.window.TaskSnapshot;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipUtils {
    public static boolean aspectRatioChanged(float f, float f2) {
        if (Math.abs(f - f2) > 1.0E-7d) {
            return true;
        }
        return false;
    }

    public static int dpToPx(DisplayMetrics displayMetrics, float f) {
        return (int) TypedValue.applyDimension(1, f, displayMetrics);
    }

    public static TaskSnapshot getTaskSnapshot(int i) {
        if (i <= 0) {
            return null;
        }
        try {
            return ActivityTaskManager.getService().getTaskSnapshot(i, false, false);
        } catch (RemoteException e) {
            Log.e("PipUtils", "Failed to get task snapshot, taskId=" + i, e);
            return null;
        }
    }

    public static Pair getTopPipActivity(Context context) {
        int[] iArr;
        try {
            String packageName = context.getPackageName();
            ActivityTaskManager.RootTaskInfo rootTaskInfo = ActivityTaskManager.getService().getRootTaskInfo(2, 0);
            if (rootTaskInfo != null && (iArr = rootTaskInfo.childTaskIds) != null && iArr.length > 0) {
                int length = rootTaskInfo.childTaskNames.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    ComponentName unflattenFromString = ComponentName.unflattenFromString(rootTaskInfo.childTaskNames[length]);
                    if (unflattenFromString != null && !unflattenFromString.getPackageName().equals(packageName)) {
                        return new Pair(unflattenFromString, Integer.valueOf(rootTaskInfo.childTaskUserIds[length]));
                    }
                }
            }
        } catch (RemoteException unused) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1022141965, 0, "%s: Unable to get pinned stack.", "PipUtils");
            }
        }
        return new Pair(null, 0);
    }

    public static boolean remoteActionsMatch(RemoteAction remoteAction, RemoteAction remoteAction2) {
        if (remoteAction == remoteAction2) {
            return true;
        }
        if (remoteAction == null || remoteAction2 == null) {
            return false;
        }
        if (remoteAction.isEnabled() == remoteAction2.isEnabled() && remoteAction.shouldShowIcon() == remoteAction2.shouldShowIcon() && Objects.equals(remoteAction.getTitle(), remoteAction2.getTitle()) && Objects.equals(remoteAction.getContentDescription(), remoteAction2.getContentDescription()) && Objects.equals(remoteAction.getActionIntent(), remoteAction2.getActionIntent())) {
            return true;
        }
        return false;
    }
}
