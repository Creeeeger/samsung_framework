package com.android.wm.shell.onehanded;

import android.os.SystemProperties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface OneHanded {
    public static final boolean sIsSupportOneHandedMode = SystemProperties.getBoolean("ro.support_one_handed_mode", false);
}
