package com.android.systemui.power.notification;

import android.app.Notification;
import android.content.Context;
import android.os.UserHandle;
import android.widget.RemoteViews;
import com.android.systemui.R;
import com.android.systemui.SystemUIApplication;
import com.android.systemui.power.SecBatteryStatsSnapshot;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IncompatibleChargerNotification extends PowerUiNotification {
    public IncompatibleChargerNotification(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void dismissNotification() {
        this.mNotificationManager.cancelAsUser("incompatible_charger_state", R.id.notification_power, UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final Notification.Builder getBuilder() {
        Context context = this.mContext;
        Notification.Builder category = getCommonBuilder(context.getString(R.string.incompatible_charger_title), context.getString(R.string.incompatible_charger_notification_text), "ALR").setSmallIcon(R.drawable.tw_stat_sys_battery_incompatible_vzw).setOnlyAlertOnce(true).setOngoing(true).setPriority(-2).setCategory("sys");
        SystemUIApplication.overrideNotificationAppName(context, category, false);
        return category;
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void showNotification() {
        Notification build = getBuilder().build();
        RemoteViews remoteViews = build.headsUpContentView;
        if (remoteViews != null) {
            remoteViews.setViewVisibility(android.R.id.translucent, 8);
        }
        this.mNotificationManager.notifyAsUser("incompatible_charger_state", R.id.notification_power, build, UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
    }
}
