package com.android.systemui.controls.management;

import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.controls.management.ControlsListingController;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsListingControllerImpl$addCallback$1 implements Runnable {
    public final /* synthetic */ ControlsListingController.ControlsListingCallback $listener;
    public final /* synthetic */ ControlsListingControllerImpl this$0;

    public ControlsListingControllerImpl$addCallback$1(ControlsListingControllerImpl controlsListingControllerImpl, ControlsListingController.ControlsListingCallback controlsListingCallback) {
        this.this$0 = controlsListingControllerImpl;
        this.$listener = controlsListingCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.this$0.userChangeInProgress.get() > 0) {
            ControlsListingControllerImpl controlsListingControllerImpl = this.this$0;
            ControlsListingController.ControlsListingCallback controlsListingCallback = this.$listener;
            controlsListingControllerImpl.getClass();
            controlsListingControllerImpl.backgroundExecutor.execute(new ControlsListingControllerImpl$addCallback$1(controlsListingControllerImpl, controlsListingCallback));
            return;
        }
        List currentServices = this.this$0.getCurrentServices();
        ListPopupWindow$$ExternalSyntheticOutline0.m("Subscribing callback, service count: ", ((ArrayList) currentServices).size(), "ControlsListingControllerImpl");
        this.this$0.callbacks.add(this.$listener);
        this.$listener.onServicesUpdated(currentServices);
    }
}
