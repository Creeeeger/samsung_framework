package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import com.android.internal.view.RotationPolicy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class RotationPolicyWrapper {
    private static final RotationPolicyWrapper sInstance = new RotationPolicyWrapper();

    private RotationPolicyWrapper() {
    }

    public static RotationPolicyWrapper getInstance() {
        return sInstance;
    }

    public void setRotationLock(boolean z) {
        RotationPolicy.setRotationLock(AppGlobals.getInitialApplication(), z);
    }
}
