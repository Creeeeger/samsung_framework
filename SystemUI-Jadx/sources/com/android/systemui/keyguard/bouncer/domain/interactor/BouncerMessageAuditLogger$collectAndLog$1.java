package com.android.systemui.keyguard.bouncer.domain.interactor;

import android.util.Log;
import com.android.systemui.keyguard.bouncer.shared.model.BouncerMessageModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageAuditLogger$collectAndLog$1", f = "BouncerMessageAuditLogger.kt", l = {58}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class BouncerMessageAuditLogger$collectAndLog$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $context;
    final /* synthetic */ Flow $flow;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BouncerMessageAuditLogger$collectAndLog$1(Flow flow, String str, Continuation<? super BouncerMessageAuditLogger$collectAndLog$1> continuation) {
        super(2, continuation);
        this.$flow = flow;
        this.$context = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BouncerMessageAuditLogger$collectAndLog$1(this.$flow, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BouncerMessageAuditLogger$collectAndLog$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            Flow flow = this.$flow;
            final String str = this.$context;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageAuditLogger$collectAndLog$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Log.d(BouncerMessageAuditLoggerKt.TAG, str + ((BouncerMessageModel) obj2));
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (flow.collect(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
