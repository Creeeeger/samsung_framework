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
public final class HealthInterruptionNotification extends PowerUiNotification {
    public int mBatteryHealth;

    public HealthInterruptionNotification(Context context) {
        super(context);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void dismissNotification() {
        this.mNotificationManager.cancelAsUser("health_interruption", R.id.notification_power, UserHandle.ALL);
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final Notification.Builder getBuilder() {
        String str;
        Context context = this.mContext;
        String string = context.getString(R.string.battery_health_interruption_title);
        int i = this.mBatteryHealth;
        if (i == 3) {
            if (DeviceType.isTablet()) {
                str = context.getString(R.string.battery_health_interruption_by_too_high_temperature_text_tablet);
            } else {
                str = context.getString(R.string.battery_health_interruption_by_too_high_temperature_text_phone);
            }
        } else if (i == 7) {
            if (DeviceType.isTablet()) {
                str = context.getString(R.string.battery_health_interruption_by_too_low_temperature_text_tablet);
            } else {
                str = context.getString(R.string.battery_health_interruption_by_too_low_temperature_text_phone);
            }
        } else {
            str = null;
        }
        Notification.Builder style = getCommonBuilder(string, str, "CHR").setSmallIcon(R.drawable.ic_device_thermostat_24).setOngoing(true).setVisibility(1).setStyle(new Notification.BigTextStyle().bigText(str));
        SystemUIApplication.overrideNotificationAppName(context, style, false);
        return style;
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot) {
        this.mBatteryHealth = secBatteryStatsSnapshot.batteryHealth;
    }

    @Override // com.android.systemui.power.notification.PowerUiNotification
    public final void showNotification() {
        this.mNotificationManager.notifyAsUser("health_interruption", R.id.notification_power, getBuilder().build(), UserHandle.ALL);
    }
}
