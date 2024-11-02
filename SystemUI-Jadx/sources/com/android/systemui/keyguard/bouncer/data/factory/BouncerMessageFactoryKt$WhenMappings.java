package com.android.systemui.keyguard.bouncer.data.factory;

import com.android.keyguard.KeyguardSecurityModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract /* synthetic */ class BouncerMessageFactoryKt$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[KeyguardSecurityModel.SecurityMode.values().length];
        try {
            iArr[KeyguardSecurityModel.SecurityMode.Pattern.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[KeyguardSecurityModel.SecurityMode.Password.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[KeyguardSecurityModel.SecurityMode.PIN.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $EnumSwitchMapping$0 = iArr;
    }
}
