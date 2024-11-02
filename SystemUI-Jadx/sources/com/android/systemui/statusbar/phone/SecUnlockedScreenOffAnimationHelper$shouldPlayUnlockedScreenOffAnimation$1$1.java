package com.android.systemui.statusbar.phone;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.phone.SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1", f = "SecUnlockedScreenOffAnimationHelper.kt", l = {340}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ SecUnlockedScreenOffAnimationHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1(SecUnlockedScreenOffAnimationHelper secUnlockedScreenOffAnimationHelper, Continuation<? super SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1> continuation) {
        super(2, continuation);
        this.this$0 = secUnlockedScreenOffAnimationHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            this.label = 1;
            if (DelayKt.delay(2000L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.this$0.setSkipAnimationInOthers(false);
        this.this$0.job = null;
        return Unit.INSTANCE;
    }
}
