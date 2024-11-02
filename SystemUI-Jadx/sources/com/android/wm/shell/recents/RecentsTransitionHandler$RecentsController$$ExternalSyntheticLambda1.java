package com.android.wm.shell.recents;

import android.app.ActivityTaskManager;
import android.os.RemoteException;
import android.util.Slog;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentsTransitionHandler;
import com.android.wm.shell.transition.Transitions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RecentsTransitionHandler.RecentsController f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1(RecentsTransitionHandler.RecentsController recentsController, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = recentsController;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        switch (this.$r8$classId) {
            case 0:
                RecentsTransitionHandler.RecentsController recentsController = this.f$0;
                boolean z = this.f$1;
                Transitions.TransitionFinishCallback transitionFinishCallback = recentsController.mFinishCB;
                boolean z2 = true;
                if (transitionFinishCallback != null && z) {
                    if (recentsController.mInfo.getRootCount() > 0) {
                        i = recentsController.mInfo.getRoot(0).getDisplayId();
                    } else {
                        i = 0;
                    }
                    try {
                        if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 867205103, 1, "[%d] RecentsController.setInputConsumerEnabled: set focus to recents", Long.valueOf(recentsController.mInstanceId));
                        }
                        ActivityTaskManager.getService().focusTopTask(i);
                        return;
                    } catch (RemoteException e) {
                        Slog.e("RecentsTransitionHandler", "Failed to set focused task", e);
                        return;
                    }
                }
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    if (transitionFinishCallback == null) {
                        z2 = false;
                    }
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -1058990760, 15, "RecentsController.setInputConsumerEnabled: skip, cb?=%b enabled?=%b", Boolean.valueOf(z2), Boolean.valueOf(z));
                    return;
                }
                return;
            default:
                this.f$0.mWillFinishToHome = this.f$1;
                return;
        }
    }
}
