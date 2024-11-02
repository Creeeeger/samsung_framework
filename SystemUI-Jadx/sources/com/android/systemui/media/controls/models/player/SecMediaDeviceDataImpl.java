package com.android.systemui.media.controls.models.player;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecMediaDeviceDataImpl {
    public Integer deviceType;

    public SecMediaDeviceDataImpl(Integer num) {
        this.deviceType = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SecMediaDeviceDataImpl) && Intrinsics.areEqual(this.deviceType, ((SecMediaDeviceDataImpl) obj).deviceType)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.deviceType;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    public final String toString() {
        return "SecMediaDeviceDataImpl(deviceType=" + this.deviceType + ")";
    }
}
