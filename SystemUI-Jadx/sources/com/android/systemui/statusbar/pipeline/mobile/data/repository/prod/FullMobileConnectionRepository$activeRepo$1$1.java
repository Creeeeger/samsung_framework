package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.FullMobileConnectionRepository$activeRepo$1$1", f = "FullMobileConnectionRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class FullMobileConnectionRepository$activeRepo$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ FullMobileConnectionRepository $this_run;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullMobileConnectionRepository$activeRepo$1$1(FullMobileConnectionRepository fullMobileConnectionRepository, Continuation<? super FullMobileConnectionRepository$activeRepo$1$1> continuation) {
        super(2, continuation);
        this.$this_run = fullMobileConnectionRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FullMobileConnectionRepository$activeRepo$1$1 fullMobileConnectionRepository$activeRepo$1$1 = new FullMobileConnectionRepository$activeRepo$1$1(this.$this_run, continuation);
        fullMobileConnectionRepository$activeRepo$1$1.Z$0 = ((Boolean) obj).booleanValue();
        return fullMobileConnectionRepository$activeRepo$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FullMobileConnectionRepository$activeRepo$1$1) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.Z$0) {
                FullMobileConnectionRepository fullMobileConnectionRepository = this.$this_run;
                int i = FullMobileConnectionRepository.$r8$clinit;
                return (MobileConnectionRepository) fullMobileConnectionRepository.carrierMergedRepo$delegate.getValue();
            }
            FullMobileConnectionRepository fullMobileConnectionRepository2 = this.$this_run;
            int i2 = FullMobileConnectionRepository.$r8$clinit;
            return (MobileConnectionRepository) fullMobileConnectionRepository2.mobileRepo$delegate.getValue();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
