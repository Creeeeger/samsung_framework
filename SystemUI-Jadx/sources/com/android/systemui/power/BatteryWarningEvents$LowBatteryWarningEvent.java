package com.android.systemui.power;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum BatteryWarningEvents$LowBatteryWarningEvent implements UiEventLogger.UiEventEnum {
    /* JADX INFO: Fake field, exist only in values array */
    LOW_BATTERY_NOTIFICATION(1048),
    LOW_BATTERY_NOTIFICATION_TURN_ON(1049),
    LOW_BATTERY_NOTIFICATION_CANCEL(1050),
    LOW_BATTERY_NOTIFICATION_SETTINGS(1051),
    SAVER_CONFIRM_DIALOG(1052),
    SAVER_CONFIRM_OK(1053),
    SAVER_CONFIRM_CANCEL(1054),
    SAVER_CONFIRM_DISMISS(1055);

    private final int mId;

    BatteryWarningEvents$LowBatteryWarningEvent(int i) {
        this.mId = i;
    }

    public final int getId() {
        return this.mId;
    }
}
