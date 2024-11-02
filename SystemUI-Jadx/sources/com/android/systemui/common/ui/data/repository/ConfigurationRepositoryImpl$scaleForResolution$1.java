package com.android.systemui.common.ui.data.repository;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.common.ui.data.repository.ConfigurationRepositoryImpl$scaleForResolution$1", f = "ConfigurationRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ConfigurationRepositoryImpl$scaleForResolution$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ ConfigurationRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigurationRepositoryImpl$scaleForResolution$1(ConfigurationRepositoryImpl configurationRepositoryImpl, Continuation<? super ConfigurationRepositoryImpl$scaleForResolution$1> continuation) {
        super(2, continuation);
        this.this$0 = configurationRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConfigurationRepositoryImpl$scaleForResolution$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConfigurationRepositoryImpl$scaleForResolution$1) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return new Float(this.this$0.getResolutionScale());
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
