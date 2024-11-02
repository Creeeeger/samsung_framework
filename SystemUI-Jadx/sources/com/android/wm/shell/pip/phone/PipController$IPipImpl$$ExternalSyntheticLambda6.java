package com.android.wm.shell.pip.phone;

import android.os.SystemClock;
import com.android.wm.shell.pip.PipAnimationController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipController$IPipImpl$$ExternalSyntheticLambda6 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ PipController$IPipImpl$$ExternalSyntheticLambda6(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                PipAnimationController pipAnimationController = ((PipController) obj).mPipAnimationController;
                pipAnimationController.mOneShotAnimationType = 1;
                pipAnimationController.mLastOneShotAlphaAnimationTime = SystemClock.uptimeMillis();
                return;
            default:
                ((PipController) obj).setPinnedStackAnimationListener(null);
                return;
        }
    }
}
