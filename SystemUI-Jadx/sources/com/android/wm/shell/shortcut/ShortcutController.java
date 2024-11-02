package com.android.wm.shell.shortcut;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Rect;
import android.util.SparseArray;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.windowdecor.TaskOperations;
import com.android.wm.shell.windowdecor.TaskOperations$$ExternalSyntheticLambda0;
import com.android.wm.shell.windowdecor.WindowDecorViewModel;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.multiwindow.IKeyEventListener;
import com.samsung.android.rune.CoreRune;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutController {
    public final Context mContext;
    public final DexCompatRestartDialogUtils mDexCompatRestartDialogUtils;
    public final DisplayController mDisplayController;
    public boolean mIsNewDexMode;
    public final ShellExecutor mMainExecutor;
    public ActivityManager.RunningTaskInfo mRunningTaskInfo;
    public final Optional mSplitScreenController;
    public final SyncTransactionQueue mSyncQueue;
    public TaskOperations mTaskOperations;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final WindowDecorViewModel mWindowDecorationViewModel;
    public final KeyEventListenerImpl mKeyEventListener = new KeyEventListenerImpl();
    public final SparseArray mShortCutPolicyMap = new SparseArray();
    public final Rect mTmpRect = new Rect();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class KeyEventListenerImpl extends IKeyEventListener.Stub {
        public KeyEventListenerImpl() {
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void sendShortcutKeyWithFocusedTask(int r5, android.view.KeyEvent r6) {
            /*
                r4 = this;
                com.android.wm.shell.shortcut.ShortcutController r0 = com.android.wm.shell.shortcut.ShortcutController.this
                com.android.wm.shell.windowdecor.TaskOperations r1 = r0.mTaskOperations
                java.lang.String r2 = "ShortcutController"
                if (r1 == 0) goto Lb8
                java.util.Optional r0 = r0.mSplitScreenController
                boolean r0 = r0.isPresent()
                if (r0 != 0) goto L12
                goto Lb8
            L12:
                com.android.wm.shell.shortcut.ShortcutController r0 = com.android.wm.shell.shortcut.ShortcutController.this
                java.util.Optional r0 = r0.mSplitScreenController
                java.lang.Object r0 = r0.get()
                com.android.wm.shell.splitscreen.SplitScreenController r0 = (com.android.wm.shell.splitscreen.SplitScreenController) r0
                com.android.wm.shell.splitscreen.StageCoordinator r0 = r0.getTransitionHandler()
                if (r0 == 0) goto L47
                com.android.wm.shell.splitscreen.MainStage r1 = r0.mMainStage
                android.app.ActivityManager$RunningTaskInfo r1 = r1.mRootTaskInfo
                r3 = 0
                if (r1 == 0) goto L2c
                android.content.ComponentName r1 = r1.topActivity
                goto L2d
            L2c:
                r1 = r3
            L2d:
                com.android.wm.shell.splitscreen.SideStage r0 = r0.mSideStage
                android.app.ActivityManager$RunningTaskInfo r0 = r0.mRootTaskInfo
                if (r0 == 0) goto L35
                android.content.ComponentName r3 = r0.topActivity
            L35:
                if (r1 == 0) goto L3d
                boolean r0 = com.samsung.android.multiwindow.MultiWindowUtils.isAppsEdgeActivity(r1)
                if (r0 != 0) goto L45
            L3d:
                if (r3 == 0) goto L47
                boolean r0 = com.samsung.android.multiwindow.MultiWindowUtils.isAppsEdgeActivity(r3)
                if (r0 == 0) goto L47
            L45:
                r0 = 1
                goto L48
            L47:
                r0 = 0
            L48:
                if (r0 == 0) goto L51
                java.lang.String r4 = "sendShortcutKeyWithFocusedTask: AppsEdge is running on top"
                android.util.Log.e(r2, r4)
                return
            L51:
                com.android.wm.shell.shortcut.ShortcutController r0 = com.android.wm.shell.shortcut.ShortcutController.this
                android.util.SparseArray r0 = r0.mShortCutPolicyMap
                int r1 = r6.getKeyCode()
                java.lang.Object r0 = r0.get(r1)
                com.android.wm.shell.shortcut.ShortcutLaunchPolicy r0 = (com.android.wm.shell.shortcut.ShortcutLaunchPolicy) r0
                if (r0 != 0) goto L74
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                java.lang.String r5 = "sendShortcutKeyWithFocusedTask: Not found the policy : "
                r4.<init>(r5)
                r4.append(r6)
                java.lang.String r4 = r4.toString()
                android.util.Log.e(r2, r4)
                return
            L74:
                boolean r1 = r0.mSupportMultiSplitStatus
                if (r1 != 0) goto L8f
                com.android.wm.shell.shortcut.ShortcutController r1 = com.android.wm.shell.shortcut.ShortcutController.this
                java.util.Optional r1 = r1.mSplitScreenController
                java.lang.Object r1 = r1.get()
                com.android.wm.shell.splitscreen.SplitScreenController r1 = (com.android.wm.shell.splitscreen.SplitScreenController) r1
                boolean r1 = r1.isMultiSplitScreenVisible()
                if (r1 == 0) goto L8f
                java.lang.String r4 = "sendShortcutKeyWithFocusedTask: The 3 split-mode is running"
                android.util.Log.e(r2, r4)
                return
            L8f:
                com.android.wm.shell.shortcut.ShortcutController r1 = com.android.wm.shell.shortcut.ShortcutController.this
                com.android.wm.shell.ShellTaskOrganizer r1 = r1.mTaskOrganizer
                android.app.ActivityManager$RunningTaskInfo r5 = r1.getRunningTaskInfo(r5)
                if (r5 != 0) goto La0
                java.lang.String r4 = "sendShortcutKeyWithFocusedTask: There is no running task."
                android.util.Log.e(r2, r4)
                return
            La0:
                com.android.wm.shell.shortcut.ShortcutController r4 = com.android.wm.shell.shortcut.ShortcutController.this
                r4.mRunningTaskInfo = r5
                boolean r1 = com.samsung.android.rune.CoreRune.MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING
                if (r1 == 0) goto Lb4
                boolean r1 = com.samsung.android.rune.CoreRune.MT_NEW_DEX
                if (r1 == 0) goto Lb4
                android.content.res.Configuration r5 = r5.configuration
                boolean r5 = r5.isNewDexMode()
                r4.mIsNewDexMode = r5
            Lb4:
                r0.handleShortCutKeys(r6)
                return
            Lb8:
                java.lang.String r4 = "sendShortcutKeyWithFocusedTask: Not set up normally"
                android.util.Log.e(r2, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.shortcut.ShortcutController.KeyEventListenerImpl.sendShortcutKeyWithFocusedTask(int, android.view.KeyEvent):void");
        }
    }

    public ShortcutController(Context context, SyncTransactionQueue syncTransactionQueue, ShellExecutor shellExecutor, Optional<SplitScreenController> optional, ShellTaskOrganizer shellTaskOrganizer, DisplayController displayController, WindowDecorViewModel windowDecorViewModel, DexCompatRestartDialogUtils dexCompatRestartDialogUtils) {
        this.mContext = context;
        this.mSyncQueue = syncTransactionQueue;
        this.mMainExecutor = shellExecutor;
        this.mSplitScreenController = optional;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mDisplayController = displayController;
        this.mWindowDecorationViewModel = windowDecorViewModel;
        this.mDexCompatRestartDialogUtils = dexCompatRestartDialogUtils;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void applyMaxOrMinHeight(boolean r10) {
        /*
            r9 = this;
            android.app.ActivityManager$RunningTaskInfo r0 = r9.mRunningTaskInfo
            com.android.wm.shell.shortcut.DexCompatRestartDialogUtils r1 = r9.mDexCompatRestartDialogUtils
            r1.getClass()
            boolean r1 = com.android.wm.shell.shortcut.DexCompatRestartDialogUtils.isDexCompatEnabled(r0)
            com.android.wm.shell.windowdecor.WindowDecorViewModel r2 = r9.mWindowDecorationViewModel
            r3 = 0
            if (r1 == 0) goto L11
            goto L1c
        L11:
            boolean r1 = r2 instanceof com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel
            if (r1 != 0) goto L1e
            java.lang.String r0 = "ShortcutController"
            java.lang.String r1 = "applyMinHeightBounds: window decoration view model is not proper type."
            android.util.Log.e(r0, r1)
        L1c:
            r0 = r3
            goto L22
        L1e:
            boolean r0 = r0.isFreeform()
        L22:
            if (r0 != 0) goto L25
            return
        L25:
            com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel r2 = (com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel) r2
            android.app.ActivityManager$RunningTaskInfo r0 = r9.mRunningTaskInfo
            android.content.res.Configuration r1 = r0.configuration
            android.app.WindowConfiguration r1 = r1.windowConfiguration
            android.graphics.Rect r1 = r1.getBounds()
            int r4 = r0.displayId
            com.android.wm.shell.common.DisplayController r5 = r9.mDisplayController
            android.view.InsetsState r4 = r5.getInsetsState(r4)
            android.graphics.Rect r6 = r4.getDisplayFrame()
            android.graphics.Rect r7 = r9.mTmpRect
            r7.set(r6)
            int r6 = android.view.WindowInsets.Type.systemBars()
            int r8 = android.view.WindowInsets.Type.displayCutout()
            r6 = r6 | r8
            android.graphics.Insets r4 = r4.calculateInsets(r7, r6, r3)
            r7.inset(r4)
            int r4 = r1.left
            r7.left = r4
            int r4 = r1.right
            r7.right = r4
            if (r10 == 0) goto L8a
            int r10 = r7.top
            int r4 = r0.taskId
            android.util.SparseArray r5 = r2.mWindowDecorByTaskId
            java.lang.Object r4 = r5.get(r4)
            com.android.wm.shell.windowdecor.MultitaskingWindowDecoration r4 = (com.android.wm.shell.windowdecor.MultitaskingWindowDecoration) r4
            if (r4 != 0) goto L6c
            r4 = r3
            goto L70
        L6c:
            int r4 = r4.getCaptionVisibleHeight()
        L70:
            int r4 = r4 + r10
            r7.top = r4
            int r10 = r7.bottom
            int r4 = r0.taskId
            android.util.SparseArray r2 = r2.mWindowDecorByTaskId
            java.lang.Object r2 = r2.get(r4)
            com.android.wm.shell.windowdecor.MultitaskingWindowDecoration r2 = (com.android.wm.shell.windowdecor.MultitaskingWindowDecoration) r2
            if (r2 != 0) goto L82
            goto L86
        L82:
            int r3 = r2.getFreeformThickness$1()
        L86:
            int r10 = r10 - r3
            r7.bottom = r10
            goto Lab
        L8a:
            int r10 = r1.top
            r7.top = r10
            android.app.ActivityManager$RunningTaskInfo r2 = r9.mRunningTaskInfo
            int r3 = r2.minHeight
            if (r3 >= 0) goto La6
            int r3 = r2.displayId
            com.android.wm.shell.common.DisplayLayout r3 = r5.getDisplayLayout(r3)
            int r3 = r3.mDensityDpi
            float r3 = (float) r3
            r4 = 1003277517(0x3bcccccd, float:0.00625)
            float r3 = r3 * r4
            int r2 = r2.defaultMinSize
            float r2 = (float) r2
            float r2 = r2 * r3
            goto La7
        La6:
            float r2 = (float) r3
        La7:
            int r2 = (int) r2
            int r10 = r10 + r2
            r7.bottom = r10
        Lab:
            boolean r10 = r1.equals(r7)
            if (r10 == 0) goto Lb2
            return
        Lb2:
            android.window.WindowContainerTransaction r10 = new android.window.WindowContainerTransaction
            r10.<init>()
            android.window.WindowContainerToken r0 = r0.token
            r10.setBounds(r0, r7)
            com.android.wm.shell.ShellTaskOrganizer r9 = r9.mTaskOrganizer
            r9.applyTransaction(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.shortcut.ShortcutController.applyMaxOrMinHeight(boolean):void");
    }

    public final void moveFreeformToSplit(int i) {
        int i2;
        TaskOperations taskOperations = this.mTaskOperations;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRunningTaskInfo;
        taskOperations.getClass();
        if (runningTaskInfo != null) {
            taskOperations.mSplitScreenController.ifPresent(new TaskOperations$$ExternalSyntheticLambda0(runningTaskInfo, i));
        }
        if (CoreRune.MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING) {
            if (this.mIsNewDexMode) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            CoreSaLogger.logForAdvanced("1000", "From Keyboard shortcut", i2);
        }
    }
}
