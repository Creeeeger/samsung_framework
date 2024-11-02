package com.android.keyguard;

import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LiftToActivateListener implements View.OnHoverListener {
    public final AccessibilityManager mAccessibilityManager;

    public LiftToActivateListener(AccessibilityManager accessibilityManager) {
        this.mAccessibilityManager = accessibilityManager;
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        if (this.mAccessibilityManager.isEnabled() && this.mAccessibilityManager.isTouchExplorationEnabled()) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 9) {
                if (actionMasked == 10) {
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    if (x > view.getPaddingLeft() && y > view.getPaddingTop() && x < view.getWidth() - view.getPaddingRight() && y < view.getHeight() - view.getPaddingBottom()) {
                        view.performClick();
                    }
                    view.setClickable(false);
                }
            } else {
                view.setClickable(false);
            }
        }
        view.onHoverEvent(motionEvent);
        return true;
    }
}
