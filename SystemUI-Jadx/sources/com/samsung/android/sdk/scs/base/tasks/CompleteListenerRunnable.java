package com.samsung.android.sdk.scs.base.tasks;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CompleteListenerRunnable implements Runnable {
    public final CompleteListenerCompletion mCompletion;
    public final Task mTask;

    public CompleteListenerRunnable(CompleteListenerCompletion completeListenerCompletion, Task task) {
        this.mCompletion = completeListenerCompletion;
        this.mTask = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.mCompletion) {
            OnCompleteListener onCompleteListener = this.mCompletion.mListener;
            if (onCompleteListener != null) {
                onCompleteListener.onComplete(this.mTask);
            }
        }
    }
}
