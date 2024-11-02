package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.hardware.display.DisplayManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DisplayManagerWrapper {
    private static final DisplayManagerWrapper sInstance = new DisplayManagerWrapper();
    private static final DisplayManager mDisplayManager = (DisplayManager) AppGlobals.getInitialApplication().getSystemService("display");

    private DisplayManagerWrapper() {
    }

    public static DisplayManagerWrapper getInstance() {
        return sInstance;
    }

    public void setBrightness(int i, float f) {
        mDisplayManager.setBrightness(i, f);
    }

    public void setTempBrightness(int i, float f) {
        mDisplayManager.setTemporaryBrightness(i, f);
    }
}
