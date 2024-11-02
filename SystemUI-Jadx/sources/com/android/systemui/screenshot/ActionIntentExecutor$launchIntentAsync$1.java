package com.android.systemui.screenshot;

import android.content.Intent;
import android.os.Bundle;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.screenshot.ActionIntentExecutor$launchIntentAsync$1", f = "ActionIntentExecutor.kt", l = {65}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ActionIntentExecutor$launchIntentAsync$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Bundle $bundle;
    final /* synthetic */ Intent $intent;
    final /* synthetic */ boolean $overrideTransition;
    final /* synthetic */ int $userId;
    int label;
    final /* synthetic */ ActionIntentExecutor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionIntentExecutor$launchIntentAsync$1(ActionIntentExecutor actionIntentExecutor, Intent intent, Bundle bundle, int i, boolean z, Continuation<? super ActionIntentExecutor$launchIntentAsync$1> continuation) {
        super(2, continuation);
        this.this$0 = actionIntentExecutor;
        this.$intent = intent;
        this.$bundle = bundle;
        this.$userId = i;
        this.$overrideTransition = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ActionIntentExecutor$launchIntentAsync$1(this.this$0, this.$intent, this.$bundle, this.$userId, this.$overrideTransition, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ActionIntentExecutor$launchIntentAsync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            ActionIntentExecutor actionIntentExecutor = this.this$0;
            Intent intent = this.$intent;
            Bundle bundle = this.$bundle;
            int i2 = this.$userId;
            boolean z = this.$overrideTransition;
            this.label = 1;
            if (actionIntentExecutor.launchIntent(intent, bundle, i2, z, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
