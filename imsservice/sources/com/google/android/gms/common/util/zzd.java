package com.google.android.gms.common.util;

import android.content.Context;
import com.google.android.gms.internal.zzbih;

/* loaded from: classes.dex */
public final class zzd {
    public static boolean zzv(Context context, String str) {
        "com.google.android.gms".equals(str);
        return (zzbih.zzdd(context).getApplicationInfo(str, 0).flags & 2097152) != 0;
    }
}
