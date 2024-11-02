package com.android.systemui.keyguard.domain.interactor;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1", f = "KeyguardLongPressInteractor.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ KeyguardLongPressInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1(KeyguardLongPressInteractor keyguardLongPressInteractor, Continuation<? super KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1> continuation) {
        super(2, continuation);
        this.this$0 = keyguardLongPressInteractor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            long recommendedTimeoutMillis = this.this$0.accessibilityManager.getRecommendedTimeoutMillis(5000, 3);
            this.label = 1;
            if (DelayKt.delay(recommendedTimeoutMillis, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        KeyguardLongPressInteractor keyguardLongPressInteractor = this.this$0;
        int i2 = KeyguardLongPressInteractor.$r8$clinit;
        keyguardLongPressInteractor.hideMenu();
        return Unit.INSTANCE;
    }
}
