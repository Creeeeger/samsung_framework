package com.android.systemui.accessibility;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WindowMagnificationConnectionImpl f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5(WindowMagnificationConnectionImpl windowMagnificationConnectionImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = windowMagnificationConnectionImpl;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                WindowMagnificationConnectionImpl windowMagnificationConnectionImpl = this.f$0;
                MagnificationSettingsController magnificationSettingsController = (MagnificationSettingsController) windowMagnificationConnectionImpl.mWindowMagnification.mMagnificationSettingsSupplier.get(this.f$1);
                if (magnificationSettingsController != null) {
                    magnificationSettingsController.mContext.unregisterComponentCallbacks(magnificationSettingsController);
                    magnificationSettingsController.mWindowMagnificationSettings.hideSettingPanel(true);
                    return;
                }
                return;
            default:
                WindowMagnificationConnectionImpl windowMagnificationConnectionImpl2 = this.f$0;
                MagnificationModeSwitch magnificationModeSwitch = (MagnificationModeSwitch) windowMagnificationConnectionImpl2.mWindowMagnification.mModeSwitchesController.mSwitchSupplier.get(this.f$1);
                if (magnificationModeSwitch != null) {
                    magnificationModeSwitch.removeButton();
                    return;
                }
                return;
        }
    }
}
