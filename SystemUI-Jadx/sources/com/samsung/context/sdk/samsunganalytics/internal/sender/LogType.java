package com.samsung.context.sdk.samsunganalytics.internal.sender;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum LogType {
    DEVICE("dvc"),
    UIX("uix");

    String abbrev;

    LogType(String str) {
        this.abbrev = str;
    }

    public final String getAbbrev() {
        return this.abbrev;
    }
}
