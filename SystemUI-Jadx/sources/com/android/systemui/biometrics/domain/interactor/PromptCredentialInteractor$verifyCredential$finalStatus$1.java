package com.android.systemui.biometrics.domain.interactor;

import com.android.systemui.biometrics.domain.interactor.CredentialStatus;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$finalStatus$1", f = "PromptCredentialInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptCredentialInteractor$verifyCredential$finalStatus$1 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PromptCredentialInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromptCredentialInteractor$verifyCredential$finalStatus$1(PromptCredentialInteractor promptCredentialInteractor, Continuation<? super PromptCredentialInteractor$verifyCredential$finalStatus$1> continuation) {
        super(2, continuation);
        this.this$0 = promptCredentialInteractor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PromptCredentialInteractor$verifyCredential$finalStatus$1 promptCredentialInteractor$verifyCredential$finalStatus$1 = new PromptCredentialInteractor$verifyCredential$finalStatus$1(this.this$0, continuation);
        promptCredentialInteractor$verifyCredential$finalStatus$1.L$0 = obj;
        return promptCredentialInteractor$verifyCredential$finalStatus$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PromptCredentialInteractor$verifyCredential$finalStatus$1) create((CredentialStatus) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CredentialStatus credentialStatus = (CredentialStatus) this.L$0;
            if (credentialStatus instanceof CredentialStatus$Success$Verified) {
                this.this$0._verificationError.setValue(null);
            } else if (credentialStatus instanceof CredentialStatus.Fail) {
                this.this$0._verificationError.setValue(credentialStatus);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
