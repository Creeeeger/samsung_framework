package com.android.systemui.popup;

import android.app.ActivityTaskManager;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.RemoteException;
import android.view.accessibility.AccessibilityManager;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.shared.launcher.WindowManagerWrapper;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.PackageManagerWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SamsungScreenPinningRequest implements DialogInterface.OnClickListener, NavigationModeController.ModeChangedListener {
    public String mAppName;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final Context mContext;
    public AlertDialog mDialog;
    public boolean mIsExcluded;
    public final LogWrapper mLogWrapper;
    public int mTaskId;
    public boolean mTouchExplorationEnabled;
    public final AnonymousClass1 mPinWindowsReceiver = new BroadcastReceiver() { // from class: com.android.systemui.popup.SamsungScreenPinningRequest.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            AlertDialog alertDialog = SamsungScreenPinningRequest.this.mDialog;
            if (alertDialog != null && alertDialog.isShowing()) {
                SamsungScreenPinningRequest.this.clearPrompt();
            }
        }
    };
    public final ActivityManagerWrapper mActivityManagerWrapper = ActivityManagerWrapper.sInstance;
    public final PackageManagerWrapper mPackageManagerWrapper = PackageManagerWrapper.sInstance;
    public final WindowManagerWrapper mWindowManagerWrapper = WindowManagerWrapper.sInstance;
    public int mNavBarMode = ((NavigationModeController) Dependency.get(NavigationModeController.class)).addListener(this);

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.popup.SamsungScreenPinningRequest$1] */
    public SamsungScreenPinningRequest(Context context, LogWrapper logWrapper, BroadcastDispatcher broadcastDispatcher) {
        this.mContext = context;
        this.mLogWrapper = logWrapper;
        this.mBroadcastDispatcher = broadcastDispatcher;
    }

    public final void clearPrompt() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.mDialog = null;
            try {
                this.mBroadcastDispatcher.unregisterReceiver(this.mPinWindowsReceiver);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
    }

    public final void createDialog(int i, LinearLayout linearLayout) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext, 2132018528);
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    builder.setTitle(this.mContext.getString(R.string.lock_to_app_normal_title));
                    builder.setView(linearLayout);
                    builder.setPositiveButton(R.string.lock_to_app_positive, this);
                }
            } else {
                builder.setTitle(this.mContext.getString(R.string.lock_to_app_unable_to_pin_title, this.mAppName));
                builder.setMessage(R.string.lock_to_app_unable_to_pin_desc);
                builder.setNegativeButton(android.R.string.ok, this);
            }
        } else {
            builder.setTitle(R.string.lock_to_app_dex_title);
            builder.setMessage(R.string.lock_to_app_dex_desc);
            builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.android.systemui.popup.SamsungScreenPinningRequest$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    SamsungScreenPinningRequest.this.clearPrompt();
                }
            });
        }
        AlertDialog create = builder.create();
        this.mDialog = create;
        create.getWindow().getAttributes().setTitle("SamsungScreenPinningRequest");
        this.mDialog.getWindow().setType(2008);
        this.mDialog.getWindow().getAttributes().semAddPrivateFlags(16);
        this.mDialog.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        if (-1 == i) {
            if (!this.mIsExcluded && this.mActivityManagerWrapper.getRunningTask() != null) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                Context context = this.mContext;
                Toast.makeText(context, context.getString(R.string.lock_to_app_unable_to_pin_toast, this.mAppName), 0).show();
            } else {
                try {
                    ActivityTaskManager.getService().startSystemLockTaskMode(this.mTaskId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
        clearPrompt();
    }

    @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
    public final void onNavigationModeChanged(int i) {
        this.mNavBarMode = i;
    }

    public final boolean onTouchExplorationEnabled() {
        boolean z;
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.mContext.getSystemService("accessibility");
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            z = true;
        } else {
            z = false;
        }
        if (z && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        return false;
    }
}
