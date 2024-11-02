package com.android.wm.shell.fullscreen;

import android.app.ActivityManager;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FullscreenTaskListener$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FullscreenTaskListener$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                FullscreenTaskListener fullscreenTaskListener = (FullscreenTaskListener) this.f$0;
                fullscreenTaskListener.getClass();
                ((SplitScreenController) obj).mFullscreenTaskListener = fullscreenTaskListener;
                return;
            default:
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.f$0;
                RecentTasksController recentTasksController = (RecentTasksController) obj;
                if (runningTaskInfo.isVisible) {
                    recentTasksController.removeSplitPair(runningTaskInfo.taskId);
                    return;
                }
                return;
        }
    }
}
