package com.android.systemui.statusbar.policy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface DeviceProvisionedController extends CallbackController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DeviceProvisionedListener {
        default void onUserSwitched() {
            onUserSetupChanged();
        }

        default void onDeviceProvisionedChanged() {
        }

        default void onFrpActiveChanged() {
        }

        default void onUserSetupChanged() {
        }
    }
}
