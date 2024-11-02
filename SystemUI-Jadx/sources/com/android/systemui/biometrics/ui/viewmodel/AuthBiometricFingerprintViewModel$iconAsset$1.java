package com.android.systemui.biometrics.ui.viewmodel;

import com.android.systemui.R;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.ui.viewmodel.AuthBiometricFingerprintViewModel$iconAsset$1", f = "AuthBiometricFingerprintViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class AuthBiometricFingerprintViewModel$iconAsset$1 extends SuspendLambda implements Function3 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;
    final /* synthetic */ AuthBiometricFingerprintViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthBiometricFingerprintViewModel$iconAsset$1(AuthBiometricFingerprintViewModel authBiometricFingerprintViewModel, Continuation<? super AuthBiometricFingerprintViewModel$iconAsset$1> continuation) {
        super(3, continuation);
        this.this$0 = authBiometricFingerprintViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        AuthBiometricFingerprintViewModel$iconAsset$1 authBiometricFingerprintViewModel$iconAsset$1 = new AuthBiometricFingerprintViewModel$iconAsset$1(this.this$0, (Continuation) obj3);
        authBiometricFingerprintViewModel$iconAsset$1.Z$0 = booleanValue;
        authBiometricFingerprintViewModel$iconAsset$1.Z$1 = booleanValue2;
        return authBiometricFingerprintViewModel$iconAsset$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            boolean z2 = this.Z$1;
            int i2 = this.this$0.rotation;
            if (i2 != 1) {
                if (i2 != 3) {
                    if (z2) {
                        i = R.raw.biometricprompt_rear_landscape_base;
                    } else if (z) {
                        i = R.raw.biometricprompt_folded_base_default;
                    } else {
                        i = R.raw.biometricprompt_landscape_base;
                    }
                } else if (z2) {
                    i = R.raw.biometricprompt_rear_portrait_base;
                } else if (z) {
                    i = R.raw.biometricprompt_folded_base_bottomright;
                } else {
                    i = R.raw.biometricprompt_portrait_base_bottomright;
                }
            } else if (z2) {
                i = R.raw.biometricprompt_rear_portrait_reverse_base;
            } else if (z) {
                i = R.raw.biometricprompt_folded_base_topleft;
            } else {
                i = R.raw.biometricprompt_portrait_base_topleft;
            }
            return new Integer(i);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
