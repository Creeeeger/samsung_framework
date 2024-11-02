package com.android.systemui.accessibility;

import com.android.systemui.accessibility.WindowMagnification;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WindowMagnification$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ WindowMagnification$$ExternalSyntheticLambda2(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        byte b = 0;
        switch (this.$r8$classId) {
            case 0:
                WindowMagnification windowMagnification = (WindowMagnification) this.f$0;
                int i = this.f$1;
                WindowMagnification.AnonymousClass3 anonymousClass3 = (WindowMagnification.AnonymousClass3) windowMagnification.mMagnificationSettingsControllerCallback;
                WindowMagnification.this.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda0(anonymousClass3, i, 2, b == true ? 1 : 0));
                return;
            default:
                MagnificationSettingsController magnificationSettingsController = (MagnificationSettingsController) WindowMagnification.this.mMagnificationSettingsSupplier.get(this.f$1);
                if (magnificationSettingsController != null) {
                    if (!magnificationSettingsController.mWindowMagnificationSettings.mIsVisible) {
                        magnificationSettingsController.onConfigurationChanged(magnificationSettingsController.mContext.getResources().getConfiguration());
                        magnificationSettingsController.mContext.registerComponentCallbacks(magnificationSettingsController);
                    }
                    WindowMagnificationSettings windowMagnificationSettings = magnificationSettingsController.mWindowMagnificationSettings;
                    if (windowMagnificationSettings.mSecureSettings.getIntForUser(1, -2, "accessibility_allow_diagonal_scrolling") == 1) {
                        z = true;
                    }
                    windowMagnificationSettings.mAllowDiagonalScrollingSwitch.setChecked(z);
                    windowMagnificationSettings.showSettingPanel(true);
                    return;
                }
                return;
        }
    }
}
