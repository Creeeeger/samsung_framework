package com.android.systemui.keyguard.domain.interactor;

import com.android.systemui.keyguard.domain.model.KeyguardQuickAffordanceModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$quickAffordance$2", f = "KeyguardQuickAffordanceInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class KeyguardQuickAffordanceInteractor$quickAffordance$2 extends SuspendLambda implements Function6 {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    /* synthetic */ boolean Z$3;
    int label;

    public KeyguardQuickAffordanceInteractor$quickAffordance$2(Continuation<? super KeyguardQuickAffordanceInteractor$quickAffordance$2> continuation) {
        super(6, continuation);
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        boolean booleanValue2 = ((Boolean) obj3).booleanValue();
        boolean booleanValue3 = ((Boolean) obj4).booleanValue();
        boolean booleanValue4 = ((Boolean) obj5).booleanValue();
        KeyguardQuickAffordanceInteractor$quickAffordance$2 keyguardQuickAffordanceInteractor$quickAffordance$2 = new KeyguardQuickAffordanceInteractor$quickAffordance$2((Continuation) obj6);
        keyguardQuickAffordanceInteractor$quickAffordance$2.L$0 = (KeyguardQuickAffordanceModel) obj;
        keyguardQuickAffordanceInteractor$quickAffordance$2.Z$0 = booleanValue;
        keyguardQuickAffordanceInteractor$quickAffordance$2.Z$1 = booleanValue2;
        keyguardQuickAffordanceInteractor$quickAffordance$2.Z$2 = booleanValue3;
        keyguardQuickAffordanceInteractor$quickAffordance$2.Z$3 = booleanValue4;
        return keyguardQuickAffordanceInteractor$quickAffordance$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            KeyguardQuickAffordanceModel keyguardQuickAffordanceModel = (KeyguardQuickAffordanceModel) this.L$0;
            boolean z = this.Z$0;
            boolean z2 = this.Z$1;
            boolean z3 = this.Z$2;
            boolean z4 = this.Z$3;
            if (z || !z2 || z3 || z4) {
                return KeyguardQuickAffordanceModel.Hidden.INSTANCE;
            }
            return keyguardQuickAffordanceModel;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
