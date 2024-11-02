package com.android.wm.shell.shortcut;

import android.app.ActivityManager;
import android.util.Log;
import android.view.KeyEvent;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutRightKeyLaunchPolicy extends ShortcutLaunchPolicy {
    public ShortcutRightKeyLaunchPolicy(ShortcutController shortcutController) {
        super(shortcutController, false);
    }

    @Override // com.android.wm.shell.shortcut.ShortcutLaunchPolicy
    public final void handleShortCutKeys(KeyEvent keyEvent) {
        ShortcutController shortcutController = this.mShortcutController;
        ActivityManager.RunningTaskInfo runningTaskInfo = shortcutController.mRunningTaskInfo;
        if (keyEvent.isCtrlPressed()) {
            boolean z = false;
            int i = 1;
            if (runningTaskInfo.getWindowingMode() == 1) {
                ((SplitScreenController) shortcutController.mSplitScreenController.get()).toggleSplitScreen(0);
                if (CoreRune.MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING) {
                    if (shortcutController.mIsNewDexMode) {
                        i = 2;
                    }
                    CoreSaLogger.logForAdvanced("1000", "From Keyboard shortcut", i);
                    return;
                }
                return;
            }
            if (runningTaskInfo.getWindowingMode() == 5) {
                if (CoreRune.MW_MULTI_SPLIT && !MultiWindowUtils.isInSubDisplay(shortcutController.mContext)) {
                    shortcutController.moveFreeformToSplit(32);
                    return;
                }
                DisplayLayout displayLayout = shortcutController.mDisplayController.getDisplayLayout(shortcutController.mRunningTaskInfo.getDisplayId());
                if (displayLayout == null) {
                    Log.w("ShortcutController", "Failed to get new DisplayLayout.");
                } else if (displayLayout.mWidth > displayLayout.mHeight) {
                    z = true;
                }
                if (z) {
                    shortcutController.moveFreeformToSplit(32);
                } else {
                    shortcutController.moveFreeformToSplit(64);
                }
            }
        }
    }
}
