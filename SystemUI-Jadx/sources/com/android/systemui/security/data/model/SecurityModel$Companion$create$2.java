package com.android.systemui.security.data.model;

import com.android.systemui.statusbar.policy.SecurityController;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.security.data.model.SecurityModel$Companion$create$2", f = "SecurityModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class SecurityModel$Companion$create$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ SecurityController $securityController;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecurityModel$Companion$create$2(SecurityController securityController, Continuation<? super SecurityModel$Companion$create$2> continuation) {
        super(2, continuation);
        this.$securityController = securityController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SecurityModel$Companion$create$2(this.$securityController, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SecurityModel$Companion$create$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return SecurityModel.Companion.create(this.$securityController);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
