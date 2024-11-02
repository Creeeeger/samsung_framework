package com.android.systemui.keyguard.data.repository;

import com.android.systemui.keyguard.shared.model.ActiveUnlockModel;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import java.util.LinkedHashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5", f = "TrustRepository.kt", l = {142}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TrustRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5(TrustRepositoryImpl trustRepositoryImpl, Continuation<? super TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5> continuation) {
        super(2, continuation);
        this.this$0 = trustRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5 trustRepositoryImpl$isCurrentUserActiveUnlockRunning$5 = new TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5(this.this$0, continuation);
        trustRepositoryImpl$isCurrentUserActiveUnlockRunning$5.L$0 = obj;
        return trustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            TrustRepositoryImpl trustRepositoryImpl = this.this$0;
            ActiveUnlockModel activeUnlockModel = (ActiveUnlockModel) ((LinkedHashMap) trustRepositoryImpl.activeUnlockRunningForUser).get(new Integer(((UserRepositoryImpl) trustRepositoryImpl.userRepository).getSelectedUserInfo().id));
            boolean z = false;
            if (activeUnlockModel != null && activeUnlockModel.isRunning) {
                z = true;
            }
            Boolean valueOf = Boolean.valueOf(z);
            this.label = 1;
            if (flowCollector.emit(valueOf, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
