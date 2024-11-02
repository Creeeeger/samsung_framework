package com.android.systemui.globalactions;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.settingslib.Utils;
import com.android.systemui.R;
import com.android.systemui.globalactions.presentation.view.SamsungGlobalActionsDialog;
import com.android.systemui.plugins.GlobalActions;
import com.android.systemui.scrim.ScrimDrawable;
import com.android.systemui.statusbar.BlurUtils;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GlobalActionsImpl implements GlobalActions, CommandQueue.Callbacks {
    public final BlurUtils mBlurUtils;
    public final CommandQueue mCommandQueue;
    public final Context mContext;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public boolean mDisabled;
    public final KeyguardStateController mKeyguardStateController;
    public SamsungGlobalActionsDialog mSamsungGlobalActionsDialog;

    public GlobalActionsImpl(Context context, CommandQueue commandQueue, Lazy lazy, BlurUtils blurUtils, KeyguardStateController keyguardStateController, DeviceProvisionedController deviceProvisionedController) {
        this.mContext = context;
        this.mKeyguardStateController = keyguardStateController;
        this.mDeviceProvisionedController = deviceProvisionedController;
        this.mCommandQueue = commandQueue;
        this.mBlurUtils = blurUtils;
        commandQueue.addCallback((CommandQueue.Callbacks) this);
    }

    @Override // com.android.systemui.plugins.GlobalActions
    public final void destroy() {
        this.mCommandQueue.removeCallback((CommandQueue.Callbacks) this);
        throw null;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void disable(int i, int i2, int i3, boolean z) {
        boolean z2;
        SamsungGlobalActionsDialog samsungGlobalActionsDialog;
        if ((i3 & 8) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (i == this.mContext.getDisplayId() && z2 != this.mDisabled) {
            this.mDisabled = z2;
            if (z2 && (samsungGlobalActionsDialog = this.mSamsungGlobalActionsDialog) != null) {
                samsungGlobalActionsDialog.dismiss();
                this.mSamsungGlobalActionsDialog = null;
            }
        }
    }

    @Override // com.android.systemui.plugins.GlobalActions
    public final void showGlobalActions(GlobalActions.GlobalActionsManager globalActionsManager) {
        showGlobalActions(globalActionsManager, -1);
    }

    @Override // com.android.systemui.plugins.GlobalActions
    public final void showShutdownUi(boolean z, String str) {
        int color;
        int i;
        String str2;
        final ScrimDrawable scrimDrawable = new ScrimDrawable();
        Context context = this.mContext;
        final Dialog dialog = new Dialog(context, 2132018531);
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.systemui.globalactions.GlobalActionsImpl$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                GlobalActionsImpl globalActionsImpl = GlobalActionsImpl.this;
                ScrimDrawable scrimDrawable2 = scrimDrawable;
                Dialog dialog2 = dialog;
                BlurUtils blurUtils = globalActionsImpl.mBlurUtils;
                if (blurUtils.supportsBlursOnWindows()) {
                    scrimDrawable2.setAlpha(255);
                    blurUtils.applyBlur(dialog2.getWindow().getDecorView().getViewRootImpl(), (int) blurUtils.blurRadiusOfRatio(1.0f), true);
                } else {
                    scrimDrawable2.setAlpha((int) (globalActionsImpl.mContext.getResources().getFloat(R.dimen.shutdown_scrim_behind_alpha) * 255.0f));
                }
            }
        });
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.getAttributes().systemUiVisibility |= 1792;
        window.getDecorView();
        window.getAttributes().width = -1;
        window.getAttributes().height = -1;
        window.getAttributes().layoutInDisplayCutoutMode = 3;
        window.setType(2020);
        window.getAttributes().setFitInsetsTypes(0);
        window.clearFlags(2);
        window.addFlags(17629472);
        window.setBackgroundDrawable(scrimDrawable);
        window.setWindowAnimations(2132017169);
        dialog.setContentView(17367423);
        dialog.setCancelable(false);
        if (this.mBlurUtils.supportsBlursOnWindows()) {
            color = Utils.getColorAttrDefaultColor(R.attr.wallpaperTextColor, context, 0);
        } else {
            color = context.getResources().getColor(R.color.global_actions_shutdown_ui_text);
        }
        ((ProgressBar) dialog.findViewById(android.R.id.progress)).getIndeterminateDrawable().setTint(color);
        TextView textView = (TextView) dialog.findViewById(android.R.id.text1);
        TextView textView2 = (TextView) dialog.findViewById(android.R.id.text2);
        textView.setTextColor(color);
        textView2.setTextColor(color);
        if (str != null && str.startsWith("recovery-update")) {
            i = 17042369;
        } else if ((str != null && str.equals("recovery")) || z) {
            i = 17042365;
        } else {
            i = 17042825;
        }
        textView2.setText(i);
        if (str != null && str.startsWith("recovery-update")) {
            str2 = context.getString(17042370);
        } else if (str != null && str.equals("recovery")) {
            str2 = context.getString(17042366);
        } else {
            str2 = null;
        }
        if (str2 != null) {
            textView.setVisibility(0);
            textView.setText(str2);
        }
        dialog.show();
    }

    @Override // com.android.systemui.plugins.GlobalActions
    public final void showGlobalActions(GlobalActions.GlobalActionsManager globalActionsManager, int i) {
        if (this.mDisabled) {
            return;
        }
        if (this.mSamsungGlobalActionsDialog == null) {
            this.mSamsungGlobalActionsDialog = new SamsungGlobalActionsDialog(this.mContext, globalActionsManager);
        }
        this.mSamsungGlobalActionsDialog.show(((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing, ((DeviceProvisionedControllerImpl) this.mDeviceProvisionedController).isDeviceProvisioned(), false, i);
    }
}
