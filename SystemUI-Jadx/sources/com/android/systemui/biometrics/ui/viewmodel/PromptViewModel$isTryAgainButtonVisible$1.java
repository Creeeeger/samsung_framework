package com.android.systemui.biometrics.ui.viewmodel;

import com.android.systemui.biometrics.domain.model.BiometricModalities;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$isTryAgainButtonVisible$1", f = "PromptViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptViewModel$isTryAgainButtonVisible$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    public PromptViewModel$isTryAgainButtonVisible$1(Continuation<? super PromptViewModel$isTryAgainButtonVisible$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        PromptViewModel$isTryAgainButtonVisible$1 promptViewModel$isTryAgainButtonVisible$1 = new PromptViewModel$isTryAgainButtonVisible$1((Continuation) obj3);
        promptViewModel$isTryAgainButtonVisible$1.Z$0 = booleanValue;
        promptViewModel$isTryAgainButtonVisible$1.L$0 = (BiometricModalities) obj2;
        return promptViewModel$isTryAgainButtonVisible$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r3) {
        /*
            r2 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r2.label
            if (r0 != 0) goto L30
            kotlin.ResultKt.throwOnFailure(r3)
            boolean r3 = r2.Z$0
            java.lang.Object r2 = r2.L$0
            com.android.systemui.biometrics.domain.model.BiometricModalities r2 = (com.android.systemui.biometrics.domain.model.BiometricModalities) r2
            r0 = 0
            if (r3 == 0) goto L2b
            android.hardware.face.FaceSensorPropertiesInternal r3 = r2.faceProperties
            r1 = 1
            if (r3 == 0) goto L19
            r3 = r1
            goto L1a
        L19:
            r3 = r0
        L1a:
            if (r3 == 0) goto L27
            android.hardware.fingerprint.FingerprintSensorPropertiesInternal r2 = r2.fingerprintProperties
            if (r2 == 0) goto L22
            r2 = r1
            goto L23
        L22:
            r2 = r0
        L23:
            if (r2 != 0) goto L27
            r2 = r1
            goto L28
        L27:
            r2 = r0
        L28:
            if (r2 == 0) goto L2b
            r0 = r1
        L2b:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r0)
            return r2
        L30:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$isTryAgainButtonVisible$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
