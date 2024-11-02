package com.android.systemui.keyguard.data.repository;

import android.util.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.StrongAuthTracker$isNonStrongBiometricAllowed$2$3", f = "BiometricSettingsRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class StrongAuthTracker$isNonStrongBiometricAllowed$2$3 extends SuspendLambda implements Function2 {
    int label;

    public StrongAuthTracker$isNonStrongBiometricAllowed$2$3(Continuation<? super StrongAuthTracker$isNonStrongBiometricAllowed$2$3> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StrongAuthTracker$isNonStrongBiometricAllowed$2$3(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((Boolean) obj).booleanValue();
        return new StrongAuthTracker$isNonStrongBiometricAllowed$2$3((Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Log.d("BiometricsRepositoryImpl", "isNonStrongBiometricAllowed changed for current user");
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
