package com.android.wm.shell.pip;

import android.app.TaskInfo;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import com.android.internal.logging.UiEventLogger;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipUiEventLogger {
    public final PackageManager mPackageManager;
    public String mPackageName;
    public int mPackageUid = -1;
    public final UiEventLogger mUiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum PipUiEventEnum implements UiEventLogger.UiEventEnum {
        PICTURE_IN_PICTURE_ENTER(VolteConstants.ErrorCode.DECLINE),
        PICTURE_IN_PICTURE_AUTO_ENTER(1313),
        PICTURE_IN_PICTURE_ENTER_CONTENT_PIP(1314),
        PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN(VolteConstants.ErrorCode.DOES_NOT_EXIST_ANYWHERE),
        PICTURE_IN_PICTURE_TAP_TO_REMOVE(605),
        /* JADX INFO: Fake field, exist only in values array */
        PICTURE_IN_PICTURE_DRAG_TO_REMOVE(VolteConstants.ErrorCode.NOT_ACCEPTABLE2),
        PICTURE_IN_PICTURE_SHOW_MENU(607),
        PICTURE_IN_PICTURE_HIDE_MENU(608),
        /* JADX INFO: Fake field, exist only in values array */
        PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO(609),
        PICTURE_IN_PICTURE_RESIZE(610),
        PICTURE_IN_PICTURE_STASH_UNSTASHED(709),
        PICTURE_IN_PICTURE_STASH_LEFT(710),
        PICTURE_IN_PICTURE_STASH_RIGHT(711),
        PICTURE_IN_PICTURE_SHOW_SETTINGS(933),
        PICTURE_IN_PICTURE_CUSTOM_CLOSE(1058);

        private final int mId;

        PipUiEventEnum(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public PipUiEventLogger(UiEventLogger uiEventLogger, PackageManager packageManager) {
        this.mUiEventLogger = uiEventLogger;
        this.mPackageManager = packageManager;
    }

    public final void log(PipUiEventEnum pipUiEventEnum) {
        int i;
        String str = this.mPackageName;
        if (str != null && (i = this.mPackageUid) != -1) {
            this.mUiEventLogger.log(pipUiEventEnum, i, str);
        }
    }

    public final void setTaskInfo(TaskInfo taskInfo) {
        ComponentName componentName;
        int i = -1;
        if (taskInfo != null && (componentName = taskInfo.topActivity) != null) {
            String packageName = componentName.getPackageName();
            this.mPackageName = packageName;
            try {
                i = this.mPackageManager.getApplicationInfoAsUser(packageName, 0, taskInfo.userId).uid;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            this.mPackageUid = i;
            return;
        }
        this.mPackageName = null;
        this.mPackageUid = -1;
    }
}
