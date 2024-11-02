package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import com.android.systemui.statusbar.pipeline.mobile.data.model.MobileServiceState;
import com.android.systemui.statusbar.pipeline.shared.data.model.ImsRegState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$isVoWifiConnected$1", f = "MobileIconInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$isVoWifiConnected$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public MobileIconInteractorImpl$isVoWifiConnected$1(Continuation<? super MobileIconInteractorImpl$isVoWifiConnected$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        MobileIconInteractorImpl$isVoWifiConnected$1 mobileIconInteractorImpl$isVoWifiConnected$1 = new MobileIconInteractorImpl$isVoWifiConnected$1((Continuation) obj3);
        mobileIconInteractorImpl$isVoWifiConnected$1.L$0 = (ImsRegState) obj;
        mobileIconInteractorImpl$isVoWifiConnected$1.L$1 = (MobileServiceState) obj2;
        return mobileIconInteractorImpl$isVoWifiConnected$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ImsRegState imsRegState = (ImsRegState) this.L$0;
            MobileServiceState mobileServiceState = (MobileServiceState) this.L$1;
            if (imsRegState.voWifiRegState && mobileServiceState.telephonyDisplayInfo.getNetworkType() == 18) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
