package com.android.wm.shell.back;

import android.os.SystemProperties;
import android.util.MathUtils;
import android.view.RemoteAnimationTarget;
import android.window.BackMotionEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TouchTracker {
    public static final int LINEAR_DISTANCE = SystemProperties.getInt("persist.wm.debug.predictive_back_linear_distance", -1);
    public boolean mCancelled;
    public float mInitTouchX;
    public float mInitTouchY;
    public float mLatestTouchX;
    public float mLatestTouchY;
    public float mLatestVelocityX;
    public float mLatestVelocityY;
    public float mLinearDistance = LINEAR_DISTANCE;
    public float mMaxDistance;
    public float mNonLinearFactor;
    public float mStartThresholdX;
    public int mSwipeEdge;
    public boolean mTriggerBack;

    public final BackMotionEvent createProgressEvent() {
        float f;
        if (!this.mCancelled) {
            f = getProgress(this.mLatestTouchX);
        } else {
            f = 0.0f;
        }
        return new BackMotionEvent(this.mLatestTouchX, this.mLatestTouchY, f, this.mLatestVelocityX, this.mLatestVelocityY, this.mSwipeEdge, (RemoteAnimationTarget) null);
    }

    public final float getProgress(float f) {
        float f2;
        float f3;
        boolean z;
        if (this.mTriggerBack) {
            f2 = this.mInitTouchX;
        } else {
            f2 = this.mStartThresholdX;
        }
        float abs = Math.abs(f2 - f);
        float f4 = this.mLinearDistance;
        float f5 = this.mMaxDistance;
        if (f5 == 0.0f) {
            f5 = 1.0f;
        }
        if (f4 < f5) {
            float f6 = f5 - f4;
            float f7 = (this.mNonLinearFactor * f6) + f4;
            if (abs <= f4) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                f7 = MathUtils.lerp(f7, f5, (abs - f4) / f6);
            }
            f3 = abs / f7;
        } else {
            f3 = abs / f5;
        }
        return MathUtils.constrain(f3, 0.0f, 1.0f);
    }
}
