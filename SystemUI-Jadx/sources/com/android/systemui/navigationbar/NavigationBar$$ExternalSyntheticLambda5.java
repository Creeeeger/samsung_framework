package com.android.systemui.navigationbar;

import android.view.MotionEvent;
import android.view.View;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.AutoHideController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationBar$$ExternalSyntheticLambda5 implements View.OnTouchListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavigationBar f$0;

    public /* synthetic */ NavigationBar$$ExternalSyntheticLambda5(NavigationBar navigationBar, int i) {
        this.$r8$classId = i;
        this.f$0 = navigationBar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.$r8$classId) {
            case 0:
                NavigationBar navigationBar = this.f$0;
                navigationBar.getClass();
                int action = motionEvent.getAction() & 255;
                CommandQueue commandQueue = navigationBar.mCommandQueue;
                if (action == 0) {
                    commandQueue.preloadRecentApps();
                } else if (action == 3) {
                    commandQueue.cancelPreloadRecentApps();
                } else if (action == 1 && !view.isPressed()) {
                    commandQueue.cancelPreloadRecentApps();
                }
                return false;
            case 1:
                return this.f$0.onHomeTouch(view, motionEvent);
            default:
                AutoHideController autoHideController = this.f$0.mAutoHideController;
                if (autoHideController != null) {
                    autoHideController.checkUserAutoHide(motionEvent);
                }
                return false;
        }
    }
}
