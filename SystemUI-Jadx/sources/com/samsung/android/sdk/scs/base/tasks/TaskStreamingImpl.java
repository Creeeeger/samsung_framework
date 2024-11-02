package com.samsung.android.sdk.scs.base.tasks;

import com.samsung.android.sdk.scs.base.utils.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TaskStreamingImpl extends TaskImpl implements Cloneable {
    public TaskStreamingImpl() {
        super(new TaskStreamingListenersManager());
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskImpl, com.samsung.android.sdk.scs.base.tasks.Task
    public final Object getResult() {
        Object obj;
        synchronized (this.mLock) {
            if (this.mException == null) {
                obj = this.mResult;
            } else {
                throw new RuntimeException(this.mException);
            }
        }
        return obj;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskImpl, com.samsung.android.sdk.scs.base.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.mLock) {
            if (this.mException == null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.samsung.android.sdk.scs.base.tasks.TaskImpl
    public final void setResult(Object obj) {
        synchronized (this.mLock) {
            this.mResult = obj;
        }
        try {
            this.mListenersManager.processCompletion((Task) super.clone());
        } catch (Exception e) {
            Log.i("ScsApi@TaskStreamingImpl", "setResult, e : " + e.getMessage());
            this.mListenersManager.processCompletion(this);
        }
    }
}
