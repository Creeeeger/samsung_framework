package com.android.systemui.keyguard.animator;

import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.samsung.android.knox.custom.IKnoxCustomManager;
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
@DebugMetadata(c = "com.android.systemui.keyguard.animator.KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1", f = "KeyguardEditModeAnimatorController.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getUsbConnectionTypeInternal}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ KeyguardEditModeAnimatorController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1(KeyguardEditModeAnimatorController keyguardEditModeAnimatorController, Continuation<? super KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1> continuation) {
        super(2, continuation);
        this.this$0 = keyguardEditModeAnimatorController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j;
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
            KeyguardEditModeAnimatorController keyguardEditModeAnimatorController = this.this$0;
            ((KeyguardEditModeControllerImpl) keyguardEditModeAnimatorController.keyguardEditModeController).startEditActivity(keyguardEditModeAnimatorController.getParentView().getContext(), false);
            if (((KeyguardEditModeControllerImpl) this.this$0.keyguardEditModeController).settingsHelper.isUltraPowerSavingMode()) {
                j = 1000;
            } else {
                j = 4000;
            }
            this.label = 1;
            if (DelayKt.delay(j, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        KeyguardEditModeAnimatorController keyguardEditModeAnimatorController2 = this.this$0;
        int i2 = KeyguardEditModeAnimatorController.$r8$clinit;
        keyguardEditModeAnimatorController2.startCancelAnimation();
        return Unit.INSTANCE;
    }
}
