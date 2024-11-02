package com.android.systemui.media.taptotransfer.receiver;

import com.android.systemui.log.LogBuffer;
import com.android.systemui.temporarydisplay.TemporaryViewLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaTttReceiverLogger extends TemporaryViewLogger {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public MediaTttReceiverLogger(LogBuffer logBuffer) {
        super(logBuffer, "MediaTttReceiver");
    }
}
