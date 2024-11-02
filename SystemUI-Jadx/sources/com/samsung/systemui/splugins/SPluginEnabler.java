package com.samsung.systemui.splugins;

import android.content.ComponentName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface SPluginEnabler {
    public static final int DISABLED_FROM_EXPLICIT_CRASH = 2;
    public static final int DISABLED_FROM_SYSTEM_CRASH = 3;
    public static final int DISABLED_INVALID_VERSION = 1;
    public static final int DISABLED_MANUALLY = 1;
    public static final int ENABLED = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public @interface DisableReason {
    }

    int getDisableReason(ComponentName componentName);

    boolean isEnabled(ComponentName componentName);

    void setDisabled(ComponentName componentName, int i);

    void setEnabled(ComponentName componentName);
}
