package com.android.systemui.util;

import android.content.res.Resources;
import android.util.PluralsMessageFormatter;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class PluralMessageFormaterKt {
    public static final String icuMessageFormat(Resources resources, int i, int i2) {
        return PluralsMessageFormatter.format(resources, MapsKt__MapsJVMKt.mapOf(new Pair("count", Integer.valueOf(i2))), i);
    }
}
