package com.google.android.gms.internal;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzflq {
    protected static final Charset UTF_8 = Charset.forName("UTF-8");
    private static Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Object zzpvt = new Object();

    public static void zza(zzflm zzflmVar, zzflm zzflmVar2) {
        zzflo zzfloVar = zzflmVar.zzpvl;
        if (zzfloVar != null) {
            zzflmVar2.zzpvl = (zzflo) zzfloVar.clone();
        }
    }
}
