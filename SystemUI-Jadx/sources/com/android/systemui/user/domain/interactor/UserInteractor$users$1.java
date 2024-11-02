package com.android.systemui.user.domain.interactor;

import android.content.pm.UserInfo;
import com.android.systemui.user.data.model.UserSwitcherSettingsModel;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$users$1", f = "UserInteractor.kt", l = {143}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserInteractor$users$1 extends SuspendLambda implements Function4 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    int label;
    final /* synthetic */ UserInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserInteractor$users$1(UserInteractor userInteractor, Continuation<? super UserInteractor$users$1> continuation) {
        super(4, continuation);
        this.this$0 = userInteractor;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        UserInteractor$users$1 userInteractor$users$1 = new UserInteractor$users$1(this.this$0, (Continuation) obj4);
        userInteractor$users$1.L$0 = (List) obj;
        userInteractor$users$1.L$1 = (UserInfo) obj2;
        userInteractor$users$1.L$2 = (UserSwitcherSettingsModel) obj3;
        return userInteractor$users$1.invokeSuspend(Unit.INSTANCE);
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
            List list = (List) this.L$0;
            UserInfo userInfo = (UserInfo) this.L$1;
            UserSwitcherSettingsModel userSwitcherSettingsModel = (UserSwitcherSettingsModel) this.L$2;
            UserInteractor userInteractor = this.this$0;
            int i2 = userInfo.id;
            boolean z = userSwitcherSettingsModel.isUserSwitcherEnabled;
            this.L$0 = null;
            this.L$1 = null;
            this.label = 1;
            obj = UserInteractor.access$toUserModels(userInteractor, list, i2, z, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return obj;
    }
}
