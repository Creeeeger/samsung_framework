package com.android.systemui.statusbar.pipeline.mobile.data.repository;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileRepositorySwitcher$special$$inlined$flatMapLatest$13", f = "MobileRepositorySwitcher.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileRepositorySwitcher$special$$inlined$flatMapLatest$13 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public MobileRepositorySwitcher$special$$inlined$flatMapLatest$13(Continuation continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        MobileRepositorySwitcher$special$$inlined$flatMapLatest$13 mobileRepositorySwitcher$special$$inlined$flatMapLatest$13 = new MobileRepositorySwitcher$special$$inlined$flatMapLatest$13((Continuation) obj3);
        mobileRepositorySwitcher$special$$inlined$flatMapLatest$13.L$0 = (FlowCollector) obj;
        mobileRepositorySwitcher$special$$inlined$flatMapLatest$13.L$1 = obj2;
        return mobileRepositorySwitcher$special$$inlined$flatMapLatest$13.invokeSuspend(Unit.INSTANCE);
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
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            StateFlow deviceOnTheCall = ((MobileConnectionsRepository) this.L$1).getDeviceOnTheCall();
            this.label = 1;
            if (FlowKt.emitAll(this, deviceOnTheCall, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
