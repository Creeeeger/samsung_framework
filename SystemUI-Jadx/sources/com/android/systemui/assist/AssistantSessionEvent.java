package com.android.systemui.assist;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum AssistantSessionEvent implements UiEventLogger.UiEventEnum {
    /* JADX INFO: Fake field, exist only in values array */
    ASSISTANT_SESSION_UNKNOWN(0),
    /* JADX INFO: Fake field, exist only in values array */
    ASSISTANT_SESSION_TIMEOUT_DISMISS(524),
    /* JADX INFO: Fake field, exist only in values array */
    ASSISTANT_SESSION_INVOCATION_START(525),
    ASSISTANT_SESSION_INVOCATION_CANCELLED(526),
    /* JADX INFO: Fake field, exist only in values array */
    ASSISTANT_SESSION_USER_DISMISS(527),
    ASSISTANT_SESSION_UPDATE(528),
    ASSISTANT_SESSION_CLOSE(529);

    private final int id;

    AssistantSessionEvent(int i) {
        this.id = i;
    }

    public final int getId() {
        return this.id;
    }
}
