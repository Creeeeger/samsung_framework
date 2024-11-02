package com.android.keyguard.logging;

import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogMessage;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract /* synthetic */ class CarrierTextManagerLogger$$ExternalSyntheticOutline0 {
    public static void m(LogMessage logMessage, String str, String str2, LogBuffer logBuffer, LogMessage logMessage2) {
        logMessage.setStr1(str);
        logMessage.setStr2(str2);
        logBuffer.commit(logMessage2);
    }
}
