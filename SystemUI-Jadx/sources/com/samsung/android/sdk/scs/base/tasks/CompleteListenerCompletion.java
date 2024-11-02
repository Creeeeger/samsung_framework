package com.samsung.android.sdk.scs.base.tasks;

import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CompleteListenerCompletion {
    public final Executor mExecutor;
    public final OnCompleteListener mListener;
    public final Object mLock = new Object();

    public CompleteListenerCompletion(Executor executor, OnCompleteListener onCompleteListener) {
        this.mExecutor = executor;
        this.mListener = onCompleteListener;
    }
}
