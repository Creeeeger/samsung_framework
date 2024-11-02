package com.android.systemui.biometrics.ui.binder;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.biometrics.domain.model.BiometricModalities;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BiometricViewBinderKt {
    public static final String access$asDefaultHelpMessage(BiometricModalities biometricModalities, Context context) {
        boolean z;
        if (biometricModalities.fingerprintProperties != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return context.getString(R.string.fingerprint_dialog_touch_sensor);
        }
        return "";
    }
}
