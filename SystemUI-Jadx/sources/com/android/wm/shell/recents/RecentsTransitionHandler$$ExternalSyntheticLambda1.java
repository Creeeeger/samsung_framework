package com.android.wm.shell.recents;

import android.animation.Animator;
import android.app.ActivityTaskManager;
import android.os.RemoteException;
import android.util.Slog;
import com.android.wm.shell.recents.RecentsTransitionHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RecentsTransitionHandler$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ RecentsTransitionHandler$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((Animator) this.f$0).cancel();
                return;
            case 1:
                RecentsTransitionHandler.RecentsController recentsController = (RecentsTransitionHandler.RecentsController) this.f$0;
                if (recentsController.mTransition != null) {
                    try {
                        ActivityTaskManager.getService().detachNavigationBarFromApp(recentsController.mTransition);
                        return;
                    } catch (RemoteException e) {
                        Slog.e("RecentsTransitionHandler", "Failed to detach the navigation bar from app", e);
                        return;
                    }
                }
                return;
            default:
                RecentsTransitionHandler.RecentsController recentsController2 = (RecentsTransitionHandler.RecentsController) this.f$0;
                int i = RecentsTransitionHandler.RecentsController.$r8$clinit;
                recentsController2.finishInner(true, false);
                return;
        }
    }
}
