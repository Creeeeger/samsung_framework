package com.samsung.android.biometrics.app.setting.credential;

import android.app.StatusBarManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.UserHandle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.android.internal.annotations.VisibleForTesting;
import com.samsung.android.biometrics.app.setting.DisplayStateManager$Injector$$ExternalSyntheticOutline0;
import com.samsung.android.biometrics.app.setting.FocusableWindow;
import com.samsung.android.biometrics.app.setting.R;
import com.samsung.android.biometrics.app.setting.SysUiWindow;
import com.samsung.android.biometrics.app.setting.Utils;
import com.samsung.android.biometrics.app.setting.prompt.PromptConfig;

/* loaded from: classes.dex */
public class AuthCredentialWindow extends FocusableWindow {
    private AuthCredentialView mCredentialView;
    private final FrameLayout mFrameLayout;
    private final PromptConfig mPromptConfig;
    private BroadcastReceiver mScreenOffBR;

    public AuthCredentialWindow(Context context, PromptConfig promptConfig) {
        super(context);
        this.mPromptConfig = promptConfig;
        View inflate = getLayoutInflater().inflate(R.layout.biometric_prompt_auth_container_view, (ViewGroup) null);
        this.mBaseView = inflate;
        this.mFrameLayout = (FrameLayout) inflate.findViewById(R.id.id_prompt_auth_container_layout);
        setCredentialView();
        View view = this.mBaseView;
        if (view != null) {
            view.setOnKeyListener(this.mCredentialView);
        }
        this.mBaseView.setFocusableInTouchMode(true);
        this.mBaseView.requestFocus();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f A[Catch: Exception -> 0x0082, TryCatch #0 {Exception -> 0x0082, blocks: (B:3:0x0009, B:9:0x001b, B:10:0x002c, B:12:0x002d, B:14:0x004b, B:16:0x004f, B:17:0x0054, B:21:0x0070, B:23:0x0077, B:26:0x0035, B:28:0x003d), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077 A[Catch: Exception -> 0x0082, TRY_LEAVE, TryCatch #0 {Exception -> 0x0082, blocks: (B:3:0x0009, B:9:0x001b, B:10:0x002c, B:12:0x002d, B:14:0x004b, B:16:0x004f, B:17:0x0054, B:21:0x0070, B:23:0x0077, B:26:0x0035, B:28:0x003d), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void setCredentialView() {
        /*
            r12 = this;
            java.lang.String r0 = "Unknown credential type: "
            java.lang.String r1 = "setCredentialView"
            java.lang.String r2 = "BSS_SysUiWindow.C"
            android.util.Log.d(r2, r1)
            com.samsung.android.biometrics.app.setting.prompt.PromptConfig r1 = r12.mPromptConfig     // Catch: java.lang.Exception -> L82
            int r1 = r1.getCredentialType()     // Catch: java.lang.Exception -> L82
            r3 = 3
            r4 = 1
            r5 = 0
            r6 = 0
            if (r1 == r4) goto L35
            r7 = 2
            if (r1 == r7) goto L2d
            if (r1 != r3) goto L1b
            goto L35
        L1b:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L82
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L82
            r3.<init>(r0)     // Catch: java.lang.Exception -> L82
            r3.append(r1)     // Catch: java.lang.Exception -> L82
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Exception -> L82
            r12.<init>(r0)     // Catch: java.lang.Exception -> L82
            throw r12     // Catch: java.lang.Exception -> L82
        L2d:
            int r0 = r12.getPatternLayoutId()     // Catch: java.lang.Exception -> L82
        L31:
            r8 = r5
            r9 = r8
            r7 = r6
            goto L4b
        L35:
            int r0 = r12.getPasswordLayoutId()     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r7 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            if (r7 == 0) goto L31
            java.lang.String r7 = r7.getPassword()     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r8 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            int r8 = r8.getSelection()     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r9 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            boolean r9 = r9.mIsPasswordShown     // Catch: java.lang.Exception -> L82
        L4b:
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r10 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            if (r10 == 0) goto L54
            android.widget.FrameLayout r11 = r12.mFrameLayout     // Catch: java.lang.Exception -> L82
            r11.removeView(r10)     // Catch: java.lang.Exception -> L82
        L54:
            android.view.LayoutInflater r10 = r12.getLayoutInflater()     // Catch: java.lang.Exception -> L82
            android.view.View r0 = r10.inflate(r0, r6, r5)     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r0 = (com.samsung.android.biometrics.app.setting.credential.AuthCredentialView) r0     // Catch: java.lang.Exception -> L82
            r12.mCredentialView = r0     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.prompt.PromptConfig r5 = r12.mPromptConfig     // Catch: java.lang.Exception -> L82
            r0.setPromptConfig(r5)     // Catch: java.lang.Exception -> L82
            android.widget.FrameLayout r0 = r12.mFrameLayout     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r5 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            r0.addView(r5)     // Catch: java.lang.Exception -> L82
            if (r1 == r4) goto L70
            if (r1 != r3) goto L98
        L70:
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r0 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            r0.setPasswordShown(r9)     // Catch: java.lang.Exception -> L82
            if (r7 == 0) goto L98
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r0 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            r0.setPassword(r7)     // Catch: java.lang.Exception -> L82
            com.samsung.android.biometrics.app.setting.credential.AuthCredentialView r12 = r12.mCredentialView     // Catch: java.lang.Exception -> L82
            r12.setSelection(r8)     // Catch: java.lang.Exception -> L82
            goto L98
        L82:
            r12 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "AuthCredentialWindow: "
            r0.<init>(r1)
            java.lang.String r1 = r12.getMessage()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.util.Log.w(r2, r0, r12)
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.credential.AuthCredentialWindow.setCredentialView():void");
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow, com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void addView() {
        super.addView();
        if (this.mScreenOffBR == null) {
            this.mScreenOffBR = new BroadcastReceiver() { // from class: com.samsung.android.biometrics.app.setting.credential.AuthCredentialWindow.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction()) || ((SysUiWindow) AuthCredentialWindow.this).mBaseView == null) {
                        return;
                    }
                    AuthCredentialWindow.this.mPromptConfig.getCallback().onUserCancel(6);
                }
            };
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                getContext().registerReceiverAsUser(this.mScreenOffBR, UserHandle.ALL, intentFilter, null, this.mH);
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("registerBroadcastReceiver: "), "BSS_SysUiWindow.C");
            }
        }
        StatusBarManager statusBarManager = getStatusBarManager();
        if (statusBarManager != null) {
            statusBarManager.disable(18874368);
        }
    }

    @VisibleForTesting
    protected AuthCredentialView getCredentialView() {
        return this.mCredentialView;
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final WindowManager.LayoutParams getLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, 2017, !Utils.isTpaMode(getContext()) ? 16785410 : 16777218, -3);
        layoutParams.privateFlags |= 16;
        layoutParams.dimAmount = 0.6f;
        layoutParams.softInputMode |= 16;
        return layoutParams;
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow, com.samsung.android.biometrics.app.setting.SysUiWindow
    public final String getLogTag() {
        return "BSS_SysUiWindow.C";
    }

    protected int getPasswordLayoutId() {
        return Utils.isApplyingTabletGUI(getContext()) ? Utils.isScreenLandscape(getContext()) ? R.layout.biometric_prompt_credential_password_tablet_landscape : R.layout.biometric_prompt_credential_password_tablet : R.layout.biometric_prompt_credential_password;
    }

    protected int getPatternLayoutId() {
        return Utils.isApplyingTabletGUI(getContext()) ? Utils.isScreenLandscape(getContext()) ? R.layout.biometric_prompt_credential_pattern_tablet_landscape : R.layout.biometric_prompt_credential_pattern_tablet : R.layout.biometric_prompt_credential_pattern;
    }

    @VisibleForTesting
    protected StatusBarManager getStatusBarManager() {
        return (StatusBarManager) getContext().getSystemService("statusbar");
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void onConfigurationChanged(Configuration configuration) {
        setCredentialView();
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow
    protected final void onFocusLost() {
        this.mPromptConfig.getCallback().onUserCancel(1);
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow
    protected final void onSystemDialogClosed() {
        this.mPromptConfig.getCallback().onUserCancel(4);
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow, com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void removeView() {
        super.removeView();
        if (this.mScreenOffBR != null) {
            try {
                getContext().unregisterReceiver(this.mScreenOffBR);
                this.mScreenOffBR = null;
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("unregisterBroadcastReceiver: "), "BSS_SysUiWindow.C");
            }
        }
        StatusBarManager statusBarManager = getStatusBarManager();
        if (statusBarManager != null) {
            statusBarManager.disable(0);
        }
    }
}
