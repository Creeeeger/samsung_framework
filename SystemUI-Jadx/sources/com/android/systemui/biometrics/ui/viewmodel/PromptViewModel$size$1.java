package com.android.systemui.biometrics.ui.viewmodel;

import com.android.systemui.biometrics.domain.model.BiometricModalities;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$size$1", f = "PromptViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PromptViewModel$size$1 extends SuspendLambda implements Function6 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    int label;

    public PromptViewModel$size$1(Continuation<? super PromptViewModel$size$1> continuation) {
        super(6, continuation);
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        boolean booleanValue3 = ((Boolean) obj4).booleanValue();
        PromptViewModel$size$1 promptViewModel$size$1 = new PromptViewModel$size$1((Continuation) obj6);
        promptViewModel$size$1.Z$0 = booleanValue;
        promptViewModel$size$1.Z$1 = booleanValue2;
        promptViewModel$size$1.L$0 = (BiometricModalities) obj3;
        promptViewModel$size$1.Z$2 = booleanValue3;
        promptViewModel$size$1.L$1 = (FingerprintStartMode) obj5;
        return promptViewModel$size$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
    
        if (r5 == false) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r4.label
            if (r0 != 0) goto L50
            kotlin.ResultKt.throwOnFailure(r5)
            boolean r5 = r4.Z$0
            boolean r0 = r4.Z$1
            java.lang.Object r1 = r4.L$0
            com.android.systemui.biometrics.domain.model.BiometricModalities r1 = (com.android.systemui.biometrics.domain.model.BiometricModalities) r1
            boolean r2 = r4.Z$2
            java.lang.Object r4 = r4.L$1
            com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode r4 = (com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode) r4
            if (r5 == 0) goto L1c
            com.android.systemui.biometrics.ui.viewmodel.PromptSize r4 = com.android.systemui.biometrics.ui.viewmodel.PromptSize.LARGE
            goto L4f
        L1c:
            if (r0 == 0) goto L21
            com.android.systemui.biometrics.ui.viewmodel.PromptSize r4 = com.android.systemui.biometrics.ui.viewmodel.PromptSize.MEDIUM
            goto L4f
        L21:
            android.hardware.face.FaceSensorPropertiesInternal r5 = r1.faceProperties
            r0 = 1
            r3 = 0
            if (r5 == 0) goto L29
            r5 = r0
            goto L2a
        L29:
            r5 = r3
        L2a:
            if (r5 == 0) goto L36
            android.hardware.fingerprint.FingerprintSensorPropertiesInternal r5 = r1.fingerprintProperties
            if (r5 == 0) goto L32
            r5 = r0
            goto L33
        L32:
            r5 = r3
        L33:
            if (r5 != 0) goto L36
            goto L37
        L36:
            r0 = r3
        L37:
            if (r0 == 0) goto L3e
            if (r2 != 0) goto L3e
            com.android.systemui.biometrics.ui.viewmodel.PromptSize r4 = com.android.systemui.biometrics.ui.viewmodel.PromptSize.SMALL
            goto L4f
        L3e:
            boolean r5 = r1.getHasFaceAndFingerprint()
            if (r5 == 0) goto L4d
            if (r2 != 0) goto L4d
            com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode r5 = com.android.systemui.biometrics.ui.viewmodel.FingerprintStartMode.Pending
            if (r4 != r5) goto L4d
            com.android.systemui.biometrics.ui.viewmodel.PromptSize r4 = com.android.systemui.biometrics.ui.viewmodel.PromptSize.SMALL
            goto L4f
        L4d:
            com.android.systemui.biometrics.ui.viewmodel.PromptSize r4 = com.android.systemui.biometrics.ui.viewmodel.PromptSize.MEDIUM
        L4f:
            return r4
        L50:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$size$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
