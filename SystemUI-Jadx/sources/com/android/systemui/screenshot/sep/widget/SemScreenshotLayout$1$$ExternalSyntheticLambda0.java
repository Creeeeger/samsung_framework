package com.android.systemui.screenshot.sep.widget;

import android.view.animation.Animation;
import com.android.systemui.screenshot.ScreenshotController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SemScreenshotLayout$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Animation.AnimationListener f$0;

    public /* synthetic */ SemScreenshotLayout$1$$ExternalSyntheticLambda0(Animation.AnimationListener animationListener, int i) {
        this.$r8$classId = i;
        this.f$0 = animationListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SemScreenshotLayout.this.mCallback.finishAnimation();
                return;
            default:
                ScreenshotController.m1345$$Nest$mfinishDismiss(ScreenshotController.this);
                return;
        }
    }
}
