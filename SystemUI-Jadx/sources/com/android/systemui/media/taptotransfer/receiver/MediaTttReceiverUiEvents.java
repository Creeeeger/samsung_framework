package com.android.systemui.media.taptotransfer.receiver;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum MediaTttReceiverUiEvents implements UiEventLogger.UiEventEnum {
    MEDIA_TTT_RECEIVER_CLOSE_TO_SENDER(982),
    MEDIA_TTT_RECEIVER_FAR_FROM_SENDER(983),
    MEDIA_TTT_RECEIVER_TRANSFER_TO_RECEIVER_SUCCEEDED(1263),
    MEDIA_TTT_RECEIVER_TRANSFER_TO_RECEIVER_FAILED(1264);

    private final int metricId;

    MediaTttReceiverUiEvents(int i) {
        this.metricId = i;
    }

    public final int getId() {
        return this.metricId;
    }
}
