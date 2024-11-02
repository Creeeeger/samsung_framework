package com.android.wm.shell.freeform;

import android.app.ActivityManager;
import android.app.WindowConfiguration;
import android.os.Debug;
import android.os.IBinder;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.shortcut.ShortcutController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.transition.change.ChangeTransitionProvider;
import com.android.wm.shell.windowdecor.WindowDecorViewModel;
import com.samsung.android.knox.EnterpriseContainerCallback;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformTaskTransitionHandler implements Transitions.TransitionHandler, FreeformTaskTransitionStarter {
    public final List mPendingTransitionTokens = new ArrayList();
    public final ShortcutController mShortcutController;
    public final Transitions mTransitions;
    public final WindowDecorViewModel mWindowDecorViewModel;

    public FreeformTaskTransitionHandler(ShellInit shellInit, Transitions transitions, WindowDecorViewModel windowDecorViewModel, ShortcutController shortcutController) {
        this.mTransitions = transitions;
        this.mWindowDecorViewModel = windowDecorViewModel;
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            shellInit.addInitCallback(new FreeformTaskTransitionHandler$$ExternalSyntheticLambda0(this, 0), this);
        }
        this.mShortcutController = shortcutController;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo) {
        return null;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final boolean startAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        int i;
        List list;
        ActivityManager.RunningTaskInfo taskInfo;
        int i2;
        Iterator it = transitionInfo.getChanges().iterator();
        int i3 = 0;
        while (true) {
            boolean hasNext = it.hasNext();
            i = 1;
            list = this.mPendingTransitionTokens;
            if (!hasNext) {
                break;
            }
            TransitionInfo.Change change = (TransitionInfo.Change) it.next();
            if ((change.getFlags() & 2) == 0 && (taskInfo = change.getTaskInfo()) != null && taskInfo.taskId != -1) {
                int mode = change.getMode();
                if (mode != 4) {
                    if (mode == 6) {
                        int type = transitionInfo.getType();
                        if (CoreRune.MW_SHELL_CHANGE_TRANSITION || !((ArrayList) list).contains(iBinder)) {
                            i = 0;
                        } else {
                            ActivityManager.RunningTaskInfo taskInfo2 = change.getTaskInfo();
                            if (type == 1008 && taskInfo2.getWindowingMode() == 1) {
                                i2 = 1;
                            } else {
                                i2 = 0;
                            }
                            if (type != 1009 || taskInfo2.getWindowingMode() != 5) {
                                i = i2;
                            }
                        }
                        i3 |= i;
                    }
                } else {
                    i3 |= ((ArrayList) list).contains(iBinder) ? 1 : 0;
                }
            }
        }
        ((ArrayList) list).remove(iBinder);
        if (i3 == 0) {
            return false;
        }
        transaction.apply();
        ((HandlerExecutor) this.mTransitions.mMainExecutor).execute(new FreeformTaskTransitionHandler$$ExternalSyntheticLambda0(transitionFinishCallback, i));
        return true;
    }

    public final void startWindowingModeTransition(WindowContainerTransaction windowContainerTransaction, int i) {
        int i2;
        boolean z = CoreRune.MW_SHELL_CHANGE_TRANSITION;
        Transitions transitions = this.mTransitions;
        if (z) {
            ChangeTransitionProvider changeTransitionProvider = transitions.mChangeTransitProvider;
            changeTransitionProvider.getClass();
            Log.d("ChangeTransitionProvider", "startChangeTransition: handler=null, wct=" + windowContainerTransaction + ", Caller=" + Debug.getCaller());
            changeTransitionProvider.mTransitions.startTransition(6, windowContainerTransaction, null);
            return;
        }
        if (i != 1) {
            if (i == 5) {
                i2 = EnterpriseContainerCallback.CONTAINER_PACKAGE_UNINSTALL_FAILURE;
            } else {
                throw new IllegalArgumentException("Unexpected target windowing mode " + WindowConfiguration.windowingModeToString(i));
            }
        } else {
            i2 = EnterpriseContainerCallback.CONTAINER_PACKAGE_UNINSTALL_SUCCESS;
        }
        ((ArrayList) this.mPendingTransitionTokens).add(transitions.startTransition(i2, windowContainerTransaction, this));
    }
}
