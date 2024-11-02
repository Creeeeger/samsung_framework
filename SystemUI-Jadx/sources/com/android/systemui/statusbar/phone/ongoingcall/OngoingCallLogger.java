package com.android.systemui.statusbar.phone.ongoingcall;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OngoingCallLogger {
    public boolean chipIsVisible;
    public final UiEventLogger logger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum OngoingCallEvents implements UiEventLogger.UiEventEnum {
        ONGOING_CALL_VISIBLE(813),
        ONGOING_CALL_CLICKED(814);

        private final int metricId;

        OngoingCallEvents(int i) {
            this.metricId = i;
        }

        public final int getId() {
            return this.metricId;
        }
    }

    public OngoingCallLogger(UiEventLogger uiEventLogger) {
        this.logger = uiEventLogger;
    }
}
