package com.android.systemui.biometrics.domain.model;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BiometricModalityKt {
    public static final BiometricModality asBiometricModality(int i) {
        if (i != 2) {
            if (i != 8) {
                return BiometricModality.None;
            }
            return BiometricModality.Face;
        }
        return BiometricModality.Fingerprint;
    }
}
