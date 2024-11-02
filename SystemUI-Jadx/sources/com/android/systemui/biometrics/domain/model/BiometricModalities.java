package com.android.systemui.biometrics.domain.model;

import android.hardware.face.FaceSensorPropertiesInternal;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricModalities {
    public final FaceSensorPropertiesInternal faceProperties;
    public final FingerprintSensorPropertiesInternal fingerprintProperties;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public BiometricModalities() {
        /*
            r2 = this;
            r0 = 0
            r1 = 3
            r2.<init>(r0, r0, r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.domain.model.BiometricModalities.<init>():void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiometricModalities)) {
            return false;
        }
        BiometricModalities biometricModalities = (BiometricModalities) obj;
        if (Intrinsics.areEqual(this.fingerprintProperties, biometricModalities.fingerprintProperties) && Intrinsics.areEqual(this.faceProperties, biometricModalities.faceProperties)) {
            return true;
        }
        return false;
    }

    public final boolean getHasFaceAndFingerprint() {
        boolean z;
        boolean z2;
        if (this.fingerprintProperties != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.faceProperties != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal = this.fingerprintProperties;
        if (fingerprintSensorPropertiesInternal == null) {
            hashCode = 0;
        } else {
            hashCode = fingerprintSensorPropertiesInternal.hashCode();
        }
        int i2 = hashCode * 31;
        FaceSensorPropertiesInternal faceSensorPropertiesInternal = this.faceProperties;
        if (faceSensorPropertiesInternal != null) {
            i = faceSensorPropertiesInternal.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "BiometricModalities(fingerprintProperties=" + this.fingerprintProperties + ", faceProperties=" + this.faceProperties + ")";
    }

    public BiometricModalities(FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal, FaceSensorPropertiesInternal faceSensorPropertiesInternal) {
        this.fingerprintProperties = fingerprintSensorPropertiesInternal;
        this.faceProperties = faceSensorPropertiesInternal;
    }

    public /* synthetic */ BiometricModalities(FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal, FaceSensorPropertiesInternal faceSensorPropertiesInternal, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : fingerprintSensorPropertiesInternal, (i & 2) != 0 ? null : faceSensorPropertiesInternal);
    }
}
