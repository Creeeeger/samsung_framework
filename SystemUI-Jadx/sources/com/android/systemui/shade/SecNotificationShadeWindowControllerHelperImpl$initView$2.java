package com.android.systemui.shade;

import com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor$special$$inlined$filter$6;
import com.android.systemui.keyguard.shared.model.KeyguardState;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import com.samsung.android.knox.custom.IKnoxCustomManager;
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
@DebugMetadata(c = "com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$initView$2", f = "SecNotificationShadeWindowControllerHelperImpl.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setAutoCallPickupState}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SecNotificationShadeWindowControllerHelperImpl$initView$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ SecNotificationShadeWindowControllerHelperImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecNotificationShadeWindowControllerHelperImpl$initView$2(SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl, Continuation<? super SecNotificationShadeWindowControllerHelperImpl$initView$2> continuation) {
        super(2, continuation);
        this.this$0 = secNotificationShadeWindowControllerHelperImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SecNotificationShadeWindowControllerHelperImpl$initView$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SecNotificationShadeWindowControllerHelperImpl$initView$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            final SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = this.this$0;
            KeyguardTransitionInteractor$special$$inlined$filter$6 keyguardTransitionInteractor$special$$inlined$filter$6 = secNotificationShadeWindowControllerHelperImpl.keyguardTransitionInteractor.finishedKeyguardTransitionStep;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$initView$2.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    TransitionStep transitionStep = (TransitionStep) obj2;
                    if (transitionStep.from == KeyguardState.PRIMARY_BOUNCER) {
                        if (transitionStep.to == KeyguardState.GONE) {
                            String str = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
                            SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl2 = SecNotificationShadeWindowControllerHelperImpl.this;
                            secNotificationShadeWindowControllerHelperImpl2.applyBouncer(secNotificationShadeWindowControllerHelperImpl2.getCurrentState());
                        }
                    }
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
