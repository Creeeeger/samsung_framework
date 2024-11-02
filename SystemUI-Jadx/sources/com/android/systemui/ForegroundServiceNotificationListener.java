package com.android.systemui;

import android.content.Context;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ForegroundServiceNotificationListener {
    public final Context mContext;
    public final ForegroundServiceController mForegroundServiceController;
    public final NotifPipeline mNotifPipeline;

    public ForegroundServiceNotificationListener(Context context, ForegroundServiceController foregroundServiceController, NotifPipeline notifPipeline) {
        this.mContext = context;
        this.mForegroundServiceController = foregroundServiceController;
        this.mNotifPipeline = notifPipeline;
    }
}
