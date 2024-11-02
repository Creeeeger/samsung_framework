package com.android.systemui.shade;

import android.app.SemWallpaperColors;
import android.os.SystemClock;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 {
    public final /* synthetic */ SecNotificationShadeWindowControllerHelperImpl this$0;

    public SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1(SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl) {
        this.this$0 = secNotificationShadeWindowControllerHelperImpl;
    }

    public final void onScreenTimeoutChanged(long j) {
        Log.d("NotificationShadeWindowController", "onScreenTimeoutChanged timeOut : " + j);
        String str = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
        SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = this.this$0;
        secNotificationShadeWindowControllerHelperImpl.getCurrentState().lockTimeOutValue = j;
        NotificationShadeWindowState currentState = secNotificationShadeWindowControllerHelperImpl.getCurrentState();
        long userActivityTimeout = secNotificationShadeWindowControllerHelperImpl.getUserActivityTimeout();
        if (currentState.keyguardUserActivityTimeout != userActivityTimeout) {
            currentState.keyguardUserActivityTimeout = userActivityTimeout;
            if (currentState.statusBarState == 1) {
                secNotificationShadeWindowControllerHelperImpl.apply(currentState);
            }
        }
    }

    public final void onViewModeChanged(int i) {
        Log.d("NotificationShadeWindowController", "onViewModeChanged mode : " + i);
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (LsRune.LOCKUI_BLUR) {
            SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = this.this$0;
            if (z) {
                Log.d("NotificationShadeWindowController", "prepareToApplyBlurDimEffect");
                String str = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
                WindowManager.LayoutParams layoutParamsChanged = secNotificationShadeWindowControllerHelperImpl.getLayoutParamsChanged();
                layoutParamsChanged.flags |= 2;
                layoutParamsChanged.dimAmount = 0.125f;
                layoutParamsChanged.samsungFlags |= 64;
            } else {
                Log.d("NotificationShadeWindowController", "prepareToRemoveBlurDimEffect");
                String str2 = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
                WindowManager.LayoutParams layoutParamsChanged2 = secNotificationShadeWindowControllerHelperImpl.getLayoutParamsChanged();
                layoutParamsChanged2.flags &= -3;
                layoutParamsChanged2.dimAmount = 0.0f;
                layoutParamsChanged2.samsungFlags &= -65;
            }
        }
        updateBiometricRecognition(z);
        updateOverlayUserTimeout(z);
    }

    public final void onViewModePageChanged(SemWallpaperColors semWallpaperColors) {
        int i;
        if (semWallpaperColors != null) {
            boolean z = true;
            if (semWallpaperColors.get(256L).getFontColor() != 1) {
                z = false;
            }
            ViewGroup viewGroup = this.this$0.notificationShadeView;
            if (viewGroup != null) {
                int systemUiVisibility = viewGroup.getSystemUiVisibility();
                if (z) {
                    i = systemUiVisibility | 16;
                } else {
                    i = systemUiVisibility & (-17);
                }
                viewGroup.setSystemUiVisibility(i);
            }
        }
    }

    public final void updateBiometricRecognition(boolean z) {
        SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = this.this$0;
        secNotificationShadeWindowControllerHelperImpl.powerManager.userActivity(SystemClock.uptimeMillis(), true);
        secNotificationShadeWindowControllerHelperImpl.keyguardUpdateMonitor.dispatchDlsBiometricMode(z);
    }

    public final void updateOverlayUserTimeout(boolean z) {
        String str = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
        SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = this.this$0;
        NotificationShadeWindowState currentState = secNotificationShadeWindowControllerHelperImpl.getCurrentState();
        currentState.userScreenTimeOut = z;
        secNotificationShadeWindowControllerHelperImpl.apply(currentState);
    }
}
