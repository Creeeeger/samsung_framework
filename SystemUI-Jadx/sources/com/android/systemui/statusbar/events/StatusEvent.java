package com.android.systemui.statusbar.events;

import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface StatusEvent {
    String getContentDescription();

    boolean getForceVisible();

    int getPriority();

    boolean getShowAnimation();

    Function1 getViewCreator();

    void setForceVisible();

    boolean shouldUpdateFromEvent(StatusEvent statusEvent);

    void updateFromEvent(StatusEvent statusEvent);
}
