package com.android.systemui.screenshot.appclips;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
enum AppClipsEvent implements UiEventLogger.UiEventEnum {
    SCREENSHOT_FOR_NOTE_TRIGGERED(1308),
    SCREENSHOT_FOR_NOTE_ACCEPTED(1309),
    SCREENSHOT_FOR_NOTE_CANCELLED(1310);

    private final int mId;

    AppClipsEvent(int i) {
        this.mId = i;
    }

    public final int getId() {
        return this.mId;
    }
}
