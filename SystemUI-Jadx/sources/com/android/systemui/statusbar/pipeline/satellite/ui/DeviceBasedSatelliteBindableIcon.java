package com.android.systemui.statusbar.pipeline.satellite.ui;

import android.content.Context;
import com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceBasedSatelliteBindableIcon {
    public final DeviceBasedSatelliteBindableIcon$initializer$1 initializer;
    public final String slot;

    public DeviceBasedSatelliteBindableIcon(Context context, DeviceBasedSatelliteViewModel deviceBasedSatelliteViewModel) {
        this.slot = context.getString(17042936);
        this.initializer = new DeviceBasedSatelliteBindableIcon$initializer$1(this, deviceBasedSatelliteViewModel);
    }
}
