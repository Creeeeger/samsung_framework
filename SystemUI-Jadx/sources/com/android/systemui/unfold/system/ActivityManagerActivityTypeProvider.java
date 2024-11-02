package com.android.systemui.unfold.system;

import android.app.ActivityManager;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.unfold.util.CurrentActivityTypeProvider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActivityManagerActivityTypeProvider implements CurrentActivityTypeProvider {
    public Boolean _isHomeActivity;
    public final ActivityManager activityManager;
    public final ActivityManagerActivityTypeProvider$taskStackChangeListener$1 taskStackChangeListener = new TaskStackChangeListener() { // from class: com.android.systemui.unfold.system.ActivityManagerActivityTypeProvider$taskStackChangeListener$1
        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
            boolean z;
            ActivityManagerActivityTypeProvider activityManagerActivityTypeProvider = ActivityManagerActivityTypeProvider.this;
            activityManagerActivityTypeProvider.getClass();
            if (runningTaskInfo.topActivityType == 2) {
                z = true;
            } else {
                z = false;
            }
            activityManagerActivityTypeProvider._isHomeActivity = Boolean.valueOf(z);
        }
    };

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.unfold.system.ActivityManagerActivityTypeProvider$taskStackChangeListener$1] */
    public ActivityManagerActivityTypeProvider(ActivityManager activityManager) {
        this.activityManager = activityManager;
    }
}
