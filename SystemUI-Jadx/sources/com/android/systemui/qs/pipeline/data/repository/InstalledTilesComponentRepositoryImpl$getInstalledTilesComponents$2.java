package com.android.systemui.qs.pipeline.data.repository;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.qs.pipeline.data.repository.InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2", f = "InstalledTilesComponentRepository.kt", l = {76}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;

    public InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2(Continuation<? super InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2 installedTilesComponentRepositoryImpl$getInstalledTilesComponents$2 = new InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2(continuation);
        installedTilesComponentRepositoryImpl$getInstalledTilesComponents$2.L$0 = obj;
        return installedTilesComponentRepositoryImpl$getInstalledTilesComponents$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InstalledTilesComponentRepositoryImpl$getInstalledTilesComponents$2) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            Unit unit = Unit.INSTANCE;
            this.label = 1;
            if (flowCollector.emit(unit, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
