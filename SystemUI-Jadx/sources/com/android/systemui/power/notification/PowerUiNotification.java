package com.android.systemui.power.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import com.android.systemui.power.SecBatteryStatsSnapshot;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class PowerUiNotification {
    public final Context mContext;
    public NotificationManager mNotificationManager;

    public PowerUiNotification(Context context) {
        this.mContext = context;
    }

    public abstract void dismissNotification();

    public abstract Notification.Builder getBuilder();

    public final Notification.Builder getCommonBuilder(CharSequence charSequence, CharSequence charSequence2, String str) {
        return new Notification.Builder(this.mContext, str).setShowWhen(false).setContentTitle(charSequence).setContentText(charSequence2).setVisibility(1);
    }

    public abstract void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot);

    public abstract void showNotification();
}
