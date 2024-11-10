package com.android.server.wm;

import android.graphics.Rect;
import android.graphics.Region;
import android.util.Slog;
import android.view.MotionEvent;
import android.view.WindowManagerPolicyConstants;

/* loaded from: classes3.dex */
public class TaskTapPointerEventListener implements WindowManagerPolicyConstants.PointerEventListener {
    public final DisplayContent mDisplayContent;
    public final WindowManagerService mService;
    public final Region mTouchExcludeRegion = new Region();
    public final Rect mTmpRect = new Rect();
    public int mPointerIconType = 1;

    public TaskTapPointerEventListener(WindowManagerService windowManagerService, DisplayContent displayContent) {
        this.mService = windowManagerService;
        this.mDisplayContent = displayContent;
    }

    public final void restorePointerIcon(int i, int i2) {
        if (this.mPointerIconType != 1) {
            this.mPointerIconType = 1;
            this.mService.mH.removeMessages(55);
            this.mService.mH.obtainMessage(55, i, i2, this.mDisplayContent).sendToTarget();
        }
    }

    public void onPointerEvent(MotionEvent motionEvent) {
        try {
            onPointerEventInner(motionEvent);
        } catch (Exception e) {
            Slog.w(StartingSurfaceController.TAG, e.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x006e, code lost:
    
        if (r8 > r2.bottom) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007d, code lost:
    
        if (r8 > r2.bottom) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onPointerEventInner(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.TaskTapPointerEventListener.onPointerEventInner(android.view.MotionEvent):void");
    }

    public void setTouchExcludeRegion(Region region) {
        synchronized (this) {
            this.mTouchExcludeRegion.set(region);
        }
    }
}
