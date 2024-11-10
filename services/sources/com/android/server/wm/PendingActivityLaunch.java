package com.android.server.wm;

import com.android.server.uri.NeededUriGrants;

/* compiled from: DexRestartAppInfo.java */
/* loaded from: classes3.dex */
public class PendingActivityLaunch {
    public final WindowProcessController callerApp;
    public final NeededUriGrants intentGrants;
    public final ActivityRecord r;
    public final Task rootTask;
    public final ActivityRecord sourceRecord;
    public final int startFlags;

    public PendingActivityLaunch(ActivityRecord activityRecord, ActivityRecord activityRecord2, int i, Task task, WindowProcessController windowProcessController, NeededUriGrants neededUriGrants) {
        this.r = activityRecord;
        this.sourceRecord = activityRecord2;
        this.startFlags = i;
        this.rootTask = task;
        this.callerApp = windowProcessController;
        this.intentGrants = neededUriGrants;
    }
}
