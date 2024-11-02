package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import com.android.settingslib.mobile.MobileMappings;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconsInteractorImpl$alwaysShowDataRatIcon$1", f = "MobileIconsInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconsInteractorImpl$alwaysShowDataRatIcon$1 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;

    public MobileIconsInteractorImpl$alwaysShowDataRatIcon$1(Continuation<? super MobileIconsInteractorImpl$alwaysShowDataRatIcon$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MobileIconsInteractorImpl$alwaysShowDataRatIcon$1 mobileIconsInteractorImpl$alwaysShowDataRatIcon$1 = new MobileIconsInteractorImpl$alwaysShowDataRatIcon$1(continuation);
        mobileIconsInteractorImpl$alwaysShowDataRatIcon$1.L$0 = obj;
        return mobileIconsInteractorImpl$alwaysShowDataRatIcon$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MobileIconsInteractorImpl$alwaysShowDataRatIcon$1) create((MobileMappings.Config) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return Boolean.valueOf(((MobileMappings.Config) this.L$0).alwaysShowDataRatIcon);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
