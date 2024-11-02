package com.android.wm.shell.windowdecor;

import android.graphics.PointF;
import android.util.Slog;
import android.view.MotionEvent;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragDetector {
    public final String TAG = "DragDetector";
    public int mDragPointerId;
    public final MotionEventHandler mEventHandler;
    public final PointF mInputDownPoint;
    public boolean mIsDragEvent;
    public boolean mResultOfDownAction;
    public int mTouchSlop;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface MotionEventHandler {
        boolean handleMotionEvent(MotionEvent motionEvent);
    }

    public DragDetector(MotionEventHandler motionEventHandler) {
        PointF pointF = new PointF();
        this.mInputDownPoint = pointF;
        this.mIsDragEvent = false;
        pointF.set(0.0f, 0.0f);
        this.mDragPointerId = -1;
        this.mResultOfDownAction = false;
        this.mEventHandler = motionEventHandler;
    }

    public final boolean onMotionEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = true;
        if ((motionEvent.getSource() & PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_CONNECTION_FAIL) == 4098) {
            z = true;
        } else {
            z = false;
        }
        MotionEventHandler motionEventHandler = this.mEventHandler;
        if (!z) {
            return motionEventHandler.handleMotionEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        PointF pointF = this.mInputDownPoint;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return motionEventHandler.handleMotionEvent(motionEvent);
                    }
                } else {
                    if (!this.mIsDragEvent) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.mDragPointerId);
                        if (findPointerIndex == -1) {
                            Slog.w(this.TAG, LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Invalid dragPointerIndex=", findPointerIndex, " in DragDetector#onMotionEvent"));
                            return false;
                        }
                        if (Math.hypot(motionEvent.getRawX(findPointerIndex) - pointF.x, motionEvent.getRawY(findPointerIndex) - pointF.y) <= this.mTouchSlop) {
                            z2 = false;
                        }
                        this.mIsDragEvent = z2;
                    }
                    if (this.mIsDragEvent) {
                        return motionEventHandler.handleMotionEvent(motionEvent);
                    }
                    return this.mResultOfDownAction;
                }
            }
            this.mIsDragEvent = false;
            pointF.set(0.0f, 0.0f);
            this.mDragPointerId = -1;
            this.mResultOfDownAction = false;
            return motionEventHandler.handleMotionEvent(motionEvent);
        }
        this.mDragPointerId = motionEvent.getPointerId(0);
        pointF.set(motionEvent.getRawX(0), motionEvent.getRawY(0));
        boolean handleMotionEvent = motionEventHandler.handleMotionEvent(motionEvent);
        this.mResultOfDownAction = handleMotionEvent;
        return handleMotionEvent;
    }
}
