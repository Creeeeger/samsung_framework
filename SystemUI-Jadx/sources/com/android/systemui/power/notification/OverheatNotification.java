package com.android.systemui.power.notification;

import android.app.Notification;
import android.content.Context;
import android.os.UserHandle;
import android.widget.RemoteViews;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.SystemUIApplication;
import com.android.systemui.power.PowerUtils;
import com.android.systemui.power.SecBatteryStatsSnapshot;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OverheatNotification extends PowerUiNotification {
    public OverheatNotification(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void dismissNotification() {
        this.mNotificationManager.cancelAsUser("over_heat", R.id.notification_power, UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final Notification.Builder getBuilder() {
        String string;
        String string2;
        boolean z = PowerUiRune.SPECIFIC_POWER_REQUEST_BY_VZW;
        Context context = this.mContext;
        if (z) {
            string = context.getString(R.string.cooling_title_vzw);
        } else {
            string = context.getString(R.string.cooling_title);
        }
        if (z) {
            string2 = context.getString(R.string.cooling_noti_text_vzw);
        } else {
            string2 = context.getString(R.string.cooling_noti_text);
        }
        Notification.Builder category = getCommonBuilder(string, string2, "ALR").setSmallIcon(R.drawable.stat_notify_battery_cooling_down).setOnlyAlertOnce(true).setOngoing(true).setContentIntent(PowerUtils.pendingBroadcast(context, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT")).setPriority(0).setCategory("sys");
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
        this.mNotificationManager.notifyAsUser("over_heat", R.id.notification_power, build, UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
    }
}
