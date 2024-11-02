package com.android.systemui.keyguard.ui.binder;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$3", f = "KeyguardBottomAreaViewBinder.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardBottomAreaViewBinder$updateButtonAlpha$3 extends SuspendLambda implements Function3 {
    /* synthetic */ float F$0;
    /* synthetic */ boolean Z$0;
    int label;

    public KeyguardBottomAreaViewBinder$updateButtonAlpha$3(Continuation<? super KeyguardBottomAreaViewBinder$updateButtonAlpha$3> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        float floatValue = ((Number) obj2).floatValue();
        KeyguardBottomAreaViewBinder$updateButtonAlpha$3 keyguardBottomAreaViewBinder$updateButtonAlpha$3 = new KeyguardBottomAreaViewBinder$updateButtonAlpha$3((Continuation) obj3);
        keyguardBottomAreaViewBinder$updateButtonAlpha$3.Z$0 = booleanValue;
        keyguardBottomAreaViewBinder$updateButtonAlpha$3.F$0 = floatValue;
        return keyguardBottomAreaViewBinder$updateButtonAlpha$3.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            float f = this.F$0;
            if (z) {
                f = 0.3f;
            }
            return new Float(f);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
