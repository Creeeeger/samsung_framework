package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.android.systemui.log.LogLevel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardTransitionAuditLogger$start$7", f = "KeyguardTransitionAuditLogger.kt", l = {76}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class KeyguardTransitionAuditLogger$start$7 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ KeyguardTransitionAuditLogger this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardTransitionAuditLogger$start$7(KeyguardTransitionAuditLogger keyguardTransitionAuditLogger, Continuation<? super KeyguardTransitionAuditLogger$start$7> continuation) {
        super(2, continuation);
        this.this$0 = keyguardTransitionAuditLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeyguardTransitionAuditLogger$start$7(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardTransitionAuditLogger$start$7) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            final KeyguardTransitionAuditLogger keyguardTransitionAuditLogger = this.this$0;
            KeyguardTransitionInteractor$special$$inlined$filter$6 keyguardTransitionInteractor$special$$inlined$filter$6 = keyguardTransitionAuditLogger.interactor.finishedKeyguardTransitionStep;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.domain.interactor.KeyguardTransitionAuditLogger$start$7.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    KeyguardTransitionAuditLogger.this.logger.log(KeyguardTransitionAuditLoggerKt.TAG, LogLevel.VERBOSE, "Finished transition", (TransitionStep) obj2);
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (keyguardTransitionInteractor$special$$inlined$filter$6.collect(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
