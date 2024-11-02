package com.android.wm.shell.taskview;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TaskViewTaskController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TaskViewTaskController f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ TaskViewTaskController$$ExternalSyntheticLambda1(TaskViewTaskController taskViewTaskController, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = taskViewTaskController;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                TaskViewTaskController taskViewTaskController = this.f$0;
                taskViewTaskController.mListener.onBackPressedOnTaskRoot(this.f$1);
                return;
            case 1:
                TaskViewTaskController taskViewTaskController2 = this.f$0;
                taskViewTaskController2.mListener.onTaskRemovalStarted(this.f$1);
                return;
            case 2:
                TaskViewTaskController taskViewTaskController3 = this.f$0;
                taskViewTaskController3.mListener.onTaskVisibilityChanged(taskViewTaskController3.mSurfaceCreated);
                return;
            case 3:
                TaskViewTaskController taskViewTaskController4 = this.f$0;
                taskViewTaskController4.mListener.onTaskRemovalStarted(this.f$1);
                return;
            default:
                TaskViewTaskController taskViewTaskController5 = this.f$0;
                taskViewTaskController5.mListener.onTaskRemovalStarted(this.f$1);
                return;
        }
    }
}
