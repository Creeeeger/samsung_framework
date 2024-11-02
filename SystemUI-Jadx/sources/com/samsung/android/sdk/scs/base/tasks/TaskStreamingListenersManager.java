package com.samsung.android.sdk.scs.base.tasks;

import com.samsung.android.sdk.scs.base.utils.Log;
import java.util.ArrayDeque;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TaskStreamingListenersManager extends TaskListenersManager {
    @Override // com.samsung.android.sdk.scs.base.tasks.TaskListenersManager
    public final void processCompletion(Task task) {
        synchronized (this.mLock) {
            if (this.mQueue != null && !this.mIsProcessingCompletion) {
                this.mIsProcessingCompletion = true;
                Log.d("TaskStreamingListenersManager", "processCompletionStreaming: " + ((ArrayDeque) this.mQueue).size());
                Iterator it = ((ArrayDeque) this.mQueue).iterator();
                while (it.hasNext()) {
                    CompleteListenerCompletion completeListenerCompletion = (CompleteListenerCompletion) it.next();
                    synchronized (completeListenerCompletion.mLock) {
                        if (completeListenerCompletion.mListener != null) {
                            completeListenerCompletion.mExecutor.execute(new CompleteListenerRunnable(completeListenerCompletion, task));
                        }
                    }
                }
                this.mIsProcessingCompletion = false;
            }
        }
    }
}
