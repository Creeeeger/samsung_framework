package com.samsung.android.sdk.scs.base.tasks;

import java.util.ArrayDeque;
import java.util.Queue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class TaskListenersManager {
    public boolean mIsProcessingCompletion;
    public final Object mLock = new Object();
    public Queue mQueue;

    public void processCompletion(Task task) {
        CompleteListenerCompletion completeListenerCompletion;
        synchronized (this.mLock) {
            if (this.mQueue != null && !this.mIsProcessingCompletion) {
                this.mIsProcessingCompletion = true;
                while (true) {
                    synchronized (this.mLock) {
                        completeListenerCompletion = (CompleteListenerCompletion) ((ArrayDeque) this.mQueue).poll();
                        if (completeListenerCompletion == null) {
                            this.mIsProcessingCompletion = false;
                            return;
                        }
                    }
                    synchronized (completeListenerCompletion.mLock) {
                        if (completeListenerCompletion.mListener != null) {
                            completeListenerCompletion.mExecutor.execute(new CompleteListenerRunnable(completeListenerCompletion, task));
                        }
                    }
                }
            }
        }
    }
}
