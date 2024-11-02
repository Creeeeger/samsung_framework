package com.android.systemui.user.ui.viewmodel;

import com.android.systemui.user.shared.model.UserModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.ui.viewmodel.StatusBarUserChipViewModel$userName$1", f = "StatusBarUserChipViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class StatusBarUserChipViewModel$userName$1 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;

    public StatusBarUserChipViewModel$userName$1(Continuation<? super StatusBarUserChipViewModel$userName$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        StatusBarUserChipViewModel$userName$1 statusBarUserChipViewModel$userName$1 = new StatusBarUserChipViewModel$userName$1(continuation);
        statusBarUserChipViewModel$userName$1.L$0 = obj;
        return statusBarUserChipViewModel$userName$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StatusBarUserChipViewModel$userName$1) create((UserModel) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return ((UserModel) this.L$0).name;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
