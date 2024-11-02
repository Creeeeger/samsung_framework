package com.samsung.android.lib.galaxyfinder.search.util;

import com.samsung.android.util.SemLog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SearchLog {
    public static void d(String str, String str2) {
        try {
            SemLog.d("SamSearch_".concat(str), str2);
        } catch (Exception unused) {
        }
    }
}
