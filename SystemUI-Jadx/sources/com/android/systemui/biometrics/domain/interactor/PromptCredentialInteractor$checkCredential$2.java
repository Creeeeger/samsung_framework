package com.android.systemui.biometrics.domain.interactor;

import com.android.internal.widget.LockPatternView;
import com.android.internal.widget.LockscreenCredential;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$checkCredential$2", f = "PromptCredentialInteractor.kt", l = {160}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptCredentialInteractor$checkCredential$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ List<LockPatternView.Cell> $pattern;
    final /* synthetic */ BiometricPromptRequest.Credential $request;
    final /* synthetic */ CharSequence $text;
    Object L$0;
    int label;
    final /* synthetic */ PromptCredentialInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromptCredentialInteractor$checkCredential$2(BiometricPromptRequest.Credential credential, CharSequence charSequence, List<LockPatternView.Cell> list, PromptCredentialInteractor promptCredentialInteractor, Continuation<? super PromptCredentialInteractor$checkCredential$2> continuation) {
        super(2, continuation);
        this.$request = credential;
        this.$text = charSequence;
        this.$pattern = list;
        this.this$0 = promptCredentialInteractor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PromptCredentialInteractor$checkCredential$2(this.$request, this.$text, this.$pattern, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PromptCredentialInteractor$checkCredential$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.CharSequence] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AutoCloseable createPattern;
        Throwable th;
        AutoCloseable autoCloseable;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                autoCloseable = (AutoCloseable) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        AutoCloseableKt.closeFinally(autoCloseable, th);
                        throw th3;
                    }
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            BiometricPromptRequest.Credential credential = this.$request;
            String str = "";
            if (credential instanceof BiometricPromptRequest.Credential.Pin) {
                ?? r6 = this.$text;
                if (r6 != 0) {
                    str = r6;
                }
                createPattern = LockscreenCredential.createPinOrNone(str);
            } else if (credential instanceof BiometricPromptRequest.Credential.Password) {
                ?? r62 = this.$text;
                if (r62 != 0) {
                    str = r62;
                }
                createPattern = LockscreenCredential.createPasswordOrNone(str);
            } else if (credential instanceof BiometricPromptRequest.Credential.Pattern) {
                List list = this.$pattern;
                if (list == null) {
                    list = EmptyList.INSTANCE;
                }
                createPattern = LockscreenCredential.createPattern(list);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            PromptCredentialInteractor promptCredentialInteractor = this.this$0;
            BiometricPromptRequest.Credential credential2 = this.$request;
            try {
                this.L$0 = createPattern;
                this.label = 1;
                Object access$verifyCredential = PromptCredentialInteractor.access$verifyCredential(promptCredentialInteractor, credential2, createPattern, this);
                if (access$verifyCredential == coroutineSingletons) {
                    return coroutineSingletons;
                }
                AutoCloseable autoCloseable2 = createPattern;
                obj = access$verifyCredential;
                autoCloseable = autoCloseable2;
            } catch (Throwable th4) {
                AutoCloseable autoCloseable3 = createPattern;
                th = th4;
                autoCloseable = autoCloseable3;
                throw th;
            }
        }
        CredentialStatus credentialStatus = (CredentialStatus) obj;
        AutoCloseableKt.closeFinally(autoCloseable, null);
        return credentialStatus;
    }
}
