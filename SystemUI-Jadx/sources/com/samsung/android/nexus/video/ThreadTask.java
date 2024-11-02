package com.samsung.android.nexus.video;

import android.os.Handler;
import android.os.Message;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ThreadTask<T1, T2> implements Runnable {
    T1 mArgument;
    T2 mResult;
    public final int WORK_DONE = 0;
    Handler mResultHandler = new Handler() { // from class: com.samsung.android.nexus.video.ThreadTask.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ThreadTask threadTask = ThreadTask.this;
            threadTask.onPostExecute(threadTask.mResult);
        }
    };

    public abstract T2 doInBackground(T1 t1);

    public final void execute(T1 t1) {
        this.mArgument = t1;
        onPreExecute();
        new Thread(this).start();
    }

    public abstract void onPostExecute(T2 t2);

    public abstract void onPreExecute();

    @Override // java.lang.Runnable
    public void run() {
        this.mResult = doInBackground(this.mArgument);
        this.mResultHandler.sendEmptyMessage(0);
    }
}
