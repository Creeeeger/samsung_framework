package com.android.wm.shell.splitscreen;

import android.app.ActivityManager;
import com.android.wm.shell.recents.RecentTasksController;
import java.util.List;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenController$$ExternalSyntheticLambda5 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SplitScreenController$$ExternalSyntheticLambda5(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                List tasks = ((RecentTasksController) obj).mActivityTaskManager.getTasks(1, false);
                if (tasks.isEmpty()) {
                    return null;
                }
                return (ActivityManager.RunningTaskInfo) tasks.get(0);
            default:
                List tasks2 = ((RecentTasksController) obj).mActivityTaskManager.getTasks(1, false);
                if (tasks2.isEmpty()) {
                    return null;
                }
                return (ActivityManager.RunningTaskInfo) tasks2.get(0);
        }
    }
}
