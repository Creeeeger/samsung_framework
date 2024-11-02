package com.android.wm.shell.unfold;

import android.app.ActivityManager;
import android.util.SparseArray;
import android.view.SurfaceControl;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.unfold.ShellUnfoldProgressProvider;
import com.android.wm.shell.unfold.animation.UnfoldTaskAnimator;
import dagger.Lazy;
import java.util.List;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldAnimationController implements ShellUnfoldProgressProvider.UnfoldListener {
    public final List mAnimators;
    public final ShellExecutor mExecutor;
    public boolean mIsInStageChange;
    public final TransactionPool mTransactionPool;
    public final ShellUnfoldProgressProvider mUnfoldProgressProvider;
    public final Lazy mUnfoldTransitionHandler;
    public final SparseArray mTaskSurfaces = new SparseArray();
    public final SparseArray mAnimatorsByTaskId = new SparseArray();

    public UnfoldAnimationController(ShellInit shellInit, TransactionPool transactionPool, ShellUnfoldProgressProvider shellUnfoldProgressProvider, List<UnfoldTaskAnimator> list, Lazy lazy, ShellExecutor shellExecutor) {
        this.mUnfoldProgressProvider = shellUnfoldProgressProvider;
        this.mUnfoldTransitionHandler = lazy;
        this.mTransactionPool = transactionPool;
        this.mExecutor = shellExecutor;
        this.mAnimators = list;
        if (shellUnfoldProgressProvider != ShellUnfoldProgressProvider.NO_PROVIDER) {
            shellInit.addInitCallback(new UnfoldAnimationController$$ExternalSyntheticLambda0(this, 0), this);
        }
    }

    @Override // com.android.wm.shell.unfold.ShellUnfoldProgressProvider.UnfoldListener
    public final void onStateChangeFinished() {
        boolean z;
        if (((UnfoldTransitionHandler) ((Optional) this.mUnfoldTransitionHandler.get()).get()).mTransition != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        TransactionPool transactionPool = this.mTransactionPool;
        SurfaceControl.Transaction acquire = transactionPool.acquire();
        int i = 0;
        while (true) {
            List list = this.mAnimators;
            if (i < list.size()) {
                UnfoldTaskAnimator unfoldTaskAnimator = (UnfoldTaskAnimator) list.get(i);
                unfoldTaskAnimator.resetAllSurfaces(acquire);
                unfoldTaskAnimator.prepareFinishTransaction(acquire);
                i++;
            } else {
                acquire.apply();
                transactionPool.release(acquire);
                this.mIsInStageChange = false;
                return;
            }
        }
    }

    @Override // com.android.wm.shell.unfold.ShellUnfoldProgressProvider.UnfoldListener
    public final void onStateChangeProgress(float f) {
        boolean z;
        TransactionPool transactionPool;
        int i = 0;
        if (((UnfoldTransitionHandler) ((Optional) this.mUnfoldTransitionHandler.get()).get()).mTransition != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        SurfaceControl.Transaction transaction = null;
        while (true) {
            List list = this.mAnimators;
            int size = list.size();
            transactionPool = this.mTransactionPool;
            if (i >= size) {
                break;
            }
            UnfoldTaskAnimator unfoldTaskAnimator = (UnfoldTaskAnimator) list.get(i);
            if (unfoldTaskAnimator.hasActiveTasks()) {
                if (transaction == null) {
                    transaction = transactionPool.acquire();
                }
                unfoldTaskAnimator.applyAnimationProgress(f, transaction);
            }
            i++;
        }
        if (transaction != null) {
            transaction.apply();
            transactionPool.release(transaction);
        }
    }

    @Override // com.android.wm.shell.unfold.ShellUnfoldProgressProvider.UnfoldListener
    public final void onStateChangeStarted() {
        boolean z;
        TransactionPool transactionPool;
        int i = 0;
        if (((UnfoldTransitionHandler) ((Optional) this.mUnfoldTransitionHandler.get()).get()).mTransition != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        this.mIsInStageChange = true;
        SurfaceControl.Transaction transaction = null;
        while (true) {
            List list = this.mAnimators;
            int size = list.size();
            transactionPool = this.mTransactionPool;
            if (i >= size) {
                break;
            }
            UnfoldTaskAnimator unfoldTaskAnimator = (UnfoldTaskAnimator) list.get(i);
            if (unfoldTaskAnimator.hasActiveTasks()) {
                if (transaction == null) {
                    transaction = transactionPool.acquire();
                }
                unfoldTaskAnimator.prepareStartTransaction(transaction);
            }
            i++;
        }
        if (transaction != null) {
            transaction.apply();
            transactionPool.release(transaction);
        }
    }

    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        boolean z;
        SparseArray sparseArray = this.mAnimatorsByTaskId;
        UnfoldTaskAnimator unfoldTaskAnimator = (UnfoldTaskAnimator) sparseArray.get(runningTaskInfo.taskId);
        int i = 0;
        if (unfoldTaskAnimator != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (unfoldTaskAnimator.isApplicableTask(runningTaskInfo)) {
                unfoldTaskAnimator.onTaskChanged(runningTaskInfo);
                return;
            }
            if (this.mIsInStageChange) {
                TransactionPool transactionPool = this.mTransactionPool;
                SurfaceControl.Transaction acquire = transactionPool.acquire();
                unfoldTaskAnimator.resetSurface(runningTaskInfo, acquire);
                acquire.apply();
                transactionPool.release(acquire);
            }
            unfoldTaskAnimator.onTaskVanished(runningTaskInfo);
            sparseArray.remove(runningTaskInfo.taskId);
            return;
        }
        while (true) {
            List list = this.mAnimators;
            if (i < list.size()) {
                UnfoldTaskAnimator unfoldTaskAnimator2 = (UnfoldTaskAnimator) list.get(i);
                if (unfoldTaskAnimator2.isApplicableTask(runningTaskInfo)) {
                    sparseArray.put(runningTaskInfo.taskId, unfoldTaskAnimator2);
                    unfoldTaskAnimator2.onTaskAppeared(runningTaskInfo, (SurfaceControl) this.mTaskSurfaces.get(runningTaskInfo.taskId));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
