package com.android.systemui.qs;

import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSEvents {
    public static final QSEvents INSTANCE = new QSEvents();
    public static final UiEventLogger qsUiEventsLogger = new UiEventLoggerImpl();

    private QSEvents() {
    }
}
