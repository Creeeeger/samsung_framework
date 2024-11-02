package com.android.systemui.accessibility.data.repository;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AccessibilityRepositoryImpl$isTouchExplorationEnabled$1$listener$1 extends AdaptedFunctionReference implements Function1 {
    public AccessibilityRepositoryImpl$isTouchExplorationEnabled$1$listener$1(Object obj) {
        super(1, obj, ProducerScope.class, "trySend", "trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;", 8);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        ((ChannelCoroutine) ((ProducerScope) this.receiver)).mo2584trySendJP2dKIU(Boolean.valueOf(booleanValue));
        return Unit.INSTANCE;
    }
}
