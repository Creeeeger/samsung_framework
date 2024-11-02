package com.android.systemui.biometrics.domain.interactor;

import com.android.systemui.biometrics.data.repository.PromptRepository;
import com.android.systemui.biometrics.data.repository.PromptRepositoryImpl;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PromptCredentialInteractor {
    public final StateFlowImpl _verificationError;
    public final CoroutineDispatcher bgDispatcher;
    public final CredentialInteractor credentialInteractor;
    public final Flow prompt;
    public final ReadonlyStateFlow verificationError;

    public PromptCredentialInteractor(CoroutineDispatcher coroutineDispatcher, PromptRepository promptRepository, CredentialInteractor credentialInteractor) {
        this.bgDispatcher = coroutineDispatcher;
        this.credentialInteractor = credentialInteractor;
        PromptRepositoryImpl promptRepositoryImpl = (PromptRepositoryImpl) promptRepository;
        this.prompt = FlowKt.distinctUntilChanged(FlowKt.combine(promptRepositoryImpl.promptInfo, promptRepositoryImpl.challenge, promptRepositoryImpl.userId, promptRepositoryImpl.kind, new PromptCredentialInteractor$prompt$1(this, null)));
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._verificationError = MutableStateFlow;
        this.verificationError = FlowKt.asStateFlow(MutableStateFlow);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object access$verifyCredential(com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor r17, com.android.systemui.biometrics.domain.model.BiometricPromptRequest.Credential r18, com.android.internal.widget.LockscreenCredential r19, kotlin.coroutines.Continuation r20) {
        /*
            r0 = r17
            r1 = r19
            r2 = r20
            r17.getClass()
            boolean r3 = r2 instanceof com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$1
            if (r3 == 0) goto L1c
            r3 = r2
            com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$1 r3 = (com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L1c
            int r4 = r4 - r5
            r3.label = r4
            goto L21
        L1c:
            com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$1 r3 = new com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$1
            r3.<init>(r0, r2)
        L21:
            java.lang.Object r2 = r3.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r3.label
            r6 = 1
            if (r5 == 0) goto L38
            if (r5 != r6) goto L30
            kotlin.ResultKt.throwOnFailure(r2)
            goto L6b
        L30:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L38:
            kotlin.ResultKt.throwOnFailure(r2)
            if (r1 == 0) goto L7c
            boolean r2 = r19.isNone()
            if (r2 == 0) goto L44
            goto L7c
        L44:
            com.android.systemui.biometrics.domain.interactor.CredentialInteractor r2 = r0.credentialInteractor
            com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl r2 = (com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl) r2
            r2.getClass()
            com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl$verifyCredential$1 r5 = new com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl$verifyCredential$1
            r7 = 0
            r8 = r18
            r5.<init>(r8, r2, r1, r7)
            kotlinx.coroutines.flow.SafeFlow r1 = new kotlinx.coroutines.flow.SafeFlow
            r1.<init>(r5)
            com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$finalStatus$1 r2 = new com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$verifyCredential$finalStatus$1
            r2.<init>(r0, r7)
            kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1
            r0.<init>(r1, r2)
            r3.label = r6
            java.lang.Object r2 = kotlinx.coroutines.flow.FlowKt.lastOrNull(r0, r3)
            if (r2 != r4) goto L6b
            goto L88
        L6b:
            r4 = r2
            com.android.systemui.biometrics.domain.interactor.CredentialStatus r4 = (com.android.systemui.biometrics.domain.interactor.CredentialStatus) r4
            if (r4 != 0) goto L88
            com.android.systemui.biometrics.domain.interactor.CredentialStatus$Fail$Error r4 = new com.android.systemui.biometrics.domain.interactor.CredentialStatus$Fail$Error
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 7
            r10 = 0
            r5 = r4
            r5.<init>(r6, r7, r8, r9, r10)
            goto L88
        L7c:
            com.android.systemui.biometrics.domain.interactor.CredentialStatus$Fail$Error r4 = new com.android.systemui.biometrics.domain.interactor.CredentialStatus$Fail$Error
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 7
            r16 = 0
            r11 = r4
            r11.<init>(r12, r13, r14, r15, r16)
        L88:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor.access$verifyCredential(com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor, com.android.systemui.biometrics.domain.model.BiometricPromptRequest$Credential, com.android.internal.widget.LockscreenCredential, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object checkCredential$default(PromptCredentialInteractor promptCredentialInteractor, BiometricPromptRequest.Credential credential, CharSequence charSequence, List list, ContinuationImpl continuationImpl, int i) {
        CharSequence charSequence2;
        List list2;
        if ((i & 2) != 0) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        if ((i & 4) != 0) {
            list2 = null;
        } else {
            list2 = list;
        }
        promptCredentialInteractor.getClass();
        return BuildersKt.withContext(promptCredentialInteractor.bgDispatcher, new PromptCredentialInteractor$checkCredential$2(credential, charSequence2, list2, promptCredentialInteractor, null), continuationImpl);
    }
}
