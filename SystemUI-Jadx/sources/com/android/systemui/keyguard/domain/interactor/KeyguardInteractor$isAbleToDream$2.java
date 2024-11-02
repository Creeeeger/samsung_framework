package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.shared.model.WakefulnessModel;
import com.android.systemui.keyguard.shared.model.WakefulnessState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardInteractor$isAbleToDream$2", f = "KeyguardInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardInteractor$isAbleToDream$2 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    public KeyguardInteractor$isAbleToDream$2(Continuation<? super KeyguardInteractor$isAbleToDream$2> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        KeyguardInteractor$isAbleToDream$2 keyguardInteractor$isAbleToDream$2 = new KeyguardInteractor$isAbleToDream$2((Continuation) obj3);
        keyguardInteractor$isAbleToDream$2.Z$0 = booleanValue;
        keyguardInteractor$isAbleToDream$2.L$0 = (WakefulnessModel) obj2;
        return keyguardInteractor$isAbleToDream$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z3 = this.Z$0;
            WakefulnessModel wakefulnessModel = (WakefulnessModel) this.L$0;
            boolean z4 = false;
            if (z3) {
                wakefulnessModel.getClass();
                WakefulnessState wakefulnessState = WakefulnessState.STARTING_TO_WAKE;
                WakefulnessState wakefulnessState2 = wakefulnessModel.state;
                if (wakefulnessState2 == wakefulnessState) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z && wakefulnessState2 != WakefulnessState.AWAKE) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    z4 = true;
                }
            }
            return Boolean.valueOf(z4);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
