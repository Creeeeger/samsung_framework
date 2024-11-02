package com.android.wm.shell.taskview;

import android.app.ActivityManager;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.ArrayMap;
import android.view.SurfaceControl;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.util.TransitionUtil;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TaskViewTransitions implements Transitions.TransitionHandler {
    public final Transitions mTransitions;
    public final ArrayMap mTaskViews = new ArrayMap();
    public final ArrayList mPending = new ArrayList();
    public final boolean[] mRegistered = {false};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class PendingTransition {
        public IBinder mClaimed;
        public final IBinder mLaunchCookie;
        public final TaskViewTaskController mTaskView;
        public final int mType;
        public final WindowContainerTransaction mWct;

        public PendingTransition(int i, WindowContainerTransaction windowContainerTransaction, TaskViewTaskController taskViewTaskController, IBinder iBinder) {
            this.mType = i;
            this.mWct = windowContainerTransaction;
            this.mTaskView = taskViewTaskController;
            this.mLaunchCookie = iBinder;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskViewRequestedState {
        public final Rect mBounds;
        public boolean mVisible;

        public /* synthetic */ TaskViewRequestedState(int i) {
            this();
        }

        private TaskViewRequestedState() {
            this.mBounds = new Rect();
        }
    }

    public TaskViewTransitions(Transitions transitions) {
        this.mTransitions = transitions;
    }

    public final PendingTransition findPending(IBinder iBinder) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mPending;
            if (i < arrayList.size()) {
                if (((PendingTransition) arrayList.get(i)).mClaimed != iBinder) {
                    i++;
                } else {
                    return (PendingTransition) arrayList.get(i);
                }
            } else {
                return null;
            }
        }
    }

    public PendingTransition findPendingOpeningTransition(TaskViewTaskController taskViewTaskController) {
        ArrayList arrayList = this.mPending;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((PendingTransition) arrayList.get(size)).mTaskView == taskViewTaskController && TransitionUtil.isOpeningType(((PendingTransition) arrayList.get(size)).mType)) {
                return (PendingTransition) arrayList.get(size);
            }
        }
        return null;
    }

    public final TaskViewTaskController findTaskView(ActivityManager.RunningTaskInfo runningTaskInfo) {
        int i = 0;
        while (true) {
            ArrayMap arrayMap = this.mTaskViews;
            if (i < arrayMap.size()) {
                if (((TaskViewTaskController) arrayMap.keyAt(i)).mTaskInfo != null && runningTaskInfo.token.equals(((TaskViewTaskController) arrayMap.keyAt(i)).mTaskInfo.token)) {
                    return (TaskViewTaskController) arrayMap.keyAt(i);
                }
                i++;
            } else {
                return null;
            }
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo) {
        TaskViewTaskController findTaskView;
        ActivityManager.RunningTaskInfo triggerTask = transitionRequestInfo.getTriggerTask();
        if (triggerTask == null || (findTaskView = findTaskView(triggerTask)) == null || !TransitionUtil.isClosingType(transitionRequestInfo.getType())) {
            return null;
        }
        PendingTransition pendingTransition = new PendingTransition(transitionRequestInfo.getType(), null, findTaskView, null);
        pendingTransition.mClaimed = iBinder;
        this.mPending.add(pendingTransition);
        return new WindowContainerTransaction();
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void onTransitionConsumed(IBinder iBinder, boolean z, SurfaceControl.Transaction transaction) {
        PendingTransition findPending;
        if (!z || (findPending = findPending(iBinder)) == null) {
            return;
        }
        this.mPending.remove(findPending);
        startNextTransition();
    }

    public final void setTaskViewVisible(TaskViewTaskController taskViewTaskController, boolean z) {
        int i;
        ArrayMap arrayMap = this.mTaskViews;
        if (arrayMap.get(taskViewTaskController) == null || ((TaskViewRequestedState) arrayMap.get(taskViewTaskController)).mVisible == z || taskViewTaskController.mTaskInfo == null) {
            return;
        }
        ((TaskViewRequestedState) arrayMap.get(taskViewTaskController)).mVisible = z;
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        windowContainerTransaction.setHidden(taskViewTaskController.mTaskInfo.token, !z);
        windowContainerTransaction.setBounds(taskViewTaskController.mTaskInfo.token, ((TaskViewRequestedState) arrayMap.get(taskViewTaskController)).mBounds);
        if (z) {
            i = 3;
        } else {
            i = 4;
        }
        this.mPending.add(new PendingTransition(i, windowContainerTransaction, taskViewTaskController, null));
        startNextTransition();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b5  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.app.ActivityManager$RunningTaskInfo, android.view.SurfaceControl] */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(android.os.IBinder r20, android.window.TransitionInfo r21, android.view.SurfaceControl.Transaction r22, android.view.SurfaceControl.Transaction r23, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r24) {
        /*
            Method dump skipped, instructions count: 688
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.taskview.TaskViewTransitions.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }

    public final void startNextTransition() {
        ArrayList arrayList = this.mPending;
        if (arrayList.isEmpty()) {
            return;
        }
        PendingTransition pendingTransition = (PendingTransition) arrayList.get(0);
        if (pendingTransition.mClaimed != null) {
            return;
        }
        pendingTransition.mClaimed = this.mTransitions.startTransition(pendingTransition.mType, pendingTransition.mWct, this);
    }

    public final void updateVisibilityState(TaskViewTaskController taskViewTaskController, boolean z) {
        TaskViewRequestedState taskViewRequestedState = (TaskViewRequestedState) this.mTaskViews.get(taskViewTaskController);
        if (taskViewRequestedState == null) {
            return;
        }
        taskViewRequestedState.mVisible = z;
    }
}
