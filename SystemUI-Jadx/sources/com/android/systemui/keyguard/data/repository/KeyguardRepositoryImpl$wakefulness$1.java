package com.android.systemui.keyguard.data.repository;

import com.android.systemui.common.coroutine.ChannelExt;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.shared.model.WakefulnessModel;
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
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$wakefulness$1", f = "KeyguardRepository.kt", l = {528}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardRepositoryImpl$wakefulness$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ WakefulnessLifecycle $wakefulnessLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardRepositoryImpl$wakefulness$1(WakefulnessLifecycle wakefulnessLifecycle, Continuation<? super KeyguardRepositoryImpl$wakefulness$1> continuation) {
        super(2, continuation);
        this.$wakefulnessLifecycle = wakefulnessLifecycle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardRepositoryImpl$wakefulness$1 keyguardRepositoryImpl$wakefulness$1 = new KeyguardRepositoryImpl$wakefulness$1(this.$wakefulnessLifecycle, continuation);
        keyguardRepositoryImpl$wakefulness$1.L$0 = obj;
        return keyguardRepositoryImpl$wakefulness$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardRepositoryImpl$wakefulness$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$wakefulness$1$observer$1, java.lang.Object] */
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
            final WakefulnessLifecycle wakefulnessLifecycle = this.$wakefulnessLifecycle;
            final ?? r1 = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$wakefulness$1$observer$1
                public final void dispatchNewState() {
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    WakefulnessModel.Companion.getClass();
                    WakefulnessModel fromWakefulnessLifecycle = WakefulnessModel.Companion.fromWakefulnessLifecycle(wakefulnessLifecycle);
                    channelExt.getClass();
                    ChannelExt.trySendWithFailureLogging(ProducerScope.this, fromWakefulnessLifecycle, "KeyguardRepositoryImpl", "updated wakefulness state");
                }

                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onFinishedGoingToSleep() {
                    dispatchNewState();
                }

                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onFinishedWakingUp() {
                    dispatchNewState();
                }

                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onPostFinishedWakingUp() {
                    dispatchNewState();
                }

                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onStartedGoingToSleep() {
                    dispatchNewState();
                }

                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onStartedWakingUp() {
                    dispatchNewState();
                }
            };
            this.$wakefulnessLifecycle.addObserver(r1);
            ChannelExt channelExt = ChannelExt.INSTANCE;
            WakefulnessModel.Companion companion = WakefulnessModel.Companion;
            WakefulnessLifecycle wakefulnessLifecycle2 = this.$wakefulnessLifecycle;
            companion.getClass();
            WakefulnessModel fromWakefulnessLifecycle = WakefulnessModel.Companion.fromWakefulnessLifecycle(wakefulnessLifecycle2);
            channelExt.getClass();
            ChannelExt.trySendWithFailureLogging(producerScope, fromWakefulnessLifecycle, "KeyguardRepositoryImpl", "initial wakefulness state");
            final WakefulnessLifecycle wakefulnessLifecycle3 = this.$wakefulnessLifecycle;
            Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl$wakefulness$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    WakefulnessLifecycle.this.removeObserver(r1);
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
