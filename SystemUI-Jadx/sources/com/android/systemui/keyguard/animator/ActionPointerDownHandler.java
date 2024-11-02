package com.android.systemui.keyguard.animator;

import android.view.MotionEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ActionPointerDownHandler extends ActionHandlerType {
    public ActionPointerDownHandler(KeyguardTouchAnimator keyguardTouchAnimator) {
        super(keyguardTouchAnimator);
    }

    @Override // com.android.systemui.keyguard.animator.ActionHandlerType
    public final boolean handleMotionEvent(MotionEvent motionEvent) {
        boolean z;
        KeyguardTouchAnimator keyguardTouchAnimator = this.parent;
        KeyguardTouchSwipeCallback keyguardTouchSwipeCallback = keyguardTouchAnimator.callback;
        if (keyguardTouchSwipeCallback == null) {
            keyguardTouchSwipeCallback = null;
        }
        keyguardTouchSwipeCallback.setMotionAborted();
        if (motionEvent.getPointerCount() >= 2) {
            z = true;
        } else {
            z = false;
        }
        keyguardTouchAnimator.isMultiTouch = z;
        return true;
    }
}
