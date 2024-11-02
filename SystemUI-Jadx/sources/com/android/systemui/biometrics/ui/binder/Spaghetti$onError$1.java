package com.android.systemui.biometrics.ui.binder;

import com.android.systemui.biometrics.domain.model.BiometricModality;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.binder.Spaghetti$onError$1", f = "BiometricViewBinder.kt", l = {500, 504}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Spaghetti$onError$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $error;
    final /* synthetic */ BiometricModality $errorModality;
    int label;
    final /* synthetic */ Spaghetti this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Spaghetti$onError$1(Spaghetti spaghetti, BiometricModality biometricModality, String str, Continuation<? super Spaghetti$onError$1> continuation) {
        super(2, continuation);
        this.this$0 = spaghetti;
        this.$errorModality = biometricModality;
        this.$error = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Spaghetti$onError$1(this.this$0, this.$errorModality, this.$error, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Spaghetti$onError$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x005b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 == r3) goto L18
            if (r1 != r2) goto L10
            kotlin.ResultKt.throwOnFailure(r12)
            goto L55
        L10:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L18:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L4a
        L1c:
            kotlin.ResultKt.throwOnFailure(r12)
            com.android.systemui.biometrics.ui.binder.Spaghetti r12 = r11.this$0
            com.android.systemui.biometrics.domain.model.BiometricModalities r12 = r12.modalities
            boolean r12 = r12.getHasFaceAndFingerprint()
            if (r12 == 0) goto L31
            com.android.systemui.biometrics.domain.model.BiometricModality r12 = r11.$errorModality
            com.android.systemui.biometrics.domain.model.BiometricModality r1 = com.android.systemui.biometrics.domain.model.BiometricModality.Face
            if (r12 != r1) goto L31
            r8 = r3
            goto L33
        L31:
            r12 = 0
            r8 = r12
        L33:
            com.android.systemui.biometrics.ui.binder.Spaghetti r12 = r11.this$0
            com.android.systemui.biometrics.ui.viewmodel.PromptViewModel r4 = r12.viewModel
            java.lang.String r5 = r11.$error
            r11.label = r3
            int r12 = com.android.systemui.biometrics.ui.viewmodel.PromptViewModel.$r8$clinit
            java.lang.String r6 = ""
            r7 = 0
            com.android.systemui.biometrics.domain.model.BiometricModality r9 = com.android.systemui.biometrics.domain.model.BiometricModality.None
            r10 = r11
            java.lang.Object r12 = r4.showTemporaryError(r5, r6, r7, r8, r9, r10)
            if (r12 != r0) goto L4a
            return r0
        L4a:
            r11.label = r2
            r1 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.delay(r1, r11)
            if (r12 != r0) goto L55
            return r0
        L55:
            com.android.systemui.biometrics.ui.binder.Spaghetti r11 = r11.this$0
            com.android.systemui.biometrics.AuthBiometricView$Callback r11 = r11.legacyCallback
            if (r11 == 0) goto L5f
            r12 = 5
            r11.onAction(r12)
        L5f:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.ui.binder.Spaghetti$onError$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
