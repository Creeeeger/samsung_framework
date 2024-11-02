package com.android.systemui.keyguard.data.repository;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1", f = "BiometricSettingsRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1 extends SuspendLambda implements Function3 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;

    public BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1(Continuation<? super BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1 biometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1 = new BiometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1((Continuation) obj3);
        biometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1.Z$0 = booleanValue;
        biometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1.Z$1 = booleanValue2;
        return biometricSettingsRepositoryImpl$isFaceAuthenticationEnabled$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z2 = this.Z$0;
            boolean z3 = this.Z$1;
            if (z2 && z3) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
