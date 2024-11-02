package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.KeyguardManager;
import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardManagerCompat {
    private final KeyguardManager mKeyguardManager;

    public KeyguardManagerCompat(Context context) {
        this.mKeyguardManager = (KeyguardManager) context.getSystemService("keyguard");
    }

    public boolean isDeviceLocked(int i) {
        return this.mKeyguardManager.isDeviceLocked(i);
    }
}
