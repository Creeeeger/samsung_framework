package com.android.systemui.user.data.repository;

import com.android.systemui.user.data.model.UserSwitcherSettingsModel;
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
@DebugMetadata(c = "com.android.systemui.user.data.repository.UserRepositoryImpl$getSettings$2", f = "UserRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserRepositoryImpl$getSettings$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ UserRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserRepositoryImpl$getSettings$2(UserRepositoryImpl userRepositoryImpl, Continuation<? super UserRepositoryImpl$getSettings$2> continuation) {
        super(2, continuation);
        this.this$0 = userRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UserRepositoryImpl$getSettings$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserRepositoryImpl$getSettings$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            UserRepositoryImpl userRepositoryImpl = this.this$0;
            boolean z3 = false;
            if (userRepositoryImpl.globalSettings.getIntForUser(userRepositoryImpl.appContext.getResources().getBoolean(17891699) ? 1 : 0, 0, "lockscreenSimpleUserSwitcher") != 0) {
                z = true;
            } else {
                z = false;
            }
            if (this.this$0.globalSettings.getIntForUser(0, 0, "add_users_when_locked") != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            UserRepositoryImpl userRepositoryImpl2 = this.this$0;
            if (userRepositoryImpl2.globalSettings.getIntForUser(userRepositoryImpl2.appContext.getResources().getBoolean(17891828) ? 1 : 0, 0, "user_switcher_enabled") != 0) {
                z3 = true;
            }
            return new UserSwitcherSettingsModel(z, z2, z3);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
