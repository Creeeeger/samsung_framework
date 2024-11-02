package com.android.systemui.biometrics.ui.viewmodel;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$isCancelButtonVisible$1", f = "PromptViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptViewModel$isCancelButtonVisible$1 extends SuspendLambda implements Function5 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;

    public PromptViewModel$isCancelButtonVisible$1(Continuation<? super PromptViewModel$isCancelButtonVisible$1> continuation) {
        super(5, continuation);
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        boolean booleanValue = ((Boolean) obj3).booleanValue();
        boolean booleanValue2 = ((Boolean) obj4).booleanValue();
        PromptViewModel$isCancelButtonVisible$1 promptViewModel$isCancelButtonVisible$1 = new PromptViewModel$isCancelButtonVisible$1((Continuation) obj5);
        promptViewModel$isCancelButtonVisible$1.L$0 = (PromptSize) obj;
        promptViewModel$isCancelButtonVisible$1.L$1 = (PromptAuthState) obj2;
        promptViewModel$isCancelButtonVisible$1.Z$0 = booleanValue;
        promptViewModel$isCancelButtonVisible$1.Z$1 = booleanValue2;
        return promptViewModel$isCancelButtonVisible$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            PromptSize promptSize = (PromptSize) this.L$0;
            PromptAuthState promptAuthState = (PromptAuthState) this.L$1;
            boolean z2 = this.Z$0;
            boolean z3 = this.Z$1;
            if (PromptSizeKt.isNotSmall(promptSize) && promptAuthState.isAuthenticated && !z2 && z3) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
