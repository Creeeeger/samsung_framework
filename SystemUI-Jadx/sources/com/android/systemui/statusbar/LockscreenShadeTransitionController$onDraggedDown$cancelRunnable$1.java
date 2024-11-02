package com.android.systemui.statusbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1 implements Runnable {
    public final /* synthetic */ LockscreenShadeTransitionController this$0;

    public LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1(LockscreenShadeTransitionController lockscreenShadeTransitionController) {
        this.this$0 = lockscreenShadeTransitionController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.this$0.logger.logGoingToLockedShadeAborted();
        this.this$0.setDragDownAmountAnimated(0.0f, 0L, null);
    }
}
