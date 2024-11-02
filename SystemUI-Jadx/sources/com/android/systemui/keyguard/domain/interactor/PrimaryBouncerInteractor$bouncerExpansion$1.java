package com.android.systemui.keyguard.domain.interactor;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$bouncerExpansion$1", f = "PrimaryBouncerInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PrimaryBouncerInteractor$bouncerExpansion$1 extends SuspendLambda implements Function3 {
    /* synthetic */ float F$0;
    /* synthetic */ boolean Z$0;
    int label;

    public PrimaryBouncerInteractor$bouncerExpansion$1(Continuation<? super PrimaryBouncerInteractor$bouncerExpansion$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        float floatValue = ((Number) obj).floatValue();
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        PrimaryBouncerInteractor$bouncerExpansion$1 primaryBouncerInteractor$bouncerExpansion$1 = new PrimaryBouncerInteractor$bouncerExpansion$1((Continuation) obj3);
        primaryBouncerInteractor$bouncerExpansion$1.F$0 = floatValue;
        primaryBouncerInteractor$bouncerExpansion$1.Z$0 = booleanValue;
        return primaryBouncerInteractor$bouncerExpansion$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            float f2 = this.F$0;
            if (this.Z$0) {
                f = 1.0f - f2;
            } else {
                f = 0.0f;
            }
            return new Float(f);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
