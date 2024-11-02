package com.android.systemui.keyguard.data.repository;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum BiometricType {
    UNKNOWN(false),
    REAR_FINGERPRINT(true),
    UNDER_DISPLAY_FINGERPRINT(true),
    SIDE_FINGERPRINT(true),
    FACE(false);

    private final boolean isFingerprint;

    BiometricType(boolean z) {
        this.isFingerprint = z;
    }

    public final boolean isFingerprint() {
        return this.isFingerprint;
    }
}
