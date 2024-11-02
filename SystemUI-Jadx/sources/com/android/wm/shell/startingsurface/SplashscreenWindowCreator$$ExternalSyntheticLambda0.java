package com.android.wm.shell.startingsurface;

import android.view.Choreographer;
import com.android.wm.shell.startingsurface.SplashscreenWindowCreator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplashscreenWindowCreator$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SplashscreenWindowCreator$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplashscreenWindowCreator splashscreenWindowCreator = (SplashscreenWindowCreator) this.f$0;
                splashscreenWindowCreator.getClass();
                splashscreenWindowCreator.mChoreographer = Choreographer.getInstance();
                return;
            default:
                SplashscreenWindowCreator.SplashWindowRecord splashWindowRecord = (SplashscreenWindowCreator.SplashWindowRecord) this.f$0;
                splashWindowRecord.this$0.removeWindowInner(splashWindowRecord.mRootView, true, false);
                return;
        }
    }
}
