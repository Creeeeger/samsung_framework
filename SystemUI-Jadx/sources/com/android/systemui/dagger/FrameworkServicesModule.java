package com.android.systemui.dagger;

import android.content.Context;
import android.hardware.biometrics.BiometricManager;
import android.hardware.face.FaceManager;
import android.hardware.fingerprint.FingerprintManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FrameworkServicesModule {
    public static FaceManager provideFaceManager(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.biometrics.face")) {
            return (FaceManager) context.getSystemService(FaceManager.class);
        }
        return null;
    }

    public static BiometricManager providesBiometricManager(Context context, FaceManager faceManager, FingerprintManager fingerprintManager) {
        if (faceManager == null && fingerprintManager == null) {
            return null;
        }
        return (BiometricManager) context.getSystemService(BiometricManager.class);
    }

    public static FingerprintManager providesFingerprintManager(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
            return (FingerprintManager) context.getSystemService(FingerprintManager.class);
        }
        return null;
    }
}
