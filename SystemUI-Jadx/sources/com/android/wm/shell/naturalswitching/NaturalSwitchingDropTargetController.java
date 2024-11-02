package com.android.wm.shell.naturalswitching;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NaturalSwitchingDropTargetController implements GestureDetector.OnGestureListener {
    public final Context mContext;
    public final DisplayController mDisplayController;
    public GestureDetector mGestureDetector;
    public boolean mLayoutChanged;
    public NaturalSwitchingLayout mNaturalSwitchingLayout;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public final ShellTaskOrganizer mTaskOrganizer;
    public boolean mIsRunning = false;
    public boolean mAllowInterceptTouch = true;

    public NaturalSwitchingDropTargetController(Context context, final ShellTaskOrganizer shellTaskOrganizer, Handler handler, DisplayController displayController, final Optional<SplitScreenController> optional, final Transitions transitions, final SyncTransactionQueue syncTransactionQueue) {
        this.mContext = context;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mDisplayController = displayController;
        handler.post(new Runnable() { // from class: com.android.wm.shell.naturalswitching.NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NaturalSwitchingDropTargetController naturalSwitchingDropTargetController = NaturalSwitchingDropTargetController.this;
                Optional optional2 = optional;
                Transitions transitions2 = transitions;
                ShellTaskOrganizer shellTaskOrganizer2 = shellTaskOrganizer;
                SyncTransactionQueue syncTransactionQueue2 = syncTransactionQueue;
                naturalSwitchingDropTargetController.getClass();
                naturalSwitchingDropTargetController.mGestureDetector = new GestureDetector(naturalSwitchingDropTargetController.mContext, naturalSwitchingDropTargetController);
                naturalSwitchingDropTargetController.mNaturalSwitchingLayout = new NaturalSwitchingLayout(naturalSwitchingDropTargetController.mContext, (SplitScreenController) optional2.get(), transitions2, shellTaskOrganizer2, syncTransactionQueue2);
            }
        });
    }

    public final boolean allowInterceptTouch(ActivityManager.RunningTaskInfo runningTaskInfo) {
        boolean z;
        boolean z2;
        if (runningTaskInfo == null || !runningTaskInfo.supportsMultiWindow) {
            return false;
        }
        int windowingMode = runningTaskInfo.getWindowingMode();
        if (windowingMode == 1) {
            z = CoreRune.MW_NATURAL_SWITCHING_FULLSCREEN;
        } else if (windowingMode == 2) {
            z = CoreRune.MW_NATURAL_SWITCHING_PIP;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        if ((CoreRune.MW_NATURAL_SWITCHING_PIP && windowingMode == 2 && runningTaskInfo.supportsPipOnly) || runningTaskInfo.getConfiguration().isDexMode() || MultiWindowManager.getInstance().preventNaturalSwitching(runningTaskInfo.taskId)) {
            return false;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.mContext.getSystemService(InputMethodManager.class);
        if (inputMethodManager != null && inputMethodManager.isInputMethodShown()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return false;
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x012d, code lost:
    
        if (r0.mNsWindowingMode == r10) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r14, int r15) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NaturalSwitchingDropTargetController.onInterceptTouchEvent(android.view.MotionEvent, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0415, code lost:
    
        if (r2 == false) goto L147;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x059b  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x053b A[EDGE_INSN: B:90:0x053b->B:91:0x053b BREAK  A[LOOP:0: B:79:0x04e2->B:86:0x04e2], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x053f  */
    @Override // android.view.GestureDetector.OnGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLongPress(android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 1465
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NaturalSwitchingDropTargetController.onLongPress(android.view.MotionEvent):void");
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }
}
