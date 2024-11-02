package com.android.systemui.qs.footer.data.repository;

import android.graphics.drawable.Drawable;
import com.android.systemui.qs.footer.data.model.UserSwitcherStatusModel;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.qs.footer.data.repository.UserSwitcherRepositoryImpl$userSwitcherStatus$1$1", f = "UserSwitcherRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserSwitcherRepositoryImpl$userSwitcherStatus$1$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public UserSwitcherRepositoryImpl$userSwitcherStatus$1$1(Continuation<? super UserSwitcherRepositoryImpl$userSwitcherStatus$1$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        UserSwitcherRepositoryImpl$userSwitcherStatus$1$1 userSwitcherRepositoryImpl$userSwitcherStatus$1$1 = new UserSwitcherRepositoryImpl$userSwitcherStatus$1$1((Continuation) obj3);
        userSwitcherRepositoryImpl$userSwitcherStatus$1$1.L$0 = (String) obj;
        userSwitcherRepositoryImpl$userSwitcherStatus$1$1.L$1 = (Pair) obj2;
        return userSwitcherRepositoryImpl$userSwitcherStatus$1$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            String str = (String) this.L$0;
            Pair pair = (Pair) this.L$1;
            return new UserSwitcherStatusModel.Enabled(str, (Drawable) pair.component1(), ((Boolean) pair.component2()).booleanValue());
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
