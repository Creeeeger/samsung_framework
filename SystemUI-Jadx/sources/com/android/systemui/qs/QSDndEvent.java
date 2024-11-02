package com.android.systemui.qs;

import com.android.internal.logging.UiEventLogger;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum QSDndEvent implements UiEventLogger.UiEventEnum {
    QS_DND_CONDITION_SELECT(VolteConstants.ErrorCode.BAD_EXTENSION),
    QS_DND_TIME_UP(VolteConstants.ErrorCode.SESSION_INTERVAL_TOO_SMALL),
    QS_DND_TIME_DOWN(VolteConstants.ErrorCode.INTERVAL_TOO_BRIEF),
    QS_DND_DIALOG_ENABLE_FOREVER(946),
    QS_DND_DIALOG_ENABLE_UNTIL_ALARM(947),
    QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN(948);

    private final int _id;

    QSDndEvent(int i) {
        this._id = i;
    }

    public final int getId() {
        return this._id;
    }
}
