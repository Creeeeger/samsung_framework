package com.android.systemui.keyguard.domain.interactor;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardLongPressInteractor$isLongPressHandlingEnabled$2", f = "KeyguardLongPressInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardLongPressInteractor$isLongPressHandlingEnabled$2 extends SuspendLambda implements Function3 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;

    public KeyguardLongPressInteractor$isLongPressHandlingEnabled$2(Continuation<? super KeyguardLongPressInteractor$isLongPressHandlingEnabled$2> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        KeyguardLongPressInteractor$isLongPressHandlingEnabled$2 keyguardLongPressInteractor$isLongPressHandlingEnabled$2 = new KeyguardLongPressInteractor$isLongPressHandlingEnabled$2((Continuation) obj3);
        keyguardLongPressInteractor$isLongPressHandlingEnabled$2.Z$0 = booleanValue;
        keyguardLongPressInteractor$isLongPressHandlingEnabled$2.Z$1 = booleanValue2;
        return keyguardLongPressInteractor$isLongPressHandlingEnabled$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z2 = this.Z$0;
            boolean z3 = this.Z$1;
            if (z2 && !z3) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
