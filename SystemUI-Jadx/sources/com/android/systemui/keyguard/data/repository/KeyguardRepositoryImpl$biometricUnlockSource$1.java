package com.android.systemui.keyguard.data.repository;

import android.hardware.biometrics.BiometricSourceType;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.common.coroutine.ChannelExt;
import com.android.systemui.keyguard.shared.model.BiometricUnlockSource;
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
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$biometricUnlockSource$1", f = "KeyguardRepository.kt", l = {593}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardRepositoryImpl$biometricUnlockSource$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ KeyguardRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardRepositoryImpl$biometricUnlockSource$1(KeyguardRepositoryImpl keyguardRepositoryImpl, Continuation<? super KeyguardRepositoryImpl$biometricUnlockSource$1> continuation) {
        super(2, continuation);
        this.this$0 = keyguardRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardRepositoryImpl$biometricUnlockSource$1 keyguardRepositoryImpl$biometricUnlockSource$1 = new KeyguardRepositoryImpl$biometricUnlockSource$1(this.this$0, continuation);
        keyguardRepositoryImpl$biometricUnlockSource$1.L$0 = obj;
        return keyguardRepositoryImpl$biometricUnlockSource$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardRepositoryImpl$biometricUnlockSource$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.keyguard.KeyguardUpdateMonitorCallback, com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$biometricUnlockSource$1$callback$1] */
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
            final ?? r1 = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$biometricUnlockSource$1$callback$1
                @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
                public final void onBiometricAuthenticated(int i2, BiometricSourceType biometricSourceType, boolean z) {
                    int i3;
                    BiometricUnlockSource biometricUnlockSource;
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    BiometricUnlockSource.Companion.getClass();
                    if (biometricSourceType == null) {
                        i3 = -1;
                    } else {
                        i3 = BiometricUnlockSource.Companion.WhenMappings.$EnumSwitchMapping$0[biometricSourceType.ordinal()];
                    }
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                biometricUnlockSource = null;
                            } else {
                                biometricUnlockSource = BiometricUnlockSource.FACE_SENSOR;
                            }
                        } else {
                            biometricUnlockSource = BiometricUnlockSource.FACE_SENSOR;
                        }
                    } else {
                        biometricUnlockSource = BiometricUnlockSource.FINGERPRINT_SENSOR;
                    }
                    channelExt.getClass();
                    ChannelExt.trySendWithFailureLogging(ProducerScope.this, biometricUnlockSource, "KeyguardRepositoryImpl", "onBiometricAuthenticated");
                }
            };
            this.this$0.keyguardUpdateMonitor.registerCallback(r1);
            ChannelExt.INSTANCE.getClass();
            ChannelExt.trySendWithFailureLogging(producerScope, null, "KeyguardRepositoryImpl", "initial value");
            final KeyguardRepositoryImpl keyguardRepositoryImpl = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$biometricUnlockSource$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    KeyguardRepositoryImpl.this.keyguardUpdateMonitor.removeCallback(r1);
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
