package com.android.systemui.util.wakelock;

import android.content.Context;
import android.os.Handler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DelayedWakeLock implements WakeLock {
    public final Handler mHandler;
    public final WakeLock mInner;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Builder {
        public final Context mContext;
        public Handler mHandler;
        public final WakeLockLogger mLogger;
        public String mTag;

        public Builder(Context context, WakeLockLogger wakeLockLogger) {
            this.mContext = context;
            this.mLogger = wakeLockLogger;
        }
    }

    public DelayedWakeLock(Handler handler, WakeLock wakeLock) {
        this.mHandler = handler;
        this.mInner = wakeLock;
    }

    @Override // com.android.systemui.util.wakelock.WakeLock
    public final void acquire(String str) {
        this.mInner.acquire(str);
    }

    @Override // com.android.systemui.util.wakelock.WakeLock
    public final void release(final String str) {
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.systemui.util.wakelock.DelayedWakeLock$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DelayedWakeLock delayedWakeLock = DelayedWakeLock.this;
                delayedWakeLock.mInner.release(str);
            }
        }, 100L);
    }

    public final String toString() {
        return "[DelayedWakeLock] " + this.mInner;
    }

    @Override // com.android.systemui.util.wakelock.WakeLock
    public final WakeLock$$ExternalSyntheticLambda0 wrap(Runnable runnable) {
        acquire("wrap");
        return new WakeLock$$ExternalSyntheticLambda0(this, runnable);
    }
}
