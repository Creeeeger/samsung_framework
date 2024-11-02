package com.android.systemui.temporarydisplay;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public enum TemporaryViewUiEvent implements UiEventLogger.UiEventEnum {
    TEMPORARY_VIEW_ADDED(1389),
    TEMPORARY_VIEW_MANUALLY_DISMISSED(1390);

    private final int metricId;

    TemporaryViewUiEvent(int i) {
        this.metricId = i;
    }

    public final int getId() {
        return this.metricId;
    }
}
