package com.google.android.setupdesign.util;

import android.content.Context;
import com.google.android.setupcompat.util.Logger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ThemeHelper {
    public static final Logger LOG = new Logger("ThemeHelper");

    private ThemeHelper() {
    }

    public static String colorIntToHex(int i, Context context) {
        return String.format("#%06X", Integer.valueOf(context.getResources().getColor(i) & 16777215));
    }
}
