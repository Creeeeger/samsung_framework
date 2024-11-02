package com.android.wm.shell.bubbles;

import android.os.Looper;
import android.view.BatchedInputEventReceiver;
import android.view.Choreographer;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.MotionEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubblesNavBarInputEventReceiver extends BatchedInputEventReceiver {
    public final BubblesNavBarMotionEventHandler mMotionEventHandler;

    public BubblesNavBarInputEventReceiver(InputChannel inputChannel, Choreographer choreographer, BubblesNavBarMotionEventHandler bubblesNavBarMotionEventHandler) {
        super(inputChannel, Looper.myLooper(), choreographer);
        this.mMotionEventHandler = bubblesNavBarMotionEventHandler;
    }

    public final void onInputEvent(InputEvent inputEvent) {
        try {
            if (!(inputEvent instanceof MotionEvent)) {
                return;
            }
            finishInputEvent(inputEvent, this.mMotionEventHandler.onMotionEvent((MotionEvent) inputEvent));
        } finally {
            finishInputEvent(inputEvent, false);
        }
    }
}
