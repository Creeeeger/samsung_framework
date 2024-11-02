package com.android.systemui.flags;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ConditionalRestarter$scheduleRestart$1$1 extends AdaptedFunctionReference implements Function0 {
    public ConditionalRestarter$scheduleRestart$1$1(Object obj) {
        super(0, obj, ConditionalRestarter.class, "scheduleRestart", "scheduleRestart(Ljava/lang/String;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ConditionalRestarter conditionalRestarter = (ConditionalRestarter) this.receiver;
        int i = ConditionalRestarter.$r8$clinit;
        conditionalRestarter.scheduleRestart("");
        return Unit.INSTANCE;
    }
}
