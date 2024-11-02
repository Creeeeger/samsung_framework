package com.android.systemui.keyguard.bouncer.data.repository;

import android.hardware.biometrics.BiometricSourceType;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.common.coroutine.ChannelExt;
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
@DebugMetadata(c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricAuthReason$1", f = "BouncerMessageRepository.kt", l = {222}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class BouncerMessageRepositoryImpl$biometricAuthReason$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ KeyguardUpdateMonitor $updateMonitor;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BouncerMessageRepositoryImpl$biometricAuthReason$1(KeyguardUpdateMonitor keyguardUpdateMonitor, Continuation<? super BouncerMessageRepositoryImpl$biometricAuthReason$1> continuation) {
        super(2, continuation);
        this.$updateMonitor = keyguardUpdateMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BouncerMessageRepositoryImpl$biometricAuthReason$1 bouncerMessageRepositoryImpl$biometricAuthReason$1 = new BouncerMessageRepositoryImpl$biometricAuthReason$1(this.$updateMonitor, continuation);
        bouncerMessageRepositoryImpl$biometricAuthReason$1.L$0 = obj;
        return bouncerMessageRepositoryImpl$biometricAuthReason$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BouncerMessageRepositoryImpl$biometricAuthReason$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricAuthReason$1$callback$1, com.android.keyguard.KeyguardUpdateMonitorCallback] */
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
            final KeyguardUpdateMonitor keyguardUpdateMonitor = this.$updateMonitor;
            final ?? r1 = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricAuthReason$1$callback$1
                @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
                public final void onBiometricAcquired(BiometricSourceType biometricSourceType, int i2) {
                    ChannelExt.INSTANCE.getClass();
                    ChannelExt.trySendWithFailureLogging(producerScope, 0, "BouncerDetailedMessageRepository", "clearBiometricPrompt for new auth session.");
                }

                @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
                public final void onBiometricAuthFailed(BiometricSourceType biometricSourceType) {
                    int i2;
                    if (biometricSourceType == BiometricSourceType.FINGERPRINT) {
                        i2 = 11;
                    } else {
                        if (biometricSourceType == BiometricSourceType.FACE) {
                            KeyguardUpdateMonitor keyguardUpdateMonitor2 = KeyguardUpdateMonitor.this;
                            keyguardUpdateMonitor2.getClass();
                            if (!keyguardUpdateMonitor2.mFaceLockedOutPermanent) {
                                i2 = 10;
                            }
                        }
                        i2 = 0;
                    }
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    Integer valueOf = Integer.valueOf(i2);
                    channelExt.getClass();
                    ChannelExt.trySendWithFailureLogging(producerScope, valueOf, "BouncerDetailedMessageRepository", "onBiometricAuthFailed");
                }

                @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
                public final void onBiometricAuthenticated(int i2, BiometricSourceType biometricSourceType, boolean z) {
                    ChannelExt.INSTANCE.getClass();
                    ChannelExt.trySendWithFailureLogging(producerScope, 0, "BouncerDetailedMessageRepository", "onBiometricAuthenticated");
                }

                @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
                public final void onBiometricsCleared() {
                    ChannelExt.INSTANCE.getClass();
                    ChannelExt.trySendWithFailureLogging(producerScope, 0, "BouncerDetailedMessageRepository", "onBiometricsCleared");
                }
            };
            this.$updateMonitor.registerCallback(r1);
            final KeyguardUpdateMonitor keyguardUpdateMonitor2 = this.$updateMonitor;
            Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricAuthReason$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    KeyguardUpdateMonitor.this.removeCallback(r1);
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
