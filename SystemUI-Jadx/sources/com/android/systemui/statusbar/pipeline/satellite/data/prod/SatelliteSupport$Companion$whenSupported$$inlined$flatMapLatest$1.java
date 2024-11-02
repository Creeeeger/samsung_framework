package com.android.systemui.statusbar.pipeline.satellite.data.prod;

import com.android.systemui.statusbar.pipeline.satellite.data.prod.SatelliteSupport;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.satellite.data.prod.SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1", f = "DeviceBasedSatelliteRepositoryImpl.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ Flow $orElse$inlined;
    final /* synthetic */ Flow $supported$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1(Continuation continuation, Flow flow, Flow flow2) {
        super(3, continuation);
        this.$supported$inlined = flow;
        this.$orElse$inlined = flow2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1 satelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1 = new SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1((Continuation) obj3, this.$supported$inlined, this.$orElse$inlined);
        satelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        satelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1.L$1 = obj2;
        return satelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flow;
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
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            if (((SatelliteSupport) this.L$1) instanceof SatelliteSupport.Supported) {
                flow = this.$supported$inlined;
            } else {
                flow = this.$orElse$inlined;
            }
            this.label = 1;
            if (FlowKt.emitAll(this, flow, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
