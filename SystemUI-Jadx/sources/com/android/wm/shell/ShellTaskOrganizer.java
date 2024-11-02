package com.android.wm.shell;

import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.TaskInfo;
import android.content.Context;
import android.content.LocusId;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.view.SurfaceControl;
import android.window.ITaskOrganizerController;
import android.window.StartingWindowInfo;
import android.window.StartingWindowRemovalInfo;
import android.window.TaskAppearedInfo;
import android.window.TaskOrganizer;
import android.window.WindowContainerTransaction;
import com.android.internal.R;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.LocalServices;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TaskStackListenerCallback;
import com.android.wm.shell.common.TaskStackListenerImpl;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.compatui.CompatUIController;
import com.android.wm.shell.freeform.FreeformTaskListener;
import com.android.wm.shell.fullscreen.FullscreenTaskListener;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.splitscreen.ForcedResizableInfoActivityController;
import com.android.wm.shell.splitscreen.ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.splitscreen.SplitScreenProxyService;
import com.android.wm.shell.splitscreen.SplitScreenProxyService$$ExternalSyntheticLambda0;
import com.android.wm.shell.startingsurface.SplashscreenContentDrawer;
import com.android.wm.shell.startingsurface.StartingWindowController;
import com.android.wm.shell.startingsurface.StartingWindowController$$ExternalSyntheticLambda1;
import com.android.wm.shell.startingsurface.StartingWindowController$$ExternalSyntheticLambda2;
import com.android.wm.shell.startingsurface.StartingWindowController$$ExternalSyntheticLambda3;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.unfold.UnfoldAnimationController;
import com.android.wm.shell.unfold.animation.UnfoldTaskAnimator;
import com.android.wm.shell.windowdecor.ImmersiveCaptionBehavior;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecoration;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.TaskOrganizerInfo;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ShellTaskOrganizer extends TaskOrganizer implements CompatUIController.CompatUICallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final CompatUIController mCompatUI;
    public final SparseArray mDisplayChangingTasks;
    public final ArraySet mFocusListeners;
    public final ForcedResizableInfoActivityController mForcedResizableController;
    public ActivityManager.RunningTaskInfo mLastFocusedTaskInfo;
    public final ArrayMap mLaunchCookieToListener;
    public final Object mLock;
    public final ArraySet mLocusIdListeners;
    public final ArraySet mMultiWindowCoreStateChangeListeners;
    public final Optional mRecentTasks;
    public final ShellCommandHandler mShellCommandHandler;
    public StartingWindowController mStartingWindow;
    public final SparseArray mTaskListeners;
    public final SparseArray mTasks;
    public final UnfoldAnimationController mUnfoldAnimationController;
    public final SparseArray mVisibleTasksWithLocusId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.ShellTaskOrganizer$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements TaskStackListenerCallback {
        public AnonymousClass1() {
        }

        @Override // com.android.wm.shell.common.TaskStackListenerCallback
        public final void onActivityDismissingSplitTask(final String str) {
            ShellTaskOrganizer.this.getExecutor().execute(new Runnable() { // from class: com.android.wm.shell.ShellTaskOrganizer$1$$ExternalSyntheticLambda0
                /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
                /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0039  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void run() {
                    /*
                        r7 = this;
                        com.android.wm.shell.ShellTaskOrganizer$1 r0 = com.android.wm.shell.ShellTaskOrganizer.AnonymousClass1.this
                        java.lang.String r7 = r2
                        com.android.wm.shell.ShellTaskOrganizer r0 = com.android.wm.shell.ShellTaskOrganizer.this
                        com.android.wm.shell.splitscreen.ForcedResizableInfoActivityController r0 = r0.mForcedResizableController
                        r0.getClass()
                        long r1 = android.os.SystemClock.elapsedRealtime()
                        long r3 = r0.mLastShowingTime
                        long r3 = r1 - r3
                        r5 = 5000(0x1388, double:2.4703E-320)
                        int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                        if (r3 >= 0) goto L1a
                        goto L61
                    L1a:
                        boolean r3 = android.text.TextUtils.isEmpty(r7)
                        android.content.Context r4 = r0.mContext
                        if (r3 != 0) goto L36
                        android.content.pm.PackageManager r3 = r4.getPackageManager()     // Catch: java.lang.Exception -> L36
                        r5 = 0
                        android.content.pm.ApplicationInfo r7 = r3.getApplicationInfo(r7, r5)     // Catch: java.lang.Exception -> L36
                        if (r7 == 0) goto L36
                        java.lang.CharSequence r7 = r7.loadLabel(r3)     // Catch: java.lang.Exception -> L36
                        java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> L36
                        goto L37
                    L36:
                        r7 = 0
                    L37:
                        if (r7 == 0) goto L45
                        r3 = 2131954649(0x7f130bd9, float:1.9545803E38)
                        java.lang.Object[] r7 = new java.lang.Object[]{r7}
                        java.lang.String r7 = r4.getString(r3, r7)
                        goto L4c
                    L45:
                        r7 = 2131954648(0x7f130bd8, float:1.9545801E38)
                        java.lang.String r7 = r4.getString(r7)
                    L4c:
                        r3 = 1
                        android.widget.Toast r7 = android.widget.Toast.makeText(r4, r7, r3)
                        r7.show()
                        r0.mLastShowingTime = r1
                        boolean r7 = com.samsung.android.rune.CoreRune.MW_SA_LOGGING
                        if (r7 == 0) goto L61
                        java.lang.String r7 = "1005"
                        java.lang.String r0 = "Switch to MW-incompatible app"
                        com.samsung.android.core.CoreSaLogger.logForAdvanced(r7, r0)
                    L61:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.ShellTaskOrganizer$1$$ExternalSyntheticLambda0.run():void");
                }
            });
        }

        @Override // com.android.wm.shell.common.TaskStackListenerCallback
        public final void onActivityForcedResizable(final String str, final int i, final int i2) {
            ShellTaskOrganizer.this.getExecutor().execute(new Runnable() { // from class: com.android.wm.shell.ShellTaskOrganizer$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    ShellTaskOrganizer.AnonymousClass1 anonymousClass1 = ShellTaskOrganizer.AnonymousClass1.this;
                    String str2 = str;
                    int i3 = i;
                    int i4 = i2;
                    ForcedResizableInfoActivityController forcedResizableInfoActivityController = ShellTaskOrganizer.this.mForcedResizableController;
                    forcedResizableInfoActivityController.getClass();
                    if (str2 == null) {
                        z = false;
                    } else if ("com.android.systemui".equals(str2)) {
                        z = true;
                    } else {
                        ArraySet arraySet = forcedResizableInfoActivityController.mPackagesShownInSession;
                        boolean contains = arraySet.contains(str2);
                        arraySet.add(str2);
                        z = contains;
                    }
                    if (!z) {
                        boolean z2 = CoreRune.SYSFW_APP_SPEG;
                        ArraySet arraySet2 = forcedResizableInfoActivityController.mPendingTasks;
                        if (z2) {
                            PackageManager packageManager = forcedResizableInfoActivityController.mContext.getPackageManager();
                            if (packageManager == null || !packageManager.isSpeg(str2, UserHandle.myUserId())) {
                                arraySet2.add(new ForcedResizableInfoActivityController.PendingTaskRecord(forcedResizableInfoActivityController, i3, i4));
                            }
                        } else {
                            arraySet2.add(new ForcedResizableInfoActivityController.PendingTaskRecord(forcedResizableInfoActivityController, i3, i4));
                        }
                        HandlerExecutor handlerExecutor = (HandlerExecutor) forcedResizableInfoActivityController.mMainExecutor;
                        ForcedResizableInfoActivityController$$ExternalSyntheticLambda0 forcedResizableInfoActivityController$$ExternalSyntheticLambda0 = forcedResizableInfoActivityController.mTimeoutRunnable;
                        handlerExecutor.removeCallbacks(forcedResizableInfoActivityController$$ExternalSyntheticLambda0);
                        handlerExecutor.executeDelayed(1000L, forcedResizableInfoActivityController$$ExternalSyntheticLambda0);
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface FocusListener {
        void onFocusTaskChanged(ActivityManager.RunningTaskInfo runningTaskInfo);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface LocusIdListener {
        void onVisibilityChanged(int i, LocusId locusId, boolean z);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface MultiWindowCoreStateChangeListener {
        boolean onMultiWindowCoreStateChanged(int i);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public @interface TaskListenerType {
    }

    public ShellTaskOrganizer(ShellExecutor shellExecutor, Context context, TaskStackListenerImpl taskStackListenerImpl) {
        this(null, null, null, null, Optional.empty(), Optional.empty(), shellExecutor, taskStackListenerImpl, context);
    }

    public static int taskInfoToTaskListenerType(ActivityManager.RunningTaskInfo runningTaskInfo) {
        int windowingMode = runningTaskInfo.getWindowingMode();
        if (windowingMode != 1) {
            if (windowingMode != 2) {
                if (windowingMode != 5) {
                    if (windowingMode != 6) {
                        return -1;
                    }
                    return -3;
                }
                return -5;
            }
            return -4;
        }
        return -2;
    }

    public static String taskListenerTypeToString(int i) {
        if (i != -5) {
            if (i != -4) {
                if (i != -3) {
                    if (i != -2) {
                        if (i != -1) {
                            return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("taskId#", i);
                        }
                        return "TASK_LISTENER_TYPE_UNDEFINED";
                    }
                    return "TASK_LISTENER_TYPE_FULLSCREEN";
                }
                return "TASK_LISTENER_TYPE_MULTI_WINDOW";
            }
            return "TASK_LISTENER_TYPE_PIP";
        }
        return "TASK_LISTENER_TYPE_FREEFORM";
    }

    public final void addListenerForType(TaskListener taskListener, int... iArr) {
        synchronized (this.mLock) {
            if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 1990759023, 0, null, String.valueOf(Arrays.toString(iArr)), String.valueOf(taskListener));
            }
            for (int i : iArr) {
                if (this.mTaskListeners.get(i) == null) {
                    this.mTaskListeners.put(i, taskListener);
                } else {
                    throw new IllegalArgumentException("Listener for listenerType=" + i + " already exists");
                }
            }
            int size = this.mTasks.size();
            while (true) {
                size--;
                if (size >= 0) {
                    TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) this.mTasks.valueAt(size);
                    if (getTaskListener(taskAppearedInfo.getTaskInfo(), false) == taskListener) {
                        taskListener.onTaskAppeared(taskAppearedInfo.getTaskInfo(), taskAppearedInfo.getLeash());
                    }
                }
            }
        }
    }

    public final void addStartingWindow(StartingWindowInfo startingWindowInfo) {
        StartingWindowController startingWindowController = this.mStartingWindow;
        if (startingWindowController != null) {
            startingWindowController.getClass();
            ((HandlerExecutor) startingWindowController.mSplashScreenExecutor).execute(new StartingWindowController$$ExternalSyntheticLambda1(0, startingWindowController, startingWindowInfo));
        }
    }

    public final WindowContainerTransaction changeByFreeformCaptionType(int i, int i2) {
        String str;
        ActivityManager.RunningTaskInfo runningTaskInfo = getRunningTaskInfo(i);
        if (CoreRune.MW_SHELL_FREEFORM_CAPTION_TYPE && runningTaskInfo != null) {
            if ((!CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE || !runningTaskInfo.getConfiguration().isNewDexMode()) && runningTaskInfo.getWindowingMode() == 5) {
                synchronized (this.mLock) {
                    if (this.mTaskListeners.contains(-5)) {
                        FreeformTaskListener freeformTaskListener = (FreeformTaskListener) this.mTaskListeners.get(-5);
                        if (CoreRune.MW_FREEFORM_HEADER_TYPE_SA_LOGGING) {
                            if (i2 == 0) {
                                str = "From header to handle";
                            } else {
                                str = "From handle to header";
                            }
                            CoreSaLogger.logForAdvanced("2012", str);
                        }
                        return freeformTaskListener.resizeTasksByFreeformCaptionType(i2);
                    }
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public final void clearForcedResizablePackagesIfNeeded() {
        boolean z = true;
        int size = this.mTaskListeners.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            TaskListener taskListener = (TaskListener) this.mTaskListeners.valueAt(size);
            if (taskListener.isMultiWindow() && taskListener.hasChild()) {
                z = false;
                break;
            }
            size--;
        }
        if (!z) {
            return;
        }
        Log.w("ShellTaskOrganizer", "clearForcedResizablePackagesIfNeeded");
        this.mForcedResizableController.mPackagesShownInSession.clear();
    }

    public final void copySplashScreenView(int i) {
        StartingWindowController startingWindowController = this.mStartingWindow;
        if (startingWindowController != null) {
            startingWindowController.getClass();
            ((HandlerExecutor) startingWindowController.mSplashScreenExecutor).execute(new StartingWindowController$$ExternalSyntheticLambda3(startingWindowController, i, 2));
        }
    }

    public final void createRootTask(int i, TaskListener taskListener) {
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -1312360667, 5, null, Long.valueOf(i), Long.valueOf(1), String.valueOf(taskListener.toString()));
        }
        Binder binder = new Binder();
        synchronized (this.mLock) {
            this.mLaunchCookieToListener.put(binder, taskListener);
        }
        super.createRootTask(i, 1, binder, false);
    }

    public final void createStageRootTask(int i, int i2, TaskListener taskListener) {
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -1836647777, 21, null, Long.valueOf(i), Long.valueOf(6), Long.valueOf(i2), String.valueOf(taskListener.toString()));
        }
        Binder binder = new Binder();
        synchronized (this.mLock) {
            this.mLaunchCookieToListener.put(binder, taskListener);
        }
        super.createStageRootTask(i, 6, i2, binder);
    }

    public final int getFreeformCaptionType(ActivityManager.RunningTaskInfo runningTaskInfo) {
        synchronized (this.mLock) {
            if (this.mTaskListeners.contains(-5)) {
                FreeformTaskListener freeformTaskListener = (FreeformTaskListener) this.mTaskListeners.get(-5);
                if (runningTaskInfo != null) {
                    if (CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE && runningTaskInfo.getConfiguration().isNewDexMode()) {
                        return freeformTaskListener.mNewDexCaptionType;
                    }
                    if (runningTaskInfo.getConfiguration().isNewDexMode()) {
                        return 1;
                    }
                    if (runningTaskInfo.getWindowingMode() == 5) {
                        return freeformTaskListener.mCaptionType;
                    }
                }
            }
            return 0;
        }
    }

    public final ActivityManager.RunningTaskInfo getRunningTaskInfo(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        synchronized (this.mLock) {
            TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) this.mTasks.get(i);
            if (taskAppearedInfo != null) {
                runningTaskInfo = taskAppearedInfo.getTaskInfo();
            } else {
                runningTaskInfo = null;
            }
        }
        return runningTaskInfo;
    }

    public final ArrayList getRunningTasks(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mTasks.size(); i2++) {
            ActivityManager.RunningTaskInfo taskInfo = ((TaskAppearedInfo) this.mTasks.valueAt(i2)).getTaskInfo();
            if (taskInfo.displayId == i) {
                arrayList.add(taskInfo);
            }
        }
        return arrayList;
    }

    public final TaskListener getTaskListener(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z) {
        TaskListener taskListener;
        int i = runningTaskInfo.taskId;
        ArrayList arrayList = runningTaskInfo.launchCookies;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            IBinder iBinder = (IBinder) arrayList.get(size);
            TaskListener taskListener2 = (TaskListener) this.mLaunchCookieToListener.get(iBinder);
            if (taskListener2 != null) {
                if (z) {
                    this.mLaunchCookieToListener.remove(iBinder);
                    this.mTaskListeners.put(i, taskListener2);
                }
                return taskListener2;
            }
        }
        TaskListener taskListener3 = (TaskListener) this.mTaskListeners.get(i);
        if (taskListener3 != null) {
            return taskListener3;
        }
        if (runningTaskInfo.hasParentTask() && (taskListener = (TaskListener) this.mTaskListeners.get(runningTaskInfo.parentTaskId)) != null) {
            return taskListener;
        }
        return (TaskListener) this.mTaskListeners.get(taskInfoToTaskListenerType(runningTaskInfo));
    }

    public final List getVisibleTaskAppearedInfos() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList();
            for (int size = this.mTasks.size() - 1; size >= 0; size--) {
                TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) this.mTasks.valueAt(size);
                if (taskAppearedInfo.getTaskInfo().isVisible) {
                    arrayList.add(taskAppearedInfo);
                }
            }
        }
        return arrayList;
    }

    public final boolean isTargetTaskImeShowing(int i) {
        boolean z;
        FreeformTaskListener freeformTaskListener = (FreeformTaskListener) this.mTaskListeners.get(-5);
        if (freeformTaskListener == null) {
            return false;
        }
        if (freeformTaskListener.mDisplayImeController.isImeShowing(i) && freeformTaskListener.mImePositionProcessor.mImeShown) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        if (r0 != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void notifyCompatUI(android.app.ActivityManager.RunningTaskInfo r2, com.android.wm.shell.ShellTaskOrganizer.TaskListener r3) {
        /*
            r1 = this;
            com.android.wm.shell.compatui.CompatUIController r0 = r1.mCompatUI
            if (r0 != 0) goto L5
            return
        L5:
            if (r3 == 0) goto L33
            boolean r0 = r3.supportCompatUI()
            if (r0 == 0) goto L33
            boolean r0 = r2.hasCompatUI()
            if (r0 != 0) goto L28
            boolean r0 = com.samsung.android.rune.CoreRune.FW_FIXED_ASPECT_RATIO_MODE
            if (r0 == 0) goto L1b
            boolean r0 = r2.topActivityInFixedAspectRatio
            if (r0 != 0) goto L23
        L1b:
            boolean r0 = com.samsung.android.rune.CoreRune.FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT
            if (r0 == 0) goto L25
            boolean r0 = r2.topActivityInBoundsCompat
            if (r0 == 0) goto L25
        L23:
            r0 = 1
            goto L26
        L25:
            r0 = 0
        L26:
            if (r0 == 0) goto L33
        L28:
            boolean r0 = r2.isVisible
            if (r0 != 0) goto L2d
            goto L33
        L2d:
            com.android.wm.shell.compatui.CompatUIController r1 = r1.mCompatUI
            r1.onCompatInfoChanged(r2, r3)
            return
        L33:
            com.android.wm.shell.compatui.CompatUIController r1 = r1.mCompatUI
            r3 = 0
            r1.onCompatInfoChanged(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.ShellTaskOrganizer.notifyCompatUI(android.app.ActivityManager$RunningTaskInfo, com.android.wm.shell.ShellTaskOrganizer$TaskListener):void");
    }

    public final void notifyLocusIdChange(int i, LocusId locusId, boolean z) {
        for (int i2 = 0; i2 < this.mLocusIdListeners.size(); i2++) {
            ((LocusIdListener) this.mLocusIdListeners.valueAt(i2)).onVisibilityChanged(i, locusId, z);
        }
    }

    public final void notifyLocusVisibilityIfNeeded(TaskInfo taskInfo) {
        int i = taskInfo.taskId;
        LocusId locusId = (LocusId) this.mVisibleTasksWithLocusId.get(i);
        boolean equals = Objects.equals(locusId, taskInfo.mTopActivityLocusId);
        if (locusId == null) {
            LocusId locusId2 = taskInfo.mTopActivityLocusId;
            if (locusId2 != null && taskInfo.isVisible) {
                this.mVisibleTasksWithLocusId.put(i, locusId2);
                notifyLocusIdChange(i, taskInfo.mTopActivityLocusId, true);
                return;
            }
            return;
        }
        if (equals && !taskInfo.isVisible) {
            this.mVisibleTasksWithLocusId.remove(i);
            notifyLocusIdChange(i, taskInfo.mTopActivityLocusId, false);
        } else if (!equals) {
            if (taskInfo.isVisible) {
                this.mVisibleTasksWithLocusId.put(i, taskInfo.mTopActivityLocusId);
                notifyLocusIdChange(i, locusId, false);
                notifyLocusIdChange(i, taskInfo.mTopActivityLocusId, true);
            } else {
                this.mVisibleTasksWithLocusId.remove(taskInfo.taskId);
                notifyLocusIdChange(i, locusId, false);
            }
        }
    }

    public final void onAppSplashScreenViewRemoved(int i) {
        StartingWindowController startingWindowController = this.mStartingWindow;
        if (startingWindowController != null) {
            startingWindowController.getClass();
            ((HandlerExecutor) startingWindowController.mSplashScreenExecutor).execute(new StartingWindowController$$ExternalSyntheticLambda3(startingWindowController, i, 0));
        }
    }

    public final void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) {
        synchronized (this.mLock) {
            if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 980952660, 1, null, Long.valueOf(runningTaskInfo.taskId));
            }
            TaskListener taskListener = getTaskListener(runningTaskInfo, false);
            if (taskListener != null) {
                taskListener.onBackPressedOnTaskRoot(runningTaskInfo);
            }
        }
    }

    public final void onImeDrawnOnTask(int i) {
        StartingWindowController startingWindowController = this.mStartingWindow;
        if (startingWindowController != null) {
            startingWindowController.getClass();
            ((HandlerExecutor) startingWindowController.mSplashScreenExecutor).execute(new StartingWindowController$$ExternalSyntheticLambda3(startingWindowController, i, 1));
        }
    }

    public final void onImmersiveModeChanged(int i, boolean z) {
        synchronized (this.mLock) {
            TaskListener taskListener = (TaskListener) this.mTaskListeners.get(-5);
            if (taskListener instanceof FreeformTaskListener) {
                ((FreeformTaskListener) taskListener).onImmersiveModeChanged(i, z);
            }
        }
    }

    public final void onKeepScreenOnChanged(int i, boolean z) {
        synchronized (this.mLock) {
            TaskListener taskListener = (TaskListener) this.mTaskListeners.get(-5);
            if (taskListener instanceof FreeformTaskListener) {
                FreeformTaskListener freeformTaskListener = (FreeformTaskListener) taskListener;
                freeformTaskListener.getClass();
                if (CoreRune.MW_CAPTION_SHELL_KEEP_SCREEN_ON) {
                    ((MultitaskingWindowDecorViewModel) freeformTaskListener.mWindowDecorationViewModel).onKeepScreenOnChanged(i, z);
                }
            }
        }
    }

    public final void onNewDexImmersiveModeChanged(int i, boolean z) {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        ImmersiveCaptionBehavior immersiveCaptionBehavior;
        synchronized (this.mLock) {
            TaskListener taskListener = (TaskListener) this.mTaskListeners.get(-5);
            if (taskListener instanceof FreeformTaskListener) {
                FreeformTaskListener freeformTaskListener = (FreeformTaskListener) taskListener;
                freeformTaskListener.getClass();
                if (CoreRune.MW_CAPTION_SHELL_IMMERSIVE_MODE && (multitaskingWindowDecoration = (MultitaskingWindowDecoration) ((MultitaskingWindowDecorViewModel) freeformTaskListener.mWindowDecorationViewModel).mWindowDecorByTaskId.get(i)) != null && (immersiveCaptionBehavior = multitaskingWindowDecoration.mImmersiveCaptionBehavior) != null) {
                    if (z) {
                        immersiveCaptionBehavior.setShownState(true);
                        immersiveCaptionBehavior.mIsPaused = false;
                        immersiveCaptionBehavior.hide();
                    } else {
                        immersiveCaptionBehavior.pause();
                    }
                }
            }
        }
    }

    public final void onSizeCompatRestartButtonClicked(int i) {
        TaskAppearedInfo taskAppearedInfo;
        synchronized (this.mLock) {
            taskAppearedInfo = (TaskAppearedInfo) this.mTasks.get(i);
        }
        if (taskAppearedInfo == null) {
            return;
        }
        ActivityInfo activityInfo = taskAppearedInfo.getTaskInfo().topActivityInfo;
        if (activityInfo != null) {
            FrameworkStatsLog.write(387, activityInfo.applicationInfo.uid, 2);
        }
        restartTaskTopActivityProcessIfVisible(taskAppearedInfo.getTaskInfo().token);
    }

    public final void onSplitLayoutChangeRequested(ActivityManager.RunningTaskInfo runningTaskInfo, Bundle bundle) {
        synchronized (this.mLock) {
            TaskListener taskListener = getTaskListener(((TaskAppearedInfo) this.mTasks.get(runningTaskInfo.taskId)).getTaskInfo(), false);
            if (taskListener != null) {
                taskListener.onSplitLayoutChangeRequested(TaskOrganizerInfo.fromBundle(bundle));
            }
        }
    }

    public final void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        if (surfaceControl != null) {
            surfaceControl.setUnreleasedWarningCallSite("ShellTaskOrganizer.onTaskAppeared");
        }
        synchronized (this.mLock) {
            onTaskAppeared(new TaskAppearedInfo(runningTaskInfo, surfaceControl));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTaskInfoChanged(android.app.ActivityManager.RunningTaskInfo r11) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.ShellTaskOrganizer.onTaskInfoChanged(android.app.ActivityManager$RunningTaskInfo):void");
    }

    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        SplitScreenController splitScreenController;
        synchronized (this.mLock) {
            int i = 0;
            boolean z = true;
            if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -880817403, 1, null, Long.valueOf(runningTaskInfo.taskId));
            }
            UnfoldAnimationController unfoldAnimationController = this.mUnfoldAnimationController;
            if (unfoldAnimationController != null) {
                unfoldAnimationController.mTaskSurfaces.remove(runningTaskInfo.taskId);
                SparseArray sparseArray = unfoldAnimationController.mAnimatorsByTaskId;
                UnfoldTaskAnimator unfoldTaskAnimator = (UnfoldTaskAnimator) sparseArray.get(runningTaskInfo.taskId);
                if (unfoldTaskAnimator == null) {
                    z = false;
                }
                if (z) {
                    if (unfoldAnimationController.mIsInStageChange) {
                        TransactionPool transactionPool = unfoldAnimationController.mTransactionPool;
                        SurfaceControl.Transaction acquire = transactionPool.acquire();
                        unfoldTaskAnimator.resetSurface(runningTaskInfo, acquire);
                        acquire.apply();
                        transactionPool.release(acquire);
                    }
                    unfoldTaskAnimator.onTaskVanished(runningTaskInfo);
                    sparseArray.remove(runningTaskInfo.taskId);
                }
            }
            int i2 = runningTaskInfo.taskId;
            TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) this.mTasks.get(i2);
            if (taskAppearedInfo == null) {
                Log.w("ShellTaskOrganizer", "onTaskVanished: cannot find TaskAppearedInfo, " + runningTaskInfo);
                return;
            }
            TaskListener taskListener = getTaskListener(taskAppearedInfo.getTaskInfo(), false);
            this.mTasks.remove(i2);
            if (taskListener != null) {
                taskListener.onTaskVanished(runningTaskInfo);
            }
            if (CoreRune.MW_CAPTION_SHELL_BUG_FIX) {
                TaskListener taskListener2 = (TaskListener) this.mTaskListeners.get(-5);
                if (taskListener2 instanceof FreeformTaskListener) {
                    FreeformTaskListener freeformTaskListener = (FreeformTaskListener) taskListener2;
                    freeformTaskListener.getClass();
                    if (CoreRune.MW_CAPTION_SHELL_BUG_FIX) {
                        ((MultitaskingWindowDecorViewModel) freeformTaskListener.mWindowDecorationViewModel).destroyWindowDecoration(runningTaskInfo);
                    }
                }
            }
            notifyLocusVisibilityIfNeeded(runningTaskInfo);
            notifyCompatUI(runningTaskInfo, null);
            this.mRecentTasks.ifPresent(new ShellTaskOrganizer$$ExternalSyntheticLambda1(runningTaskInfo, i));
            if (taskListener != null && taskListener.isMultiWindow()) {
                clearForcedResizablePackagesIfNeeded();
            }
            if (taskListener != null && runningTaskInfo.getWindowingMode() == 6) {
                taskListener.onSplitPairUpdateRequested();
            }
            SplitScreenProxyService splitScreenProxyService = (SplitScreenProxyService) LocalServices.getService(SplitScreenProxyService.class);
            if (splitScreenProxyService != null && (splitScreenController = splitScreenProxyService.mSplitScreenController) != null) {
                ((HandlerExecutor) splitScreenController.mMainExecutor).execute(new SplitScreenProxyService$$ExternalSyntheticLambda0(splitScreenProxyService, 0));
            }
            if (!Transitions.ENABLE_SHELL_TRANSITIONS && taskAppearedInfo.getLeash() != null) {
                taskAppearedInfo.getLeash().release();
            }
        }
    }

    public final void preloadSplashScreenAppIcon(final ActivityInfo activityInfo, final int i, final Configuration configuration) {
        final StartingWindowController startingWindowController = this.mStartingWindow;
        if (startingWindowController != null) {
            startingWindowController.getClass();
            ((HandlerExecutor) startingWindowController.mSplashScreenExecutor).execute(new Runnable() { // from class: com.android.wm.shell.startingsurface.StartingWindowController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StartingWindowController startingWindowController2 = StartingWindowController.this;
                    final ActivityInfo activityInfo2 = activityInfo;
                    int i2 = i;
                    Configuration configuration2 = configuration;
                    SplashscreenWindowCreator splashscreenWindowCreator = startingWindowController2.mStartingSurfaceDrawer.mSplashscreenWindowCreator;
                    splashscreenWindowCreator.getClass();
                    int splashScreenTheme = AbsSplashWindowCreator.getSplashScreenTheme(0, activityInfo2);
                    if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -1807702430, 0, null, String.valueOf(activityInfo2.packageName), String.valueOf(Integer.toHexString(splashScreenTheme)));
                    }
                    splashscreenWindowCreator.mDisplayManager.getDisplay(0);
                    final Context context = splashscreenWindowCreator.mContext;
                    if (context != null) {
                        if (splashScreenTheme != context.getThemeResId()) {
                            try {
                                context = context.createPackageContextAsUser(activityInfo2.packageName, 4, UserHandle.of(i2));
                                context.setTheme(splashScreenTheme);
                            } catch (PackageManager.NameNotFoundException e) {
                                Slog.w("ShellStartingWindow", "Failed creating package context with package name " + activityInfo2.packageName + " for user " + i2 + " while preloading icon", e);
                                return;
                            }
                        }
                        if (configuration2.diffPublicOnly(context.getResources().getConfiguration()) != 0) {
                            if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 1714796017, 0, null, String.valueOf(configuration2));
                            }
                            Context createConfigurationContext = context.createConfigurationContext(configuration2);
                            createConfigurationContext.setTheme(splashScreenTheme);
                            TypedArray obtainStyledAttributes = createConfigurationContext.obtainStyledAttributes(R.styleable.Window);
                            int resourceId = obtainStyledAttributes.getResourceId(1, 0);
                            if (resourceId != 0) {
                                try {
                                    if (createConfigurationContext.getDrawable(resourceId) != null) {
                                        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -805102086, 0, null, String.valueOf(configuration2));
                                        }
                                        context = createConfigurationContext;
                                    }
                                } catch (Resources.NotFoundException e2) {
                                    Slog.w("ShellStartingWindow", "failed creating starting window for globalConfig at activityInfo: " + activityInfo2, e2);
                                    return;
                                }
                            }
                            obtainStyledAttributes.recycle();
                        }
                        final SplashscreenContentDrawer splashscreenContentDrawer = splashscreenWindowCreator.mSplashscreenContentDrawer;
                        splashscreenContentDrawer.getClass();
                        splashscreenContentDrawer.mSplashscreenWorkerHandler.post(new Runnable() { // from class: com.android.wm.shell.startingsurface.SplashscreenContentDrawer$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                SplashscreenContentDrawer splashscreenContentDrawer2 = SplashscreenContentDrawer.this;
                                Context context2 = context;
                                ActivityInfo activityInfo3 = activityInfo2;
                                splashscreenContentDrawer2.updateDensity();
                                SplashscreenContentDrawer.getWindowAttrs(context2, splashscreenContentDrawer2.mTmpAttrs);
                                splashscreenContentDrawer2.mLastPackageContextConfigHash = context2.getResources().getConfiguration().hashCode();
                                try {
                                    int bGColorFromCache = splashscreenContentDrawer2.getBGColorFromCache(activityInfo3, new SplashscreenContentDrawer$$ExternalSyntheticLambda1(splashscreenContentDrawer2, context2, 0));
                                    SplashscreenContentDrawer.SplashViewBuilder splashViewBuilder = new SplashscreenContentDrawer.SplashViewBuilder(context2, activityInfo3);
                                    splashViewBuilder.mThemeColor = bGColorFromCache;
                                    splashViewBuilder.mOverlayDrawable = null;
                                    splashViewBuilder.mSuggestType = 0;
                                    splashViewBuilder.build(true);
                                } catch (RuntimeException e3) {
                                    Slog.w("ShellStartingWindow", "failed to preload starting window app icon. ", e3);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public final List registerOrganizer() {
        List registerOrganizer;
        synchronized (this.mLock) {
            if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 580605218, 0, null, null);
            }
            registerOrganizer = super.registerOrganizer();
            for (int i = 0; i < registerOrganizer.size(); i++) {
                TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) registerOrganizer.get(i);
                if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -1683614271, 1, null, Long.valueOf(taskAppearedInfo.getTaskInfo().taskId), String.valueOf(taskAppearedInfo.getTaskInfo().baseIntent));
                }
                onTaskAppeared(taskAppearedInfo);
            }
        }
        return registerOrganizer;
    }

    public final void removeStartingWindow(final StartingWindowRemovalInfo startingWindowRemovalInfo) {
        if (this.mStartingWindow != null) {
            Log.d("ShellTaskOrganizer", "removeStartingWindow, removalInfo=" + startingWindowRemovalInfo);
            final StartingWindowController startingWindowController = this.mStartingWindow;
            startingWindowController.getClass();
            final int i = 0;
            Runnable runnable = new Runnable() { // from class: com.android.wm.shell.startingsurface.StartingWindowController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i) {
                        case 0:
                            StartingWindowController startingWindowController2 = startingWindowController;
                            StartingWindowRemovalInfo startingWindowRemovalInfo2 = startingWindowRemovalInfo;
                            StartingSurfaceDrawer startingSurfaceDrawer = startingWindowController2.mStartingSurfaceDrawer;
                            startingSurfaceDrawer.getClass();
                            if (startingWindowRemovalInfo2.windowlessSurface) {
                                startingSurfaceDrawer.mWindowlessRecords.removeWindow(startingWindowRemovalInfo2, startingWindowRemovalInfo2.removeImmediately);
                                return;
                            }
                            if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -958966913, 1, null, Long.valueOf(startingWindowRemovalInfo2.taskId));
                            }
                            startingSurfaceDrawer.mWindowRecords.removeWindow(startingWindowRemovalInfo2, startingWindowRemovalInfo2.removeImmediately);
                            return;
                        default:
                            StartingWindowController startingWindowController3 = startingWindowController;
                            StartingWindowRemovalInfo startingWindowRemovalInfo3 = startingWindowRemovalInfo;
                            synchronized (startingWindowController3.mTaskBackgroundColors) {
                                startingWindowController3.mTaskBackgroundColors.delete(startingWindowRemovalInfo3.taskId);
                            }
                            return;
                    }
                }
            };
            HandlerExecutor handlerExecutor = (HandlerExecutor) startingWindowController.mSplashScreenExecutor;
            handlerExecutor.execute(runnable);
            if (!startingWindowRemovalInfo.windowlessSurface) {
                final int i2 = 1;
                handlerExecutor.executeDelayed(5000L, new Runnable() { // from class: com.android.wm.shell.startingsurface.StartingWindowController$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                StartingWindowController startingWindowController2 = startingWindowController;
                                StartingWindowRemovalInfo startingWindowRemovalInfo2 = startingWindowRemovalInfo;
                                StartingSurfaceDrawer startingSurfaceDrawer = startingWindowController2.mStartingSurfaceDrawer;
                                startingSurfaceDrawer.getClass();
                                if (startingWindowRemovalInfo2.windowlessSurface) {
                                    startingSurfaceDrawer.mWindowlessRecords.removeWindow(startingWindowRemovalInfo2, startingWindowRemovalInfo2.removeImmediately);
                                    return;
                                }
                                if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -958966913, 1, null, Long.valueOf(startingWindowRemovalInfo2.taskId));
                                }
                                startingSurfaceDrawer.mWindowRecords.removeWindow(startingWindowRemovalInfo2, startingWindowRemovalInfo2.removeImmediately);
                                return;
                            default:
                                StartingWindowController startingWindowController3 = startingWindowController;
                                StartingWindowRemovalInfo startingWindowRemovalInfo3 = startingWindowRemovalInfo;
                                synchronized (startingWindowController3.mTaskBackgroundColors) {
                                    startingWindowController3.mTaskBackgroundColors.delete(startingWindowRemovalInfo3.taskId);
                                }
                                return;
                        }
                    }
                });
            }
        }
    }

    public final void requestAffordanceAnim(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        FullscreenTaskListener fullscreenTaskListener = (FullscreenTaskListener) this.mTaskListeners.get(-2);
        if (fullscreenTaskListener != null) {
            fullscreenTaskListener.animForAffordance(runningTaskInfo.taskId, i);
        }
    }

    public final void resetStashedFreeform(int i, boolean z) {
        TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) this.mTasks.get(i);
        if (taskAppearedInfo != null) {
            TaskListener taskListener = getTaskListener(taskAppearedInfo.getTaskInfo(), false);
            if (taskListener != null) {
                taskListener.resetStashedFreeform(i, z);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("addListenerForTaskId unknown taskId=", i));
    }

    public final void unregisterOrganizer() {
        super.unregisterOrganizer();
        StartingWindowController startingWindowController = this.mStartingWindow;
        if (startingWindowController != null) {
            startingWindowController.getClass();
            ((HandlerExecutor) startingWindowController.mSplashScreenExecutor).execute(new StartingWindowController$$ExternalSyntheticLambda2(startingWindowController, 0));
        }
    }

    public final boolean updateTaskListenerIfNeeded(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, TaskListener taskListener, TaskListener taskListener2) {
        if (taskListener == taskListener2) {
            return false;
        }
        if (taskListener != null && taskListener2 != null && taskListener.getTaskInfo(runningTaskInfo.taskId) != null && taskListener.getTaskInfo(runningTaskInfo.taskId).displayId != runningTaskInfo.displayId && (taskListener.getTaskInfo(runningTaskInfo.taskId).configuration.isDexMode() || runningTaskInfo.configuration.isDexMode())) {
            this.mDisplayChangingTasks.put(runningTaskInfo.taskId, runningTaskInfo);
            taskListener2.createRestartDialog(runningTaskInfo, surfaceControl);
        }
        if (taskListener != null) {
            taskListener.onTaskVanished(runningTaskInfo);
        }
        if (taskListener2 != null) {
            taskListener2.onTaskAppeared(runningTaskInfo, surfaceControl);
        }
        if (taskListener2 == null || !taskListener2.isMultiWindow()) {
            clearForcedResizablePackagesIfNeeded();
            return true;
        }
        return true;
    }

    public ShellTaskOrganizer(ShellInit shellInit, ShellCommandHandler shellCommandHandler, CompatUIController compatUIController, Optional<UnfoldAnimationController> optional, Optional<RecentTasksController> optional2, ShellExecutor shellExecutor, TaskStackListenerImpl taskStackListenerImpl, Context context) {
        this(shellInit, shellCommandHandler, null, compatUIController, optional, optional2, shellExecutor, taskStackListenerImpl, context);
    }

    public ShellTaskOrganizer(ShellInit shellInit, ShellCommandHandler shellCommandHandler, ITaskOrganizerController iTaskOrganizerController, CompatUIController compatUIController, Optional<UnfoldAnimationController> optional, Optional<RecentTasksController> optional2, ShellExecutor shellExecutor, TaskStackListenerImpl taskStackListenerImpl, Context context) {
        super(iTaskOrganizerController, shellExecutor);
        this.mTaskListeners = new SparseArray();
        this.mTasks = new SparseArray();
        this.mLaunchCookieToListener = new ArrayMap();
        this.mVisibleTasksWithLocusId = new SparseArray();
        this.mLocusIdListeners = new ArraySet();
        this.mFocusListeners = new ArraySet();
        this.mLock = new Object();
        this.mDisplayChangingTasks = new SparseArray();
        this.mMultiWindowCoreStateChangeListeners = new ArraySet();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mShellCommandHandler = shellCommandHandler;
        this.mCompatUI = compatUIController;
        this.mRecentTasks = optional2;
        this.mUnfoldAnimationController = optional.orElse(null);
        if (shellInit != null) {
            shellInit.addInitCallback(new Runnable() { // from class: com.android.wm.shell.ShellTaskOrganizer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    final ShellTaskOrganizer shellTaskOrganizer = ShellTaskOrganizer.this;
                    shellTaskOrganizer.mShellCommandHandler.addDumpCallback(new BiConsumer() { // from class: com.android.wm.shell.ShellTaskOrganizer$$ExternalSyntheticLambda3
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            CompatUIController compatUIController2;
                            ShellTaskOrganizer shellTaskOrganizer2 = ShellTaskOrganizer.this;
                            PrintWriter printWriter = (PrintWriter) obj;
                            String str = (String) obj2;
                            synchronized (shellTaskOrganizer2.mLock) {
                                String str2 = str + "  ";
                                String str3 = str2 + "  ";
                                printWriter.println(str + "ShellTaskOrganizer");
                                printWriter.println(str2 + shellTaskOrganizer2.mTaskListeners.size() + " Listeners");
                                int size = shellTaskOrganizer2.mTaskListeners.size();
                                while (true) {
                                    size--;
                                    if (size < 0) {
                                        break;
                                    }
                                    int keyAt = shellTaskOrganizer2.mTaskListeners.keyAt(size);
                                    ShellTaskOrganizer.TaskListener taskListener = (ShellTaskOrganizer.TaskListener) shellTaskOrganizer2.mTaskListeners.valueAt(size);
                                    printWriter.println(str2 + "#" + size + " " + ShellTaskOrganizer.taskListenerTypeToString(keyAt));
                                    taskListener.dump(printWriter, str3);
                                }
                                printWriter.println();
                                printWriter.println(str2 + shellTaskOrganizer2.mTasks.size() + " Tasks");
                                int size2 = shellTaskOrganizer2.mTasks.size();
                                while (true) {
                                    size2--;
                                    if (size2 < 0) {
                                        break;
                                    }
                                    int keyAt2 = shellTaskOrganizer2.mTasks.keyAt(size2);
                                    TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) shellTaskOrganizer2.mTasks.valueAt(size2);
                                    ShellTaskOrganizer.TaskListener taskListener2 = shellTaskOrganizer2.getTaskListener(taskAppearedInfo.getTaskInfo(), false);
                                    int windowingMode = taskAppearedInfo.getTaskInfo().getWindowingMode();
                                    String str4 = "";
                                    if (taskAppearedInfo.getTaskInfo().baseActivity != null) {
                                        str4 = taskAppearedInfo.getTaskInfo().baseActivity.getPackageName();
                                    }
                                    printWriter.println(str2 + "#" + size2 + " task=" + keyAt2 + " listener=" + taskListener2 + " wmMode=" + windowingMode + " pkg=" + str4 + " bounds=" + taskAppearedInfo.getTaskInfo().getConfiguration().windowConfiguration.getBounds() + " running=" + taskAppearedInfo.getTaskInfo().isRunning + " visible=" + taskAppearedInfo.getTaskInfo().isVisible + " focused=" + taskAppearedInfo.getTaskInfo().isFocused);
                                }
                                printWriter.println();
                                printWriter.println(str2 + shellTaskOrganizer2.mLaunchCookieToListener.size() + " Launch Cookies");
                                int size3 = shellTaskOrganizer2.mLaunchCookieToListener.size();
                                while (true) {
                                    size3--;
                                    if (size3 < 0) {
                                        break;
                                    }
                                    printWriter.println(str2 + "#" + size3 + " cookie=" + ((IBinder) shellTaskOrganizer2.mLaunchCookieToListener.keyAt(size3)) + " listener=" + ((ShellTaskOrganizer.TaskListener) shellTaskOrganizer2.mLaunchCookieToListener.valueAt(size3)));
                                }
                                if (CoreRune.FW_BOUNDS_COMPAT_UI && (compatUIController2 = shellTaskOrganizer2.mCompatUI) != null) {
                                    compatUIController2.dump(printWriter, str2);
                                }
                            }
                        }
                    }, shellTaskOrganizer);
                    CompatUIController compatUIController2 = shellTaskOrganizer.mCompatUI;
                    if (compatUIController2 != null) {
                        compatUIController2.mCallback = shellTaskOrganizer;
                    }
                    shellTaskOrganizer.registerOrganizer();
                }
            }, this);
        }
        boolean z = CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE;
        ActivityThread currentActivityThread = ActivityThread.currentActivityThread();
        if (currentActivityThread != null) {
            currentActivityThread.registerMultiWindowCoreStateListener(new MultiWindowCoreState.MultiWindowCoreStateListener() { // from class: com.android.wm.shell.ShellTaskOrganizer$$ExternalSyntheticLambda2
                public final void onMultiWindowCoreStateChanged(final int i) {
                    final ShellTaskOrganizer shellTaskOrganizer = ShellTaskOrganizer.this;
                    int i2 = ShellTaskOrganizer.$r8$clinit;
                    shellTaskOrganizer.getExecutor().execute(new Runnable() { // from class: com.android.wm.shell.ShellTaskOrganizer$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShellTaskOrganizer shellTaskOrganizer2 = shellTaskOrganizer;
                            int i3 = i;
                            for (int i4 = 0; i4 < shellTaskOrganizer2.mMultiWindowCoreStateChangeListeners.size(); i4++) {
                                ((ShellTaskOrganizer.MultiWindowCoreStateChangeListener) shellTaskOrganizer2.mMultiWindowCoreStateChangeListeners.valueAt(i4)).onMultiWindowCoreStateChanged(i3);
                            }
                        }
                    });
                }
            });
        }
        this.mForcedResizableController = new ForcedResizableInfoActivityController(context, shellExecutor);
        if (taskStackListenerImpl != null) {
            taskStackListenerImpl.addListener(anonymousClass1);
        }
    }

    public final void onTaskAppeared(TaskAppearedInfo taskAppearedInfo) {
        int i = taskAppearedInfo.getTaskInfo().taskId;
        this.mTasks.put(i, taskAppearedInfo);
        TaskListener taskListener = getTaskListener(taskAppearedInfo.getTaskInfo(), true);
        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TASK_ORG, -1325223370, 1, null, Long.valueOf(i), String.valueOf(taskListener));
        }
        if (taskListener != null) {
            taskListener.onTaskAppeared(taskAppearedInfo.getTaskInfo(), taskAppearedInfo.getLeash());
        }
        UnfoldAnimationController unfoldAnimationController = this.mUnfoldAnimationController;
        if (unfoldAnimationController != null) {
            ActivityManager.RunningTaskInfo taskInfo = taskAppearedInfo.getTaskInfo();
            SurfaceControl leash = taskAppearedInfo.getLeash();
            unfoldAnimationController.mTaskSurfaces.put(taskInfo.taskId, leash);
            int i2 = 0;
            while (true) {
                List list = unfoldAnimationController.mAnimators;
                if (i2 >= list.size()) {
                    break;
                }
                UnfoldTaskAnimator unfoldTaskAnimator = (UnfoldTaskAnimator) list.get(i2);
                if (unfoldTaskAnimator.isApplicableTask(taskInfo)) {
                    unfoldAnimationController.mAnimatorsByTaskId.put(taskInfo.taskId, unfoldTaskAnimator);
                    unfoldTaskAnimator.onTaskAppeared(taskInfo, leash);
                    break;
                }
                i2++;
            }
        }
        notifyLocusVisibilityIfNeeded(taskAppearedInfo.getTaskInfo());
        notifyCompatUI(taskAppearedInfo.getTaskInfo(), taskListener);
        this.mRecentTasks.ifPresent(new ShellTaskOrganizer$$ExternalSyntheticLambda1(taskAppearedInfo, 2));
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TaskListener {
        default void attachChildSurfaceToTask(int i, SurfaceControl.Builder builder) {
            throw new IllegalStateException("This task listener doesn't support child surface attachment.");
        }

        default TaskInfo getTaskInfo(int i) {
            return null;
        }

        default boolean hasChild() {
            return false;
        }

        default boolean isMultiWindow() {
            return false;
        }

        default void reparentChildSurfaceToTask(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
            throw new IllegalStateException("This task listener doesn't support child surface reparent.");
        }

        default boolean supportCompatUI() {
            return true;
        }

        default void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) {
        }

        default void onSplitLayoutChangeRequested(TaskOrganizerInfo taskOrganizerInfo) {
        }

        default void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        }

        default void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        }

        default void onSplitPairUpdateRequested() {
        }

        default void createRestartDialog(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        }

        default void dump(PrintWriter printWriter, String str) {
        }

        default void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        }

        default void resetStashedFreeform(int i, boolean z) {
        }
    }
}
