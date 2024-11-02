package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.view.Choreographer;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AnimationHandler {
    public static final ThreadLocal sAnimatorHandler = new ThreadLocal();
    public DurationScaleChangeListener33 mDurationScaleChangeListener;
    public final FrameCallbackScheduler mScheduler;
    public final SimpleArrayMap mDelayedCallbackStartTime = new SimpleArrayMap();
    public final ArrayList mAnimationCallbacks = new ArrayList();
    public final AnimationCallbackDispatcher mCallbackDispatcher = new AnimationCallbackDispatcher();
    public final AnimationHandler$$ExternalSyntheticLambda0 mRunnable = new Runnable() { // from class: androidx.dynamicanimation.animation.AnimationHandler$$ExternalSyntheticLambda0
        /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0088 A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                r11 = this;
                androidx.dynamicanimation.animation.AnimationHandler r11 = androidx.dynamicanimation.animation.AnimationHandler.this
                androidx.dynamicanimation.animation.AnimationHandler$AnimationCallbackDispatcher r11 = r11.mCallbackDispatcher
                r11.getClass()
                long r0 = android.os.SystemClock.uptimeMillis()
                androidx.dynamicanimation.animation.AnimationHandler r11 = androidx.dynamicanimation.animation.AnimationHandler.this
                r11.getClass()
                long r2 = android.os.SystemClock.uptimeMillis()
                r4 = 0
                r5 = r4
            L16:
                java.util.ArrayList r6 = r11.mAnimationCallbacks
                int r7 = r6.size()
                if (r5 >= r7) goto L8b
                java.lang.Object r6 = r6.get(r5)
                androidx.dynamicanimation.animation.AnimationHandler$AnimationFrameCallback r6 = (androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallback) r6
                if (r6 != 0) goto L27
                goto L88
            L27:
                androidx.collection.SimpleArrayMap r7 = r11.mDelayedCallbackStartTime
                java.lang.Object r8 = r7.get(r6)
                java.lang.Long r8 = (java.lang.Long) r8
                if (r8 != 0) goto L32
                goto L3d
            L32:
                long r8 = r8.longValue()
                int r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r8 >= 0) goto L3f
                r7.remove(r6)
            L3d:
                r7 = 1
                goto L40
            L3f:
                r7 = r4
            L40:
                if (r7 == 0) goto L88
                androidx.dynamicanimation.animation.DynamicAnimation r6 = (androidx.dynamicanimation.animation.DynamicAnimation) r6
                long r7 = r6.mLastFrameTime
                r9 = 0
                int r9 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r9 != 0) goto L54
                r6.mLastFrameTime = r0
                float r7 = r6.mValue
                r6.setPropertyValue(r7)
                goto L88
            L54:
                long r7 = r0 - r7
                r6.mLastFrameTime = r0
                androidx.dynamicanimation.animation.AnimationHandler r9 = androidx.dynamicanimation.animation.DynamicAnimation.getAnimationHandler()
                float r9 = r9.mDurationScale
                r10 = 0
                int r10 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
                if (r10 != 0) goto L67
                r7 = 2147483647(0x7fffffff, double:1.060997895E-314)
                goto L6a
            L67:
                float r7 = (float) r7
                float r7 = r7 / r9
                long r7 = (long) r7
            L6a:
                boolean r7 = r6.updateValueAndVelocity(r7)
                float r8 = r6.mValue
                float r9 = r6.mMaxValue
                float r8 = java.lang.Math.min(r8, r9)
                r6.mValue = r8
                float r9 = r6.mMinValue
                float r8 = java.lang.Math.max(r8, r9)
                r6.mValue = r8
                r6.setPropertyValue(r8)
                if (r7 == 0) goto L88
                r6.endAnimationInternal(r4)
            L88:
                int r5 = r5 + 1
                goto L16
            L8b:
                boolean r0 = r11.mListDirty
                if (r0 == 0) goto Lb3
                int r0 = r6.size()
            L93:
                int r0 = r0 + (-1)
                if (r0 < 0) goto La1
                java.lang.Object r1 = r6.get(r0)
                if (r1 != 0) goto L93
                r6.remove(r0)
                goto L93
            La1:
                int r0 = r6.size()
                if (r0 != 0) goto Lb1
                androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener33 r0 = r11.mDurationScaleChangeListener
                androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0 r1 = r0.mListener
                android.animation.ValueAnimator.unregisterDurationScaleChangeListener(r1)
                r1 = 0
                r0.mListener = r1
            Lb1:
                r11.mListDirty = r4
            Lb3:
                int r0 = r6.size()
                if (r0 <= 0) goto Lc0
                androidx.dynamicanimation.animation.AnimationHandler$$ExternalSyntheticLambda0 r0 = r11.mRunnable
                androidx.dynamicanimation.animation.FrameCallbackScheduler r11 = r11.mScheduler
                r11.postFrameCallback(r0)
            Lc0:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.dynamicanimation.animation.AnimationHandler$$ExternalSyntheticLambda0.run():void");
        }
    };
    public boolean mListDirty = false;
    public float mDurationScale = 1.0f;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AnimationCallbackDispatcher {
        private AnimationCallbackDispatcher() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface AnimationFrameCallback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DurationScaleChangeListener33 {
        public AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0 mListener;

        public DurationScaleChangeListener33() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class FrameCallbackScheduler16 implements FrameCallbackScheduler {
        public final Choreographer mChoreographer = Choreographer.getInstance();
        public final Looper mLooper = Looper.myLooper();

        @Override // androidx.dynamicanimation.animation.FrameCallbackScheduler
        public final boolean isCurrentThread() {
            if (Thread.currentThread() == this.mLooper.getThread()) {
                return true;
            }
            return false;
        }

        @Override // androidx.dynamicanimation.animation.FrameCallbackScheduler
        public final void postFrameCallback(final AnimationHandler$$ExternalSyntheticLambda0 animationHandler$$ExternalSyntheticLambda0) {
            this.mChoreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.dynamicanimation.animation.AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    animationHandler$$ExternalSyntheticLambda0.run();
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.dynamicanimation.animation.AnimationHandler$$ExternalSyntheticLambda0] */
    public AnimationHandler(FrameCallbackScheduler frameCallbackScheduler) {
        this.mScheduler = frameCallbackScheduler;
    }
}
