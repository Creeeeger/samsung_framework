package com.android.wm.shell.pip.phone;

import android.os.Looper;
import com.android.wm.shell.pip.phone.PipResizeGestureHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipResizeGestureHandler$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PipResizeGestureHandler f$0;

    public /* synthetic */ PipResizeGestureHandler$$ExternalSyntheticLambda1(PipResizeGestureHandler pipResizeGestureHandler, int i) {
        this.$r8$classId = i;
        this.f$0 = pipResizeGestureHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mPipTouchState.mAllowInputEvents = true;
                return;
            default:
                PipResizeGestureHandler pipResizeGestureHandler = this.f$0;
                pipResizeGestureHandler.getClass();
                pipResizeGestureHandler.mInputEventReceiver = new PipResizeGestureHandler.PipResizeInputEventReceiver(pipResizeGestureHandler, pipResizeGestureHandler.mInputMonitor.getInputChannel(), Looper.myLooper());
                return;
        }
    }
}
