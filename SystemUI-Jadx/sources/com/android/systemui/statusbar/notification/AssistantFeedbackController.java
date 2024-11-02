package com.android.systemui.statusbar.notification;

import android.R;
import android.content.Context;
import android.os.Handler;
import android.provider.DeviceConfig;
import android.service.notification.NotificationListenerService;
import android.util.SparseArray;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.util.DeviceConfigProxy;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AssistantFeedbackController {
    public volatile boolean mFeedbackEnabled;
    public final Handler mHandler;
    public final SparseArray mIcons;
    public final AnonymousClass1 mPropertiesChangedListener;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.statusbar.notification.AssistantFeedbackController$1, android.provider.DeviceConfig$OnPropertiesChangedListener] */
    public AssistantFeedbackController(Handler handler, Context context, DeviceConfigProxy deviceConfigProxy) {
        ?? r3 = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.statusbar.notification.AssistantFeedbackController.1
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                if (properties.getKeyset().contains("enable_nas_feedback")) {
                    AssistantFeedbackController.this.mFeedbackEnabled = properties.getBoolean("enable_nas_feedback", false);
                }
            }
        };
        this.mPropertiesChangedListener = r3;
        this.mHandler = handler;
        deviceConfigProxy.getClass();
        this.mFeedbackEnabled = DeviceConfig.getBoolean("systemui", "enable_nas_feedback", false);
        DeviceConfig.addOnPropertiesChangedListener("systemui", new Executor() { // from class: com.android.systemui.statusbar.notification.AssistantFeedbackController$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                AssistantFeedbackController.this.mHandler.post(runnable);
            }
        }, (DeviceConfig.OnPropertiesChangedListener) r3);
        SparseArray sparseArray = new SparseArray(4);
        this.mIcons = sparseArray;
        sparseArray.set(1, new FeedbackIcon(R.drawable.ic_lockscreen_puk, 17041572));
        sparseArray.set(2, new FeedbackIcon(R.drawable.ic_lockscreen_silent_normal, 17041575));
        sparseArray.set(3, new FeedbackIcon(R.drawable.ic_lockscreen_sim, 17041574));
        sparseArray.set(4, new FeedbackIcon(R.drawable.ic_lockscreen_silent_activated, 17041573));
    }

    public final int getFeedbackStatus(NotificationEntry notificationEntry) {
        if (!this.mFeedbackEnabled) {
            return 0;
        }
        NotificationListenerService.Ranking ranking = notificationEntry.mRanking;
        int importance = ranking.getChannel().getImportance();
        int importance2 = ranking.getImportance();
        if (importance < 3 && importance2 >= 3) {
            return 1;
        }
        if (importance >= 3 && importance2 < 3) {
            return 2;
        }
        if (importance < importance2 || ranking.getRankingAdjustment() == 1) {
            return 3;
        }
        if (importance <= importance2 && ranking.getRankingAdjustment() != -1) {
            return 0;
        }
        return 4;
    }
}
