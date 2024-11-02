package com.android.systemui.navigationbar;

import android.content.Context;
import android.os.SystemClock;
import android.util.Slog;
import android.view.accessibility.AccessibilityManager;
import android.widget.Toast;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.SysUIToast;
import com.android.systemui.keyguard.DisplayLifecycle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenPinningNotify {
    public final Context mContext;
    public long mLastShowToastTime;
    public Toast mLastToast;
    public boolean mTouchExplorationEnabled;

    public ScreenPinningNotify(Context context) {
        this.mContext = context;
    }

    public final void showEscapeToast(boolean z, boolean z2) {
        boolean z3;
        int i;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.mLastShowToastTime < 1000) {
            Slog.i("ScreenPinningNotify", "Ignore toast since it is requested in very short interval.");
            return;
        }
        Toast toast = this.mLastToast;
        if (toast != null) {
            toast.cancel();
        }
        Context context = this.mContext;
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        boolean z4 = false;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mTouchExplorationEnabled = z3;
        if (BasicRune.POPUPUI_FOLDERBLE_TYPE_FLIP && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            z4 = true;
        }
        if (z) {
            if (z4) {
                i = R.string.sec_screen_pinning_toast_gesture_nav_sub_screen;
            } else {
                i = R.string.sec_screen_pinning_toast_gesture_nav;
            }
        } else if (z2) {
            if (this.mTouchExplorationEnabled) {
                i = R.string.sec_screen_pinning_toast_accessibility;
            } else if (z4) {
                i = R.string.sec_screen_pinning_toast_sub_screen;
            } else {
                i = R.string.sec_screen_pinning_toast;
            }
        } else {
            i = R.string.screen_pinning_toast_recents_invisible;
        }
        Toast makeText = SysUIToast.makeText(i, context, 1);
        makeText.show();
        this.mLastToast = makeText;
        this.mLastShowToastTime = elapsedRealtime;
    }
}
