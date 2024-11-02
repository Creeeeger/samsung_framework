package com.android.wm.shell.recents;

import android.animation.Animator;
import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.IApplicationThread;
import android.os.Debug;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.IntArray;
import android.util.Pair;
import android.util.Slog;
import android.view.IRecentsAnimationController;
import android.view.IRecentsAnimationRunner;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.PictureInPictureSurfaceTransaction;
import android.window.TaskSnapshot;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.systemui.keyguard.KeyguardService$$ExternalSyntheticOutline0;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentsTransitionHandler;
import com.android.wm.shell.splitscreen.SplitBackgroundController;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.MultiTaskingTransitionProvider;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.util.TransitionUtil;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RecentsTransitionHandler implements Transitions.TransitionHandler {
    public final ShellExecutor mExecutor;
    public final MultiTaskingTransitionProvider mMultiTaskingTransitions;
    public final Transitions mTransitions;
    public IApplicationThread mAnimApp = null;
    public final ArrayList mControllers = new ArrayList();
    public final ArrayList mStateListeners = new ArrayList();
    public final ArrayList mForceHidingAnimators = new ArrayList();
    public final ArrayList mMixers = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RecentsController extends IRecentsAnimationController.Stub {
        public static final /* synthetic */ int $r8$clinit = 0;
        public boolean mIsDisplayChangeOnStart;
        public IRecentsAnimationRunner mListener;
        public Pair mPendingPauseSnapshotsForCancel;
        public Transitions.TransitionFinishCallback mFinishCB = null;
        public SurfaceControl.Transaction mFinishTransaction = null;
        public ArrayList mPausingTasks = null;
        public ArrayList mOpeningTasks = null;
        public WindowContainerToken mPipTask = null;
        public WindowContainerToken mRecentsTask = null;
        public TransitionInfo mInfo = null;
        public boolean mOpeningSeparateHome = false;
        public boolean mPausingSeparateHome = false;
        public ArrayMap mLeashMap = null;
        public PictureInPictureSurfaceTransaction mPipTransaction = null;
        public IBinder mTransition = null;
        public boolean mKeyguardLocked = false;
        public boolean mWillFinishToHome = false;
        public int mState = 0;
        public ArrayMap mTransferLeashMap = null;
        public final int mInstanceId = System.identityHashCode(this);
        public RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0 mDeathHandler = new IBinder.DeathRecipient() { // from class: com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                RecentsTransitionHandler.RecentsController recentsController = RecentsTransitionHandler.RecentsController.this;
                recentsController.getClass();
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 690469724, 1, "[%d] RecentsController.DeathRecipient: binder died", Long.valueOf(recentsController.mInstanceId));
                }
                recentsController.finish(recentsController.mWillFinishToHome, false);
            }
        };

        /* JADX WARN: Type inference failed for: r1v1, types: [com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0] */
        public RecentsController(IRecentsAnimationRunner iRecentsAnimationRunner) {
            this.mListener = iRecentsAnimationRunner;
            try {
                iRecentsAnimationRunner.asBinder().linkToDeath(this.mDeathHandler, 0);
            } catch (RemoteException e) {
                Slog.e("RecentsTransitionHandler", "RecentsController: failed to link to death", e);
                this.mListener = null;
            }
        }

        public final void cancel(String str) {
            cancel(str, true, false);
        }

        public final void cleanUp() {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -358280047, 1, "[%d] RecentsController.cleanup", Long.valueOf(this.mInstanceId));
            }
            IRecentsAnimationRunner iRecentsAnimationRunner = this.mListener;
            if (iRecentsAnimationRunner != null && this.mDeathHandler != null) {
                iRecentsAnimationRunner.asBinder().unlinkToDeath(this.mDeathHandler, 0);
                this.mDeathHandler = null;
            }
            this.mListener = null;
            this.mFinishCB = null;
            if (this.mLeashMap != null) {
                for (int i = 0; i < this.mLeashMap.size(); i++) {
                    ((SurfaceControl) this.mLeashMap.valueAt(i)).release();
                }
                this.mLeashMap = null;
            }
            this.mFinishTransaction = null;
            this.mPausingTasks = null;
            this.mOpeningTasks = null;
            this.mInfo = null;
            this.mTransition = null;
            this.mPendingPauseSnapshotsForCancel = null;
            RecentsTransitionHandler.this.mControllers.remove(this);
            for (int i2 = 0; i2 < RecentsTransitionHandler.this.mStateListeners.size(); i2++) {
                ((RecentsTransitionStateListener) RecentsTransitionHandler.this.mStateListeners.get(i2)).onAnimationStateChanged(false);
            }
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER && this.mTransferLeashMap != null) {
                for (int i3 = 0; i3 < this.mTransferLeashMap.size(); i3++) {
                    ((SurfaceControl) this.mTransferLeashMap.valueAt(i3)).release();
                }
                this.mTransferLeashMap = null;
            }
            if (CoreRune.FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE) {
                this.mIsDisplayChangeOnStart = false;
            }
        }

        public final void detachNavigationBarFromApp(boolean z) {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 1695981058, 1, "[%d] RecentsController.detachNavigationBarFromApp", Long.valueOf(this.mInstanceId));
            }
            ((HandlerExecutor) RecentsTransitionHandler.this.mExecutor).execute(new RecentsTransitionHandler$$ExternalSyntheticLambda1(this, 1));
        }

        public final void finish(final boolean z, final boolean z2) {
            ((HandlerExecutor) RecentsTransitionHandler.this.mExecutor).execute(new Runnable() { // from class: com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsTransitionHandler.RecentsController.this.finishInner(z, z2);
                }
            });
        }

        public final void finishInner(boolean z, boolean z2) {
            boolean z3;
            WindowContainerToken windowContainerToken;
            WindowContainerToken windowContainerToken2;
            WindowContainerToken windowContainerToken3;
            StageCoordinator.RecentsTransitionCallback recentsTransitionCallback;
            if (this.mFinishCB == null) {
                Slog.e("RecentsTransitionHandler", "Duplicate call to finish");
                return;
            }
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -440544752, 509, "[%d] RecentsController.finishInner: toHome=%b userLeave=%b willFinishToHome=%b state=%d", Long.valueOf(this.mInstanceId), Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(this.mWillFinishToHome), Long.valueOf(this.mState));
            }
            Transitions.TransitionFinishCallback transitionFinishCallback = this.mFinishCB;
            this.mFinishCB = null;
            SurfaceControl.Transaction transaction = this.mFinishTransaction;
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            if (CoreRune.MW_FREEFORM_FORCE_HIDING_TRANSITION) {
                RecentsTransitionHandler recentsTransitionHandler = RecentsTransitionHandler.this;
                ArrayList arrayList = recentsTransitionHandler.mForceHidingAnimators;
                if (!arrayList.isEmpty()) {
                    Slog.d("RecentsTransitionHandler", "cancelForceHideAnimationsIfNeeded: animators=" + new ArrayList(arrayList) + ", Callers=" + Debug.getCallers(5));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((HandlerExecutor) recentsTransitionHandler.mTransitions.mAnimExecutor).execute(new RecentsTransitionHandler$$ExternalSyntheticLambda1((Animator) it.next(), 0));
                    }
                }
            }
            if (CoreRune.MW_MULTI_SPLIT_BACKGROUND && (recentsTransitionCallback = RecentsTransitionHandler.this.mTransitions.mRecentTransitionCallback) != null) {
                StageCoordinator stageCoordinator = StageCoordinator.this;
                SplitBackgroundController splitBackgroundController = stageCoordinator.mSplitBackgroundController;
                if (splitBackgroundController.mReparentedToTransitionRoot) {
                    splitBackgroundController.reparentToLeash(stageCoordinator.mRootTaskLeash, false, transaction);
                }
            }
            if (this.mKeyguardLocked && (windowContainerToken3 = this.mRecentsTask) != null) {
                if (z) {
                    windowContainerTransaction.reorder(windowContainerToken3, true);
                } else {
                    windowContainerTransaction.restoreTransientOrder(windowContainerToken3);
                }
            }
            if (!z && ((!this.mWillFinishToHome || this.mPausingSeparateHome) && this.mPausingTasks != null && this.mState == 0)) {
                if (this.mPausingSeparateHome) {
                    if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -1664932337, 0, "  returning to 3p home", null);
                    }
                } else if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 25777518, 0, "  returning to app", null);
                }
                for (int size = this.mPausingTasks.size() - 1; size >= 0; size--) {
                    windowContainerTransaction.reorder(((TaskState) this.mPausingTasks.get(size)).mToken, true);
                    transaction.show(((TaskState) this.mPausingTasks.get(size)).mTaskSurface);
                }
                if (!this.mKeyguardLocked && (windowContainerToken2 = this.mRecentsTask) != null) {
                    windowContainerTransaction.restoreTransientOrder(windowContainerToken2);
                }
            } else if (z && this.mOpeningSeparateHome && this.mPausingTasks != null) {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 453029459, 0, "  3p launching home", null);
                }
                for (int i = 0; i < this.mOpeningTasks.size(); i++) {
                    TaskState taskState = (TaskState) this.mOpeningTasks.get(i);
                    if (taskState.mTaskInfo.topActivityType == 2) {
                        windowContainerTransaction.reorder(taskState.mToken, true);
                    }
                    transaction.show(taskState.mTaskSurface);
                }
                for (int size2 = this.mPausingTasks.size() - 1; size2 >= 0; size2--) {
                    transaction.hide(((TaskState) this.mPausingTasks.get(size2)).mTaskSurface);
                }
                if (!this.mKeyguardLocked && (windowContainerToken = this.mRecentsTask) != null) {
                    windowContainerTransaction.restoreTransientOrder(windowContainerToken);
                }
            } else {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -223019508, 0, "  normal finish", null);
                }
                for (int i2 = 0; i2 < this.mOpeningTasks.size(); i2++) {
                    transaction.show(((TaskState) this.mOpeningTasks.get(i2)).mTaskSurface);
                }
                for (int i3 = 0; i3 < this.mPausingTasks.size(); i3++) {
                    if (!z2) {
                        if (((TaskState) this.mPausingTasks.get(i3)).mLeash != null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            windowContainerTransaction.setDoNotPip(((TaskState) this.mPausingTasks.get(i3)).mToken);
                        }
                    }
                    transaction.hide(((TaskState) this.mPausingTasks.get(i3)).mTaskSurface);
                }
                WindowContainerToken windowContainerToken4 = this.mPipTask;
                if (windowContainerToken4 != null && this.mPipTransaction != null && z2) {
                    transaction.show(this.mInfo.getChange(windowContainerToken4).getLeash());
                    PictureInPictureSurfaceTransaction.apply(this.mPipTransaction, this.mInfo.getChange(this.mPipTask).getLeash(), transaction);
                    this.mPipTask = null;
                    this.mPipTransaction = null;
                }
            }
            cleanUp();
            if (windowContainerTransaction.isEmpty()) {
                windowContainerTransaction = null;
            }
            transitionFinishCallback.onTransitionFinished(windowContainerTransaction, null);
        }

        public final Pair getSnapshotsForPausingTasks() {
            int[] iArr;
            TaskSnapshot[] taskSnapshotArr;
            ArrayList arrayList = this.mPausingTasks;
            if (arrayList != null && arrayList.size() > 0) {
                iArr = new int[this.mPausingTasks.size()];
                taskSnapshotArr = new TaskSnapshot[this.mPausingTasks.size()];
                for (int i = 0; i < this.mPausingTasks.size(); i++) {
                    try {
                        TaskState taskState = (TaskState) this.mPausingTasks.get(0);
                        if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -917088632, 5, "[%d] RecentsController.sendCancel: Snapshotting task=%d", Long.valueOf(this.mInstanceId), Long.valueOf(taskState.mTaskInfo.taskId));
                        }
                        taskSnapshotArr[i] = ActivityTaskManager.getService().takeTaskSnapshot(taskState.mTaskInfo.taskId, true);
                    } catch (RemoteException unused) {
                    }
                }
                return new Pair(iArr, taskSnapshotArr);
            }
            iArr = null;
            taskSnapshotArr = null;
            return new Pair(iArr, taskSnapshotArr);
        }

        public final void merge(TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, Transitions.TransitionFinishCallback transitionFinishCallback, IBinder iBinder) {
            SurfaceControl.Transaction transaction2;
            String str;
            boolean z;
            RemoteAnimationTarget[] remoteAnimationTargetArr;
            boolean z2;
            ActivityManager.RunningTaskInfo taskInfo;
            StageCoordinator.RecentsTransitionCallback recentsTransitionCallback;
            boolean z3;
            int findRootIndex;
            boolean z4;
            boolean z5;
            String str2;
            ArrayList arrayList;
            IntArray intArray;
            int i;
            String str3;
            String str4;
            boolean z6;
            String str5;
            boolean z7;
            boolean z8;
            boolean z9;
            boolean z10;
            IntArray intArray2;
            TransitionInfo transitionInfo2 = transitionInfo;
            boolean z11 = true;
            if (this.mFinishCB == null) {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -929009263, 1, "[%d] RecentsController.merge: skip, no finish callback", Long.valueOf(this.mInstanceId));
                    return;
                }
                return;
            }
            if (transitionInfo.getType() == 12) {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -133189084, 1, "[%d] RecentsController.merge: transit_sleep", Long.valueOf(this.mInstanceId));
                }
                cancel("transit_sleep");
                return;
            }
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 2122319845, 1, "[%d] RecentsController.merge", Long.valueOf(this.mInstanceId));
            }
            int i2 = 0;
            this.mOpeningSeparateHome = false;
            TransitionUtil.LeafTaskFilter leafTaskFilter = new TransitionUtil.LeafTaskFilter();
            int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo2, 1);
            while (true) {
                if (m >= 0) {
                    TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
                    if (change.hasFlags(32) && change.getMode() == 6) {
                        break;
                    } else {
                        m--;
                    }
                } else {
                    z11 = false;
                    break;
                }
            }
            ArrayList arrayList2 = null;
            TransitionInfo.Change change2 = null;
            IntArray intArray3 = null;
            boolean z12 = false;
            boolean z13 = false;
            ArrayList arrayList3 = null;
            boolean z14 = false;
            while (i2 < transitionInfo.getChanges().size()) {
                TransitionInfo.Change change3 = (TransitionInfo.Change) transitionInfo.getChanges().get(i2);
                ActivityManager.RunningTaskInfo taskInfo2 = change3.getTaskInfo();
                IntArray intArray4 = intArray3;
                if (taskInfo2 != null && taskInfo2.configuration.windowConfiguration.isAlwaysOnTop()) {
                    if (taskInfo2.configuration.windowConfiguration.getWindowingMode() != 2) {
                        if (z11) {
                            Slog.w("RecentsTransitionHandler", "merge: skip handling always-on-top task " + change3 + ", reason=display_change");
                        } else {
                            return;
                        }
                    } else {
                        cancel("task #" + taskInfo2.taskId + " is always_on_top");
                        return;
                    }
                } else {
                    if (taskInfo2 != null && TransitionInfo.isIndependent(change3, transitionInfo2)) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    WindowContainerToken windowContainerToken = this.mRecentsTask;
                    if (windowContainerToken != null && windowContainerToken.equals(change3.getContainer())) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    if (!z13 && !z7) {
                        z13 = false;
                    } else {
                        z13 = true;
                    }
                    boolean test = leafTaskFilter.test(change3);
                    if (TransitionUtil.isOpeningType(change3.getMode())) {
                        if (z8) {
                            z9 = z11;
                            change2 = change3;
                            intArray3 = intArray4;
                            i2++;
                            z11 = z9;
                            z14 = z14;
                        } else if (z7 || test) {
                            if (test && taskInfo2.topActivityType == 2) {
                                this.mOpeningSeparateHome = true;
                            }
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                                intArray2 = new IntArray();
                            } else {
                                intArray2 = intArray4;
                            }
                            arrayList3.add(change3);
                            intArray2.add(test ? 1 : 0);
                            intArray3 = intArray2;
                            z9 = z11;
                            i2++;
                            z11 = z9;
                            z14 = z14;
                        }
                    } else {
                        if (TransitionUtil.isClosingType(change3.getMode())) {
                            if (z8) {
                                z12 = true;
                                z9 = z11;
                            } else if (z7 || test) {
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(change3);
                            }
                        } else {
                            z9 = z11;
                            if (change3.getMode() == 6) {
                                if (change3.hasFlags(32) && transitionInfo.getType() == 6) {
                                    cancel("display change", this.mWillFinishToHome, true);
                                    return;
                                }
                                if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_BUG_FIX && test && !TransitionUtil.isHomeOrRecents(change3) && TransitionUtil.isOrderOnly(change3) && TaskState.indexOf(this.mPausingTasks, change3) > 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (!TransitionUtil.isOrderOnly(change3) && test) {
                                    z14 = true;
                                } else if (test && ((taskInfo2.topActivityType == 2 || (CoreRune.FW_CUSTOM_SHELL_TRANSITION_BUG_FIX && z10)) && !z8)) {
                                    if (arrayList3 == null) {
                                        arrayList3 = new ArrayList();
                                        intArray3 = new IntArray();
                                    } else {
                                        intArray3 = intArray4;
                                    }
                                    arrayList3.add(change3);
                                    intArray3.add(1);
                                    i2++;
                                    z11 = z9;
                                    z14 = z14;
                                }
                            }
                        }
                        intArray3 = intArray4;
                        i2++;
                        z11 = z9;
                        z14 = z14;
                    }
                }
                intArray3 = intArray4;
                z9 = z11;
                i2++;
                z11 = z9;
                z14 = z14;
            }
            IntArray intArray5 = intArray3;
            if (z14 && z12) {
                sendCancelWithSnapshots();
                ((HandlerExecutor) RecentsTransitionHandler.this.mExecutor).executeDelayed(0L, new RecentsTransitionHandler$$ExternalSyntheticLambda1(this, 2));
                return;
            }
            if (change2 != null) {
                if (this.mState == 0) {
                    Slog.e("RecentsTransitionHandler", "Returning to recents while recents is already idle.");
                }
                if (arrayList2 == null || arrayList2.size() == 0) {
                    Slog.e("RecentsTransitionHandler", "Returning to recents without closing any opening tasks.");
                }
                transaction2 = transaction;
                transaction2.show(change2.getLeash());
                transaction2.setAlpha(change2.getLeash(), 1.0f);
                this.mState = 0;
            } else {
                transaction2 = transaction;
            }
            String str6 = "leaf ";
            String str7 = "";
            if (arrayList2 == null) {
                str = "leaf ";
                z = false;
            } else {
                int i3 = 0;
                z = false;
                while (i3 < arrayList2.size()) {
                    TransitionInfo.Change change4 = (TransitionInfo.Change) arrayList2.get(i3);
                    int indexOf = TaskState.indexOf(this.mPausingTasks, change4);
                    if (indexOf >= 0) {
                        this.mPausingTasks.remove(indexOf);
                        if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 86925348, 1, "  closing pausing taskId=%d", Long.valueOf(change4.getTaskInfo().taskId));
                        }
                        str4 = str6;
                    } else {
                        int indexOf2 = TaskState.indexOf(this.mOpeningTasks, change4);
                        if (indexOf2 < 0) {
                            Slog.w("RecentsTransitionHandler", "Closing a task that wasn't opening, this may be split or something unexpected: " + change4.getTaskInfo().taskId);
                            str4 = str6;
                            i3++;
                            str6 = str4;
                        } else {
                            TaskState taskState = (TaskState) this.mOpeningTasks.remove(indexOf2);
                            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                                if (taskState.mLeash != null) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                if (!z6) {
                                    str5 = "";
                                } else {
                                    str5 = str6;
                                }
                                str4 = str6;
                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 2054709849, 4, "  pausing opening %staskId=%d", str5, Long.valueOf(taskState.mTaskInfo.taskId));
                            } else {
                                str4 = str6;
                            }
                            this.mPausingTasks.add(taskState);
                        }
                    }
                    z = true;
                    i3++;
                    str6 = str4;
                }
                str = str6;
            }
            if (arrayList3 != null && arrayList3.size() > 0) {
                int size = this.mInfo.getChanges().size() * 3;
                int i4 = 0;
                for (int i5 = 0; i5 < intArray5.size(); i5++) {
                    i4 += intArray5.get(i5);
                }
                IntArray intArray6 = intArray5;
                if (i4 > 0) {
                    remoteAnimationTargetArr = new RemoteAnimationTarget[i4];
                } else {
                    remoteAnimationTargetArr = null;
                }
                int i6 = 0;
                int i7 = 0;
                while (i6 < arrayList3.size()) {
                    TransitionInfo.Change change5 = (TransitionInfo.Change) arrayList3.get(i6);
                    if (intArray6.get(i6) == 1) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    int indexOf3 = TaskState.indexOf(this.mPausingTasks, change5);
                    if (indexOf3 >= 0) {
                        if (z5) {
                            str2 = str7;
                            arrayList = arrayList3;
                            remoteAnimationTargetArr[i7] = TransitionUtil.newTarget(change5, size, ((TaskState) this.mPausingTasks.get(indexOf3)).mLeash, false);
                            i7++;
                        } else {
                            str2 = str7;
                            arrayList = arrayList3;
                        }
                        TaskState taskState2 = (TaskState) this.mPausingTasks.remove(indexOf3);
                        if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                            if (z5) {
                                str3 = str;
                            } else {
                                str3 = str2;
                            }
                            intArray = intArray6;
                            i = i7;
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 482946393, 4, "  opening pausing %staskId=%d", str3, Long.valueOf(taskState2.mTaskInfo.taskId));
                        } else {
                            i = i7;
                            intArray = intArray6;
                        }
                        this.mOpeningTasks.add(taskState2);
                        transaction2.show(change5.getLeash());
                        transaction2.setAlpha(change5.getLeash(), 1.0f);
                        i7 = i;
                    } else {
                        str2 = str7;
                        arrayList = arrayList3;
                        intArray = intArray6;
                        if (z5) {
                            RemoteAnimationTarget newTarget = TransitionUtil.newTarget(change5, size, transitionInfo2, transaction2, this.mLeashMap);
                            int i8 = i7 + 1;
                            remoteAnimationTargetArr[i7] = newTarget;
                            transaction2.reparent(newTarget.leash, this.mInfo.getRoot(TransitionUtil.rootIndexFor(change5, this.mInfo)).getLeash());
                            transaction2.setLayer(newTarget.leash, size);
                            transaction2.hide(newTarget.leash);
                            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 101310246, 1, "  opening new leaf taskId=%d", Long.valueOf(newTarget.taskId));
                            }
                            this.mOpeningTasks.add(new TaskState(change5, newTarget.leash));
                            i7 = i8;
                        } else {
                            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -252777164, 1, "  opening new taskId=%d", Long.valueOf(change5.getTaskInfo().taskId));
                            }
                            transaction2.setLayer(change5.getLeash(), size);
                            transaction2.show(change5.getLeash());
                            this.mOpeningTasks.add(new TaskState(change5, null));
                        }
                    }
                    i6++;
                    transitionInfo2 = transitionInfo;
                    intArray6 = intArray;
                    str7 = str2;
                    arrayList3 = arrayList;
                }
                if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH) {
                    int i9 = 0;
                    while (true) {
                        if (i9 < transitionInfo.getChanges().size()) {
                            TransitionInfo.Change change6 = (TransitionInfo.Change) transitionInfo.getChanges().get(i9);
                            if (TransitionUtil.isOpeningType(change6.getMode()) && change6.hasFlags(QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY)) {
                                z4 = true;
                                break;
                            }
                            i9++;
                        } else {
                            z4 = false;
                            break;
                        }
                    }
                    if (z4) {
                        if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -1778580792, 0, "  adding late transient launch", null);
                        }
                        z = true;
                    }
                }
                this.mState = 1;
                z = true;
            } else {
                remoteAnimationTargetArr = null;
            }
            if (this.mPausingTasks.isEmpty() && ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 8391559, 1, "[%d] RecentsController.merge: empty pausing tasks", Long.valueOf(this.mInstanceId));
            }
            if (!z13) {
                Slog.d("RecentsTransitionHandler", "Got an activity only transition during recents, so apply directly");
                for (int i10 = 0; i10 < transitionInfo.getChanges().size(); i10++) {
                    TransitionInfo.Change change7 = (TransitionInfo.Change) transitionInfo.getChanges().get(i10);
                    if (TransitionUtil.isOpeningType(change7.getMode())) {
                        transaction2.show(change7.getLeash());
                        transaction2.setAlpha(change7.getLeash(), 1.0f);
                    } else if (TransitionUtil.isClosingType(change7.getMode())) {
                        transaction2.hide(change7.getLeash());
                    }
                }
            } else if (!z) {
                Slog.w("RecentsTransitionHandler", "Don't know how to merge this transition, foundRecentsClosing=" + z12);
                if (z12) {
                    this.mWillFinishToHome = false;
                    cancel("didn't merge", false, false);
                    return;
                }
                if (CoreRune.MW_PIP_SHELL_TRANSITION && transitionInfo.getType() == 1003) {
                    transaction.apply();
                    transitionFinishCallback.onTransitionFinished(null, null);
                    return;
                }
                if (CoreRune.MW_SPLIT_SHELL_TRANSITION && transitionInfo.getType() == 6) {
                    for (int i11 = 0; i11 < transitionInfo.getChanges().size(); i11++) {
                        TransitionInfo.Change change8 = (TransitionInfo.Change) transitionInfo.getChanges().get(i11);
                        if (change8.getMode() != 6 || (taskInfo = change8.getTaskInfo()) == null || taskInfo.getWindowingMode() != 6 || taskInfo.getConfiguration().windowConfiguration.getStageType() == 0) {
                            z2 = false;
                            break;
                        }
                    }
                    Slog.d("RecentsTransitionHandler", "When only split change, merge");
                    z2 = true;
                    if (z2) {
                        transaction.apply();
                        transitionFinishCallback.onTransitionFinished(null, null);
                        return;
                    }
                    return;
                }
                return;
            }
            transaction.apply();
            transitionInfo.releaseAnimSurfaces();
            if (remoteAnimationTargetArr != null) {
                if (CoreRune.MW_MULTI_SPLIT_BACKGROUND && iBinder != null && (recentsTransitionCallback = RecentsTransitionHandler.this.mTransitions.mRecentTransitionCallback) != null) {
                    TransitionInfo transitionInfo3 = this.mInfo;
                    StageCoordinator stageCoordinator = StageCoordinator.this;
                    if (stageCoordinator.mSplitTransitions.isPendingEnter(iBinder)) {
                        int length = remoteAnimationTargetArr.length - 1;
                        while (true) {
                            if (length >= 0) {
                                RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[length];
                                ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTarget.taskInfo;
                                if (runningTaskInfo != null && runningTaskInfo.isSplitScreen() && remoteAnimationTarget.mode == 0) {
                                    z3 = true;
                                    break;
                                }
                                length--;
                            } else {
                                z3 = false;
                                break;
                            }
                        }
                        if (z3 && (findRootIndex = transitionInfo3.findRootIndex(stageCoordinator.mDisplayId)) >= 0) {
                            stageCoordinator.mSplitBackgroundController.reparentToLeash(transitionInfo3.getRoot(findRootIndex).getLeash(), true, null);
                        }
                    }
                }
                try {
                    if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -645411680, 1, "[%d] RecentsController.merge: calling onTasksAppeared", Long.valueOf(this.mInstanceId));
                    }
                    this.mListener.onTasksAppeared(remoteAnimationTargetArr);
                } catch (RemoteException e) {
                    Slog.e("RecentsTransitionHandler", "Error sending appeared tasks to recents animation", e);
                }
            }
            transitionFinishCallback.onTransitionFinished(null, null);
        }

        public final boolean removeTask(int i) {
            return false;
        }

        public final TaskSnapshot screenshotTask(int i) {
            try {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 313798264, 5, "[%d] RecentsController.screenshotTask: taskId=%d", Long.valueOf(this.mInstanceId), Long.valueOf(i));
                }
                return ActivityTaskManager.getService().takeTaskSnapshot(i, true);
            } catch (RemoteException e) {
                Slog.e("RecentsTransitionHandler", "Failed to screenshot task", e);
                return null;
            }
        }

        public final boolean sendCancel(int[] iArr, TaskSnapshot[] taskSnapshotArr) {
            String str;
            if (taskSnapshotArr != null) {
                str = "with snapshots";
            } else {
                str = "";
            }
            try {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 163928195, 1, "[%d] RecentsController.cancel: calling onAnimationCanceled %s", Long.valueOf(this.mInstanceId), str);
                }
                this.mListener.onAnimationCanceled(iArr, taskSnapshotArr);
                return true;
            } catch (RemoteException e) {
                Slog.e("RecentsTransitionHandler", "Error canceling recents animation", e);
                return false;
            }
        }

        public final void sendCancelWithSnapshots() {
            Pair pair = this.mPendingPauseSnapshotsForCancel;
            if (pair == null) {
                pair = getSnapshotsForPausingTasks();
            }
            sendCancel((int[]) pair.first, (TaskSnapshot[]) pair.second);
        }

        public final void setFinishTaskTransaction(int i, PictureInPictureSurfaceTransaction pictureInPictureSurfaceTransaction, SurfaceControl surfaceControl) {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -824650337, 5, "[%d] RecentsController.setFinishTaskTransaction: taskId=%d", Long.valueOf(this.mInstanceId), Long.valueOf(i));
            }
            ((HandlerExecutor) RecentsTransitionHandler.this.mExecutor).execute(new RecentsTransitionHandler$$ExternalSyntheticLambda2(1, this, pictureInPictureSurfaceTransaction));
        }

        public final void setInputConsumerEnabled(boolean z) {
            ((HandlerExecutor) RecentsTransitionHandler.this.mExecutor).execute(new RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1(this, z, 0));
        }

        public final void setWillFinishToHome(boolean z) {
            ((HandlerExecutor) RecentsTransitionHandler.this.mExecutor).execute(new RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1(this, z, 1));
        }

        public final void cancel(String str, boolean z, boolean z2) {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -567615180, 13, "[%d] RecentsController.cancel: toHome=%b reason=%s", Long.valueOf(this.mInstanceId), Boolean.valueOf(z), String.valueOf(str));
            }
            if (this.mListener != null) {
                if (z2) {
                    sendCancelWithSnapshots();
                } else {
                    sendCancel(null, null);
                }
            }
            if (this.mFinishCB != null) {
                finishInner(z, false);
            } else {
                cleanUp();
            }
        }

        public final void animateNavigationBarToApp(long j) {
        }

        public final void setAnimationTargetsBehindSystemBars(boolean z) {
        }

        public final void cleanupScreenshot() {
        }

        public final void setDeferCancelUntilNextTransition(boolean z, boolean z2) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskState {
        public final SurfaceControl mLeash;
        public final ActivityManager.RunningTaskInfo mTaskInfo;
        public final SurfaceControl mTaskSurface;
        public final WindowContainerToken mToken;

        public TaskState(TransitionInfo.Change change, SurfaceControl surfaceControl) {
            this.mToken = change.getContainer();
            this.mTaskInfo = change.getTaskInfo();
            this.mTaskSurface = change.getLeash();
            this.mLeash = surfaceControl;
        }

        public static int indexOf(ArrayList arrayList, TransitionInfo.Change change) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((TaskState) arrayList.get(size)).mToken.equals(change.getContainer())) {
                    return size;
                }
            }
            return -1;
        }

        public final String toString() {
            return "" + this.mToken + " : " + this.mLeash;
        }
    }

    public RecentsTransitionHandler(ShellInit shellInit, final Transitions transitions, final RecentTasksController recentTasksController) {
        this.mTransitions = transitions;
        this.mExecutor = transitions.mMainExecutor;
        if (!Transitions.ENABLE_SHELL_TRANSITIONS || recentTasksController == null) {
            return;
        }
        shellInit.addInitCallback(new Runnable() { // from class: com.android.wm.shell.recents.RecentsTransitionHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsTransitionHandler recentsTransitionHandler = RecentsTransitionHandler.this;
                RecentTasksController recentTasksController2 = recentTasksController;
                Transitions transitions2 = transitions;
                recentsTransitionHandler.getClass();
                recentTasksController2.mTransitionHandler = recentsTransitionHandler;
                transitions2.addHandler(recentsTransitionHandler);
            }
        }, this);
        if (CoreRune.MW_FREEFORM_FORCE_HIDING_TRANSITION) {
            this.mMultiTaskingTransitions = transitions.mMultiTaskingTransitProvider;
        }
    }

    public final int findController(IBinder iBinder) {
        ArrayList arrayList = this.mControllers;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((RecentsController) arrayList.get(size)).mTransition == iBinder) {
                return size;
            }
        }
        return -1;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo) {
        ArrayList arrayList = this.mControllers;
        if (arrayList.isEmpty()) {
            return null;
        }
        RecentsController recentsController = (RecentsController) arrayList.get(arrayList.size() - 1);
        recentsController.getClass();
        if (transitionRequestInfo.getType() == 6 && transitionRequestInfo.getDisplayChange() != null) {
            TransitionRequestInfo.DisplayChange displayChange = transitionRequestInfo.getDisplayChange();
            if (displayChange.getStartRotation() != displayChange.getEndRotation()) {
                if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -1063708666, 1, "[%d] RecentsController.prepareForMerge: Snapshot due to requested display change", Long.valueOf(recentsController.mInstanceId));
                }
                recentsController.mPendingPauseSnapshotsForCancel = recentsController.getSnapshotsForPausingTasks();
            }
        }
        return null;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        int findController = findController(iBinder2);
        if (findController < 0) {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, -134333442, 0, "RecentsTransitionHandler.mergeAnimation: no controller found", null);
            }
        } else {
            RecentsController recentsController = (RecentsController) this.mControllers.get(findController);
            if (CoreRune.MW_MULTI_SPLIT_BACKGROUND) {
                recentsController.merge(transitionInfo, transaction, transitionFinishCallback, iBinder);
            } else {
                recentsController.merge(transitionInfo, transaction, transitionFinishCallback, null);
            }
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void onTransitionConsumed(IBinder iBinder, boolean z, SurfaceControl.Transaction transaction) {
        ArrayList arrayList = this.mControllers;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((RecentsController) arrayList.get(size)).cancel("onTransitionConsumed");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x02a3, code lost:
    
        if (r5 != false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x045a, code lost:
    
        if (r11.topActivityType != 2) goto L170;
     */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(android.os.IBinder r33, android.window.TransitionInfo r34, android.view.SurfaceControl.Transaction r35, android.view.SurfaceControl.Transaction r36, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r37) {
        /*
            Method dump skipped, instructions count: 1556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.recents.RecentsTransitionHandler.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
    
        if (r0 != false) goto L14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.IBinder startRecentsTransition(android.app.PendingIntent r6, android.content.Intent r7, android.os.Bundle r8, android.app.IApplicationThread r9, android.view.IRecentsAnimationRunner r10) {
        /*
            r5 = this;
            boolean r0 = com.android.wm.shell.protolog.ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L10
            com.android.wm.shell.protolog.ShellProtoLogGroup r0 = com.android.wm.shell.protolog.ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION
            r3 = -1343679460(0xffffffffafe9141c, float:-4.2396742E-10)
            java.lang.String r4 = "RecentsTransitionHandler.startRecentsTransition"
            com.android.wm.shell.protolog.ShellProtoLogImpl.v(r0, r3, r1, r4, r2)
        L10:
            r5.mAnimApp = r9
            android.window.WindowContainerTransaction r9 = new android.window.WindowContainerTransaction
            r9.<init>()
            r9.sendPendingIntent(r6, r7, r8)
            com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController r6 = new com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController
            r6.<init>(r10)
            r7 = r1
            r8 = r2
        L21:
            java.util.ArrayList r10 = r5.mMixers
            int r0 = r10.size()
            if (r7 >= r0) goto L49
            java.lang.Object r8 = r10.get(r7)
            com.android.wm.shell.transition.DefaultMixedHandler r8 = (com.android.wm.shell.transition.DefaultMixedHandler) r8
            com.android.wm.shell.recents.RecentsTransitionHandler r0 = r8.mRecentsHandler
            if (r0 == 0) goto L3c
            com.android.wm.shell.splitscreen.StageCoordinator r0 = r8.mSplitHandler
            boolean r0 = r0.isSplitScreenVisible()
            if (r0 == 0) goto L3c
            goto L3d
        L3c:
            r8 = r2
        L3d:
            if (r8 == 0) goto L46
            java.lang.Object r7 = r10.get(r7)
            com.android.wm.shell.transition.DefaultMixedHandler r7 = (com.android.wm.shell.transition.DefaultMixedHandler) r7
            goto L4a
        L46:
            int r7 = r7 + 1
            goto L21
        L49:
            r7 = r2
        L4a:
            if (r8 != 0) goto L4d
            r8 = r5
        L4d:
            com.android.wm.shell.transition.Transitions r10 = r5.mTransitions
            r0 = 3
            android.os.IBinder r8 = r10.startTransition(r0, r9, r8)
            if (r7 == 0) goto L84
            com.android.wm.shell.splitscreen.StageCoordinator r9 = r7.mSplitHandler
            boolean r9 = r9.isSplitScreenVisible()
            if (r9 == 0) goto L7c
            boolean r9 = com.android.wm.shell.protolog.ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled
            if (r9 == 0) goto L6c
            com.android.wm.shell.protolog.ShellProtoLogGroup r9 = com.android.wm.shell.protolog.ShellProtoLogGroup.WM_SHELL_TRANSITIONS
            java.lang.String r10 = " Got a recents request while Split-Screen is foreground, so treat it as Mixed."
            r0 = -449756535(0xffffffffe5314289, float:-5.231789E22)
            com.android.wm.shell.protolog.ShellProtoLogImpl.v(r9, r0, r1, r10, r2)
        L6c:
            com.android.wm.shell.transition.DefaultMixedHandler$MixedTransition r9 = new com.android.wm.shell.transition.DefaultMixedHandler$MixedTransition
            r10 = 4
            r9.<init>(r10, r8)
            com.android.wm.shell.recents.RecentsTransitionHandler r10 = r7.mRecentsHandler
            r9.mLeftoversHandler = r10
            java.util.ArrayList r7 = r7.mActiveTransitions
            r7.add(r9)
            goto L84
        L7c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Accepted a recents transition but don't know how to handle it"
            r5.<init>(r6)
            throw r5
        L84:
            if (r8 == 0) goto Lac
            boolean r7 = com.android.wm.shell.protolog.ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled
            if (r7 == 0) goto La4
            int r7 = r6.mInstanceId
            long r9 = (long) r7
            java.lang.String r7 = java.lang.String.valueOf(r8)
            com.android.wm.shell.protolog.ShellProtoLogGroup r0 = com.android.wm.shell.protolog.ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION
            java.lang.Long r9 = java.lang.Long.valueOf(r9)
            java.lang.Object[] r7 = new java.lang.Object[]{r9, r7}
            r9 = -566822870(0xffffffffde36f82a, float:-3.29608352E18)
            java.lang.String r10 = "[%d] RecentsController.setTransition: id=%s"
            r1 = 1
            com.android.wm.shell.protolog.ShellProtoLogImpl.v(r0, r9, r1, r10, r7)
        La4:
            r6.mTransition = r8
            java.util.ArrayList r5 = r5.mControllers
            r5.add(r6)
            goto Lb2
        Lac:
            java.lang.String r5 = "startRecentsTransition"
            r6.cancel(r5)
        Lb2:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.recents.RecentsTransitionHandler.startRecentsTransition(android.app.PendingIntent, android.content.Intent, android.os.Bundle, android.app.IApplicationThread, android.view.IRecentsAnimationRunner):android.os.IBinder");
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void transferAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, WindowContainerTransaction windowContainerTransaction) {
        if (windowContainerTransaction == null) {
            return;
        }
        int findController = findController(iBinder);
        if (findController < 0) {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 922426383, 0, "RecentsTransitionHandler.transferAnimation: no controller found", null);
                return;
            }
            return;
        }
        RecentsController recentsController = (RecentsController) this.mControllers.get(findController);
        ArrayMap arrayMap = windowContainerTransaction.mTransferLeashMap;
        if (arrayMap != null && !arrayMap.isEmpty()) {
            recentsController.mTransferLeashMap = windowContainerTransaction.mTransferLeashMap;
            int findRootIndex = transitionInfo.findRootIndex(0);
            if (findRootIndex >= 0) {
                SurfaceControl leash = transitionInfo.getRoot(findRootIndex).getLeash();
                int size = recentsController.mTransferLeashMap.size();
                while (true) {
                    size--;
                    if (size >= 0) {
                        SurfaceControl surfaceControl = (SurfaceControl) recentsController.mTransferLeashMap.valueAt(size);
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            transaction.reparent(surfaceControl, leash);
                        } else {
                            recentsController.mTransferLeashMap.removeAt(size);
                            Slog.d("RecentsTransitionHandler", "Cannot transfer invalid leash=" + surfaceControl);
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void transitionReady(IBinder iBinder, TransitionInfo transitionInfo) {
        if (findController(iBinder) < 0) {
            if (ShellProtoLogCache.WM_SHELL_RECENTS_TRANSITION_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION, 1158245817, 0, "RecentsTransitionHandler.onTransitionReady: no controller found", null);
            }
        } else {
            IApplicationThread iApplicationThread = this.mAnimApp;
            if (iApplicationThread != null) {
                transitionInfo.setRemoteAppThread(iApplicationThread);
            }
        }
    }
}
