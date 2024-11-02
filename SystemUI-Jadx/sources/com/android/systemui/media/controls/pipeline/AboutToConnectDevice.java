package com.android.systemui.media.controls.pipeline;

import com.android.settingslib.media.MediaDevice;
import com.android.systemui.media.controls.models.player.MediaDeviceData;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AboutToConnectDevice {
    public final MediaDeviceData backupMediaDeviceData;
    public final MediaDevice fullMediaDevice;

    public AboutToConnectDevice() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AboutToConnectDevice)) {
            return false;
        }
        AboutToConnectDevice aboutToConnectDevice = (AboutToConnectDevice) obj;
        if (Intrinsics.areEqual(this.fullMediaDevice, aboutToConnectDevice.fullMediaDevice) && Intrinsics.areEqual(this.backupMediaDeviceData, aboutToConnectDevice.backupMediaDeviceData)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        MediaDevice mediaDevice = this.fullMediaDevice;
        if (mediaDevice == null) {
            hashCode = 0;
        } else {
            hashCode = mediaDevice.hashCode();
        }
        int i2 = hashCode * 31;
        MediaDeviceData mediaDeviceData = this.backupMediaDeviceData;
        if (mediaDeviceData != null) {
            i = mediaDeviceData.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "AboutToConnectDevice(fullMediaDevice=" + this.fullMediaDevice + ", backupMediaDeviceData=" + this.backupMediaDeviceData + ")";
    }

    public AboutToConnectDevice(MediaDevice mediaDevice, MediaDeviceData mediaDeviceData) {
        this.fullMediaDevice = mediaDevice;
        this.backupMediaDeviceData = mediaDeviceData;
    }

    public /* synthetic */ AboutToConnectDevice(MediaDevice mediaDevice, MediaDeviceData mediaDeviceData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : mediaDevice, (i & 2) != 0 ? null : mediaDeviceData);
    }
}
