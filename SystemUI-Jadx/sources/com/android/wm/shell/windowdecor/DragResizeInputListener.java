package com.android.wm.shell.windowdecor;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.Choreographer;
import android.view.IWindowSession;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.ViewConfiguration;
import android.view.WindowManagerGlobal;
import com.android.internal.view.BaseIWindow;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DragResizePointer;
import com.android.wm.shell.windowdecor.DragDetector;
import com.android.wm.shell.windowdecor.DragResizeInputListener;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.EnterpriseContainerCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragResizeInputListener implements AutoCloseable {
    public final DragPositioningCallback mCallback;
    public final Choreographer mChoreographer;
    public int mCornerSize;
    public final SurfaceControl mDecorationSurface;
    public final int mDisplayId;
    public final DragDetector mDragDetector;
    public int mDragPointerId;
    public final BaseIWindow mFakeWindow;
    public final Handler mHandler;
    public int mInnerResizeHandleThickness;
    public final InputChannel mInputChannel;
    public final TaskResizeInputEventReceiver mInputEventReceiver;
    public final InputManager mInputManager;
    public boolean mIsDexEnabled;
    public boolean mIsPointerInput;
    public boolean mIsStylusInput;
    public final Region mLastTouchRegion;
    public final Region mLeftBottomCornerRegion;
    public final Region mLeftTopCornerRegion;
    public MultitaskingWindowDecoration mMultitaskingWindowDecoration;
    public final Rect mPointerLeftBottomCornerBounds;
    public final Rect mPointerLeftTopCornerBounds;
    public int mPointerResizeHandleThickness;
    public final Rect mPointerRightBottomCornerBounds;
    public final Rect mPointerRightTopCornerBounds;
    public final Region mPointerTouchableRegion;
    public int mResizeHandleThickness;
    public final Region mRightBottomCornerRegion;
    public final Region mRightTopCornerRegion;
    public final AnonymousClass1 mSetDefaultPointerRunnable;
    public int mTaskHeight;
    public int mTaskWidth;
    public final Rect mTmpBounds;
    public final Rect mTmpCornerRect;
    public final Rect mTmpInnerRect;
    public boolean mTouchableState;
    public final IWindowSession mWindowSession;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskResizeInputEventReceiver extends InputEventReceiver implements DragDetector.MotionEventHandler {
        public final Choreographer mChoreographer;
        public final DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0 mConsumeBatchEventRunnable;
        public boolean mConsumeBatchEventScheduled;
        public boolean mShouldHandleEvents;

        public /* synthetic */ TaskResizeInputEventReceiver(DragResizeInputListener dragResizeInputListener, InputChannel inputChannel, Handler handler, Choreographer choreographer, int i) {
            this(inputChannel, handler, choreographer);
        }

        public final int calculateCornersCtrlType(float f, float f2) {
            int i = (int) f;
            int i2 = (int) f2;
            DragResizeInputListener dragResizeInputListener = DragResizeInputListener.this;
            if (dragResizeInputListener.mIsPointerInput) {
                if (dragResizeInputListener.mPointerLeftTopCornerBounds.contains(i, i2)) {
                    return 5;
                }
                if (DragResizeInputListener.this.mPointerLeftBottomCornerBounds.contains(i, i2)) {
                    return 9;
                }
                if (DragResizeInputListener.this.mPointerRightTopCornerBounds.contains(i, i2)) {
                    return 6;
                }
                if (DragResizeInputListener.this.mPointerRightBottomCornerBounds.contains(i, i2)) {
                    return 10;
                }
                return 0;
            }
            if (dragResizeInputListener.mLeftTopCornerRegion.contains(i, i2)) {
                return 5;
            }
            if (DragResizeInputListener.this.mLeftBottomCornerRegion.contains(i, i2)) {
                return 9;
            }
            if (DragResizeInputListener.this.mRightTopCornerRegion.contains(i, i2)) {
                return 6;
            }
            if (DragResizeInputListener.this.mRightBottomCornerRegion.contains(i, i2)) {
                return 10;
            }
            return 0;
        }

        public final int calculateResizeHandlesCtrlType(float f, float f2) {
            DragResizeInputListener dragResizeInputListener = DragResizeInputListener.this;
            int i = 1;
            if (dragResizeInputListener.mIsPointerInput) {
                if (!dragResizeInputListener.mPointerTouchableRegion.contains((int) f, (int) f2)) {
                    return 0;
                }
                if (f >= 0.0f || f < (-DragResizeInputListener.this.mPointerResizeHandleThickness)) {
                    i = 0;
                }
                DragResizeInputListener dragResizeInputListener2 = DragResizeInputListener.this;
                if (f > dragResizeInputListener2.mTaskWidth && f <= r1 + dragResizeInputListener2.mPointerResizeHandleThickness && f2 > 0.0f && f2 <= dragResizeInputListener2.mTaskHeight) {
                    i |= 2;
                }
                if (f2 < 0.0f && f2 >= (-dragResizeInputListener2.mPointerResizeHandleThickness)) {
                    i |= 4;
                }
                if (f2 > dragResizeInputListener2.mTaskHeight && f2 <= r6 + dragResizeInputListener2.mPointerResizeHandleThickness) {
                    return i | 8;
                }
                return i;
            }
            int i2 = dragResizeInputListener.mInnerResizeHandleThickness;
            if (f >= i2) {
                i = 0;
            }
            if (f > dragResizeInputListener.mTaskWidth - i2) {
                i |= 2;
            }
            if (f2 < i2) {
                i |= 4;
            }
            if (f2 > dragResizeInputListener.mTaskHeight - i2) {
                return i | 8;
            }
            return i;
        }

        public final void dispose() {
            super.dispose();
            DragResizeInputListener.this.mCallback.onDragPositioningEnd(-1.0f, -1.0f);
        }

        @Override // com.android.wm.shell.windowdecor.DragDetector.MotionEventHandler
        public final boolean handleMotionEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            motionEvent.getSource();
            DragResizeInputListener.this.mIsStylusInput = motionEvent.isFromSource(16386);
            DragResizeInputListener dragResizeInputListener = DragResizeInputListener.this;
            if (!dragResizeInputListener.mIsStylusInput && !motionEvent.isFromSource(8194)) {
                z = false;
            } else {
                z = true;
            }
            dragResizeInputListener.mIsPointerInput = z;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            if (actionMasked != 7 && actionMasked != 9) {
                                if (actionMasked == 10) {
                                    DragResizeInputListener dragResizeInputListener2 = DragResizeInputListener.this;
                                    dragResizeInputListener2.mHandler.postDelayed(dragResizeInputListener2.mSetDefaultPointerRunnable, 100L);
                                    return true;
                                }
                            } else {
                                updateCursorType(motionEvent.getXCursorPosition(), motionEvent.getYCursorPosition());
                                return true;
                            }
                        }
                    } else if (this.mShouldHandleEvents) {
                        int findPointerIndex = motionEvent.findPointerIndex(DragResizeInputListener.this.mDragPointerId);
                        if (findPointerIndex == -1) {
                            Log.w("DragResizeInputListener", "Invalid dragPointerIndex=" + findPointerIndex + " in handleMotionEvent");
                        } else {
                            DragResizeInputListener.this.mCallback.onDragPositioningMove(motionEvent.getRawX(findPointerIndex), motionEvent.getRawY(findPointerIndex));
                            return true;
                        }
                    }
                }
                if (this.mShouldHandleEvents) {
                    int findPointerIndex2 = motionEvent.findPointerIndex(DragResizeInputListener.this.mDragPointerId);
                    if (findPointerIndex2 == -1) {
                        Log.w("DragResizeInputListener", "Invalid dragPointerIndex=" + findPointerIndex2 + " in handleMotionEvent");
                        DragResizeInputListener.this.mCallback.onDragPositioningEnd(-1.0f, -1.0f);
                    } else {
                        DragResizeInputListener.this.mCallback.onDragPositioningEnd(motionEvent.getRawX(findPointerIndex2), motionEvent.getRawY(findPointerIndex2));
                    }
                }
                this.mShouldHandleEvents = false;
                DragResizeInputListener.this.mDragPointerId = -1;
                return true;
            }
            float x = motionEvent.getX(0);
            float y = motionEvent.getY(0);
            if ((motionEvent.getFlags() & QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE) != 0 && (motionEvent.getButtonState() & 1) == 0) {
                this.mShouldHandleEvents = false;
            } else {
                if (calculateCornersCtrlType(x, y) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    if (calculateResizeHandlesCtrlType(x, y) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (!z4) {
                        z3 = false;
                        this.mShouldHandleEvents = z3;
                    }
                }
                z3 = true;
                this.mShouldHandleEvents = z3;
            }
            if (this.mShouldHandleEvents) {
                DragResizeInputListener.this.mDragPointerId = motionEvent.getPointerId(0);
                DragResizeInputListener.this.mCallback.onDragPositioningStart(motionEvent.getRawX(0), motionEvent.getRawY(0), calculateCornersCtrlType(x, y) | calculateResizeHandlesCtrlType(x, y));
                updateCursorType(x, y);
                return true;
            }
            return false;
        }

        public final void onBatchedInputEventPending(int i) {
            if (!this.mConsumeBatchEventScheduled) {
                this.mChoreographer.postCallback(0, this.mConsumeBatchEventRunnable, null);
                this.mConsumeBatchEventScheduled = true;
            }
        }

        public final void onInputEvent(InputEvent inputEvent) {
            boolean onMotionEvent;
            if (!(inputEvent instanceof MotionEvent)) {
                onMotionEvent = false;
            } else {
                onMotionEvent = DragResizeInputListener.this.mDragDetector.onMotionEvent((MotionEvent) inputEvent);
            }
            finishInputEvent(inputEvent, onMotionEvent);
        }

        public final void updateCursorType(float f, float f2) {
            int i;
            DragResizeInputListener dragResizeInputListener = DragResizeInputListener.this;
            MultitaskingWindowDecoration multitaskingWindowDecoration = dragResizeInputListener.mMultitaskingWindowDecoration;
            if (multitaskingWindowDecoration != null && multitaskingWindowDecoration.mAdjustState.mIsAdjusted) {
                return;
            }
            dragResizeInputListener.mHandler.removeCallbacks(dragResizeInputListener.mSetDefaultPointerRunnable);
            switch (calculateResizeHandlesCtrlType(f, f2) | calculateCornersCtrlType(f, f2)) {
                case 1:
                case 2:
                    i = EnterpriseContainerCallback.CONTAINER_VERIFY_PWD_SUCCESSFUL;
                    break;
                case 3:
                case 7:
                default:
                    i = 1000;
                    break;
                case 4:
                case 8:
                    i = EnterpriseContainerCallback.CONTAINER_VERIFY_PWD_FAILED;
                    break;
                case 5:
                case 10:
                    i = 1017;
                    break;
                case 6:
                case 9:
                    i = EnterpriseContainerCallback.CONTAINER_CANCELLED;
                    break;
            }
            DragResizeInputListener dragResizeInputListener2 = DragResizeInputListener.this;
            if (dragResizeInputListener2.mIsStylusInput) {
                i = DragResizePointer.convertStylusIconType(i);
            } else if (dragResizeInputListener2.mIsDexEnabled) {
                i = DragResizePointer.convertDexPointerIconType(i);
            }
            DragResizeInputListener.this.mInputManager.setPointerIconType(i);
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.android.wm.shell.windowdecor.DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0] */
        private TaskResizeInputEventReceiver(InputChannel inputChannel, Handler handler, Choreographer choreographer) {
            super(inputChannel, handler.getLooper());
            this.mChoreographer = choreographer;
            this.mConsumeBatchEventRunnable = new Runnable() { // from class: com.android.wm.shell.windowdecor.DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DragResizeInputListener.TaskResizeInputEventReceiver taskResizeInputEventReceiver = DragResizeInputListener.TaskResizeInputEventReceiver.this;
                    taskResizeInputEventReceiver.mConsumeBatchEventScheduled = false;
                    if (taskResizeInputEventReceiver.consumeBatchedInputEvents(taskResizeInputEventReceiver.mChoreographer.getFrameTimeNanos()) && !taskResizeInputEventReceiver.mConsumeBatchEventScheduled) {
                        taskResizeInputEventReceiver.mChoreographer.postCallback(0, taskResizeInputEventReceiver.mConsumeBatchEventRunnable, null);
                        taskResizeInputEventReceiver.mConsumeBatchEventScheduled = true;
                    }
                }
            };
        }
    }

    /* JADX WARN: Type inference failed for: r1v13, types: [com.android.wm.shell.windowdecor.DragResizeInputListener$1] */
    public DragResizeInputListener(Context context, Handler handler, Choreographer choreographer, int i, SurfaceControl surfaceControl, DragPositioningCallback dragPositioningCallback, ShellTaskOrganizer shellTaskOrganizer) {
        IWindowSession windowSession = WindowManagerGlobal.getWindowSession();
        this.mWindowSession = windowSession;
        this.mLeftTopCornerRegion = new Region();
        this.mRightTopCornerRegion = new Region();
        this.mLeftBottomCornerRegion = new Region();
        this.mRightBottomCornerRegion = new Region();
        this.mTmpBounds = new Rect();
        this.mTmpCornerRect = new Rect();
        this.mTmpInnerRect = new Rect();
        this.mPointerTouchableRegion = new Region();
        this.mPointerLeftTopCornerBounds = new Rect();
        this.mPointerRightTopCornerBounds = new Rect();
        this.mPointerLeftBottomCornerBounds = new Rect();
        this.mPointerRightBottomCornerBounds = new Rect();
        this.mDragPointerId = -1;
        this.mSetDefaultPointerRunnable = new Runnable() { // from class: com.android.wm.shell.windowdecor.DragResizeInputListener.1
            @Override // java.lang.Runnable
            public final void run() {
                DragResizeInputListener.this.mInputManager.setPointerIconType(1000);
            }
        };
        this.mLastTouchRegion = new Region();
        this.mInputManager = (InputManager) context.getSystemService(InputManager.class);
        this.mHandler = handler;
        this.mChoreographer = choreographer;
        this.mDisplayId = i;
        this.mDecorationSurface = surfaceControl;
        BaseIWindow baseIWindow = new BaseIWindow();
        this.mFakeWindow = baseIWindow;
        baseIWindow.setSession(windowSession);
        Binder binder = new Binder();
        InputChannel inputChannel = new InputChannel();
        this.mInputChannel = inputChannel;
        try {
            windowSession.grantInputChannel(i, surfaceControl, baseIWindow, (IBinder) null, 8, QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT, 0, 2, (IBinder) null, binder, "DragResizeInputListener of " + surfaceControl.toString(), inputChannel);
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
        TaskResizeInputEventReceiver taskResizeInputEventReceiver = new TaskResizeInputEventReceiver(this, this.mInputChannel, this.mHandler, this.mChoreographer, 0);
        this.mInputEventReceiver = taskResizeInputEventReceiver;
        this.mCallback = dragPositioningCallback;
        DragDetector dragDetector = new DragDetector(taskResizeInputEventReceiver);
        this.mDragDetector = dragDetector;
        dragDetector.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.mInputEventReceiver.dispose();
        this.mInputChannel.dispose();
        try {
            this.mWindowSession.remove(this.mFakeWindow);
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean setGeometry(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.DragResizeInputListener.setGeometry(int, int, int, int, int, int, int, int, int, boolean):boolean");
    }

    public final void updateTouchableState(boolean z) {
        int i;
        if (!z) {
            i = 24;
        } else {
            i = 8;
        }
        try {
            this.mWindowSession.updateInputChannelWithPointerRegion(this.mInputChannel.getToken(), this.mDisplayId, this.mDecorationSurface, i, QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT, 0, this.mLastTouchRegion, this.mPointerTouchableRegion);
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
    }
}
