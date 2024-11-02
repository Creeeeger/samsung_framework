package com.android.systemui.statusbar.pipeline.airplane.data.repository;

import android.os.Handler;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.util.settings.GlobalSettings;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.airplane.data.repository.AirplaneModeRepositoryImpl$isAirplaneMode$1", f = "AirplaneModeRepository.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class AirplaneModeRepositoryImpl$isAirplaneMode$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AirplaneModeRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AirplaneModeRepositoryImpl$isAirplaneMode$1(AirplaneModeRepositoryImpl airplaneModeRepositoryImpl, Continuation<? super AirplaneModeRepositoryImpl$isAirplaneMode$1> continuation) {
        super(2, continuation);
        this.this$0 = airplaneModeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AirplaneModeRepositoryImpl$isAirplaneMode$1 airplaneModeRepositoryImpl$isAirplaneMode$1 = new AirplaneModeRepositoryImpl$isAirplaneMode$1(this.this$0, continuation);
        airplaneModeRepositoryImpl$isAirplaneMode$1.L$0 = obj;
        return airplaneModeRepositoryImpl$isAirplaneMode$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AirplaneModeRepositoryImpl$isAirplaneMode$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.systemui.statusbar.pipeline.airplane.data.repository.AirplaneModeRepositoryImpl$isAirplaneMode$1$observer$1, com.android.systemui.qs.SettingObserver] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
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
            AirplaneModeRepositoryImpl airplaneModeRepositoryImpl = this.this$0;
            final GlobalSettings globalSettings = airplaneModeRepositoryImpl.globalSettings;
            final Handler handler = airplaneModeRepositoryImpl.bgHandler;
            final ?? r4 = new SettingObserver(globalSettings, handler) { // from class: com.android.systemui.statusbar.pipeline.airplane.data.repository.AirplaneModeRepositoryImpl$isAirplaneMode$1$observer$1
                @Override // com.android.systemui.qs.SettingObserver
                public final void handleValueChanged(int i2, boolean z2) {
                    SendChannel sendChannel = ProducerScope.this;
                    boolean z3 = true;
                    if (i2 != 1) {
                        z3 = false;
                    }
                    ((ChannelCoroutine) sendChannel).mo2584trySendJP2dKIU(Boolean.valueOf(z3));
                }
            };
            r4.setListening(true);
            if (r4.getValue() == 1) {
                z = true;
            } else {
                z = false;
            }
            ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(Boolean.valueOf(z));
            Function0 function0 = new Function0() { // from class: com.android.systemui.statusbar.pipeline.airplane.data.repository.AirplaneModeRepositoryImpl$isAirplaneMode$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    setListening(false);
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
