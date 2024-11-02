package com.android.systemui.qs.tiles.dialog;

import android.content.Context;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;
import com.android.settingslib.notification.ZenModeDialogMetricsLogger;
import com.android.systemui.qs.QSDndEvent;
import com.android.systemui.qs.QSEvents;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSZenModeDialogMetricsLogger extends ZenModeDialogMetricsLogger {
    public final UiEventLogger mUiEventLogger;

    public QSZenModeDialogMetricsLogger(Context context) {
        super(context);
        QSEvents.INSTANCE.getClass();
        this.mUiEventLogger = QSEvents.qsUiEventsLogger;
    }

    @Override // com.android.settingslib.notification.ZenModeDialogMetricsLogger
    public final void logOnClickTimeButton(boolean z) {
        QSDndEvent qSDndEvent;
        super.logOnClickTimeButton(z);
        UiEventLoggerImpl uiEventLoggerImpl = this.mUiEventLogger;
        if (z) {
            qSDndEvent = QSDndEvent.QS_DND_TIME_UP;
        } else {
            qSDndEvent = QSDndEvent.QS_DND_TIME_DOWN;
        }
        uiEventLoggerImpl.log(qSDndEvent);
    }

    @Override // com.android.settingslib.notification.ZenModeDialogMetricsLogger
    public final void logOnConditionSelected() {
        super.logOnConditionSelected();
        this.mUiEventLogger.log(QSDndEvent.QS_DND_CONDITION_SELECT);
    }

    @Override // com.android.settingslib.notification.ZenModeDialogMetricsLogger
    public final void logOnEnableZenModeForever() {
        super.logOnEnableZenModeForever();
        this.mUiEventLogger.log(QSDndEvent.QS_DND_DIALOG_ENABLE_FOREVER);
    }

    @Override // com.android.settingslib.notification.ZenModeDialogMetricsLogger
    public final void logOnEnableZenModeUntilAlarm() {
        super.logOnEnableZenModeUntilAlarm();
        this.mUiEventLogger.log(QSDndEvent.QS_DND_DIALOG_ENABLE_UNTIL_ALARM);
    }

    @Override // com.android.settingslib.notification.ZenModeDialogMetricsLogger
    public final void logOnEnableZenModeUntilCountdown() {
        super.logOnEnableZenModeUntilCountdown();
        this.mUiEventLogger.log(QSDndEvent.QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN);
    }
}
