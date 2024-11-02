package com.android.wm.shell.common;

import android.animation.ValueAnimator;
import android.util.Slog;
import android.view.InsetsSource;
import com.android.wm.shell.common.DisplayImeController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DisplayImeController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DisplayImeController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DisplayImeController displayImeController = (DisplayImeController) this.f$0;
                displayImeController.mDisplayController.addDisplayWindowListener(displayImeController);
                return;
            default:
                DisplayImeController.PerDisplay perDisplay = (DisplayImeController.PerDisplay) this.f$0;
                InsetsSource peekSource = perDisplay.mInsetsState.peekSource(InsetsSource.ID_IME);
                ValueAnimator valueAnimator = perDisplay.mAnimation;
                if (valueAnimator != null && perDisplay.mAnimationDirection == 1 && peekSource != null && perDisplay.mImeSourceControl != null) {
                    valueAnimator.start();
                    return;
                }
                Slog.e("DisplayImeController", "anim failed. mAnimation=" + perDisplay.mAnimation + " mAnimationDirection=" + perDisplay.mAnimationDirection + " source=" + peekSource + " mImeSourceControl=" + perDisplay.mImeSourceControl);
                return;
        }
    }
}
