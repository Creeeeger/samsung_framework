package com.android.systemui.shared.rotation;

import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.statusbar.phone.AutoHideController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FloatingRotationButton$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FloatingRotationButton f$0;

    public /* synthetic */ FloatingRotationButton$$ExternalSyntheticLambda0(FloatingRotationButton floatingRotationButton, int i) {
        this.$r8$classId = i;
        this.f$0 = floatingRotationButton;
    }

    @Override // java.lang.Runnable
    public final void run() {
        NavigationBarView.AnonymousClass2 anonymousClass2;
        switch (this.$r8$classId) {
            case 0:
                FloatingRotationButton floatingRotationButton = this.f$0;
                if (floatingRotationButton.mIsShowing && (anonymousClass2 = floatingRotationButton.mUpdatesCallback) != null) {
                    NavigationBarView navigationBarView = NavigationBarView.this;
                    AutoHideController autoHideController = navigationBarView.mAutoHideController;
                    if (autoHideController != null) {
                        autoHideController.touchAutoHide();
                    }
                    navigationBarView.notifyActiveTouchRegions();
                    return;
                }
                return;
            default:
                FloatingRotationButton floatingRotationButton2 = this.f$0;
                NavigationBarView.AnonymousClass2 anonymousClass22 = floatingRotationButton2.mUpdatesCallback;
                if (anonymousClass22 != null && floatingRotationButton2.mIsShowing) {
                    NavigationBarView.this.notifyActiveTouchRegions();
                    return;
                }
                return;
        }
    }
}
