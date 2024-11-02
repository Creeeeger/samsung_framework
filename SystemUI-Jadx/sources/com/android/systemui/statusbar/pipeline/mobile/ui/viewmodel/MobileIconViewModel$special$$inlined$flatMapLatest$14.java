package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

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
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModel$special$$inlined$flatMapLatest$14", f = "MobileIconViewModel.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconViewModel$special$$inlined$flatMapLatest$14 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public MobileIconViewModel$special$$inlined$flatMapLatest$14(Continuation continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        MobileIconViewModel$special$$inlined$flatMapLatest$14 mobileIconViewModel$special$$inlined$flatMapLatest$14 = new MobileIconViewModel$special$$inlined$flatMapLatest$14((Continuation) obj3);
        mobileIconViewModel$special$$inlined$flatMapLatest$14.L$0 = (FlowCollector) obj;
        mobileIconViewModel$special$$inlined$flatMapLatest$14.L$1 = obj2;
        return mobileIconViewModel$special$$inlined$flatMapLatest$14.invokeSuspend(Unit.INSTANCE);
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
            StateFlow voiceNoServiceIcon = ((MobileIconViewModelCommon) this.L$1).getVoiceNoServiceIcon();
            this.label = 1;
            if (FlowKt.emitAll(this, voiceNoServiceIcon, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
