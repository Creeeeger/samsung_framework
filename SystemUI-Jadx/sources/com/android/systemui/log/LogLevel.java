package com.android.systemui.log;

import com.sec.ims.settings.ImsProfile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum LogLevel {
    VERBOSE(2, "V"),
    DEBUG(3, ImsProfile.TIMER_NAME_D),
    INFO(4, ImsProfile.TIMER_NAME_I),
    WARNING(5, "W"),
    ERROR(6, ImsProfile.TIMER_NAME_E),
    WTF(7, "WTF");

    private final int nativeLevel;
    private final String shortString;

    LogLevel(int i, String str) {
        this.nativeLevel = i;
        this.shortString = str;
    }

    public final int getNativeLevel() {
        return this.nativeLevel;
    }

    public final String getShortString() {
        return this.shortString;
    }
}
