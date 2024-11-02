package com.android.systemui.accessibility;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AccessibilityLogger {
    public final UiEventLogger uiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum MagnificationSettingsEvent implements UiEventLogger.UiEventEnum {
        MAGNIFICATION_SETTINGS_PANEL_OPENED(1381),
        MAGNIFICATION_SETTINGS_PANEL_CLOSED(1382),
        MAGNIFICATION_SETTINGS_SIZE_EDITING_ACTIVATED(1383),
        /* JADX INFO: Fake field, exist only in values array */
        MAGNIFICATION_SETTINGS_SIZE_EDITING_DEACTIVATED(1384),
        MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED(1386);

        private final int id;

        MagnificationSettingsEvent(int i) {
            this.id = i;
        }

        public final int getId() {
            return this.id;
        }
    }

    public AccessibilityLogger(UiEventLogger uiEventLogger) {
        this.uiEventLogger = uiEventLogger;
    }
}
