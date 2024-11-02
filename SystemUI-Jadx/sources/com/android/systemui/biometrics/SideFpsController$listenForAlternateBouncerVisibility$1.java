package com.android.systemui.biometrics;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.SideFpsController$listenForAlternateBouncerVisibility$1", f = "SideFpsController.kt", l = {179}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SideFpsController$listenForAlternateBouncerVisibility$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ SideFpsController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SideFpsController$listenForAlternateBouncerVisibility$1(SideFpsController sideFpsController, Continuation<? super SideFpsController$listenForAlternateBouncerVisibility$1> continuation) {
        super(2, continuation);
        this.this$0 = sideFpsController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SideFpsController$listenForAlternateBouncerVisibility$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SideFpsController$listenForAlternateBouncerVisibility$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            final SideFpsController sideFpsController = this.this$0;
            StateFlow stateFlow = sideFpsController.alternateBouncerInteractor.isVisible;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.biometrics.SideFpsController$listenForAlternateBouncerVisibility$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    SideFpsController sideFpsController2 = SideFpsController.this;
                    if (booleanValue) {
                        sideFpsController2.show(SideFpsUiRequestSource.ALTERNATE_BOUNCER, 4);
                    } else {
                        sideFpsController2.hide(SideFpsUiRequestSource.ALTERNATE_BOUNCER);
                    }
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (stateFlow.collect(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
