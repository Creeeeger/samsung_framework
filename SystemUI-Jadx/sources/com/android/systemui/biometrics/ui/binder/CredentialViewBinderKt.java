package com.android.systemui.biometrics.ui.binder;

import android.widget.TextView;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CredentialViewBinderKt {
    public static final void access$setTextOrHide(TextView textView, String str) {
        boolean z;
        int i = 0;
        if (str != null && !StringsKt__StringsJVMKt.isBlank(str)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (z) {
            str = "";
        }
        textView.setText(str);
    }
}
