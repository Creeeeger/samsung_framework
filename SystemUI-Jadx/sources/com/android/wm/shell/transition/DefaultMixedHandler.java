package com.android.wm.shell.transition;

import android.os.IBinder;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import android.window.WindowContainerTransactionCallback;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardService$$ExternalSyntheticOutline0;
import com.android.wm.shell.keyguard.KeyguardTransitionHandler;
import com.android.wm.shell.pip.PipTransition;
import com.android.wm.shell.pip.PipTransitionController;
import com.android.wm.shell.pip.phone.PipTouchHandler;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentsTransitionHandler;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.taskview.TaskViewTransitions;
import com.android.wm.shell.transition.DefaultMixedHandler;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.unfold.UnfoldTransitionHandler;
import com.android.wm.shell.util.TransitionUtil;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Optional;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DefaultMixedHandler implements Transitions.TransitionHandler {
    public final ArrayList mActiveTransitions = new ArrayList();
    public final KeyguardTransitionHandler mKeyguardHandler;
    public PipTransitionController mPipHandler;
    public final Transitions mPlayer;
    public RecentsTransitionHandler mRecentsHandler;
    public StageCoordinator mSplitHandler;
    public final TaskViewTransitions mTaskViewTransitions;
    public UnfoldTransitionHandler mUnfoldHandler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MixedTransition {
        public final IBinder mTransition;
        public final int mType;
        public int mAnimType = 0;
        public Transitions.TransitionHandler mLeftoversHandler = null;
        public WindowContainerTransaction mFinishWCT = null;
        public int mInFlightSubAnimations = 0;

        public MixedTransition(int i, IBinder iBinder) {
            this.mType = i;
            this.mTransition = iBinder;
        }

        public final void joinFinishArgs(WindowContainerTransaction windowContainerTransaction, WindowContainerTransactionCallback windowContainerTransactionCallback) {
            if (windowContainerTransactionCallback == null) {
                if (windowContainerTransaction != null) {
                    WindowContainerTransaction windowContainerTransaction2 = this.mFinishWCT;
                    if (windowContainerTransaction2 == null) {
                        this.mFinishWCT = windowContainerTransaction;
                        return;
                    } else {
                        windowContainerTransaction2.merge(windowContainerTransaction, true);
                        return;
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Can't mix transitions that require finish sync callback");
        }
    }

    public DefaultMixedHandler(ShellInit shellInit, Transitions transitions, final Optional<SplitScreenController> optional, final Optional<PipTouchHandler> optional2, final Optional<RecentsTransitionHandler> optional3, KeyguardTransitionHandler keyguardTransitionHandler, final Optional<UnfoldTransitionHandler> optional4, TaskViewTransitions taskViewTransitions) {
        this.mPlayer = transitions;
        this.mKeyguardHandler = keyguardTransitionHandler;
        if (Transitions.ENABLE_SHELL_TRANSITIONS && optional2.isPresent() && optional.isPresent()) {
            shellInit.addInitCallback(new Runnable() { // from class: com.android.wm.shell.transition.DefaultMixedHandler$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultMixedHandler defaultMixedHandler = DefaultMixedHandler.this;
                    Optional optional5 = optional2;
                    Optional optional6 = optional;
                    Optional optional7 = optional3;
                    Optional optional8 = optional4;
                    defaultMixedHandler.getClass();
                    defaultMixedHandler.mPipHandler = ((PipTouchHandler) optional5.get()).mPipTaskOrganizer.mPipTransitionController;
                    defaultMixedHandler.mSplitHandler = ((SplitScreenController) optional6.get()).getTransitionHandler();
                    defaultMixedHandler.mPlayer.addHandler(defaultMixedHandler);
                    StageCoordinator stageCoordinator = defaultMixedHandler.mSplitHandler;
                    if (stageCoordinator != null) {
                        stageCoordinator.mMixedHandler = defaultMixedHandler;
                    }
                    RecentsTransitionHandler recentsTransitionHandler = (RecentsTransitionHandler) optional7.orElse(null);
                    defaultMixedHandler.mRecentsHandler = recentsTransitionHandler;
                    if (recentsTransitionHandler != null) {
                        recentsTransitionHandler.mMixers.add(defaultMixedHandler);
                    }
                    defaultMixedHandler.mUnfoldHandler = (UnfoldTransitionHandler) optional8.orElse(null);
                }
            }, this);
        }
        this.mTaskViewTransitions = taskViewTransitions;
    }

    public static void excludeForceHidingChanges(TransitionInfo transitionInfo) {
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
            if (change.getForceHidingTransit() == 1) {
                Log.d("DefaultMixedHandler", "excludeForceHidingChanges: " + change + ", reason=animateKeyguard");
                transitionInfo.getChanges().remove(change);
            }
        }
    }

    public static TransitionInfo subCopy(TransitionInfo transitionInfo, int i, boolean z) {
        int i2;
        if (z) {
            i2 = transitionInfo.getFlags();
        } else {
            i2 = 0;
        }
        TransitionInfo transitionInfo2 = new TransitionInfo(i, i2);
        transitionInfo2.setTrack(transitionInfo.getTrack());
        transitionInfo2.setDebugId(transitionInfo.getDebugId());
        if (z) {
            for (int i3 = 0; i3 < transitionInfo.getChanges().size(); i3++) {
                transitionInfo2.getChanges().add((TransitionInfo.Change) transitionInfo.getChanges().get(i3));
            }
        }
        for (int i4 = 0; i4 < transitionInfo.getRootCount(); i4++) {
            transitionInfo2.addRoot(transitionInfo.getRoot(i4));
        }
        transitionInfo2.setAnimationOptions(transitionInfo.getAnimationOptions());
        return transitionInfo2;
    }

    public final boolean animateEnterPipFromSplit(final MixedTransition mixedTransition, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, final Transitions.TransitionFinishCallback transitionFinishCallback) {
        TransitionInfo.Change change;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 2124597812, 0, " Animating a mixed transition for entering PIP while Split-Screen is foreground.", null);
        }
        TransitionInfo subCopy = subCopy(transitionInfo, 4, true);
        TransitionInfo.Change change2 = null;
        TransitionInfo.Change change3 = null;
        final boolean z4 = false;
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            TransitionInfo.Change change4 = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
            if (this.mPipHandler.isEnteringPip(transitionInfo.getType(), change4)) {
                if (change3 == null) {
                    subCopy.getChanges().remove(m);
                    change3 = change4;
                } else {
                    throw new IllegalStateException("More than 1 pip-entering changes in one transition? " + transitionInfo);
                }
            } else {
                if (change4.getTaskInfo() != null && change4.getTaskInfo().getActivityType() == 2) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    if (change4.getTaskInfo() != null && change4.getTaskInfo().getActivityType() == 3) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        if ((2 & change4.getFlags()) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            change2 = change4;
                        }
                    }
                }
                z4 = true;
            }
        }
        if (change3 == null) {
            this.mActiveTransitions.remove(mixedTransition);
            return false;
        }
        Transitions.TransitionFinishCallback transitionFinishCallback2 = new Transitions.TransitionFinishCallback() { // from class: com.android.wm.shell.transition.DefaultMixedHandler$$ExternalSyntheticLambda3
            @Override // com.android.wm.shell.transition.Transitions.TransitionFinishCallback
            public final void onTransitionFinished(WindowContainerTransaction windowContainerTransaction, WindowContainerTransactionCallback windowContainerTransactionCallback) {
                DefaultMixedHandler defaultMixedHandler = DefaultMixedHandler.this;
                defaultMixedHandler.getClass();
                DefaultMixedHandler.MixedTransition mixedTransition2 = mixedTransition;
                mixedTransition2.mInFlightSubAnimations--;
                mixedTransition2.joinFinishArgs(windowContainerTransaction, windowContainerTransactionCallback);
                if (mixedTransition2.mInFlightSubAnimations <= 0) {
                    defaultMixedHandler.mActiveTransitions.remove(mixedTransition2);
                    if (z4) {
                        defaultMixedHandler.mSplitHandler.onTransitionAnimationComplete();
                    }
                    transitionFinishCallback.onTransitionFinished(mixedTransition2.mFinishWCT, windowContainerTransactionCallback);
                }
            }
        };
        if (!z4 && this.mSplitHandler.getSplitItemPosition(change3.getLastParent()) == -1) {
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 41497685, 0, "  Not leaving split, so just forward animation to Pip-Handler.", null);
            }
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && !this.mSplitHandler.isMultiSplitActive() && this.mSplitHandler.mCellStageListener.mVisible) {
                this.mSplitHandler.prepareDismissAnimation(-1, 9, subCopy, new SurfaceControl.Transaction(), transaction2, true);
            }
            mixedTransition.mInFlightSubAnimations = 1;
            ((PipTransition) this.mPipHandler).startAnimation(mixedTransition.mTransition, transitionInfo, transaction, transaction2, transitionFinishCallback2);
            return true;
        }
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 535641167, 0, " Animation is actually mixed since entering-PiP caused us to leave split and return home.", null);
        }
        mixedTransition.mInFlightSubAnimations = 2;
        if (change2 != null) {
            transaction.show(change2.getLeash()).setAlpha(change2.getLeash(), 1.0f);
        }
        SurfaceControl.Transaction transaction3 = new SurfaceControl.Transaction();
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && this.mSplitHandler.isMultiSplitScreenVisible()) {
            int m2 = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1);
            while (true) {
                if (m2 >= 0) {
                    TransitionInfo.Change change5 = (TransitionInfo.Change) transitionInfo.getChanges().get(m2);
                    if (change5 != change3 && (i = this.mSplitHandler.getSplitItemStage(change5.getLastParent())) != -1) {
                        break;
                    }
                    m2--;
                } else {
                    i = -1;
                    break;
                }
            }
            change = change3;
            this.mSplitHandler.prepareDismissAnimation(i, 9, subCopy, transaction3, transaction2, !z4);
        } else {
            change = change3;
            if (this.mSplitHandler.isSplitScreenVisible()) {
                for (int m3 = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m3 >= 0; m3--) {
                    TransitionInfo.Change change6 = (TransitionInfo.Change) transitionInfo.getChanges().get(m3);
                    if (change6 != change && (r10 = this.mSplitHandler.getSplitItemStage(change6.getLastParent())) != -1) {
                        break;
                    }
                }
            }
            int i2 = -1;
            this.mSplitHandler.prepareDismissAnimation(i2, 9, subCopy, transaction3, transaction2, false);
        }
        int m4 = KeyguardService$$ExternalSyntheticOutline0.m(subCopy, 1);
        while (true) {
            if (m4 < 0) {
                break;
            }
            if ((((TransitionInfo.Change) subCopy.getChanges().get(m4)).getFlags() & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 0) {
                subCopy.getChanges().remove(m4);
                break;
            }
            m4--;
        }
        if (CoreRune.MW_PIP_SHELL_TRANSITION) {
            this.mPipHandler.onStartEnterPipFromSplit(change);
            final int endDisplayId = change.getEndDisplayId();
            TransitionInfo.Change findChange = subCopy.findChange(new Predicate() { // from class: com.android.wm.shell.transition.DefaultMixedHandler$$ExternalSyntheticLambda4
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    int i3 = endDisplayId;
                    TransitionInfo.Change change7 = (TransitionInfo.Change) obj;
                    if (change7.hasFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE) && change7.getEndDisplayId() == i3 && change7.getSnapshot() != null) {
                        return true;
                    }
                    return false;
                }
            });
            if (findChange != null && subCopy.getRootCount() > 0) {
                transaction.reparent(findChange.getSnapshot(), subCopy.getRoot(TransitionUtil.rootIndexFor(findChange, subCopy)).getLeash());
                transaction2.reparent(findChange.getSnapshot(), null);
                StringBuilder sb = new StringBuilder("animateEnterPipFromSplit: reparent ");
                sb.append(findChange.getSnapshot());
                sb.append(", t=");
                ExifInterface$$ExternalSyntheticOutline0.m(sb, transaction.mDebugName, "DefaultMixedHandler");
            }
        }
        this.mPipHandler.setEnterAnimationType(1);
        this.mPipHandler.startEnterAnimation(change, transaction, transaction2, transitionFinishCallback2);
        mixedTransition.mLeftoversHandler = this.mPlayer.dispatchTransition(mixedTransition.mTransition, subCopy, transaction3, transaction2, transitionFinishCallback2, this, null);
        return true;
    }

    public final boolean animateKeyguard(MixedTransition mixedTransition, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        DefaultMixedHandler$$ExternalSyntheticLambda1 defaultMixedHandler$$ExternalSyntheticLambda1 = new DefaultMixedHandler$$ExternalSyntheticLambda1(this, mixedTransition, transitionFinishCallback, 1);
        mixedTransition.mInFlightSubAnimations++;
        PipTransitionController pipTransitionController = this.mPipHandler;
        if (pipTransitionController != null) {
            pipTransitionController.syncPipSurfaceState(transitionInfo, transaction, transaction2);
        }
        if (CoreRune.MW_FREEFORM_FORCE_HIDING_TRANSITION) {
            excludeForceHidingChanges(transitionInfo);
        }
        if (this.mKeyguardHandler.startAnimation(mixedTransition.mTransition, transitionInfo, transaction, transaction2, defaultMixedHandler$$ExternalSyntheticLambda1)) {
            return true;
        }
        mixedTransition.mInFlightSubAnimations--;
        return false;
    }

    public final boolean animatePendingSplitWithDisplayChange(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        boolean z;
        boolean z2;
        TransitionInfo subCopy = subCopy(transitionInfo, transitionInfo.getType(), true);
        TransitionInfo subCopy2 = subCopy(transitionInfo, 6, false);
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
            TransitionInfo.Change change2 = change;
            while (change2 != null) {
                if (change2.getTaskInfo() != null) {
                    z2 = true;
                    break;
                }
                if (change2.getParent() == null) {
                    break;
                }
                change2 = transitionInfo.getChange(change2.getParent());
            }
            z2 = false;
            if (!z2) {
                subCopy2.addChange(change);
                subCopy.getChanges().remove(m);
            }
        }
        if (subCopy2.getChanges().isEmpty()) {
            return false;
        }
        for (int i = 0; i < subCopy.getChanges().size(); i++) {
            TransitionInfo.Change change3 = (TransitionInfo.Change) subCopy.getChanges().get(i);
            if (change3.getParent() != null && subCopy.getChange(change3.getParent()) == null) {
                ((TransitionInfo.Change) subCopy.getChanges().get(i)).setParent((WindowContainerToken) null);
            }
        }
        if (CoreRune.MW_SHELL_DISPLAY_CHANGE_TRANSITION && subCopy2.hasCustomDisplayChangeTransition()) {
            subCopy.setSeparatedFromCustomDisplayChange(true);
        }
        MixedTransition mixedTransition = new MixedTransition(2, iBinder);
        this.mActiveTransitions.add(mixedTransition);
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 17393967, 0, " Animation is a mix of display change and split change.", null);
        }
        mixedTransition.mInFlightSubAnimations = 2;
        if (CoreRune.MW_PIP_SHELL_TRANSITION) {
            for (int m2 = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m2 >= 0; m2--) {
                if (this.mPipHandler.isEnteringPip(transitionInfo.getType(), (TransitionInfo.Change) transitionInfo.getChanges().get(m2))) {
                    mixedTransition.mInFlightSubAnimations++;
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (this.mSplitHandler.mSplitTransitions.isPendingDismiss(iBinder)) {
            for (int m3 = KeyguardService$$ExternalSyntheticOutline0.m(subCopy, 1); m3 >= 0; m3--) {
                TransitionInfo.Change change4 = (TransitionInfo.Change) transitionInfo.getChanges().get(m3);
                SurfaceControl leash = change4.getLeash();
                if (leash != null && change4.getMode() == 4) {
                    transaction.hide(leash);
                }
            }
        }
        DefaultMixedHandler$$ExternalSyntheticLambda1 defaultMixedHandler$$ExternalSyntheticLambda1 = new DefaultMixedHandler$$ExternalSyntheticLambda1(this, mixedTransition, transitionFinishCallback, 6);
        mixedTransition.mLeftoversHandler = this.mPlayer.dispatchTransition(mixedTransition.mTransition, subCopy2, transaction, transaction2, defaultMixedHandler$$ExternalSyntheticLambda1, this.mSplitHandler, this.mPipHandler);
        this.mSplitHandler.startPendingAnimation(iBinder, subCopy, transaction, transaction2, defaultMixedHandler$$ExternalSyntheticLambda1);
        if (CoreRune.MW_PIP_SHELL_TRANSITION && z) {
            ((PipTransition) this.mPipHandler).startAnimation(iBinder, subCopy, transaction, transaction2, defaultMixedHandler$$ExternalSyntheticLambda1);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
    
        if (r5 != (-1)) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0064, code lost:
    
        if (r18.getTriggerTask().taskId == r11.getTopVisibleChildTaskId()) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0081, code lost:
    
        if (r11.getChildCount() == 0) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.window.WindowContainerTransaction handleRequest(android.os.IBinder r17, android.window.TransitionRequestInfo r18) {
        /*
            Method dump skipped, instructions count: 710
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.DefaultMixedHandler.handleRequest(android.os.IBinder, android.window.TransitionRequestInfo):android.window.WindowContainerTransaction");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x014d, code lost:
    
        throw new java.lang.IllegalStateException(android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Playing a mixed transition with unknown type? ", r3));
     */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mergeAnimation(android.os.IBinder r14, android.window.TransitionInfo r15, android.view.SurfaceControl.Transaction r16, android.os.IBinder r17, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r18) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.DefaultMixedHandler.mergeAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.os.IBinder, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):void");
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void onTransitionConsumed(IBinder iBinder, boolean z, SurfaceControl.Transaction transaction) {
        MixedTransition mixedTransition;
        ArrayList arrayList = this.mActiveTransitions;
        int size = arrayList.size() - 1;
        while (true) {
            if (size >= 0) {
                if (((MixedTransition) arrayList.get(size)).mTransition != iBinder) {
                    size--;
                } else {
                    mixedTransition = (MixedTransition) arrayList.remove(size);
                    break;
                }
            } else {
                mixedTransition = null;
                break;
            }
        }
        if (mixedTransition == null) {
            return;
        }
        int i = mixedTransition.mType;
        if (i == 1) {
            this.mPipHandler.onTransitionConsumed(iBinder, z, transaction);
            return;
        }
        if (i == 4) {
            mixedTransition.mLeftoversHandler.onTransitionConsumed(iBinder, z, transaction);
            return;
        }
        if (i == 3) {
            mixedTransition.mLeftoversHandler.onTransitionConsumed(iBinder, z, transaction);
        } else if (i == 5) {
            this.mKeyguardHandler.onTransitionConsumed(iBinder, z, transaction);
        } else if (i == 6) {
            this.mUnfoldHandler.getClass();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:194:0x0376, code lost:
    
        if (r0.startAnimation(r14.mTransition, r20, r21, r22, r9) != false) goto L187;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:164:? A[RETURN, SYNTHETIC] */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(android.os.IBinder r19, android.window.TransitionInfo r20, android.view.SurfaceControl.Transaction r21, final android.view.SurfaceControl.Transaction r22, final com.android.wm.shell.transition.Transitions.TransitionFinishCallback r23) {
        /*
            Method dump skipped, instructions count: 1557
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.DefaultMixedHandler.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }
}
