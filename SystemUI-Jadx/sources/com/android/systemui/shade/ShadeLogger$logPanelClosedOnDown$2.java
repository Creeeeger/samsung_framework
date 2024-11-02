package com.android.systemui.shade;

import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeLogger$logPanelClosedOnDown$2 extends Lambda implements Function1 {
    public static final ShadeLogger$logPanelClosedOnDown$2 INSTANCE = new ShadeLogger$logPanelClosedOnDown$2();

    public ShadeLogger$logPanelClosedOnDown$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LogMessage logMessage = (LogMessage) obj;
        return logMessage.getStr1() + "; mPanelClosedOnDown=" + logMessage.getBool1() + "; mExpandedFraction=" + logMessage.getDouble1();
    }
}
