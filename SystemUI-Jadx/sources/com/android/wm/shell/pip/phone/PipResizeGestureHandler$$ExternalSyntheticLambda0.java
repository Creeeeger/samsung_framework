package com.android.wm.shell.pip.phone;

import android.graphics.Rect;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipResizeGestureHandler$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ PipResizeGestureHandler f$0;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        PipResizeGestureHandler pipResizeGestureHandler = this.f$0;
        pipResizeGestureHandler.mUserResizeBounds.set((Rect) obj);
        pipResizeGestureHandler.mMotionHelper.synchronizePinnedStackBounds();
        pipResizeGestureHandler.mUpdateMovementBoundsRunnable.run();
        pipResizeGestureHandler.resetState();
    }
}
