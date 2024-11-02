package com.android.systemui.statusbar.notification.row;

import android.util.ArrayMap;
import android.util.Log;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BindStage extends BindRequester {
    public final Map mContentParams = new ArrayMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface StageCallback {
    }

    public abstract void abortStage(NotificationEntry notificationEntry);

    public abstract void executeStage(NotificationEntry notificationEntry, ExpandableNotificationRow expandableNotificationRow, NotifBindPipeline$$ExternalSyntheticLambda0 notifBindPipeline$$ExternalSyntheticLambda0);

    public final Object getStageParams(NotificationEntry notificationEntry) {
        Object obj = ((ArrayMap) this.mContentParams).get(notificationEntry);
        if (obj == null) {
            Log.wtf("BindStage", String.format("Entry does not have any stage parameters. key: %s", notificationEntry.mKey));
            return newStageParams();
        }
        return obj;
    }

    public abstract RowContentBindParams newStageParams();
}
