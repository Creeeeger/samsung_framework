package com.android.systemui.statusbar.notification.collection.coordinator;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnAfterRenderListListener;
import com.android.systemui.statusbar.notification.collection.render.NotifStackController;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifCounterCoordinator implements Coordinator {
    public SharedPreferences.Editor mEditor;
    public long mLastUpdateTime;
    public int mMaxCount;
    public final SharedPreferences mNotifCounterPrefs;

    public NotifCounterCoordinator(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("notification_pref", 0);
        this.mNotifCounterPrefs = sharedPreferences;
        if (sharedPreferences != null) {
            this.mMaxCount = sharedPreferences.getInt("QPNS0001", 0);
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        ((ArrayList) notifPipeline.mRenderStageManager.onAfterRenderListListeners).add(new OnAfterRenderListListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.NotifCounterCoordinator$$ExternalSyntheticLambda0
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnAfterRenderListListener
            public final void onAfterRenderList(List list, NotifStackController notifStackController) {
                NotifCounterCoordinator notifCounterCoordinator = NotifCounterCoordinator.this;
                notifCounterCoordinator.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - notifCounterCoordinator.mLastUpdateTime > 604800000) {
                    notifCounterCoordinator.mLastUpdateTime = currentTimeMillis;
                    notifCounterCoordinator.mMaxCount = 0;
                }
                if (notifCounterCoordinator.mMaxCount < list.size()) {
                    notifCounterCoordinator.mMaxCount = list.size();
                    SharedPreferences sharedPreferences = notifCounterCoordinator.mNotifCounterPrefs;
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        notifCounterCoordinator.mEditor = edit;
                        edit.putInt("QPNS0001", notifCounterCoordinator.mMaxCount);
                        notifCounterCoordinator.mEditor.commit();
                    }
                }
            }
        });
    }
}
