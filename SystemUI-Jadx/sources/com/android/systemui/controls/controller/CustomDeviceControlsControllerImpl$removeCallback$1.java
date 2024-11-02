package com.android.systemui.controls.controller;

import com.android.systemui.controls.management.ControlsListingController;
import com.android.systemui.controls.management.ControlsListingControllerImpl;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomDeviceControlsControllerImpl$removeCallback$1 implements Consumer {
    public final /* synthetic */ CustomDeviceControlsControllerImpl this$0;

    public CustomDeviceControlsControllerImpl$removeCallback$1(CustomDeviceControlsControllerImpl customDeviceControlsControllerImpl) {
        this.this$0 = customDeviceControlsControllerImpl;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((ControlsListingControllerImpl) ((ControlsListingController) obj)).removeCallback(this.this$0.listingCallback);
    }
}
