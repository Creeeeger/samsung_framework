package com.samsung.context.sdk.samsunganalytics.internal.connection;

import android.os.Build;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Domain {
    public static final /* synthetic */ Domain[] $VALUES;
    public static final Domain DLS;
    public static final Domain POLICY;
    public static final Domain REGISTRATION;
    String domain;

    static {
        String str;
        String str2 = Build.TYPE;
        if (str2.equals("eng")) {
            str = "https://stg-api.di.atlas.samsung.com";
        } else {
            str = "https://regi.di.atlas.samsung.com";
        }
        Domain domain = new Domain("REGISTRATION", 0, str);
        REGISTRATION = domain;
        Domain domain2 = new Domain("POLICY", 1, str2.equals("eng") ? "https://stg-api.di.atlas.samsung.com" : "https://dc.di.atlas.samsung.com");
        POLICY = domain2;
        Domain domain3 = new Domain("DLS", 2, "");
        DLS = domain3;
        $VALUES = new Domain[]{domain, domain2, domain3};
    }

    private Domain(String str, int i, String str2) {
        this.domain = str2;
    }

    public static Domain valueOf(String str) {
        return (Domain) Enum.valueOf(Domain.class, str);
    }

    public static Domain[] values() {
        return (Domain[]) $VALUES.clone();
    }

    public final void setDomain(String str) {
        this.domain = str;
    }
}
