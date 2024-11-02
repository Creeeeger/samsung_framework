package com.android.systemui.util.wakelock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WakeLock$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ Runnable f$0;
    public final /* synthetic */ WakeLock f$1;

    public /* synthetic */ WakeLock$$ExternalSyntheticLambda0(WakeLock wakeLock, Runnable runnable) {
        this.f$0 = runnable;
        this.f$1 = wakeLock;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f$0;
        WakeLock wakeLock = this.f$1;
        int i = WakeLock.DEFAULT_LEVELS_AND_FLAGS;
        try {
            runnable.run();
        } finally {
            wakeLock.release("wrap");
        }
    }
}
