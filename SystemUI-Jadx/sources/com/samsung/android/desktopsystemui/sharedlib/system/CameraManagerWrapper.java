package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CameraManagerWrapper {
    private static final CameraManagerWrapper sInstance = new CameraManagerWrapper();
    private static final CameraManager mCameraManager = (CameraManager) AppGlobals.getInitialApplication().getSystemService("camera");

    private CameraManagerWrapper() {
    }

    public static CameraManagerWrapper getInstance() {
        return sInstance;
    }

    public void setTorchMode(String str, boolean z, int i) {
        try {
            mCameraManager.setTorchMode(str, z);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }
}
