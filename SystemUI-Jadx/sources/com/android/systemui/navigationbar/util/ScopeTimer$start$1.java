package com.android.systemui.navigationbar.util;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.navigationbar.util.ScopeTimer$start$1", f = "ScopeTimer.kt", l = {17}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ScopeTimer$start$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function0 $action;
    final /* synthetic */ long $delay;
    int label;
    final /* synthetic */ ScopeTimer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScopeTimer$start$1(long j, Function0 function0, ScopeTimer scopeTimer, Continuation<? super ScopeTimer$start$1> continuation) {
        super(2, continuation);
        this.$delay = j;
        this.$action = function0;
        this.this$0 = scopeTimer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScopeTimer$start$1(this.$delay, this.$action, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScopeTimer$start$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            long j = this.$delay;
            this.label = 1;
            if (DelayKt.delay(j, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.$action.invoke();
        this.this$0.cancel();
        return Unit.INSTANCE;
    }
}
