package com.android.wm.shell.splitscreen;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.internal.util.ArrayUtils;
import com.android.launcher3.icons.IconProvider;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.common.split.SplitDecorManager;
import com.android.wm.shell.common.split.SplitLayout;
import com.android.wm.shell.common.split.SplitScreenConstants;
import com.android.wm.shell.splitscreen.SplitScreen;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.windowdecor.WindowDecorViewModel;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Optional;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class StageTaskListener implements ShellTaskOrganizer.TaskListener {
    public final StageListenerCallbacks mCallbacks;
    public final SparseArray mChildrenLeashes;
    public final RunningTaskInfoList mChildrenTaskInfo;
    public final Context mContext;
    public float mCornerRadiusForLeash;
    public SurfaceControl mDimLayer;
    public final IconProvider mIconProvider;
    public SurfaceControl mRootLeash;
    public ActivityManager.RunningTaskInfo mRootTaskInfo;
    public final RunningTaskInfoList mRunningTaskInfoList;
    public SplitDecorManager mSplitDecorManager;
    public final int mStageType;
    public final SurfaceSession mSurfaceSession;
    public final SyncTransactionQueue mSyncQueue;
    public Optional mWindowDecorViewModel;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RunningTaskInfoList extends SparseArray {
        public final ArraySet mClosingTaskIds;
        public final ArrayList mInfos;
        public final ArrayList mTaskIds;

        public /* synthetic */ RunningTaskInfoList(StageTaskListener stageTaskListener, int i) {
            this();
        }

        @Override // android.util.SparseArray
        public final boolean contains(int i) {
            return this.mTaskIds.contains(Integer.valueOf(i));
        }

        @Override // android.util.SparseArray
        public final Object get(int i) {
            return (ActivityManager.RunningTaskInfo) this.mInfos.get(this.mTaskIds.indexOf(Integer.valueOf(i)));
        }

        @Override // android.util.SparseArray
        public final int keyAt(int i) {
            return ((Integer) this.mTaskIds.get(i)).intValue();
        }

        @Override // android.util.SparseArray
        public final void put(int i, Object obj) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) obj;
            if (contains(i)) {
                int indexOf = this.mTaskIds.indexOf(Integer.valueOf(i));
                this.mTaskIds.remove(indexOf);
                this.mInfos.remove(indexOf);
                if (!runningTaskInfo.isTopTaskInStage) {
                    this.mTaskIds.add(indexOf, Integer.valueOf(i));
                    this.mInfos.add(indexOf, runningTaskInfo);
                    return;
                }
            }
            this.mTaskIds.add(Integer.valueOf(i));
            this.mInfos.add(runningTaskInfo);
        }

        @Override // android.util.SparseArray
        public final void remove(int i) {
            int indexOf = this.mTaskIds.indexOf(Integer.valueOf(i));
            this.mTaskIds.remove(indexOf);
            this.mInfos.remove(indexOf);
            if (CoreRune.MW_SPLIT_STACKING && this.mClosingTaskIds.contains(Integer.valueOf(i))) {
                this.mClosingTaskIds.remove(Integer.valueOf(i));
                Slog.d("StageTaskListener", "removeToClosingTaskIds: #" + i + ", " + StageTaskListener.this);
            }
        }

        @Override // android.util.SparseArray
        public final int size() {
            return this.mTaskIds.size();
        }

        @Override // android.util.SparseArray
        public final Object valueAt(int i) {
            return (ActivityManager.RunningTaskInfo) this.mInfos.get(i);
        }

        private RunningTaskInfoList() {
            this.mTaskIds = new ArrayList();
            this.mInfos = new ArrayList();
            this.mClosingTaskIds = new ArraySet();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface StageListenerCallbacks {
    }

    public StageTaskListener(Context context, ShellTaskOrganizer shellTaskOrganizer, int i, StageListenerCallbacks stageListenerCallbacks, SyncTransactionQueue syncTransactionQueue, SurfaceSession surfaceSession, IconProvider iconProvider) {
        this(context, shellTaskOrganizer, i, stageListenerCallbacks, syncTransactionQueue, surfaceSession, iconProvider, 0);
    }

    public final void adjustChildTaskWindowingModeIfNeeded(WindowContainerTransaction windowContainerTransaction) {
        if (this.mContext.getResources().getConfiguration().isNewDexMode()) {
            RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
            for (int size = runningTaskInfoList.size() - 1; size >= 0; size--) {
                windowContainerTransaction.orderedSetWindowingMode(((ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size)).token, 1);
            }
        }
    }

    public final boolean applyCornerRadiusToLeashIfNeeded(float f, SurfaceControl.Transaction transaction, boolean z) {
        SurfaceControl surfaceControl = this.mRootLeash;
        if (surfaceControl == null) {
            return false;
        }
        if (this.mCornerRadiusForLeash == f && !z) {
            return false;
        }
        this.mCornerRadiusForLeash = f;
        transaction.setCornerRadius(surfaceControl, f);
        if (CoreRune.SAFE_DEBUG) {
            Slog.d("StageTaskListener", "applyCornerRadiusToLeashIfNeeded: r=" + f + ", forceApply=" + z + ", leash=" + this.mRootLeash);
            return true;
        }
        return true;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void attachChildSurfaceToTask(int i, SurfaceControl.Builder builder) {
        builder.setParent(findTaskSurface(i));
    }

    public final boolean contains(Predicate predicate) {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if ((runningTaskInfo != null && predicate.test(runningTaskInfo)) || getChildTaskInfo(predicate) != null) {
            return true;
        }
        return false;
    }

    public final boolean containsTask(int i) {
        return this.mChildrenTaskInfo.contains(i);
    }

    public final boolean containsToken(WindowContainerToken windowContainerToken) {
        return contains(new StageTaskListener$$ExternalSyntheticLambda1(windowContainerToken, 0));
    }

    public final void doForAllChildTasks(StageCoordinator$$ExternalSyntheticLambda14 stageCoordinator$$ExternalSyntheticLambda14) {
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        while (true) {
            size--;
            if (size >= 0) {
                stageCoordinator$$ExternalSyntheticLambda14.accept(Integer.valueOf(((ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size)).taskId));
            } else {
                return;
            }
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void dump(PrintWriter printWriter, String str) {
        RunningTaskInfoList runningTaskInfoList;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        String m2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, "  ");
        RunningTaskInfoList runningTaskInfoList2 = this.mChildrenTaskInfo;
        if (runningTaskInfoList2.size() > 0) {
            printWriter.println(str + "Children list:");
            int size = runningTaskInfoList2.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTaskInfoList2.valueAt(size);
                printWriter.println(m2 + "Task#" + size + " taskID=" + runningTaskInfo.taskId + " baseActivity=" + runningTaskInfo.baseActivity);
            }
        }
        if (CoreRune.MW_SPLIT_STACKING && (runningTaskInfoList = this.mRunningTaskInfoList) != null && !runningTaskInfoList.mClosingTaskIds.isEmpty()) {
            StringBuilder m3 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(m, "ClosingTaskIds=");
            m3.append(runningTaskInfoList.mClosingTaskIds);
            printWriter.println(m3.toString());
        }
    }

    public final void evictAllChildren(WindowContainerTransaction windowContainerTransaction, boolean z) {
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        while (true) {
            size--;
            if (size >= 0) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size);
                if (z) {
                    windowContainerTransaction.reparentFirst(runningTaskInfo.token, (WindowContainerToken) null, false);
                } else {
                    windowContainerTransaction.reparent(runningTaskInfo.token, (WindowContainerToken) null, false);
                }
            } else {
                return;
            }
        }
    }

    public final void evictInvisibleChildren(WindowContainerTransaction windowContainerTransaction) {
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        while (true) {
            size--;
            if (size >= 0) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size);
                if (!runningTaskInfo.isVisible) {
                    windowContainerTransaction.reparent(runningTaskInfo.token, (WindowContainerToken) null, false);
                }
            } else {
                return;
            }
        }
    }

    public final void evictNonOpeningChildren(RemoteAnimationTarget[] remoteAnimationTargetArr, WindowContainerTransaction windowContainerTransaction) {
        SparseArray clone = this.mChildrenTaskInfo.clone();
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (remoteAnimationTarget.mode == 0) {
                clone.remove(remoteAnimationTarget.taskId);
            }
        }
        int size = clone.size();
        while (true) {
            size--;
            if (size >= 0) {
                windowContainerTransaction.reparent(((ActivityManager.RunningTaskInfo) clone.valueAt(size)).token, (WindowContainerToken) null, false);
            } else {
                return;
            }
        }
    }

    public final void evictOtherChildren(WindowContainerTransaction windowContainerTransaction, int i) {
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        while (true) {
            size--;
            if (size >= 0) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size);
                if (i != runningTaskInfo.taskId) {
                    windowContainerTransaction.reparent(runningTaskInfo.token, (WindowContainerToken) null, false);
                }
            } else {
                return;
            }
        }
    }

    public final SurfaceControl findTaskSurface(int i) {
        if (this.mRootTaskInfo.taskId == i) {
            return this.mRootLeash;
        }
        SparseArray sparseArray = this.mChildrenLeashes;
        if (sparseArray.contains(i)) {
            return (SurfaceControl) sparseArray.get(i);
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("There is no surface for taskId=", i));
    }

    public final int getChildCount() {
        return this.mChildrenTaskInfo.size();
    }

    public final ActivityManager.RunningTaskInfo getChildTaskInfo(Predicate predicate) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        do {
            size--;
            if (size >= 0) {
                runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size);
            } else {
                return null;
            }
        } while (!predicate.test(runningTaskInfo));
        return runningTaskInfo;
    }

    public final int getTopChildTaskUid() {
        ActivityManager.RunningTaskInfo childTaskInfo = getChildTaskInfo(new StageTaskListener$$ExternalSyntheticLambda0(2));
        if (childTaskInfo != null) {
            return childTaskInfo.topActivityInfo.applicationInfo.uid;
        }
        return 0;
    }

    public final ActivityManager.RunningTaskInfo getTopRunningTaskInfo() {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        do {
            size--;
            if (size >= 0) {
                runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(size);
            } else {
                return null;
            }
        } while (runningTaskInfo.topActivityInfo == null);
        return runningTaskInfo;
    }

    public final int getTopVisibleChildTaskId() {
        ActivityManager.RunningTaskInfo childTaskInfo = getChildTaskInfo(new StageTaskListener$$ExternalSyntheticLambda0(1));
        if (childTaskInfo != null) {
            return childTaskInfo.taskId;
        }
        return -1;
    }

    public final boolean hasAppsEdgeActivityOnTop() {
        ComponentName componentName;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if (runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null && MultiWindowUtils.isAppsEdgeActivity(componentName)) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final boolean hasChild() {
        if (this.mChildrenTaskInfo.size() > 0) {
            return true;
        }
        return false;
    }

    public final boolean isFocused() {
        return contains(new StageTaskListener$$ExternalSyntheticLambda0(0));
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final boolean isMultiWindow() {
        return true;
    }

    public final void onResized(SurfaceControl.Transaction transaction) {
        SplitDecorManager splitDecorManager = this.mSplitDecorManager;
        if (splitDecorManager != null) {
            splitDecorManager.onResized(transaction, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017c  */
    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onSplitLayoutChangeRequested(com.samsung.android.multiwindow.TaskOrganizerInfo r14) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageTaskListener.onSplitLayoutChangeRequested(com.samsung.android.multiwindow.TaskOrganizerInfo):void");
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onSplitPairUpdateRequested() {
        StageCoordinator.StageListenerImpl stageListenerImpl = (StageCoordinator.StageListenerImpl) this.mCallbacks;
        StageCoordinator stageCoordinator = StageCoordinator.this;
        if (stageCoordinator.mMainStage.mIsActive) {
            stageCoordinator.mRecentTasks.ifPresent(new StageCoordinator$$ExternalSyntheticLambda17(stageListenerImpl, 1));
        }
    }

    public final void onSplitScreenListenerRegistered(SplitScreen.SplitScreenListener splitScreenListener, int i) {
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        while (true) {
            size--;
            if (size >= 0) {
                int keyAt = runningTaskInfoList.keyAt(size);
                splitScreenListener.onTaskStageChanged(keyAt, i, ((ActivityManager.RunningTaskInfo) runningTaskInfoList.get(keyAt)).isVisible);
            } else {
                return;
            }
        }
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        boolean z;
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mRootTaskInfo;
        SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
        StageListenerCallbacks stageListenerCallbacks = this.mCallbacks;
        if (runningTaskInfo2 == null) {
            this.mRootLeash = surfaceControl;
            if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
                this.mCornerRadiusForLeash = 0.0f;
            }
            this.mRootTaskInfo = runningTaskInfo;
            this.mSplitDecorManager = new SplitDecorManager(this.mRootTaskInfo.configuration, this.mIconProvider, this.mSurfaceSession);
            StageCoordinator.StageListenerImpl stageListenerImpl = (StageCoordinator.StageListenerImpl) stageListenerCallbacks;
            stageListenerImpl.mHasRootTask = true;
            StageCoordinator.this.onRootTaskAppeared();
            sendStatusChanged();
            syncTransactionQueue.runInSync(new StageTaskListener$$ExternalSyntheticLambda2(this, 1));
            return;
        }
        if (runningTaskInfo.parentTaskId == runningTaskInfo2.taskId) {
            int i = runningTaskInfo.taskId;
            this.mChildrenLeashes.put(i, surfaceControl);
            this.mChildrenTaskInfo.put(i, runningTaskInfo);
            if (runningTaskInfo.isVisible && runningTaskInfo.isVisibleRequested) {
                z = true;
            } else {
                z = false;
            }
            StageCoordinator.StageListenerImpl stageListenerImpl2 = (StageCoordinator.StageListenerImpl) stageListenerCallbacks;
            stageListenerImpl2.onChildTaskStatusChanged(i, true, z);
            if (CoreRune.MW_CAPTION_SHELL && this.mWindowDecorViewModel.isPresent()) {
                ((WindowDecorViewModel) this.mWindowDecorViewModel.get()).onTaskInfoChanged(runningTaskInfo);
            }
            if (this.mRootTaskInfo.isVisible) {
                stageListenerImpl2.postDividerPanelAutoOpenIfNeeded();
            }
            if (!runningTaskInfo.supportsMultiWindow) {
                ((HandlerExecutor) StageCoordinator.this.mMainExecutor).executeDelayed(500L, new StageCoordinator$$ExternalSyntheticLambda6(stageListenerImpl2, 2));
            }
            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                return;
            }
            syncTransactionQueue.runInSync(new StageTaskListener$$ExternalSyntheticLambda3(surfaceControl, runningTaskInfo, runningTaskInfo.positionInParent, true));
            StageCoordinator stageCoordinator = StageCoordinator.this;
            if (stageListenerImpl2 == stageCoordinator.mSideStageListener && !stageCoordinator.isSplitScreenVisible()) {
                MainStage mainStage = stageCoordinator.mMainStage;
                if (mainStage.mIsActive && stageCoordinator.mSplitRequest == null) {
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    stageCoordinator.prepareEnterSplitScreen(windowContainerTransaction, null, -1, true ^ stageCoordinator.mIsDropEntering);
                    mainStage.evictAllChildren(windowContainerTransaction, false);
                    stageCoordinator.mSideStage.evictOtherChildren(windowContainerTransaction, i);
                    SyncTransactionQueue syncTransactionQueue2 = stageCoordinator.mSyncQueue;
                    syncTransactionQueue2.queue(windowContainerTransaction);
                    syncTransactionQueue2.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(stageCoordinator, 6));
                }
            }
            sendStatusChanged();
            return;
        }
        throw new IllegalArgumentException(this + "\n Unknown task: " + runningTaskInfo + "\n mRootTaskInfo: " + this.mRootTaskInfo);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        boolean z;
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mRootTaskInfo;
        int i = runningTaskInfo2.taskId;
        int i2 = runningTaskInfo.taskId;
        SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
        if (i == i2) {
            if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                boolean z2 = runningTaskInfo2.isVisible;
                boolean z3 = runningTaskInfo.isVisible;
                if (z2 != z3) {
                    if (z3) {
                        SplitDecorManager splitDecorManager = this.mSplitDecorManager;
                        runningTaskInfo.configuration.windowConfiguration.getBounds();
                        splitDecorManager.getClass();
                    } else {
                        syncTransactionQueue.runInSync(new StageTaskListener$$ExternalSyntheticLambda2(this, 2));
                    }
                }
            }
            this.mRootTaskInfo = runningTaskInfo;
        } else if (runningTaskInfo.parentTaskId == i) {
            boolean z4 = runningTaskInfo.supportsMultiWindow;
            StageListenerCallbacks stageListenerCallbacks = this.mCallbacks;
            if (z4 && ArrayUtils.contains(SplitScreenConstants.CONTROLLED_ACTIVITY_TYPES, runningTaskInfo.getActivityType()) && ArrayUtils.contains(SplitScreenConstants.CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE, runningTaskInfo.getWindowingMode())) {
                this.mChildrenTaskInfo.put(runningTaskInfo.taskId, runningTaskInfo);
                int i3 = runningTaskInfo.taskId;
                if (runningTaskInfo.isVisible && runningTaskInfo.isVisibleRequested) {
                    z = true;
                } else {
                    z = false;
                }
                StageCoordinator.StageListenerImpl stageListenerImpl = (StageCoordinator.StageListenerImpl) stageListenerCallbacks;
                stageListenerImpl.onChildTaskStatusChanged(i3, true, z);
                if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                    syncTransactionQueue.runInSync(new StageTaskListener$$ExternalSyntheticLambda3((SurfaceControl) this.mChildrenLeashes.get(runningTaskInfo.taskId), runningTaskInfo, runningTaskInfo.positionInParent, false));
                }
                if (CoreRune.MW_CAPTION_SHELL && this.mWindowDecorViewModel.isPresent()) {
                    ((WindowDecorViewModel) this.mWindowDecorViewModel.get()).onTaskInfoChanged(runningTaskInfo);
                }
                if (this.mRootTaskInfo.isVisible) {
                    stageListenerImpl.postDividerPanelAutoOpenIfNeeded();
                }
            } else {
                ((StageCoordinator.StageListenerImpl) stageListenerCallbacks).onNoLongerSupportMultiWindow();
                return;
            }
        } else {
            throw new IllegalArgumentException(this + "\n Unknown task: " + runningTaskInfo + "\n mRootTaskInfo: " + this.mRootTaskInfo);
        }
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            return;
        }
        sendStatusChanged();
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        int i = runningTaskInfo.taskId;
        int i2 = this.mRootTaskInfo.taskId;
        StageListenerCallbacks stageListenerCallbacks = this.mCallbacks;
        if (i2 == i) {
            StageCoordinator.StageListenerImpl stageListenerImpl = (StageCoordinator.StageListenerImpl) stageListenerCallbacks;
            stageListenerImpl.mHasRootTask = false;
            stageListenerImpl.mVisible = false;
            stageListenerImpl.mHasChildren = false;
            StageCoordinator.this.onRootTaskVanished();
            this.mRootTaskInfo = null;
            this.mRootLeash = null;
            this.mSyncQueue.runInSync(new StageTaskListener$$ExternalSyntheticLambda2(this, 0));
            return;
        }
        RunningTaskInfoList runningTaskInfoList = this.mChildrenTaskInfo;
        if (runningTaskInfoList.contains(i)) {
            runningTaskInfoList.remove(i);
            this.mChildrenLeashes.remove(i);
            ((StageCoordinator.StageListenerImpl) stageListenerCallbacks).onChildTaskStatusChanged(i, false, runningTaskInfo.isVisible);
            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                return;
            }
            sendStatusChanged();
            return;
        }
        throw new IllegalArgumentException(this + "\n Unknown task: " + runningTaskInfo + "\n mRootTaskInfo: " + this.mRootTaskInfo);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void reparentChildSurfaceToTask(int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.reparent(surfaceControl, findTaskSurface(i));
    }

    public final void sendStatusChanged() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7 = this.mRootTaskInfo.isVisible;
        if (this.mChildrenTaskInfo.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        StageCoordinator.StageListenerImpl stageListenerImpl = (StageCoordinator.StageListenerImpl) this.mCallbacks;
        if (stageListenerImpl.mHasRootTask) {
            boolean z8 = stageListenerImpl.mHasChildren;
            int i = 5;
            StageCoordinator stageCoordinator = StageCoordinator.this;
            if (z8 != z) {
                stageListenerImpl.mHasChildren = z;
                stageCoordinator.getClass();
                boolean z9 = stageListenerImpl.mHasChildren;
                StageCoordinator.StageListenerImpl stageListenerImpl2 = stageCoordinator.mSideStageListener;
                if (stageListenerImpl == stageListenerImpl2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                StageCoordinator.StageListenerImpl stageListenerImpl3 = stageCoordinator.mMainStageListener;
                MainStage mainStage = stageCoordinator.mMainStage;
                if (!z9 && !stageCoordinator.mIsExiting && mainStage.mIsActive) {
                    if (z2 && stageListenerImpl3.mVisible) {
                        SplitLayout splitLayout = stageCoordinator.mSplitLayout;
                        if (stageCoordinator.mSideStagePosition == 1) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        splitLayout.flingDividerToDismiss(2, z6);
                    } else if (!z2 && stageListenerImpl2.mVisible) {
                        SplitLayout splitLayout2 = stageCoordinator.mSplitLayout;
                        if (stageCoordinator.mSideStagePosition != 1) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        splitLayout2.flingDividerToDismiss(2, z5);
                    } else if (!stageCoordinator.isSplitScreenVisible() && stageCoordinator.mSplitRequest == null) {
                        stageCoordinator.exitSplitScreen(null, 2);
                    }
                } else if (z2 && z9 && !mainStage.mIsActive) {
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    stageCoordinator.prepareEnterSplitScreen(windowContainerTransaction, null, -1, !stageCoordinator.mIsDropEntering);
                    SyncTransactionQueue syncTransactionQueue = stageCoordinator.mSyncQueue;
                    syncTransactionQueue.queue(windowContainerTransaction);
                    syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(stageCoordinator, i));
                }
                if (stageListenerImpl3.mHasChildren && stageListenerImpl2.mHasChildren) {
                    stageCoordinator.mShouldUpdateRecents = true;
                    stageCoordinator.clearRequestIfPresented();
                    stageCoordinator.updateRecentTasksSplitPair();
                    SplitscreenEventLogger splitscreenEventLogger = stageCoordinator.mLogger;
                    if (splitscreenEventLogger.mLoggerSessionId != null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z3) {
                        if (splitscreenEventLogger.mEnterSessionId != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (!z4) {
                            splitscreenEventLogger.mEnterSessionId = null;
                            splitscreenEventLogger.mEnterReason = 1;
                        }
                        splitscreenEventLogger.logEnter(stageCoordinator.mSplitLayout.getDividerPositionAsFraction(), stageCoordinator.getMainStagePosition(), mainStage.getTopChildTaskUid(), stageCoordinator.mSideStagePosition, stageCoordinator.mSideStage.getTopChildTaskUid(), stageCoordinator.mSplitLayout.isLandscape());
                    }
                }
            }
            if (stageListenerImpl.mVisible != z7) {
                stageListenerImpl.mVisible = z7;
                if (stageCoordinator.mMainStage.mIsActive) {
                    boolean z10 = stageCoordinator.mSideStageListener.mVisible;
                    boolean z11 = stageCoordinator.mMainStageListener.mVisible;
                    boolean z12 = stageCoordinator.mCellStageListener.mVisible;
                    if (z11 == z10) {
                        if (!z11 && stageCoordinator.mExitSplitScreenOnHide) {
                            stageCoordinator.exitSplitScreen(null, 5);
                            return;
                        }
                        WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                        if (!z11) {
                            windowContainerTransaction2.setReparentLeafTaskIfRelaunch(stageCoordinator.mRootTaskInfo.token, true);
                            stageCoordinator.setRootForceTranslucent(windowContainerTransaction2, true);
                        } else {
                            stageCoordinator.clearRequestIfPresented();
                            windowContainerTransaction2.setReparentLeafTaskIfRelaunch(stageCoordinator.mRootTaskInfo.token, false);
                            stageCoordinator.setRootForceTranslucent(windowContainerTransaction2, false);
                        }
                        stageCoordinator.mSyncQueue.queue(windowContainerTransaction2);
                        stageCoordinator.setDividerVisibility(z11, null);
                        if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && z11 == z12) {
                            stageCoordinator.setCellDividerVisibility(null, z12);
                        }
                    }
                }
            }
        }
    }

    public StageTaskListener(Context context, ShellTaskOrganizer shellTaskOrganizer, int i, StageListenerCallbacks stageListenerCallbacks, SyncTransactionQueue syncTransactionQueue, SurfaceSession surfaceSession, IconProvider iconProvider, int i2) {
        RunningTaskInfoList runningTaskInfoList = new RunningTaskInfoList(this, 0);
        this.mChildrenTaskInfo = runningTaskInfoList;
        this.mChildrenLeashes = new SparseArray();
        this.mContext = context;
        this.mCallbacks = stageListenerCallbacks;
        this.mSyncQueue = syncTransactionQueue;
        this.mSurfaceSession = surfaceSession;
        this.mIconProvider = iconProvider;
        this.mRunningTaskInfoList = runningTaskInfoList;
        this.mStageType = i2;
        shellTaskOrganizer.createStageRootTask(i, i2, this);
    }
}
