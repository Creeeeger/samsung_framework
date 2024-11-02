package com.samsung.systemui.splugins.navigationbar;

import android.app.ActivityManager;
import android.content.ComponentName;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface TaskStackAdapterBase {
    void addTaskStackListener(Runnable runnable);

    List<ComponentName> getRecentComponents(int i);

    List<ActivityManager.RecentTaskInfo> getRecentTasks(int i);

    void removeTaskStackListener();
}
