package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.doze.util.BurnInHelperKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.BurnInInteractor$udfpsBurnInProgress$1", f = "BurnInInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class BurnInInteractor$udfpsBurnInProgress$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ BurnInInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BurnInInteractor$udfpsBurnInProgress$1(BurnInInteractor burnInInteractor, Continuation<? super BurnInInteractor$udfpsBurnInProgress$1> continuation) {
        super(2, continuation);
        this.this$0 = burnInInteractor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BurnInInteractor$udfpsBurnInProgress$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BurnInInteractor$udfpsBurnInProgress$1) create(Long.valueOf(((Number) obj).longValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.burnInHelperWrapper.getClass();
            return new Float(BurnInHelperKt.getBurnInProgressOffset());
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
