package com.android.systemui.biometrics.ui.binder;

import com.android.systemui.biometrics.domain.model.BiometricModality;
import com.android.systemui.biometrics.domain.model.BiometricModalityKt;
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
@DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.Spaghetti$onAuthenticationSucceeded$1", f = "BiometricViewBinder.kt", l = {444, 445}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Spaghetti$onAuthenticationSucceeded$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $modality;
    Object L$0;
    int label;
    final /* synthetic */ Spaghetti this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Spaghetti$onAuthenticationSucceeded$1(int i, Spaghetti spaghetti, Continuation<? super Spaghetti$onAuthenticationSucceeded$1> continuation) {
        super(2, continuation);
        this.$modality = i;
        this.this$0 = spaghetti;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Spaghetti$onAuthenticationSucceeded$1(this.$modality, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Spaghetti$onAuthenticationSucceeded$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BiometricModality asBiometricModality;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            asBiometricModality = (BiometricModality) this.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            asBiometricModality = BiometricModalityKt.asBiometricModality(this.$modality);
            Spaghetti spaghetti = this.this$0;
            this.L$0 = asBiometricModality;
            this.label = 1;
            obj = Spaghetti.access$getHelpForSuccessfulAuthentication(spaghetti, asBiometricModality, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        BiometricModality biometricModality = asBiometricModality;
        Integer num = (Integer) obj;
        Spaghetti spaghetti2 = this.this$0;
        PromptViewModel promptViewModel = spaghetti2.viewModel;
        if (num != null) {
            str = spaghetti2.applicationContext.getString(num.intValue());
        } else {
            str = "";
        }
        this.L$0 = null;
        this.label = 2;
        if (promptViewModel.showAuthenticated(biometricModality, 500L, str, this) == coroutineSingletons) {
            return coroutineSingletons;
        }
        return Unit.INSTANCE;
    }
}
