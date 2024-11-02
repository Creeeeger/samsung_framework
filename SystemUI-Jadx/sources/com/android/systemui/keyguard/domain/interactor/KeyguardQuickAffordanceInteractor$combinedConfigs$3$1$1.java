package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1", f = "KeyguardQuickAffordanceInteractor.kt", l = {374}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;

    public KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1(Continuation<? super KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1 keyguardQuickAffordanceInteractor$combinedConfigs$3$1$1 = new KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1(continuation);
        keyguardQuickAffordanceInteractor$combinedConfigs$3$1$1.L$0 = obj;
        return keyguardQuickAffordanceInteractor$combinedConfigs$3$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardQuickAffordanceInteractor$combinedConfigs$3$1$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            KeyguardQuickAffordanceConfig.LockScreenState.Hidden hidden = KeyguardQuickAffordanceConfig.LockScreenState.Hidden.INSTANCE;
            this.label = 1;
            if (flowCollector.emit(hidden, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
