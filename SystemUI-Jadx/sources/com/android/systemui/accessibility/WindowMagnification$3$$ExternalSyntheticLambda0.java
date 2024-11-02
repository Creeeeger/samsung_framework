package com.android.systemui.accessibility;

import android.os.RemoteException;
import android.util.Log;
import android.view.accessibility.IWindowMagnificationConnectionCallback;
import com.android.systemui.accessibility.WindowMagnification;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WindowMagnification$3$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WindowMagnification.AnonymousClass3 f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ WindowMagnification$3$$ExternalSyntheticLambda0(WindowMagnification.AnonymousClass3 anonymousClass3, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = anonymousClass3;
        this.f$1 = i;
        this.f$2 = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        IWindowMagnificationConnectionCallback iWindowMagnificationConnectionCallback;
        switch (this.$r8$classId) {
            case 0:
                WindowMagnification.AnonymousClass3 anonymousClass3 = this.f$0;
                int i = this.f$1;
                int i2 = this.f$2;
                WindowMagnification windowMagnification = WindowMagnification.this;
                boolean isActivated = ((WindowMagnificationController) windowMagnification.mMagnificationControllerSupplier.get(i)).isActivated();
                if (i2 == 2) {
                    z = true;
                } else {
                    z = false;
                }
                if (isActivated ^ z) {
                    MagnificationSettingsController magnificationSettingsController = (MagnificationSettingsController) windowMagnification.mMagnificationSettingsSupplier.get(i);
                    if (magnificationSettingsController != null) {
                        magnificationSettingsController.mContext.unregisterComponentCallbacks(magnificationSettingsController);
                        magnificationSettingsController.mWindowMagnificationSettings.hideSettingPanel(true);
                    }
                    WindowMagnificationConnectionImpl windowMagnificationConnectionImpl = windowMagnification.mWindowMagnificationConnectionImpl;
                    if (windowMagnificationConnectionImpl != null && (iWindowMagnificationConnectionCallback = windowMagnificationConnectionImpl.mConnectionCallback) != null) {
                        try {
                            iWindowMagnificationConnectionCallback.onChangeMagnificationMode(i, i2);
                            return;
                        } catch (RemoteException e) {
                            Log.e("WindowMagnificationConnectionImpl", "Failed to inform changing magnification mode", e);
                            return;
                        }
                    }
                    return;
                }
                return;
            default:
                WindowMagnification.AnonymousClass3 anonymousClass32 = this.f$0;
                int i3 = this.f$1;
                int i4 = this.f$2;
                WindowMagnificationController windowMagnificationController = (WindowMagnificationController) WindowMagnification.this.mMagnificationControllerSupplier.get(i3);
                if (windowMagnificationController != null) {
                    windowMagnificationController.changeMagnificationSize(i4);
                    return;
                }
                return;
        }
    }
}
