package com.android.systemui.doze;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final class DozeLogger$logCarModeStarted$2 extends Lambda implements Function1 {
    public static final DozeLogger$logCarModeStarted$2 INSTANCE = new DozeLogger$logCarModeStarted$2();

    public DozeLogger$logCarModeStarted$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return "Doze car mode started";
    }
}
