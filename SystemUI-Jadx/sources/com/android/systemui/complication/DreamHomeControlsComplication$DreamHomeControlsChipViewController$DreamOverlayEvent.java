package com.android.systemui.complication;

import com.android.internal.logging.UiEventLogger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum DreamHomeControlsComplication$DreamHomeControlsChipViewController$DreamOverlayEvent implements UiEventLogger.UiEventEnum {
    /* JADX INFO: Fake field, exist only in values array */
    DREAM_HOME_CONTROLS_TAPPED(1212);

    private final int mId;

    DreamHomeControlsComplication$DreamHomeControlsChipViewController$DreamOverlayEvent(int i) {
        this.mId = i;
    }

    public final int getId() {
        return this.mId;
    }
}
