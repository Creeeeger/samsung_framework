package com.android.systemui.biometrics.domain.interactor;

import com.android.internal.widget.LockscreenCredential;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl$verifyCredential$1", f = "CredentialInteractor.kt", l = {92, 101, 109, 112, 118, 121}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CredentialInteractorImpl$verifyCredential$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ LockscreenCredential $credential;
    final /* synthetic */ BiometricPromptRequest.Credential $request;
    int I$0;
    long J$0;
    long J$1;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CredentialInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialInteractorImpl$verifyCredential$1(BiometricPromptRequest.Credential credential, CredentialInteractorImpl credentialInteractorImpl, LockscreenCredential lockscreenCredential, Continuation<? super CredentialInteractorImpl$verifyCredential$1> continuation) {
        super(2, continuation);
        this.$request = credential;
        this.this$0 = credentialInteractorImpl;
        this.$credential = lockscreenCredential;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CredentialInteractorImpl$verifyCredential$1 credentialInteractorImpl$verifyCredential$1 = new CredentialInteractorImpl$verifyCredential$1(this.$request, this.this$0, this.$credential, continuation);
        credentialInteractorImpl$verifyCredential$1.L$0 = obj;
        return credentialInteractorImpl$verifyCredential$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CredentialInteractorImpl$verifyCredential$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ee A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00ec -> B:11:0x00ef). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl$verifyCredential$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
