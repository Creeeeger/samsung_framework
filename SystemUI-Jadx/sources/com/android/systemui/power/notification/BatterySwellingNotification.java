package com.android.systemui.power.notification;

import android.app.Notification;
import android.content.Context;
import android.os.UserHandle;
import com.android.systemui.R;
import com.android.systemui.SystemUIApplication;
import com.android.systemui.power.SecBatteryStatsSnapshot;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BatterySwellingNotification extends PowerUiNotification {
    public BatterySwellingNotification(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void dismissNotification() {
        this.mNotificationManager.cancelAsUser("battery_swelling", R.id.notification_power, UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final Notification.Builder getBuilder() {
        String string;
        Context context = this.mContext;
        String string2 = context.getString(R.string.battery_swelling_mode_noti_title);
        if (DeviceType.isTablet()) {
            string = context.getString(R.string.battery_swelling_mode_low_temp_noti_text_tablet);
        } else {
            string = context.getString(R.string.battery_swelling_mode_low_temp_noti_text_phone);
        }
        Notification.Builder category = getCommonBuilder(string2, string, "CHR").setSmallIcon(R.drawable.stat_notify_afc).setOnlyAlertOnce(true).setOngoing(true).setPriority(-2).setCategory("sys");
        SystemUIApplication.overrideNotificationAppName(context, category, false);
        return category;
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void showNotification() {
        String string;
        Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle(getBuilder());
        boolean isTablet = DeviceType.isTablet();
        Context context = this.mContext;
        if (isTablet) {
            string = context.getString(R.string.battery_swelling_mode_low_temp_noti_text_tablet);
        } else {
            string = context.getString(R.string.battery_swelling_mode_low_temp_noti_text_phone);
        }
        this.mNotificationManager.notifyAsUser("battery_swelling", R.id.notification_power, bigTextStyle.bigText(string).build(), UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
    }
}
