package com.android.wm.shell.bubbles;

import com.android.internal.logging.UiEventLogger;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleLogger {
    public final UiEventLogger mUiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum Event implements UiEventLogger.UiEventEnum {
        BUBBLE_OVERFLOW_ADD_USER_GESTURE(483),
        BUBBLE_OVERFLOW_ADD_AGED(VolteConstants.ErrorCode.ADDRESS_INCOMPLETE),
        BUBBLE_OVERFLOW_REMOVE_MAX_REACHED(485),
        BUBBLE_OVERFLOW_REMOVE_CANCEL(VolteConstants.ErrorCode.BUSY_HERE),
        BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL(VolteConstants.ErrorCode.REQUEST_TERMINATED),
        BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE(VolteConstants.ErrorCode.NOT_ACCEPTABLE_HERE),
        BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK(489),
        BUBBLE_OVERFLOW_REMOVE_BLOCKED(490),
        BUBBLE_OVERFLOW_SELECTED(VolteConstants.ErrorCode.BUSY_EVERYWHERE),
        BUBBLE_OVERFLOW_RECOVER(691);

        private final int mId;

        Event(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public BubbleLogger(UiEventLogger uiEventLogger) {
        this.mUiEventLogger = uiEventLogger;
    }

    public final void log(Bubble bubble, Event event) {
        this.mUiEventLogger.logWithInstanceId(event, bubble.mAppUid, bubble.mPackageName, bubble.mInstanceId);
    }
}
