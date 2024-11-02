package com.android.wm.shell.controlpanel.action;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.UserHandle;
import com.android.wm.shell.controlpanel.GridUIManager;
import com.android.wm.shell.controlpanel.utils.ControlPanelUtils;
import com.samsung.android.multiwindow.MultiWindowUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitScreenAction extends MenuActionType {
    public final Context mContext;

    private SplitScreenAction(Context context) {
        this.mContext = context;
    }

    public static SplitScreenAction createAction(Context context) {
        return new SplitScreenAction(context);
    }

    @Override // com.android.wm.shell.controlpanel.action.MenuActionType
    public final void doControlAction(String str, GridUIManager gridUIManager) {
        ComponentName componentName;
        int i;
        gridUIManager.getClass();
        Context context = this.mContext;
        ActivityManager.RunningTaskInfo runningTaskExcept = ControlPanelUtils.getRunningTaskExcept(context);
        if (runningTaskExcept != null) {
            componentName = runningTaskExcept.baseActivity;
        } else {
            componentName = new ComponentName("", "");
        }
        int topTaskUserId = ControlPanelUtils.getTopTaskUserId(context);
        ActivityManager.RunningTaskInfo runningTaskExcept2 = ControlPanelUtils.getRunningTaskExcept(context);
        if (runningTaskExcept2 != null) {
            i = runningTaskExcept2.taskId;
        } else {
            i = -1;
        }
        context.startActivityAsUser(MultiWindowUtils.getEdgeAllAppsActivityIntent(componentName, topTaskUserId, i), UserHandle.CURRENT);
    }
}
