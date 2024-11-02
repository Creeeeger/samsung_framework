package com.android.systemui.biometrics.ui.viewmodel;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$isConfirmButtonVisible$1", f = "PromptViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptViewModel$isConfirmButtonVisible$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public PromptViewModel$isConfirmButtonVisible$1(Continuation<? super PromptViewModel$isConfirmButtonVisible$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        PromptViewModel$isConfirmButtonVisible$1 promptViewModel$isConfirmButtonVisible$1 = new PromptViewModel$isConfirmButtonVisible$1((Continuation) obj3);
        promptViewModel$isConfirmButtonVisible$1.L$0 = (PromptSize) obj;
        promptViewModel$isConfirmButtonVisible$1.L$1 = (PromptAuthState) obj2;
        return promptViewModel$isConfirmButtonVisible$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            PromptSize promptSize = (PromptSize) this.L$0;
            PromptAuthState promptAuthState = (PromptAuthState) this.L$1;
            if (PromptSizeKt.isNotSmall(promptSize) && promptAuthState.isAuthenticated && promptAuthState.needsUserConfirmation) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
