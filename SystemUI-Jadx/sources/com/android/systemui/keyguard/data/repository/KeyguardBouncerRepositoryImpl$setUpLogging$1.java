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
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.KeyguardBouncerRepositoryImpl$setUpLogging$1", f = "KeyguardBouncerRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class KeyguardBouncerRepositoryImpl$setUpLogging$1 extends SuspendLambda implements Function2 {
    /* synthetic */ boolean Z$0;
    int label;

    public KeyguardBouncerRepositoryImpl$setUpLogging$1(Continuation<? super KeyguardBouncerRepositoryImpl$setUpLogging$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardBouncerRepositoryImpl$setUpLogging$1 keyguardBouncerRepositoryImpl$setUpLogging$1 = new KeyguardBouncerRepositoryImpl$setUpLogging$1(continuation);
        keyguardBouncerRepositoryImpl$setUpLogging$1.Z$0 = ((Boolean) obj).booleanValue();
        return keyguardBouncerRepositoryImpl$setUpLogging$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardBouncerRepositoryImpl$setUpLogging$1) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.Z$0) {
                str = "showing";
            } else {
                str = "hiding.";
            }
            Log.d("KeyguardBouncerRepositoryImpl", "Keyguard Bouncer is ".concat(str));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
