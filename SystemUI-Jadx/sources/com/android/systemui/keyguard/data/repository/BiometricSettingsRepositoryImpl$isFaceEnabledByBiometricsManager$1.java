package com.android.systemui.keyguard.data.repository;

import android.hardware.biometrics.BiometricManager;
import android.hardware.biometrics.IBiometricEnabledOnKeyguardCallback;
import com.android.systemui.common.coroutine.ChannelExt;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1", f = "BiometricSettingsRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setForceSingleView}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ BiometricManager $biometricManager;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1(BiometricManager biometricManager, Continuation<? super BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1> continuation) {
        super(2, continuation);
        this.$biometricManager = biometricManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1 biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1 = new BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1(this.$biometricManager, continuation);
        biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1.L$0 = obj;
        return biometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            IBiometricEnabledOnKeyguardCallback iBiometricEnabledOnKeyguardCallback = new IBiometricEnabledOnKeyguardCallback.Stub() { // from class: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1$callback$1
                public final void onChanged(boolean z, int i2) {
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    ProducerScope producerScope2 = ProducerScope.this;
                    Pair pair = new Pair(Integer.valueOf(i2), Boolean.valueOf(z));
                    channelExt.getClass();
                    ChannelExt.trySendWithFailureLogging(producerScope2, pair, "BiometricsRepositoryImpl", "biometricsEnabled state changed");
                }
            };
            BiometricManager biometricManager = this.$biometricManager;
            if (biometricManager != null) {
                biometricManager.registerEnabledOnKeyguardCallback(iBiometricEnabledOnKeyguardCallback);
            }
            AnonymousClass1 anonymousClass1 = new Function0() { // from class: com.android.systemui.keyguard.data.repository.BiometricSettingsRepositoryImpl$isFaceEnabledByBiometricsManager$1.1
                @Override // kotlin.jvm.functions.Function0
                public final /* bridge */ /* synthetic */ Object invoke() {
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
