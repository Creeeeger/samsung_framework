package com.samsung.android.sdk.scs.base.tasks;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class TaskCompletionSource {
    public final TaskImpl task;

    public TaskCompletionSource() {
        this(new TaskImpl());
    }

    public final void setException(Exception exc) {
        TaskImpl taskImpl = this.task;
        synchronized (taskImpl.mLock) {
            if (!taskImpl.mComplete) {
                taskImpl.mComplete = true;
                taskImpl.mException = exc;
            } else {
                throw new IllegalStateException("Task is already complete");
            }
        }
        taskImpl.mListenersManager.processCompletion(taskImpl);
    }

    public TaskCompletionSource(TaskImpl taskImpl) {
        this.task = taskImpl;
    }
}
