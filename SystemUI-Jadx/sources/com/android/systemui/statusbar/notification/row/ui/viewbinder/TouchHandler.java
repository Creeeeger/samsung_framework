package com.android.systemui.statusbar.notification.row.ui.viewbinder;

import android.view.MotionEvent;
import android.view.View;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.notification.row.ActivatableNotificationView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TouchHandler implements Gefingerpoken, View.OnTouchListener {
    public final FalsingManager falsingManager;
    public boolean isTouchEnabled;
    public final ActivatableNotificationView view;

    public TouchHandler(ActivatableNotificationView activatableNotificationView, FalsingManager falsingManager) {
        this.view = activatableNotificationView;
        this.falsingManager = falsingManager;
    }

    @Override // com.android.systemui.Gefingerpoken
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.view.mLastActionUpTime = motionEvent.getEventTime();
        }
        if (!this.isTouchEnabled || motionEvent.getAction() != 1) {
            return false;
        }
        boolean isFalseTap = this.falsingManager.isFalseTap(1);
        if (!isFalseTap && (view instanceof ActivatableNotificationView)) {
            ((ActivatableNotificationView) view).onTap();
        }
        return isFalseTap;
    }

    @Override // com.android.systemui.Gefingerpoken
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
