package com.android.systemui.clipboardoverlay;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum ClipboardOverlayEvent implements UiEventLogger.UiEventEnum {
    /* JADX INFO: Fake field, exist only in values array */
    CLIPBOARD_OVERLAY_ENTERED(949),
    /* JADX INFO: Fake field, exist only in values array */
    CLIPBOARD_OVERLAY_UPDATED(950),
    CLIPBOARD_OVERLAY_EDIT_TAPPED(951),
    CLIPBOARD_OVERLAY_SHARE_TAPPED(1067),
    CLIPBOARD_OVERLAY_ACTION_SHOWN(1260),
    CLIPBOARD_OVERLAY_ACTION_TAPPED(952),
    CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED(953),
    CLIPBOARD_OVERLAY_TIMED_OUT(954),
    CLIPBOARD_OVERLAY_DISMISS_TAPPED(955),
    CLIPBOARD_OVERLAY_SWIPE_DISMISSED(956),
    CLIPBOARD_OVERLAY_TAP_OUTSIDE(1077),
    CLIPBOARD_OVERLAY_DISMISSED_OTHER(1078),
    /* JADX INFO: Fake field, exist only in values array */
    CLIPBOARD_OVERLAY_SHOWN_EXPANDED(1356),
    /* JADX INFO: Fake field, exist only in values array */
    CLIPBOARD_OVERLAY_SHOWN_MINIMIZED(1357),
    CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED(1358),
    CLIPBOARD_TOAST_SHOWN(1270);

    private final int mId;

    ClipboardOverlayEvent(int i) {
        this.mId = i;
    }

    public final int getId() {
        return this.mId;
    }
}
