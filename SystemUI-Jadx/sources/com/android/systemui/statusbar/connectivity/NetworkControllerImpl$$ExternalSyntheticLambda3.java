package com.android.systemui.statusbar.connectivity;

import com.android.systemui.log.LogMessage;
import java.util.Locale;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NetworkControllerImpl$$ExternalSyntheticLambda3 implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return String.format(Locale.US, "Received broadcast with action \"%s\"", ((LogMessage) obj).getStr1());
    }
}
