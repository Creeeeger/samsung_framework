package com.android.systemui.classifier;

import android.hardware.devicestate.DeviceStateManager;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.android.systemui.dock.DockManager;
import com.android.systemui.statusbar.policy.BatteryController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FalsingDataProvider {
    public boolean mA11YAction;
    public final BatteryController mBatteryController;
    public final DockManager mDockManager;
    public boolean mDropLastEvent;
    public MotionEvent mFirstRecentMotionEvent;
    public final DeviceStateManager.FoldStateListener mFoldStateListener;
    public final int mHeightPixels;
    public final boolean mIsFoldableDevice;
    public boolean mJustUnlockedWithFace;
    public MotionEvent mLastMotionEvent;
    public final int mWidthPixels;
    public final float mXdpi;
    public final float mYdpi;
    public final List mSessionListeners = new ArrayList();
    public final List mMotionEventListeners = new ArrayList();
    public final List mGestureFinalizedListeners = new ArrayList();
    public TimeLimitedMotionEventBuffer mRecentMotionEvents = new TimeLimitedMotionEventBuffer(1000);
    public List mPriorMotionEvents = new ArrayList();
    public boolean mDirty = true;
    public float mAngle = 0.0f;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface SessionListener {
    }

    public FalsingDataProvider(DisplayMetrics displayMetrics, BatteryController batteryController, DeviceStateManager.FoldStateListener foldStateListener, DockManager dockManager, boolean z) {
        this.mXdpi = displayMetrics.xdpi;
        this.mYdpi = displayMetrics.ydpi;
        this.mWidthPixels = displayMetrics.widthPixels;
        this.mHeightPixels = displayMetrics.heightPixels;
        this.mBatteryController = batteryController;
        this.mFoldStateListener = foldStateListener;
        this.mDockManager = dockManager;
        this.mIsFoldableDevice = z;
        boolean z2 = BrightLineFalsingManager.DEBUG;
    }

    public final void completePriorGesture() {
        if (!this.mRecentMotionEvents.isEmpty()) {
            ((ArrayList) this.mGestureFinalizedListeners).forEach(new FalsingDataProvider$$ExternalSyntheticLambda0(this, 1));
            this.mPriorMotionEvents = this.mRecentMotionEvents;
            this.mRecentMotionEvents = new TimeLimitedMotionEventBuffer(1000L);
        }
        this.mDropLastEvent = false;
        this.mA11YAction = false;
    }

    public final List getRecentMotionEvents() {
        if (this.mDropLastEvent && !this.mRecentMotionEvents.isEmpty()) {
            return this.mRecentMotionEvents.subList(0, r2.size() - 1);
        }
        return this.mRecentMotionEvents;
    }

    public final boolean isHorizontal() {
        recalculateData();
        if (this.mRecentMotionEvents.isEmpty() || Math.abs(this.mFirstRecentMotionEvent.getX() - this.mLastMotionEvent.getX()) <= Math.abs(this.mFirstRecentMotionEvent.getY() - this.mLastMotionEvent.getY())) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onMotionEvent(MotionEvent motionEvent) {
        boolean z;
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int pointerCount = motionEvent.getPointerCount();
        int i3 = 0;
        for (int i4 = 0; i4 < pointerCount; i4++) {
            MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
            motionEvent.getPointerProperties(i4, pointerProperties);
            arrayList2.add(pointerProperties);
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[arrayList2.size()];
        arrayList2.toArray(pointerPropertiesArr);
        int historySize = motionEvent.getHistorySize();
        int i5 = 0;
        while (i5 < historySize) {
            ArrayList arrayList3 = new ArrayList();
            for (int i6 = i3; i6 < pointerCount; i6++) {
                MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
                motionEvent.getHistoricalPointerCoords(i6, i5, pointerCoords);
                arrayList3.add(pointerCoords);
            }
            arrayList.add(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getHistoricalEventTime(i5), motionEvent.getAction(), pointerCount, pointerPropertiesArr, (MotionEvent.PointerCoords[]) arrayList3.toArray(new MotionEvent.PointerCoords[i3]), motionEvent.getMetaState(), motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags()));
            i5++;
            i3 = i3;
            pointerPropertiesArr = pointerPropertiesArr;
            historySize = historySize;
            pointerCount = pointerCount;
        }
        int i7 = i3;
        arrayList.add(MotionEvent.obtainNoHistory(motionEvent));
        arrayList.size();
        if (BrightLineFalsingManager.DEBUG) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                MotionEvent motionEvent2 = (MotionEvent) it.next();
                motionEvent2.getX();
                motionEvent2.getY();
                motionEvent2.getEventTime();
                boolean z2 = BrightLineFalsingManager.DEBUG;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            completePriorGesture();
        }
        if (this.mRecentMotionEvents.size() >= 3) {
            TimeLimitedMotionEventBuffer timeLimitedMotionEventBuffer = this.mRecentMotionEvents;
            MotionEvent motionEvent3 = (MotionEvent) ((ArrayList) timeLimitedMotionEventBuffer.mMotionEvents).get(timeLimitedMotionEventBuffer.size() - 1);
            if (motionEvent.getActionMasked() == 1 && motionEvent3.getActionMasked() == 2) {
                i = 1;
            } else {
                i = i7;
            }
            if (motionEvent.getEventTime() - motionEvent3.getEventTime() < 50) {
                i2 = 1;
            } else {
                i2 = i7;
            }
            if (i != 0 && i2 != 0) {
                z = 1;
                this.mDropLastEvent = z;
                this.mRecentMotionEvents.addAll(arrayList);
                this.mRecentMotionEvents.size();
                boolean z3 = BrightLineFalsingManager.DEBUG;
                ((ArrayList) this.mMotionEventListeners).forEach(new FalsingDataProvider$$ExternalSyntheticLambda0(motionEvent, i7));
                this.mDirty = true;
            }
        }
        z = i7;
        this.mDropLastEvent = z;
        this.mRecentMotionEvents.addAll(arrayList);
        this.mRecentMotionEvents.size();
        boolean z32 = BrightLineFalsingManager.DEBUG;
        ((ArrayList) this.mMotionEventListeners).forEach(new FalsingDataProvider$$ExternalSyntheticLambda0(motionEvent, i7));
        this.mDirty = true;
    }

    public final void recalculateData() {
        if (!this.mDirty) {
            return;
        }
        List recentMotionEvents = getRecentMotionEvents();
        if (recentMotionEvents.isEmpty()) {
            this.mFirstRecentMotionEvent = null;
            this.mLastMotionEvent = null;
        } else {
            this.mFirstRecentMotionEvent = (MotionEvent) recentMotionEvents.get(0);
            this.mLastMotionEvent = (MotionEvent) recentMotionEvents.get(recentMotionEvents.size() - 1);
        }
        if (this.mRecentMotionEvents.size() < 2) {
            this.mAngle = Float.MAX_VALUE;
        } else {
            this.mAngle = (float) Math.atan2(this.mLastMotionEvent.getY() - this.mFirstRecentMotionEvent.getY(), this.mLastMotionEvent.getX() - this.mFirstRecentMotionEvent.getX());
            while (true) {
                float f = this.mAngle;
                if (f >= 0.0f) {
                    break;
                } else {
                    this.mAngle = f + 6.2831855f;
                }
            }
            while (true) {
                float f2 = this.mAngle;
                if (f2 <= 6.2831855f) {
                    break;
                } else {
                    this.mAngle = f2 - 6.2831855f;
                }
            }
        }
        this.mDirty = false;
    }
}
