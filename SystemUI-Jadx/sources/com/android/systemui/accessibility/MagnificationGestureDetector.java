package com.android.systemui.accessibility;

import android.content.Context;
import android.graphics.PointF;
import android.os.Handler;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MagnificationGestureDetector {
    public final MagnificationGestureDetector$$ExternalSyntheticLambda0 mCancelTapGestureRunnable;
    public final Handler mHandler;
    public LongTouchRunnable mLongTapGestureRunnable;
    public final OnGestureListener mOnGestureListener;
    public final int mTouchSlopSquare;
    public boolean mVibratorNoti;
    public final PointF mPointerDown = new PointF();
    public final PointF mPointerLocation = new PointF(Float.NaN, Float.NaN);
    public boolean mDetectSingleTap = true;
    public boolean mDraggingDetected = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class LongTouchRunnable implements Runnable {
        public final View mView;

        public LongTouchRunnable(View view) {
            this.mView = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view = this.mView;
            MagnificationGestureDetector.this.getClass();
            view.performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(1));
            MagnificationGestureDetector.this.mOnGestureListener.onLongPressed(this.mView);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface OnGestureListener {
        boolean onDrag(View view, float f, float f2);

        boolean onFinish();

        void onLongPressed(View view);

        void onSingleTap(View view);

        void onStart();
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.systemui.accessibility.MagnificationGestureDetector$$ExternalSyntheticLambda0] */
    public MagnificationGestureDetector(Context context, Handler handler, OnGestureListener onGestureListener) {
        int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mVibratorNoti = false;
        this.mTouchSlopSquare = scaledTouchSlop * scaledTouchSlop;
        this.mHandler = handler;
        this.mOnGestureListener = onGestureListener;
        this.mCancelTapGestureRunnable = new Runnable() { // from class: com.android.systemui.accessibility.MagnificationGestureDetector$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MagnificationGestureDetector.this.mDetectSingleTap = false;
            }
        };
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean onDrag;
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int actionMasked = motionEvent.getActionMasked();
        PointF pointF = this.mPointerDown;
        boolean z2 = true;
        MagnificationGestureDetector$$ExternalSyntheticLambda0 magnificationGestureDetector$$ExternalSyntheticLambda0 = this.mCancelTapGestureRunnable;
        OnGestureListener onGestureListener = this.mOnGestureListener;
        Handler handler = this.mHandler;
        if (actionMasked != 0) {
            PointF pointF2 = this.mPointerLocation;
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            handler.removeCallbacks(magnificationGestureDetector$$ExternalSyntheticLambda0);
                            this.mDetectSingleTap = false;
                        }
                        return false;
                    }
                } else {
                    stopSingleTapDetectionIfNeeded(rawX, rawY);
                    if (!this.mDraggingDetected) {
                        onDrag = false;
                    } else {
                        if (!this.mVibratorNoti) {
                            view.performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(1));
                            this.mVibratorNoti = true;
                        }
                        if (Float.isNaN(pointF2.x) || Float.isNaN(pointF2.y)) {
                            z2 = false;
                        }
                        if (!z2) {
                            pointF2.set(pointF);
                        }
                        float f = rawX - pointF2.x;
                        float f2 = rawY - pointF2.y;
                        pointF2.set(rawX, rawY);
                        onDrag = onGestureListener.onDrag(view, f, f2);
                    }
                    return false | onDrag;
                }
            } else {
                handler.removeCallbacks(this.mLongTapGestureRunnable);
                this.mLongTapGestureRunnable = null;
                stopSingleTapDetectionIfNeeded(rawX, rawY);
                if (this.mDetectSingleTap) {
                    onGestureListener.onSingleTap(view);
                    z = true;
                    boolean onFinish = z | onGestureListener.onFinish();
                    pointF.x = Float.NaN;
                    pointF.y = Float.NaN;
                    pointF2.x = Float.NaN;
                    pointF2.y = Float.NaN;
                    handler.removeCallbacks(magnificationGestureDetector$$ExternalSyntheticLambda0);
                    this.mDetectSingleTap = true;
                    this.mDraggingDetected = false;
                    return onFinish;
                }
            }
            z = false;
            boolean onFinish2 = z | onGestureListener.onFinish();
            pointF.x = Float.NaN;
            pointF.y = Float.NaN;
            pointF2.x = Float.NaN;
            pointF2.y = Float.NaN;
            handler.removeCallbacks(magnificationGestureDetector$$ExternalSyntheticLambda0);
            this.mDetectSingleTap = true;
            this.mDraggingDetected = false;
            return onFinish2;
        }
        pointF.set(rawX, rawY);
        handler.postAtTime(magnificationGestureDetector$$ExternalSyntheticLambda0, motionEvent.getDownTime() + ViewConfiguration.getLongPressTimeout());
        LongTouchRunnable longTouchRunnable = this.mLongTapGestureRunnable;
        if (longTouchRunnable != null) {
            handler.removeCallbacks(longTouchRunnable);
        }
        LongTouchRunnable longTouchRunnable2 = new LongTouchRunnable(view);
        this.mLongTapGestureRunnable = longTouchRunnable2;
        handler.postDelayed(longTouchRunnable2, ViewConfiguration.getLongPressTimeout());
        onGestureListener.onStart();
        return true;
    }

    public final void stopSingleTapDetectionIfNeeded(float f, float f2) {
        boolean z;
        if (this.mDraggingDetected) {
            return;
        }
        PointF pointF = this.mPointerDown;
        if (!Float.isNaN(pointF.x) && !Float.isNaN(pointF.y)) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return;
        }
        int i = (int) (pointF.x - f);
        int i2 = (int) (pointF.y - f2);
        if ((i2 * i2) + (i * i) > this.mTouchSlopSquare) {
            this.mDraggingDetected = true;
            this.mHandler.removeCallbacks(this.mCancelTapGestureRunnable);
            this.mDetectSingleTap = false;
        }
    }
}
