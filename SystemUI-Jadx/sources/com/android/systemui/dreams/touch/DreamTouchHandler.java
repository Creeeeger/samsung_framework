package com.android.systemui.dreams.touch;

import android.graphics.Rect;
import android.graphics.Region;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface DreamTouchHandler {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface TouchSession {
    }

    void onSessionStart(TouchSession touchSession);

    default void getTouchInitiationRegion(Rect rect, Region region) {
    }
}
