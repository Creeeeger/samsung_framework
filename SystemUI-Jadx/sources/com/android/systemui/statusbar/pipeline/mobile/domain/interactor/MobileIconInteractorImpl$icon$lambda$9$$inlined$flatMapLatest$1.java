package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

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
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1", f = "MobileIconInteractor.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ MobileIconInteractorImpl $this_run$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1(Continuation continuation, MobileIconInteractorImpl mobileIconInteractorImpl) {
        super(3, continuation);
        this.$this_run$inlined = mobileIconInteractorImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        MobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1 mobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1 = new MobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1((Continuation) obj3, this.$this_run$inlined);
        mobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        mobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1.L$1 = obj2;
        return mobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
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
            if (((Boolean) this.L$1).booleanValue()) {
                flow = this.$this_run$inlined.satelliteIcon;
            } else {
                flow = this.$this_run$inlined.cellularIcon;
            }
            this.label = 1;
            if (FlowKt.emitAll(this, flow, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
