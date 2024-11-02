package com.android.wm.shell.onehanded;

import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OneHandedTimeoutHandler {
    public final ShellExecutor mMainExecutor;
    public int mTimeout = 8;
    public long mTimeoutMs = TimeUnit.SECONDS.toMillis(8);
    public final OneHandedTimeoutHandler$$ExternalSyntheticLambda0 mTimeoutRunnable = new Runnable() { // from class: com.android.wm.shell.onehanded.OneHandedTimeoutHandler$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = (ArrayList) OneHandedTimeoutHandler.this.mListeners;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    ((OneHandedController$$ExternalSyntheticLambda3) arrayList.get(size)).f$0.stopOneHanded(6);
                } else {
                    return;
                }
            }
        }
    };
    public final List mListeners = new ArrayList();

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.wm.shell.onehanded.OneHandedTimeoutHandler$$ExternalSyntheticLambda0] */
    public OneHandedTimeoutHandler(ShellExecutor shellExecutor) {
        this.mMainExecutor = shellExecutor;
    }

    public boolean hasScheduledTimeout() {
        return ((HandlerExecutor) this.mMainExecutor).mHandler.hasCallbacks(this.mTimeoutRunnable);
    }

    public final void resetTimer() {
        ShellExecutor shellExecutor = this.mMainExecutor;
        OneHandedTimeoutHandler$$ExternalSyntheticLambda0 oneHandedTimeoutHandler$$ExternalSyntheticLambda0 = this.mTimeoutRunnable;
        ((HandlerExecutor) shellExecutor).removeCallbacks(oneHandedTimeoutHandler$$ExternalSyntheticLambda0);
        int i = this.mTimeout;
        if (i != 0 && i != 0) {
            ((HandlerExecutor) shellExecutor).executeDelayed(this.mTimeoutMs, oneHandedTimeoutHandler$$ExternalSyntheticLambda0);
        }
    }
}
