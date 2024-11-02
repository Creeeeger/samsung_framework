package com.android.keyguard;

import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardClockSwitch$$ExternalSyntheticLambda3 implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LogMessage logMessage = (LogMessage) obj;
        int i = KeyguardClockSwitch.$r8$clinit;
        return "updateClockViews; useLargeClock=" + logMessage.getBool1() + "; animate=" + logMessage.getBool2() + "; mChildrenAreLaidOut=" + logMessage.getBool3();
    }
}
