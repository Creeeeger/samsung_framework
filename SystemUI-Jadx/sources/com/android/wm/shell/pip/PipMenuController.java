package com.android.wm.shell.pip;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Rect;
import android.view.SurfaceControl;
import android.view.WindowManager;
import com.android.systemui.R;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PipMenuController {
    static WindowManager.LayoutParams getPipMenuLayoutParams(Context context, int i, int i2, String str) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i, i2, 2038, 545521680, -3);
        layoutParams.privateFlags |= QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT;
        layoutParams.setTitle(str);
        layoutParams.accessibilityTitle = context.getResources().getString(R.string.pip_menu_accessibility_title);
        return layoutParams;
    }

    void attach(SurfaceControl surfaceControl);

    void detach();

    boolean isMenuVisible();

    void movePipMenu(SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, Rect rect, float f);

    void resizePipMenu(Rect rect, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl);

    void updateMenuBounds(Rect rect);

    default void onFocusTaskChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    default void setSplitMenuEnabled(boolean z) {
    }

    default void dismissPip() {
    }
}
