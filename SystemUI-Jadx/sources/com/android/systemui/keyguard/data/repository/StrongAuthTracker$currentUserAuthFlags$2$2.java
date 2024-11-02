package com.android.systemui.keyguard.data.repository;

import android.util.Log;
import com.android.systemui.keyguard.shared.model.AuthenticationFlags;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.StrongAuthTracker$currentUserAuthFlags$2$2", f = "BiometricSettingsRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class StrongAuthTracker$currentUserAuthFlags$2$2 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;

    public StrongAuthTracker$currentUserAuthFlags$2$2(Continuation<? super StrongAuthTracker$currentUserAuthFlags$2$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        StrongAuthTracker$currentUserAuthFlags$2$2 strongAuthTracker$currentUserAuthFlags$2$2 = new StrongAuthTracker$currentUserAuthFlags$2$2(continuation);
        strongAuthTracker$currentUserAuthFlags$2$2.L$0 = obj;
        return strongAuthTracker$currentUserAuthFlags$2$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StrongAuthTracker$currentUserAuthFlags$2$2) create((AuthenticationFlags) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Log.d("BiometricsRepositoryImpl", "currentUser authFlags changed, new value: " + ((AuthenticationFlags) this.L$0));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
