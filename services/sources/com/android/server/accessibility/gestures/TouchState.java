package com.android.server.accessibility.gestures;

import android.util.Slog;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import com.android.server.accessibility.AccessibilityManagerService;
import com.android.server.display.DisplayPowerController2;

/* loaded from: classes.dex */
public class TouchState {
    public AccessibilityManagerService mAms;
    public int mDisplayId;
    public int mInjectedPointersDown;
    public long mLastInjectedDownEventTime;
    public MotionEvent mLastInjectedHoverEvent;
    public MotionEvent mLastInjectedHoverEventForClick;
    public MotionEvent mLastReceivedEvent;
    public int mLastReceivedPolicyFlags;
    public MotionEvent mLastReceivedRawEvent;
    public int mLastTouchedWindowId;
    public int mState = 0;
    public boolean mServiceDetectsGestures = false;
    public boolean mServiceDetectsGesturesRequested = false;
    public final ReceivedPointerTracker mReceivedPointerTracker = new ReceivedPointerTracker();

    public TouchState(int i, AccessibilityManagerService accessibilityManagerService) {
        this.mDisplayId = i;
        this.mAms = accessibilityManagerService;
    }

    public void clear() {
        setState(0);
        this.mServiceDetectsGestures = this.mServiceDetectsGesturesRequested;
        MotionEvent motionEvent = this.mLastReceivedEvent;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.mLastReceivedEvent = null;
        }
        this.mReceivedPointerTracker.clear();
        this.mInjectedPointersDown = 0;
    }

    public void onReceivedMotionEvent(MotionEvent motionEvent, MotionEvent motionEvent2, int i) {
        if (isClear() && motionEvent.getActionMasked() == 0) {
            clear();
        }
        MotionEvent motionEvent3 = this.mLastReceivedEvent;
        if (motionEvent3 != null) {
            motionEvent3.recycle();
        }
        MotionEvent motionEvent4 = this.mLastReceivedRawEvent;
        if (motionEvent4 != null) {
            motionEvent4.recycle();
        }
        this.mLastReceivedEvent = MotionEvent.obtain(motionEvent);
        this.mLastReceivedRawEvent = MotionEvent.obtain(motionEvent2);
        this.mLastReceivedPolicyFlags = i;
        this.mReceivedPointerTracker.onMotionEvent(motionEvent2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onInjectedMotionEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getActionMasked()
            int r1 = r4.getActionIndex()
            int r1 = r4.getPointerId(r1)
            r2 = 1
            int r1 = r2 << r1
            if (r0 == 0) goto L5b
            if (r0 == r2) goto L4e
            r2 = 5
            if (r0 == r2) goto L5b
            r2 = 6
            if (r0 == r2) goto L4e
            r1 = 7
            if (r0 == r1) goto L40
            r1 = 9
            if (r0 == r1) goto L40
            r1 = 10
            if (r0 == r1) goto L25
            goto L66
        L25:
            android.view.MotionEvent r0 = r3.mLastInjectedHoverEvent
            if (r0 == 0) goto L2c
            r0.recycle()
        L2c:
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r4)
            r3.mLastInjectedHoverEvent = r0
            android.view.MotionEvent r0 = r3.mLastInjectedHoverEventForClick
            if (r0 == 0) goto L39
            r0.recycle()
        L39:
            android.view.MotionEvent r4 = android.view.MotionEvent.obtain(r4)
            r3.mLastInjectedHoverEventForClick = r4
            goto L66
        L40:
            android.view.MotionEvent r0 = r3.mLastInjectedHoverEvent
            if (r0 == 0) goto L47
            r0.recycle()
        L47:
            android.view.MotionEvent r4 = android.view.MotionEvent.obtain(r4)
            r3.mLastInjectedHoverEvent = r4
            goto L66
        L4e:
            int r4 = r3.mInjectedPointersDown
            int r0 = ~r1
            r4 = r4 & r0
            r3.mInjectedPointersDown = r4
            if (r4 != 0) goto L66
            r0 = 0
            r3.mLastInjectedDownEventTime = r0
            goto L66
        L5b:
            int r0 = r3.mInjectedPointersDown
            r0 = r0 | r1
            r3.mInjectedPointersDown = r0
            long r0 = r4.getDownTime()
            r3.mLastInjectedDownEventTime = r0
        L66:
            boolean r4 = com.android.server.accessibility.gestures.TouchExplorer.DEBUG
            if (r4 == 0) goto L84
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Injected pointer:\n"
            r4.append(r0)
            java.lang.String r3 = r3.toString()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.String r4 = "TouchState"
            android.util.Slog.i(r4, r3)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.gestures.TouchState.onInjectedMotionEvent(android.view.MotionEvent):void");
    }

    public void onReceivedAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int eventType = accessibilityEvent.getEventType();
        if (eventType != 32) {
            if (eventType == 128 || eventType == 256) {
                this.mLastTouchedWindowId = accessibilityEvent.getWindowId();
                return;
            } else if (eventType != 32768) {
                if (eventType != 2097152) {
                    return;
                }
                this.mAms.moveNonProxyTopFocusedDisplayToTopIfNeeded();
                return;
            }
        }
        MotionEvent motionEvent = this.mLastInjectedHoverEventForClick;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.mLastInjectedHoverEventForClick = null;
        }
        this.mLastTouchedWindowId = -1;
    }

    public void onInjectedAccessibilityEvent(int i) {
        if (i == 512) {
            startTouchExploring();
            return;
        }
        if (i == 1024) {
            startTouchInteracting();
            return;
        }
        if (i == 262144) {
            startGestureDetecting();
            return;
        }
        if (i == 524288) {
            clear();
        } else if (i == 1048576) {
            startTouchInteracting();
        } else {
            if (i != 2097152) {
                return;
            }
            setState(0);
        }
    }

    public int getState() {
        return this.mState;
    }

    public void setState(int i) {
        if (this.mState == i) {
            return;
        }
        if (TouchExplorer.DEBUG) {
            Slog.i("TouchState", getStateSymbolicName(this.mState) + "->" + getStateSymbolicName(i));
        }
        this.mState = i;
        if (this.mServiceDetectsGestures) {
            this.mAms.onTouchStateChanged(this.mDisplayId, i);
        }
    }

    public boolean isTouchExploring() {
        return this.mState == 2;
    }

    public void startTouchExploring() {
        setState(2);
    }

    public boolean isDelegating() {
        return this.mState == 4;
    }

    public void startDelegating() {
        setState(4);
    }

    public boolean isGestureDetecting() {
        return this.mState == 5;
    }

    public void startGestureDetecting() {
        setState(5);
    }

    public boolean isDragging() {
        return this.mState == 3;
    }

    public void startDragging() {
        setState(3);
    }

    public boolean isTouchInteracting() {
        return this.mState == 1;
    }

    public void startTouchInteracting() {
        setState(1);
    }

    public boolean isClear() {
        return this.mState == 0;
    }

    public String toString() {
        return "TouchState { mState: " + getStateSymbolicName(this.mState) + " }";
    }

    public static String getStateSymbolicName(int i) {
        if (i == 0) {
            return "STATE_CLEAR";
        }
        if (i == 1) {
            return "STATE_TOUCH_INTERACTING";
        }
        if (i == 2) {
            return "STATE_TOUCH_EXPLORING";
        }
        if (i == 3) {
            return "STATE_DRAGGING";
        }
        if (i == 4) {
            return "STATE_DELEGATING";
        }
        if (i == 5) {
            return "STATE_GESTURE_DETECTING";
        }
        return "Unknown state: " + i;
    }

    public ReceivedPointerTracker getReceivedPointerTracker() {
        return this.mReceivedPointerTracker;
    }

    public MotionEvent getLastReceivedEvent() {
        return this.mLastReceivedEvent;
    }

    public int getLastReceivedPolicyFlags() {
        return this.mLastReceivedPolicyFlags;
    }

    public MotionEvent getLastReceivedRawEvent() {
        return this.mLastReceivedRawEvent;
    }

    public MotionEvent getLastInjectedHoverEvent() {
        return this.mLastInjectedHoverEvent;
    }

    public long getLastInjectedDownEventTime() {
        return this.mLastInjectedDownEventTime;
    }

    public int getLastTouchedWindowId() {
        return this.mLastTouchedWindowId;
    }

    public int getInjectedPointerDownCount() {
        return Integer.bitCount(this.mInjectedPointersDown);
    }

    public int getInjectedPointersDown() {
        return this.mInjectedPointersDown;
    }

    public boolean isInjectedPointerDown(int i) {
        return (this.mInjectedPointersDown & (1 << i)) != 0;
    }

    public MotionEvent getLastInjectedHoverEventForClick() {
        return this.mLastInjectedHoverEventForClick;
    }

    public boolean isServiceDetectingGestures() {
        return this.mServiceDetectsGestures;
    }

    public void setServiceDetectsGestures(boolean z) {
        if (TouchExplorer.DEBUG) {
            Slog.d("TouchState", "serviceDetectsGestures: " + z);
        }
        this.mServiceDetectsGesturesRequested = z;
    }

    /* loaded from: classes.dex */
    public class ReceivedPointerTracker {
        public int mLastReceivedDownEdgeFlags;
        public int mPrimaryPointerId;
        public final PointerDownInfo[] mReceivedPointers = new PointerDownInfo[32];
        public int mReceivedPointersDown;

        public ReceivedPointerTracker() {
            clear();
        }

        public void clear() {
            this.mReceivedPointersDown = 0;
            this.mPrimaryPointerId = 0;
            for (int i = 0; i < 32; i++) {
                this.mReceivedPointers[i] = new PointerDownInfo();
            }
        }

        public void onMotionEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                handleReceivedPointerDown(motionEvent.getActionIndex(), motionEvent);
            } else if (actionMasked == 1) {
                handleReceivedPointerUp(motionEvent.getActionIndex(), motionEvent);
            } else if (actionMasked == 5) {
                handleReceivedPointerDown(motionEvent.getActionIndex(), motionEvent);
            } else if (actionMasked == 6) {
                handleReceivedPointerUp(motionEvent.getActionIndex(), motionEvent);
            }
            if (TouchExplorer.DEBUG) {
                Slog.i("ReceivedPointerTracker", "Received pointer:\n" + toString());
            }
        }

        public int getReceivedPointerDownCount() {
            return Integer.bitCount(this.mReceivedPointersDown);
        }

        public boolean isReceivedPointerDown(int i) {
            return (this.mReceivedPointersDown & (1 << i)) != 0;
        }

        public float getReceivedPointerDownX(int i) {
            return this.mReceivedPointers[i].mX;
        }

        public float getReceivedPointerDownY(int i) {
            return this.mReceivedPointers[i].mY;
        }

        public long getReceivedPointerDownTime(int i) {
            return this.mReceivedPointers[i].mTime;
        }

        public int getPrimaryPointerId() {
            if (this.mPrimaryPointerId == -1) {
                this.mPrimaryPointerId = findPrimaryPointerId();
            }
            return this.mPrimaryPointerId;
        }

        public int getLastReceivedDownEdgeFlags() {
            return this.mLastReceivedDownEdgeFlags;
        }

        public final void handleReceivedPointerDown(int i, MotionEvent motionEvent) {
            int pointerId = motionEvent.getPointerId(i);
            this.mLastReceivedDownEdgeFlags = motionEvent.getEdgeFlags();
            this.mReceivedPointersDown = (1 << pointerId) | this.mReceivedPointersDown;
            this.mReceivedPointers[pointerId].set(motionEvent.getX(i), motionEvent.getY(i), motionEvent.getEventTime());
            this.mPrimaryPointerId = pointerId;
        }

        public final void handleReceivedPointerUp(int i, MotionEvent motionEvent) {
            int pointerId = motionEvent.getPointerId(i);
            this.mReceivedPointersDown = (~(1 << pointerId)) & this.mReceivedPointersDown;
            this.mReceivedPointers[pointerId].clear();
            if (this.mPrimaryPointerId == pointerId) {
                this.mPrimaryPointerId = -1;
            }
        }

        public final int findPrimaryPointerId() {
            int i = this.mReceivedPointersDown;
            int i2 = -1;
            long j = Long.MAX_VALUE;
            while (i > 0) {
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
                i &= ~(1 << numberOfTrailingZeros);
                long j2 = this.mReceivedPointers[numberOfTrailingZeros].mTime;
                if (j2 < j) {
                    i2 = numberOfTrailingZeros;
                    j = j2;
                }
            }
            return i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("=========================");
            sb.append("\nDown pointers #");
            sb.append(getReceivedPointerDownCount());
            sb.append(" [ ");
            for (int i = 0; i < 32; i++) {
                if (isReceivedPointerDown(i)) {
                    sb.append(i);
                    sb.append(" ");
                }
            }
            sb.append("]");
            sb.append("\nPrimary pointer id [ ");
            sb.append(getPrimaryPointerId());
            sb.append(" ]");
            sb.append("\n=========================");
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public class PointerDownInfo {
        public long mTime;
        public float mX;
        public float mY;

        public PointerDownInfo() {
        }

        public void set(float f, float f2, long j) {
            this.mX = f;
            this.mY = f2;
            this.mTime = j;
        }

        public void clear() {
            this.mX = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
            this.mY = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
            this.mTime = 0L;
        }
    }
}
