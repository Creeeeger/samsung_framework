package com.android.systemui.controls.ui;

import android.app.PendingIntent;
import com.android.systemui.controls.management.adapter.MainControlAdapter;
import com.android.systemui.controls.management.model.MainComponentModel;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomControlsUiControllerImpl$updateLaunchingAppButton$1 implements Runnable {
    public final /* synthetic */ PendingIntent $pendingIntent;
    public final /* synthetic */ CustomControlsUiControllerImpl this$0;

    public CustomControlsUiControllerImpl$updateLaunchingAppButton$1(CustomControlsUiControllerImpl customControlsUiControllerImpl, PendingIntent pendingIntent) {
        this.this$0 = customControlsUiControllerImpl;
        this.$pendingIntent = pendingIntent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        CustomControlsUiControllerImpl customControlsUiControllerImpl = this.this$0;
        PendingIntent pendingIntent = this.$pendingIntent;
        customControlsUiControllerImpl.launchingPendingIntent = pendingIntent;
        MainComponentModel mainComponentModel = customControlsUiControllerImpl.componentModel;
        if (pendingIntent != null) {
            z = true;
        } else {
            z = false;
        }
        mainComponentModel.showButton = z;
        int indexOf = ((ArrayList) customControlsUiControllerImpl.models).indexOf(mainComponentModel);
        MainControlAdapter mainControlAdapter = customControlsUiControllerImpl.controlAdapter;
        if (mainControlAdapter != null) {
            mainControlAdapter.notifyItemChanged(indexOf);
        }
    }
}
