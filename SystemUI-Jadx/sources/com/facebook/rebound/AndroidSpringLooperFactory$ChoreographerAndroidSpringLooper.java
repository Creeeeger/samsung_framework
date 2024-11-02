package com.facebook.rebound;

import android.os.SystemClock;
import android.view.Choreographer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper extends SpringLooper {
    public final Choreographer mChoreographer;
    public final AnonymousClass1 mFrameCallback = new Choreographer.FrameCallback() { // from class: com.facebook.rebound.AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper.1
        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper androidSpringLooperFactory$ChoreographerAndroidSpringLooper = AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper.this;
            if (androidSpringLooperFactory$ChoreographerAndroidSpringLooper.mStarted && androidSpringLooperFactory$ChoreographerAndroidSpringLooper.mSpringSystem != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper.this.mSpringSystem.loop(uptimeMillis - r0.mLastTime);
                AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper androidSpringLooperFactory$ChoreographerAndroidSpringLooper2 = AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper.this;
                androidSpringLooperFactory$ChoreographerAndroidSpringLooper2.mLastTime = uptimeMillis;
                androidSpringLooperFactory$ChoreographerAndroidSpringLooper2.mChoreographer.postFrameCallback(androidSpringLooperFactory$ChoreographerAndroidSpringLooper2.mFrameCallback);
            }
        }
    };
    public long mLastTime;
    public boolean mStarted;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.facebook.rebound.AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1] */
    public AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper(Choreographer choreographer) {
        this.mChoreographer = choreographer;
    }

    @Override // com.facebook.rebound.SpringLooper
    public final void start() {
        if (this.mStarted) {
            return;
        }
        this.mStarted = true;
        this.mLastTime = SystemClock.uptimeMillis();
        Choreographer choreographer = this.mChoreographer;
        AnonymousClass1 anonymousClass1 = this.mFrameCallback;
        choreographer.removeFrameCallback(anonymousClass1);
        choreographer.postFrameCallback(anonymousClass1);
    }

    @Override // com.facebook.rebound.SpringLooper
    public final void stop() {
        this.mStarted = false;
        this.mChoreographer.removeFrameCallback(this.mFrameCallback);
    }
}
