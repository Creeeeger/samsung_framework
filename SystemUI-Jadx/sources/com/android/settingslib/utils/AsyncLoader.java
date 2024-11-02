package com.android.settingslib.utils;

import android.content.AsyncTaskLoader;
import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AsyncLoader extends AsyncTaskLoader {
    public Object mResult;

    public AsyncLoader(Context context) {
        super(context);
    }

    @Override // android.content.Loader
    public final void deliverResult(Object obj) {
        if (isReset()) {
            if (obj != null) {
                onDiscardResult(obj);
                return;
            }
            return;
        }
        Object obj2 = this.mResult;
        this.mResult = obj;
        if (isStarted()) {
            super.deliverResult(obj);
        }
        if (obj2 != null && obj2 != this.mResult) {
            onDiscardResult(obj2);
        }
    }

    @Override // android.content.AsyncTaskLoader
    public final void onCanceled(Object obj) {
        super.onCanceled(obj);
        if (obj != null) {
            onDiscardResult(obj);
        }
    }

    public abstract void onDiscardResult(Object obj);

    @Override // android.content.Loader
    public final void onReset() {
        super.onReset();
        cancelLoad();
        Object obj = this.mResult;
        if (obj != null) {
            onDiscardResult(obj);
        }
        this.mResult = null;
    }

    @Override // android.content.Loader
    public final void onStartLoading() {
        Object obj = this.mResult;
        if (obj != null) {
            deliverResult(obj);
        }
        if (takeContentChanged() || this.mResult == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    public final void onStopLoading() {
        cancelLoad();
    }
}
