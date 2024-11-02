package com.samsung.android.sdk.scs.base.tasks;

import com.samsung.android.sdk.scs.base.tasks.TaskExecutors;
import java.util.ArrayDeque;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class TaskImpl extends Task {
    public boolean mComplete;
    public Exception mException;
    public final TaskListenersManager mListenersManager;
    public final Object mLock;
    public Object mResult;

    public TaskImpl() {
        this(new TaskListenersManager());
    }

    public final TaskImpl addOnCompleteListener(OnCompleteListener onCompleteListener) {
        TaskExecutors.MainExecutor mainExecutor = TaskExecutors.MAIN_THREAD;
        TaskListenersManager taskListenersManager = this.mListenersManager;
        CompleteListenerCompletion completeListenerCompletion = new CompleteListenerCompletion(mainExecutor, onCompleteListener);
        synchronized (taskListenersManager.mLock) {
            if (taskListenersManager.mQueue == null) {
                taskListenersManager.mQueue = new ArrayDeque();
            }
            ((ArrayDeque) taskListenersManager.mQueue).add(completeListenerCompletion);
        }
        synchronized (this.mLock) {
            if (this.mComplete) {
                this.mListenersManager.processCompletion(this);
            }
        }
        return this;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.mLock) {
            exc = this.mException;
        }
        return exc;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.Task
    public Object getResult() {
        Object obj;
        synchronized (this.mLock) {
            if (this.mComplete) {
                if (this.mException == null) {
                    obj = this.mResult;
                } else {
                    throw new RuntimeException(this.mException);
                }
            } else {
                throw new IllegalStateException("Task is not yet complete");
            }
        }
        return obj;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.Task
    public final boolean isComplete() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mComplete;
        }
        return z;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.Task
    public boolean isSuccessful() {
        boolean z;
        synchronized (this.mLock) {
            if (this.mComplete && this.mException == null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public void setResult(Object obj) {
        synchronized (this.mLock) {
            if (!this.mComplete) {
                this.mComplete = true;
                this.mResult = obj;
            } else {
                throw new IllegalStateException("Task is already complete");
            }
        }
        this.mListenersManager.processCompletion(this);
    }

    public TaskImpl(TaskListenersManager taskListenersManager) {
        this.mLock = new Object();
        this.mListenersManager = taskListenersManager;
    }
}
