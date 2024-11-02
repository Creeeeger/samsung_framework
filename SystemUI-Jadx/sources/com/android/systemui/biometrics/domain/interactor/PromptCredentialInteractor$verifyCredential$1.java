package com.android.systemui.biometrics.domain.interactor;

import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor", f = "PromptCredentialInteractor.kt", l = {180}, m = "verifyCredential")
/* loaded from: classes.dex */
public final class PromptCredentialInteractor$verifyCredential$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PromptCredentialInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromptCredentialInteractor$verifyCredential$1(PromptCredentialInteractor promptCredentialInteractor, Continuation<? super PromptCredentialInteractor$verifyCredential$1> continuation) {
        super(continuation);
        this.this$0 = promptCredentialInteractor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return PromptCredentialInteractor.access$verifyCredential(this.this$0, null, null, this);
    }
}
