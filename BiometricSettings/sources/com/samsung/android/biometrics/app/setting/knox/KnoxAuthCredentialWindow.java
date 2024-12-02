package com.samsung.android.biometrics.app.setting.knox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.UserHandle;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.samsung.android.biometrics.app.setting.DisplayStateManager$Injector$$ExternalSyntheticOutline0;
import com.samsung.android.biometrics.app.setting.FocusableWindow;
import com.samsung.android.biometrics.app.setting.SysUiWindow;
import com.samsung.android.biometrics.app.setting.prompt.PromptConfig;

/* loaded from: classes.dex */
public final class KnoxAuthCredentialWindow extends FocusableWindow {
    private KnoxAuthCredentialView mCredentialView;
    private FrameLayout mFrameLayout;
    private final KnoxSysUiClientHelper mHelper;
    private final PromptConfig mPromptConfig;
    private BroadcastReceiver mScreenOffBR;

    /* JADX WARN: Removed duplicated region for block: B:18:0x007f A[Catch: Exception -> 0x0091, TryCatch #0 {Exception -> 0x0091, blocks: (B:3:0x0013, B:11:0x0035, B:12:0x003b, B:13:0x004c, B:15:0x004d, B:16:0x0064, B:18:0x007f, B:19:0x0086, B:21:0x0059), top: B:2:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public KnoxAuthCredentialWindow(android.content.Context r8, com.samsung.android.biometrics.app.setting.prompt.PromptConfig r9, com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper r10) {
        /*
            r7 = this;
            java.lang.String r0 = "BSS_SysUiWindow.K"
            java.lang.String r1 = "Unknown credential type: "
            r7.<init>(r8)
            r7.mPromptConfig = r9
            r7.mHelper = r10
            android.view.LayoutInflater r8 = r7.getLayoutInflater()
            r2 = 2131558459(0x7f0d003b, float:1.8742234E38)
            r3 = 0
            android.view.View r2 = r8.inflate(r2, r3)     // Catch: java.lang.Exception -> L91
            r7.mBaseView = r2     // Catch: java.lang.Exception -> L91
            r4 = 2131362040(0x7f0a00f8, float:1.834385E38)
            android.view.View r2 = r2.findViewById(r4)     // Catch: java.lang.Exception -> L91
            android.widget.FrameLayout r2 = (android.widget.FrameLayout) r2     // Catch: java.lang.Exception -> L91
            r7.mFrameLayout = r2     // Catch: java.lang.Exception -> L91
            int r2 = r9.getCredentialType()     // Catch: java.lang.Exception -> L91
            r4 = 0
            r5 = 1
            if (r2 == r5) goto L59
            r6 = 2
            if (r2 == r6) goto L4d
            r6 = 3
            if (r2 == r6) goto L59
            r6 = 6
            if (r2 != r6) goto L3b
            java.lang.String r1 = "KnoxAuthCredentialView: UCMKeyguardEnabled"
            android.util.Log.i(r0, r1)     // Catch: java.lang.Exception -> L91
            goto L59
        L3b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L91
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L91
            r8.<init>(r1)     // Catch: java.lang.Exception -> L91
            r8.append(r2)     // Catch: java.lang.Exception -> L91
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> L91
            r7.<init>(r8)     // Catch: java.lang.Exception -> L91
            throw r7     // Catch: java.lang.Exception -> L91
        L4d:
            r1 = 2131558461(0x7f0d003d, float:1.8742238E38)
            android.view.View r8 = r8.inflate(r1, r3, r4)     // Catch: java.lang.Exception -> L91
            com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView r8 = (com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView) r8     // Catch: java.lang.Exception -> L91
            r7.mCredentialView = r8     // Catch: java.lang.Exception -> L91
            goto L64
        L59:
            r1 = 2131558460(0x7f0d003c, float:1.8742236E38)
            android.view.View r8 = r8.inflate(r1, r3, r4)     // Catch: java.lang.Exception -> L91
            com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView r8 = (com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView) r8     // Catch: java.lang.Exception -> L91
            r7.mCredentialView = r8     // Catch: java.lang.Exception -> L91
        L64:
            android.view.View r8 = r7.mBaseView     // Catch: java.lang.Exception -> L91
            com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView r8 = r10.changeCredentialViewIfNeeded(r8)     // Catch: java.lang.Exception -> L91
            r7.mCredentialView = r8     // Catch: java.lang.Exception -> L91
            r8.setPromptConfig(r9)     // Catch: java.lang.Exception -> L91
            com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView r8 = r7.mCredentialView     // Catch: java.lang.Exception -> L91
            r8.setKnoxClientHelper(r10)     // Catch: java.lang.Exception -> L91
            android.widget.FrameLayout r8 = r7.mFrameLayout     // Catch: java.lang.Exception -> L91
            com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView r9 = r7.mCredentialView     // Catch: java.lang.Exception -> L91
            r8.addView(r9)     // Catch: java.lang.Exception -> L91
            android.view.View r8 = r7.mBaseView     // Catch: java.lang.Exception -> L91
            if (r8 == 0) goto L86
            com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialView r9 = r7.mCredentialView     // Catch: java.lang.Exception -> L91
            android.view.View$OnKeyListener r9 = r9.mOnKeyListener     // Catch: java.lang.Exception -> L91
            r8.setOnKeyListener(r9)     // Catch: java.lang.Exception -> L91
        L86:
            android.view.View r8 = r7.mBaseView     // Catch: java.lang.Exception -> L91
            r8.setFocusableInTouchMode(r5)     // Catch: java.lang.Exception -> L91
            android.view.View r7 = r7.mBaseView     // Catch: java.lang.Exception -> L91
            r7.requestFocus()     // Catch: java.lang.Exception -> L91
            goto La7
        L91:
            r7 = move-exception
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "KnoxAuthCredentialWindow: "
            r8.<init>(r9)
            java.lang.String r9 = r7.getMessage()
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            android.util.Log.w(r0, r8, r7)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialWindow.<init>(android.content.Context, com.samsung.android.biometrics.app.setting.prompt.PromptConfig, com.samsung.android.biometrics.app.setting.knox.KnoxSysUiClientHelper):void");
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow, com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void addView() {
        super.addView();
        if (this.mScreenOffBR == null) {
            this.mScreenOffBR = new BroadcastReceiver() { // from class: com.samsung.android.biometrics.app.setting.knox.KnoxAuthCredentialWindow.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction()) || ((SysUiWindow) KnoxAuthCredentialWindow.this).mBaseView == null) {
                        return;
                    }
                    KnoxAuthCredentialWindow.this.mPromptConfig.getCallback().onUserCancel(6);
                }
            };
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                getContext().registerReceiverAsUser(this.mScreenOffBR, UserHandle.ALL, intentFilter, null, this.mH);
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("registerBroadcastReceiver: "), "BSS_SysUiWindow.K");
            }
        }
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final WindowManager.LayoutParams getLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2017, 16785408, -3);
        layoutParams.privateFlags |= 16;
        layoutParams.setFitInsetsTypes(layoutParams.getFitInsetsTypes() & (~WindowInsets.Type.statusBars()));
        this.mHelper.modifyLayoutParamsIfNeeded(layoutParams);
        return layoutParams;
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow, com.samsung.android.biometrics.app.setting.SysUiWindow
    public final String getLogTag() {
        return "BSS_SysUiWindow.K";
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void onConfigurationChanged(Configuration configuration) {
        if (!this.mPromptConfig.isKnoxProfile()) {
            KnoxAuthCredentialView knoxAuthCredentialView = this.mCredentialView;
            if (knoxAuthCredentialView != null) {
                knoxAuthCredentialView.onConfigurationChanged(configuration);
                return;
            }
            return;
        }
        this.mFrameLayout.removeView(this.mCredentialView);
        KnoxAuthCredentialView changeCredentialViewIfNeeded = this.mHelper.changeCredentialViewIfNeeded(this.mBaseView);
        this.mCredentialView = changeCredentialViewIfNeeded;
        changeCredentialViewIfNeeded.setPromptConfig(this.mPromptConfig);
        this.mCredentialView.setKnoxClientHelper(this.mHelper);
        this.mFrameLayout.addView(this.mCredentialView);
        this.mHelper.onConfigurationChanged();
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow
    protected final void onFocusLost() {
        if (this.mHelper.isForgotbtnDialogShowing()) {
            return;
        }
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
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("unregisterBroadcastReceiver: "), "BSS_SysUiWindow.K");
            }
        }
    }
}
