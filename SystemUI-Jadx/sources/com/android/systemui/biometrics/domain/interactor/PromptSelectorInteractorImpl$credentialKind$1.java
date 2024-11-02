package com.android.systemui.biometrics.domain.interactor;

import com.android.internal.widget.LockPatternUtils;
import com.android.systemui.biometrics.Utils;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import com.android.systemui.biometrics.shared.model.PromptKind;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractorImpl$credentialKind$1", f = "PromptSelectorInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptSelectorInteractorImpl$credentialKind$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ LockPatternUtils $lockPatternUtils;
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromptSelectorInteractorImpl$credentialKind$1(LockPatternUtils lockPatternUtils, Continuation<? super PromptSelectorInteractorImpl$credentialKind$1> continuation) {
        super(3, continuation);
        this.$lockPatternUtils = lockPatternUtils;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        PromptSelectorInteractorImpl$credentialKind$1 promptSelectorInteractorImpl$credentialKind$1 = new PromptSelectorInteractorImpl$credentialKind$1(this.$lockPatternUtils, (Continuation) obj3);
        promptSelectorInteractorImpl$credentialKind$1.L$0 = (BiometricPromptRequest.Biometric) obj;
        promptSelectorInteractorImpl$credentialKind$1.Z$0 = booleanValue;
        return promptSelectorInteractorImpl$credentialKind$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            BiometricPromptRequest.Biometric biometric = (BiometricPromptRequest.Biometric) this.L$0;
            boolean z = this.Z$0;
            if (biometric != null && z) {
                int credentialType = Utils.getCredentialType(this.$lockPatternUtils, biometric.userInfo.deviceCredentialOwnerId);
                if (credentialType != 1) {
                    if (credentialType != 2) {
                        if (credentialType != 3) {
                            return new PromptKind.Biometric(null, 1, null);
                        }
                        return PromptKind.Password.INSTANCE;
                    }
                    return PromptKind.Pattern.INSTANCE;
                }
                return PromptKind.Pin.INSTANCE;
            }
            return new PromptKind.Biometric(null, 1, null);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
