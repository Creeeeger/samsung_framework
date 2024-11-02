package com.android.systemui.keyguard.data.repository;

import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2", f = "BiometricSettingsRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BiometricSettingsRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2(BiometricSettingsRepositoryImpl biometricSettingsRepositoryImpl, Continuation<? super BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2> continuation) {
        super(2, continuation);
        this.this$0 = biometricSettingsRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2 biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2 = new BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2(this.this$0, continuation);
        biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2.L$0 = obj;
        return biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$2) create((Pair) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Pair pair = (Pair) this.L$0;
            this.this$0.biometricsEnabledForUser.put(pair.getFirst(), pair.getSecond());
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
