package com.android.systemui.biometrics.ui.viewmodel;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CredentialViewModelKt {
    public static final String asBadCredentialErrorMessage(Context context, ClassReference classReference) {
        int i;
        if (Intrinsics.areEqual(classReference, Reflection.getOrCreateKotlinClass(BiometricPromptRequest.Credential.Pin.class))) {
            i = R.string.biometric_dialog_wrong_pin;
        } else if (!Intrinsics.areEqual(classReference, Reflection.getOrCreateKotlinClass(BiometricPromptRequest.Credential.Password.class)) && Intrinsics.areEqual(classReference, Reflection.getOrCreateKotlinClass(BiometricPromptRequest.Credential.Pattern.class))) {
            i = R.string.biometric_dialog_wrong_pattern;
        } else {
            i = R.string.biometric_dialog_wrong_password;
        }
        return context.getString(i);
    }
}
