package com.android.systemui.common.ui.view;

import android.view.MotionEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class LongPressHandlingViewKt {
    public static final float distanceMoved(MotionEvent motionEvent) {
        if (motionEvent.getHistorySize() > 0) {
            double d = 2;
            return (float) Math.sqrt(((float) Math.pow(motionEvent.getX() - motionEvent.getHistoricalX(0), d)) + ((float) Math.pow(motionEvent.getY() - motionEvent.getHistoricalY(0), d)));
        }
        return 0.0f;
    }
}
