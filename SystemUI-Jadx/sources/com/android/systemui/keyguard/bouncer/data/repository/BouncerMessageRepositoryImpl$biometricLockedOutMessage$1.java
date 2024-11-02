package com.android.systemui.keyguard.bouncer.data.repository;

import com.android.systemui.user.data.repository.UserRepositoryImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricLockedOutMessage$1", f = "BouncerMessageRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class BouncerMessageRepositoryImpl$biometricLockedOutMessage$1 extends SuspendLambda implements Function3 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;
    final /* synthetic */ BouncerMessageRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BouncerMessageRepositoryImpl$biometricLockedOutMessage$1(BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl, Continuation<? super BouncerMessageRepositoryImpl$biometricLockedOutMessage$1> continuation) {
        super(3, continuation);
        this.this$0 = bouncerMessageRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        BouncerMessageRepositoryImpl$biometricLockedOutMessage$1 bouncerMessageRepositoryImpl$biometricLockedOutMessage$1 = new BouncerMessageRepositoryImpl$biometricLockedOutMessage$1(this.this$0, (Continuation) obj3);
        bouncerMessageRepositoryImpl$biometricLockedOutMessage$1.Z$0 = booleanValue;
        bouncerMessageRepositoryImpl$biometricLockedOutMessage$1.Z$1 = booleanValue2;
        return bouncerMessageRepositoryImpl$biometricLockedOutMessage$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            boolean z2 = this.Z$1;
            if (z) {
                BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl = this.this$0;
                return bouncerMessageRepositoryImpl.bouncerMessageFactory.createFromPromptReason(13, ((UserRepositoryImpl) bouncerMessageRepositoryImpl.userRepository).getSelectedUserInfo().id);
            }
            if (z2) {
                BouncerMessageRepositoryImpl bouncerMessageRepositoryImpl2 = this.this$0;
                return bouncerMessageRepositoryImpl2.bouncerMessageFactory.createFromPromptReason(12, ((UserRepositoryImpl) bouncerMessageRepositoryImpl2.userRepository).getSelectedUserInfo().id);
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
