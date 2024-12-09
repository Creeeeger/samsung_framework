package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public abstract class BaseHandler extends Handler {
    protected final String LOG_TAG;

    public void init() {
    }

    protected BaseHandler(Looper looper) {
        super(looper);
        this.LOG_TAG = getClass().getSimpleName();
    }
}
