package com.android.wm.shell.recents;

import android.app.ActivityManager;
import com.android.wm.shell.common.SingleInstanceRemoteListener;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda1 implements SingleInstanceRemoteListener.RemoteCall {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityManager.RunningTaskInfo f$0;

    public /* synthetic */ RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda1(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        this.$r8$classId = i;
        this.f$0 = runningTaskInfo;
    }

    @Override // com.android.wm.shell.common.SingleInstanceRemoteListener.RemoteCall
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.f$0;
        switch (i) {
            case 0:
                ((IRecentTasksListener) obj).onRunningTaskAppeared(runningTaskInfo);
                return;
            default:
                ((IRecentTasksListener) obj).onRunningTaskVanished(runningTaskInfo);
                return;
        }
    }
}
