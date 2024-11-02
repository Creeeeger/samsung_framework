package com.android.systemui.screenshot.sep;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.android.keyguard.KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.screenshot.ScreenshotController;
import com.android.systemui.screenshot.ScreenshotController$$ExternalSyntheticLambda2;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.multiwindow.MultiWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SnackbarController {
    public final DismissedCallback cb;
    public final Context context;
    public final int displayId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DismissedCallback {
    }

    public SnackbarController(Context context, int i, DismissedCallback dismissedCallback) {
        this.context = context;
        this.displayId = i;
        this.cb = dismissedCallback;
    }

    public final void showScreenshotError(final View view, SemScreenshotResult semScreenshotResult) {
        int i = semScreenshotResult.failedReason;
        int i2 = i & 32;
        boolean z = false;
        Context context = this.context;
        if (i2 != 0) {
            String string = context.getResources().getString(R.string.disallow_screenshots_security_flag_single_window);
            int multiWindowModeStates = new MultiWindowManager().getMultiWindowModeStates(this.displayId);
            if (multiWindowModeStates == 1 || multiWindowModeStates == 2) {
                z = true;
            }
            if (z) {
                string = context.getResources().getString(R.string.disallow_screenshots_security_flag_multi_window);
            }
            Snackbar make = Snackbar.make(view, string, -1);
            make.addCallback(new BaseTransientBottomBar.BaseCallback() { // from class: com.android.systemui.screenshot.sep.SnackbarController$showSnackBarSecurityFlag$1
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
                public final void onDismissed(Object obj) {
                    ((ScreenshotController$$ExternalSyntheticLambda2) SnackbarController.this.cb).f$0.detachSemScreenshotLayoutToWindow();
                    ScreenshotController.isSnackBarShowing = false;
                }
            });
            make.show();
            return;
        }
        if ((i & 64) != 0) {
            Snackbar make2 = Snackbar.make(view, context.getResources().getString(R.string.disallow_screenshots_mdm), -1);
            make2.setAction(context.getResources().getString(R.string.view_admin_apps), new View.OnClickListener() { // from class: com.android.systemui.screenshot.sep.SnackbarController$showSnackBarMdm$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SnackbarController snackbarController = SnackbarController.this;
                    Context context2 = view.getContext();
                    snackbarController.getClass();
                    Intent intent = new Intent();
                    intent.setFlags(872415232);
                    intent.setComponent(new ComponentName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.DeviceAdminSettings"));
                    try {
                        context2.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        KeyguardPluginControllerImpl$$ExternalSyntheticOutline0.m("goDeviceAdminSettings: message=", e.getMessage(), "SnackbarController");
                    } catch (IllegalArgumentException e2) {
                        KeyguardPluginControllerImpl$$ExternalSyntheticOutline0.m("goDeviceAdminSettings: message=", e2.getMessage(), "SnackbarController");
                    }
                }
            });
            make2.addCallback(new BaseTransientBottomBar.BaseCallback() { // from class: com.android.systemui.screenshot.sep.SnackbarController$showSnackBarMdm$2
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
                public final void onDismissed(Object obj) {
                    ((ScreenshotController$$ExternalSyntheticLambda2) SnackbarController.this.cb).f$0.detachSemScreenshotLayoutToWindow();
                    ScreenshotController.isSnackBarShowing = false;
                }
            });
            make2.show();
            return;
        }
        ((ScreenshotController$$ExternalSyntheticLambda2) this.cb).f$0.detachSemScreenshotLayoutToWindow();
        ScreenshotController.isSnackBarShowing = false;
    }
}
