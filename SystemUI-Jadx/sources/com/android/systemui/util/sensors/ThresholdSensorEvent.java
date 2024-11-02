package com.android.systemui.util.sensors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ThresholdSensorEvent {
    public final boolean mBelow;
    public final long mTimestampNs;

    public ThresholdSensorEvent(boolean z, long j) {
        this.mBelow = z;
        this.mTimestampNs = j;
    }

    public final String toString() {
        return String.format(null, "{near=%s, timestamp_ns=%d}", Boolean.valueOf(this.mBelow), Long.valueOf(this.mTimestampNs));
    }
}
