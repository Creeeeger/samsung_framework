package com.android.wm.shell.shortcut;

import android.app.ActivityManager;
import android.view.KeyEvent;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutRotationKeyLaunchPolicy extends ShortcutLaunchPolicy {
    public ShortcutRotationKeyLaunchPolicy(ShortcutController shortcutController) {
        super(shortcutController, true);
    }

    @Override // com.android.wm.shell.shortcut.ShortcutLaunchPolicy
    public final void handleShortCutKeys(KeyEvent keyEvent) {
        final ShortcutController shortcutController = this.mShortcutController;
        ActivityManager.RunningTaskInfo runningTaskInfo = shortcutController.mRunningTaskInfo;
        if (keyEvent.isCtrlPressed() && runningTaskInfo.isSplitScreen()) {
            shortcutController.getClass();
            boolean z = CoreRune.MW_MULTI_SPLIT;
            ShellExecutor shellExecutor = shortcutController.mMainExecutor;
            if (z && !MultiWindowUtils.isInSubDisplay(shortcutController.mContext)) {
                final int i = 0;
                ((HandlerExecutor) shellExecutor).execute(new Runnable() { // from class: com.android.wm.shell.shortcut.ShortcutController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                ((SplitScreenController) shortcutController.mSplitScreenController.get()).rotateMultiSplitWithTransition();
                                return;
                            default:
                                ((SplitScreenController) shortcutController.mSplitScreenController.get()).swapTasksInSplitScreenMode();
                                return;
                        }
                    }
                });
            } else {
                final int i2 = 1;
                ((HandlerExecutor) shellExecutor).execute(new Runnable() { // from class: com.android.wm.shell.shortcut.ShortcutController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                ((SplitScreenController) shortcutController.mSplitScreenController.get()).rotateMultiSplitWithTransition();
                                return;
                            default:
                                ((SplitScreenController) shortcutController.mSplitScreenController.get()).swapTasksInSplitScreenMode();
                                return;
                        }
                    }
                });
            }
        }
    }
}
