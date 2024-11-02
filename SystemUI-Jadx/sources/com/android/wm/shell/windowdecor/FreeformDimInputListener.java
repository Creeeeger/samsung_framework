package com.android.wm.shell.windowdecor;

import android.content.Context;
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
import com.android.wm.shell.windowdecor.DragDetector;
import com.android.wm.shell.windowdecor.FreeformDimInputListener;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformDimInputListener implements AutoCloseable {
    public final Choreographer mChoreographer;
    public final SurfaceControl mDecorationSurface;
    public final int mDisplayId;
    public final DragDetector mDragDetector;
    public int mDragPointerId;
    public final BaseIWindow mFakeWindow;
    public final FreeformCaptionTouchState mFreeformCaptionTouchState;
    public final Handler mHandler;
    public final InputChannel mInputChannel;
    public final TaskDimInputEventReceiver mInputEventReceiver;
    public boolean mLayerBoosted;
    public final int mTaskId;
    public final TaskPositioner mTaskPositioner;
    public boolean mTouchableState;
    public final IWindowSession mWindowSession;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TaskDimInputEventReceiver extends InputEventReceiver implements DragDetector.MotionEventHandler {
        public final Choreographer mChoreographer;
        public final FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0 mConsumeBatchEventRunnable;
        public boolean mConsumeBatchEventScheduled;
        public boolean mMoved;

        public /* synthetic */ TaskDimInputEventReceiver(FreeformDimInputListener freeformDimInputListener, InputChannel inputChannel, Handler handler, Choreographer choreographer, int i) {
            this(inputChannel, handler, choreographer);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0070, code lost:
        
            if (r9 != 1) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0090, code lost:
        
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0073, code lost:
        
            if (r9 == 1) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
        
            r3 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
        
            if (r9 != 1) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
        
            if (r9 == 1) goto L38;
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
        @Override // com.android.wm.shell.windowdecor.DragDetector.MotionEventHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean handleMotionEvent(android.view.MotionEvent r12) {
            /*
                Method dump skipped, instructions count: 398
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.FreeformDimInputListener.TaskDimInputEventReceiver.handleMotionEvent(android.view.MotionEvent):boolean");
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
                onMotionEvent = FreeformDimInputListener.this.mDragDetector.onMotionEvent((MotionEvent) inputEvent);
            }
            finishInputEvent(inputEvent, onMotionEvent);
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.android.wm.shell.windowdecor.FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0] */
        private TaskDimInputEventReceiver(InputChannel inputChannel, Handler handler, Choreographer choreographer) {
            super(inputChannel, handler.getLooper());
            this.mChoreographer = choreographer;
            this.mConsumeBatchEventRunnable = new Runnable() { // from class: com.android.wm.shell.windowdecor.FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FreeformDimInputListener.TaskDimInputEventReceiver taskDimInputEventReceiver = FreeformDimInputListener.TaskDimInputEventReceiver.this;
                    taskDimInputEventReceiver.mConsumeBatchEventScheduled = false;
                    if (taskDimInputEventReceiver.consumeBatchedInputEvents(taskDimInputEventReceiver.mChoreographer.getFrameTimeNanos()) && !taskDimInputEventReceiver.mConsumeBatchEventScheduled) {
                        taskDimInputEventReceiver.mChoreographer.postCallback(0, taskDimInputEventReceiver.mConsumeBatchEventRunnable, null);
                        taskDimInputEventReceiver.mConsumeBatchEventScheduled = true;
                    }
                }
            };
        }
    }

    public FreeformDimInputListener(Context context, Handler handler, Choreographer choreographer, int i, SurfaceControl surfaceControl, TaskPositioner taskPositioner, int i2) {
        IWindowSession windowSession = WindowManagerGlobal.getWindowSession();
        this.mWindowSession = windowSession;
        this.mDragPointerId = -1;
        this.mTouchableState = true;
        this.mFreeformCaptionTouchState = null;
        this.mHandler = handler;
        this.mChoreographer = choreographer;
        this.mTaskId = i2;
        this.mDisplayId = i;
        this.mDecorationSurface = surfaceControl;
        BaseIWindow baseIWindow = new BaseIWindow();
        this.mFakeWindow = baseIWindow;
        baseIWindow.setSession(windowSession);
        Binder binder = new Binder();
        InputChannel inputChannel = new InputChannel();
        this.mInputChannel = inputChannel;
        this.mTaskPositioner = taskPositioner;
        try {
            windowSession.grantInputChannel(i, surfaceControl, baseIWindow, (IBinder) null, 8, QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT, 0, 2, (IBinder) null, binder, "FreeformDimInputListener of " + surfaceControl.toString(), inputChannel);
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
        TaskDimInputEventReceiver taskDimInputEventReceiver = new TaskDimInputEventReceiver(this, this.mInputChannel, this.mHandler, this.mChoreographer, 0);
        this.mInputEventReceiver = taskDimInputEventReceiver;
        DragDetector dragDetector = new DragDetector(taskDimInputEventReceiver);
        this.mDragDetector = dragDetector;
        dragDetector.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
            this.mFreeformCaptionTouchState = new FreeformCaptionTouchState(ViewConfiguration.get(context));
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        updateBoostIfNeeded(false);
        this.mInputEventReceiver.dispose();
        this.mInputChannel.dispose();
        try {
            this.mWindowSession.remove(this.mFakeWindow);
        } catch (RemoteException e) {
            e.rethrowFromSystemServer();
        }
    }

    public final void updateBoostIfNeeded(boolean z) {
        if (this.mLayerBoosted != z) {
            this.mLayerBoosted = z;
            Log.d("FreeformDimInputListener", "updateBoostIfNeeded: t #" + this.mTaskId + ", boost=" + z);
            MultiWindowManager.getInstance().setBoostFreeformTaskLayer(this.mTaskId, z);
        }
    }
}
