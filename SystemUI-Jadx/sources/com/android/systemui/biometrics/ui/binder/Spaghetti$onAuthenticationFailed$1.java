package com.android.systemui.biometrics.ui.binder;

import com.android.systemui.biometrics.domain.model.BiometricModality;
import com.android.systemui.biometrics.ui.viewmodel.PromptViewModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.Spaghetti$onAuthenticationFailed$1", f = "BiometricViewBinder.kt", l = {481}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Spaghetti$onAuthenticationFailed$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ BiometricModality $failedModality;
    final /* synthetic */ String $failureReason;
    int label;
    final /* synthetic */ Spaghetti this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Spaghetti$onAuthenticationFailed$1(Spaghetti spaghetti, BiometricModality biometricModality, String str, Continuation<? super Spaghetti$onAuthenticationFailed$1> continuation) {
        super(2, continuation);
        this.this$0 = spaghetti;
        this.$failedModality = biometricModality;
        this.$failureReason = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Spaghetti$onAuthenticationFailed$1(this.this$0, this.$failedModality, this.$failureReason, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Spaghetti$onAuthenticationFailed$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        boolean z2;
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
            if (this.this$0.modalities.getHasFaceAndFingerprint() && this.$failedModality == BiometricModality.Face && this.this$0.faceFailedAtLeastOnce) {
                z = true;
            } else {
                z = false;
            }
            if (this.$failedModality == BiometricModality.Face) {
                this.this$0.faceFailedAtLeastOnce = true;
            }
            Spaghetti spaghetti = this.this$0;
            PromptViewModel promptViewModel = spaghetti.viewModel;
            String str = this.$failureReason;
            String access$asDefaultHelpMessage = BiometricViewBinderKt.access$asDefaultHelpMessage(spaghetti.modalities, spaghetti.applicationContext);
            if (this.this$0.modalities.fingerprintProperties != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            BiometricModality biometricModality = this.$failedModality;
            this.label = 1;
            if (promptViewModel.showTemporaryError(str, access$asDefaultHelpMessage, z2, z, biometricModality, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
