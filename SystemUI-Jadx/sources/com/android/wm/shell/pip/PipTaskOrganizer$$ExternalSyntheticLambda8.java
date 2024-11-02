package com.android.wm.shell.pip;

import android.graphics.Rect;
import android.util.Log;
import com.android.wm.shell.common.HandlerExecutor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipTaskOrganizer$$ExternalSyntheticLambda8 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PipTaskOrganizer f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ PipTaskOrganizer$$ExternalSyntheticLambda8(PipTaskOrganizer pipTaskOrganizer, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = pipTaskOrganizer;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PipTaskOrganizer pipTaskOrganizer = this.f$0;
                ((HandlerExecutor) pipTaskOrganizer.mMainExecutor).execute((Runnable) this.f$1);
                return;
            default:
                PipTaskOrganizer pipTaskOrganizer2 = this.f$0;
                Rect rect = (Rect) this.f$1;
                if (pipTaskOrganizer2.mPipTransitionState.mState == 5) {
                    Log.w("PipTaskOrganizer", "onFixedRotationFinished: failed to enter, reason=exiting_pip");
                    return;
                } else {
                    pipTaskOrganizer2.finishResizeForMenu(rect);
                    pipTaskOrganizer2.sendOnPipTransitionFinished(2);
                    return;
                }
        }
    }
}
