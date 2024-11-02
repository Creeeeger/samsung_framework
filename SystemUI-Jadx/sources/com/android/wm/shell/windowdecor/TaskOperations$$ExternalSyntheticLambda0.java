package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.util.Log;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.multiwindow.MultiWindowManager;
import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TaskOperations$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ ActivityManager.RunningTaskInfo f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ TaskOperations$$ExternalSyntheticLambda0(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        this.f$0 = runningTaskInfo;
        this.f$1 = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        boolean z;
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.f$0;
        int i = this.f$1;
        SplitScreenController splitScreenController = (SplitScreenController) obj;
        int i2 = runningTaskInfo2.displayId;
        Iterator it = MultiWindowManager.getInstance().getVisibleTasks().iterator();
        while (true) {
            if (it.hasNext()) {
                runningTaskInfo = (ActivityManager.RunningTaskInfo) it.next();
                if (runningTaskInfo.displayId == i2 && runningTaskInfo.getWindowingMode() == 1) {
                    break;
                }
            } else {
                runningTaskInfo = null;
                break;
            }
        }
        if (runningTaskInfo != null && !runningTaskInfo.supportsMultiWindow) {
            Log.w("TaskOperations", "moveFreeformToSplit: failed, not support mw, top fullscreen t#" + runningTaskInfo.taskId);
        } else {
            if (runningTaskInfo != null && (runningTaskInfo.getActivityType() == 2 || runningTaskInfo.getActivityType() == 3)) {
                z = true;
            } else {
                z = false;
            }
            splitScreenController.onFreeformToSplitRequested(runningTaskInfo2, z, i, false, null, false);
        }
    }
}
