package com.android.systemui.keyguard.ui.viewmodel;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$isIndicationAreaPadded$1", f = "KeyguardBottomAreaViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardBottomAreaViewModel$isIndicationAreaPadded$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public KeyguardBottomAreaViewModel$isIndicationAreaPadded$1(Continuation<? super KeyguardBottomAreaViewModel$isIndicationAreaPadded$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KeyguardBottomAreaViewModel$isIndicationAreaPadded$1 keyguardBottomAreaViewModel$isIndicationAreaPadded$1 = new KeyguardBottomAreaViewModel$isIndicationAreaPadded$1((Continuation) obj3);
        keyguardBottomAreaViewModel$isIndicationAreaPadded$1.L$0 = (KeyguardQuickAffordanceViewModel) obj;
        keyguardBottomAreaViewModel$isIndicationAreaPadded$1.L$1 = (KeyguardQuickAffordanceViewModel) obj2;
        return keyguardBottomAreaViewModel$isIndicationAreaPadded$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel = (KeyguardQuickAffordanceViewModel) this.L$0;
            KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel2 = (KeyguardQuickAffordanceViewModel) this.L$1;
            if (!keyguardQuickAffordanceViewModel.isVisible && !keyguardQuickAffordanceViewModel2.isVisible) {
                z = false;
            } else {
                z = true;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
