package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.app.UiModeManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class UiModeManagerWrapper {
    private static final UiModeManagerWrapper sInstance = new UiModeManagerWrapper();
    private static final UiModeManager mUiModeManager = (UiModeManager) AppGlobals.getInitialApplication().getSystemService(UiModeManager.class);

    private UiModeManagerWrapper() {
    }

    public static UiModeManagerWrapper getInstance() {
        return sInstance;
    }

    public void setNightModeActivated(boolean z) {
        mUiModeManager.setNightModeActivated(z);
    }
}
