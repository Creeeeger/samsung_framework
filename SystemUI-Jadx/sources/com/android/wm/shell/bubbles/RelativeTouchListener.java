package com.android.wm.shell.bubbles;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class RelativeTouchListener implements View.OnTouchListener {
    public boolean movedEnough;
    public boolean performedLongClick;
    public final PointF touchDown = new PointF();
    public final PointF viewPositionOnTouchDown = new PointF();
    public final VelocityTracker velocityTracker = VelocityTracker.obtain();
    public int touchSlop = -1;

    public abstract void onDown(View view, MotionEvent motionEvent);

    public abstract void onMove(View view, MotionEvent motionEvent, float f, float f2, float f3, float f4);

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
    
        if (r1 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(final android.view.View r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.bubbles.RelativeTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void onUp(View view, float f, float f2, float f3, float f4);
}
