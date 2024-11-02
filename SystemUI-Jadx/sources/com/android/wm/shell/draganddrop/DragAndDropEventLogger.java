package com.android.wm.shell.draganddrop;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.pm.ActivityInfo;
import android.view.DragEvent;
import com.android.internal.logging.InstanceId;
import com.android.internal.logging.InstanceIdSequence;
import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragAndDropEventLogger {
    public ActivityInfo mActivityInfo;
    public final InstanceIdSequence mIdSequence = new InstanceIdSequence(Integer.MAX_VALUE);
    public InstanceId mInstanceId;
    public final UiEventLogger mUiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum DragAndDropUiEventEnum implements UiEventLogger.UiEventEnum {
        GLOBAL_APP_DRAG_START_ACTIVITY(884),
        GLOBAL_APP_DRAG_START_SHORTCUT(885),
        GLOBAL_APP_DRAG_START_TASK(888),
        GLOBAL_APP_DRAG_DROPPED(887),
        GLOBAL_APP_DRAG_END(886);

        private final int mId;

        DragAndDropUiEventEnum(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public DragAndDropEventLogger(UiEventLogger uiEventLogger) {
        this.mUiEventLogger = uiEventLogger;
    }

    public final void log(DragAndDropUiEventEnum dragAndDropUiEventEnum, ActivityInfo activityInfo) {
        int i;
        String str;
        if (activityInfo == null) {
            i = 0;
        } else {
            i = activityInfo.applicationInfo.uid;
        }
        if (activityInfo == null) {
            str = null;
        } else {
            str = activityInfo.applicationInfo.packageName;
        }
        this.mUiEventLogger.logWithInstanceId(dragAndDropUiEventEnum, i, str, this.mInstanceId);
    }

    public final InstanceId logStart(DragEvent dragEvent) {
        DragAndDropUiEventEnum dragAndDropUiEventEnum;
        ClipDescription clipDescription = dragEvent.getClipDescription();
        ClipData.Item itemAt = dragEvent.getClipData().getItemAt(0);
        InstanceId parcelableExtra = itemAt.getIntent().getParcelableExtra("android.intent.extra.LOGGING_INSTANCE_ID");
        this.mInstanceId = parcelableExtra;
        if (parcelableExtra == null) {
            this.mInstanceId = this.mIdSequence.newInstanceId();
        }
        this.mActivityInfo = itemAt.getActivityInfo();
        if (clipDescription.hasMimeType("application/vnd.android.activity")) {
            dragAndDropUiEventEnum = DragAndDropUiEventEnum.GLOBAL_APP_DRAG_START_ACTIVITY;
        } else if (clipDescription.hasMimeType("application/vnd.android.shortcut")) {
            dragAndDropUiEventEnum = DragAndDropUiEventEnum.GLOBAL_APP_DRAG_START_SHORTCUT;
        } else if (clipDescription.hasMimeType("application/vnd.android.task")) {
            dragAndDropUiEventEnum = DragAndDropUiEventEnum.GLOBAL_APP_DRAG_START_TASK;
        } else {
            throw new IllegalArgumentException("Not an app drag");
        }
        log(dragAndDropUiEventEnum, this.mActivityInfo);
        return this.mInstanceId;
    }
}
