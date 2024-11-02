package com.google.android.setupcompat.util;

import android.os.Build;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BuildCompatUtils {
    private BuildCompatUtils() {
    }

    public static boolean isAtLeastU() {
        boolean z;
        String str = Build.VERSION.CODENAME;
        if (str.equals("REL")) {
            return true;
        }
        if (!str.equals("REL") && str.compareTo("UpsideDownCake") >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return false;
    }
}
