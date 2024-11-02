package com.android.wm.shell.shortcut;

import android.app.ActivityManager;
import android.view.KeyEvent;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutUpKeyLaunchPolicy extends ShortcutLaunchPolicy {
    public ShortcutUpKeyLaunchPolicy(ShortcutController shortcutController) {
        super(shortcutController, false);
    }

    @Override // com.android.wm.shell.shortcut.ShortcutLaunchPolicy
    public final void handleShortCutKeys(KeyEvent keyEvent) {
        ShortcutController shortcutController = this.mShortcutController;
        ActivityManager.RunningTaskInfo runningTaskInfo = shortcutController.mRunningTaskInfo;
        int i = 1;
        if (keyEvent.isCtrlPressed()) {
            if (runningTaskInfo.getWindowingMode() != 1) {
                ActivityManager.RunningTaskInfo runningTaskInfo2 = shortcutController.mRunningTaskInfo;
                DexCompatRestartDialogUtils dexCompatRestartDialogUtils = shortcutController.mDexCompatRestartDialogUtils;
                dexCompatRestartDialogUtils.getClass();
                if (DexCompatRestartDialogUtils.isDexCompatEnabled(runningTaskInfo2)) {
                    dexCompatRestartDialogUtils.toggleFreeformForDexCompatApp(runningTaskInfo2.taskId);
                } else {
                    shortcutController.mTaskOperations.maximizeTask(runningTaskInfo2);
                }
                if (CoreRune.MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING) {
                    if (shortcutController.mIsNewDexMode) {
                        i = 2;
                    }
                    CoreSaLogger.logForAdvanced("2090", "From Keyboard shortcut", i);
                    return;
                }
                return;
            }
            return;
        }
        if (keyEvent.isShiftPressed() && runningTaskInfo.getWindowingMode() == 5) {
            shortcutController.applyMaxOrMinHeight(true);
        }
    }
}
