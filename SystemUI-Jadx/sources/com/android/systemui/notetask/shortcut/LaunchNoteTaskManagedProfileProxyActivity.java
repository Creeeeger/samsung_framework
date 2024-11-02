package com.android.systemui.notetask.shortcut;

import android.content.pm.UserInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.activity.ComponentActivity;
import com.android.systemui.notetask.NoteTaskController;
import com.android.systemui.notetask.NoteTaskEntryPoint;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LaunchNoteTaskManagedProfileProxyActivity extends ComponentActivity {
    public final NoteTaskController controller;
    public final UserManager userManager;
    public final UserTracker userTracker;

    public LaunchNoteTaskManagedProfileProxyActivity(NoteTaskController noteTaskController, UserTracker userTracker, UserManager userManager) {
        this.controller = noteTaskController;
        this.userTracker = userTracker;
        this.userManager = userManager;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object obj;
        super.onCreate(bundle);
        Iterator it = ((UserTrackerImpl) this.userTracker).getUserProfiles().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (this.userManager.isManagedProfile(((UserInfo) obj).id)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        UserInfo userInfo = (UserInfo) obj;
        if (userInfo == null) {
            if (Build.IS_DEBUGGABLE) {
                NoteTaskController.Companion.getClass();
                Log.d(NoteTaskController.TAG, "Fail to find the work profile user.");
            }
        } else {
            this.controller.showNoteTaskAsUser(NoteTaskEntryPoint.WIDGET_PICKER_SHORTCUT, userInfo.getUserHandle());
        }
        finish();
    }
}
