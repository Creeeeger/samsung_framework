package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconsInteractorImpl$isDefaultConnectionFailed$1", f = "MobileIconsInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconsInteractorImpl$isDefaultConnectionFailed$1 extends SuspendLambda implements Function4 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    int label;

    public MobileIconsInteractorImpl$isDefaultConnectionFailed$1(Continuation<? super MobileIconsInteractorImpl$isDefaultConnectionFailed$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        boolean booleanValue3 = ((Boolean) obj3).booleanValue();
        MobileIconsInteractorImpl$isDefaultConnectionFailed$1 mobileIconsInteractorImpl$isDefaultConnectionFailed$1 = new MobileIconsInteractorImpl$isDefaultConnectionFailed$1((Continuation) obj4);
        mobileIconsInteractorImpl$isDefaultConnectionFailed$1.Z$0 = booleanValue;
        mobileIconsInteractorImpl$isDefaultConnectionFailed$1.Z$1 = booleanValue2;
        mobileIconsInteractorImpl$isDefaultConnectionFailed$1.Z$2 = booleanValue3;
        return mobileIconsInteractorImpl$isDefaultConnectionFailed$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            boolean z2 = this.Z$1;
            boolean z3 = this.Z$2;
            boolean z4 = false;
            if (z && !z3 && !z2) {
                z4 = true;
            }
            return Boolean.valueOf(z4);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
