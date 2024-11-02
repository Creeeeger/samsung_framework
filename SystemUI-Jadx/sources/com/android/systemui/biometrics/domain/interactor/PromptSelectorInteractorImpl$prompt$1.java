package com.android.systemui.biometrics.domain.interactor;

import android.hardware.biometrics.PromptInfo;
import com.android.systemui.biometrics.domain.model.BiometricOperationInfo;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import com.android.systemui.biometrics.domain.model.BiometricUserInfo;
import com.android.systemui.biometrics.shared.model.PromptKind;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractorImpl$prompt$1", f = "PromptSelectorInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptSelectorInteractorImpl$prompt$1 extends SuspendLambda implements Function5 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    /* synthetic */ Object L$3;
    int label;

    public PromptSelectorInteractorImpl$prompt$1(Continuation<? super PromptSelectorInteractorImpl$prompt$1> continuation) {
        super(5, continuation);
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        PromptSelectorInteractorImpl$prompt$1 promptSelectorInteractorImpl$prompt$1 = new PromptSelectorInteractorImpl$prompt$1((Continuation) obj5);
        promptSelectorInteractorImpl$prompt$1.L$0 = (PromptInfo) obj;
        promptSelectorInteractorImpl$prompt$1.L$1 = (Long) obj2;
        promptSelectorInteractorImpl$prompt$1.L$2 = (Integer) obj3;
        promptSelectorInteractorImpl$prompt$1.L$3 = (PromptKind) obj4;
        return promptSelectorInteractorImpl$prompt$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            PromptInfo promptInfo = (PromptInfo) this.L$0;
            Long l = (Long) this.L$1;
            Integer num = (Integer) this.L$2;
            PromptKind promptKind = (PromptKind) this.L$3;
            if (promptInfo == null || num == null || l == null || !(promptKind instanceof PromptKind.Biometric)) {
                return null;
            }
            return new BiometricPromptRequest.Biometric(promptInfo, new BiometricUserInfo(num.intValue(), 0, 2, null), new BiometricOperationInfo(l.longValue()), ((PromptKind.Biometric) promptKind).activeModalities);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
