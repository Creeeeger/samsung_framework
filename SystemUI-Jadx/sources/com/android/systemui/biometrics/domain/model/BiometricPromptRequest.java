package com.android.systemui.biometrics.domain.model;

import android.hardware.biometrics.PromptInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BiometricPromptRequest {
    public final String description;
    public final BiometricOperationInfo operationInfo;
    public final String subtitle;
    public final String title;
    public final BiometricUserInfo userInfo;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Biometric extends BiometricPromptRequest {
        public final BiometricModalities modalities;
        public final String negativeButtonText;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Biometric(android.hardware.biometrics.PromptInfo r10, com.android.systemui.biometrics.domain.model.BiometricUserInfo r11, com.android.systemui.biometrics.domain.model.BiometricOperationInfo r12, com.android.systemui.biometrics.domain.model.BiometricModalities r13) {
            /*
                r9 = this;
                java.lang.CharSequence r0 = r10.getTitle()
                java.lang.String r1 = ""
                if (r0 == 0) goto L11
                java.lang.String r0 = r0.toString()
                if (r0 != 0) goto Lf
                goto L11
            Lf:
                r3 = r0
                goto L12
            L11:
                r3 = r1
            L12:
                java.lang.CharSequence r0 = r10.getSubtitle()
                if (r0 == 0) goto L21
                java.lang.String r0 = r0.toString()
                if (r0 != 0) goto L1f
                goto L21
            L1f:
                r4 = r0
                goto L22
            L21:
                r4 = r1
            L22:
                java.lang.CharSequence r0 = r10.getDescription()
                if (r0 == 0) goto L31
                java.lang.String r0 = r0.toString()
                if (r0 != 0) goto L2f
                goto L31
            L2f:
                r5 = r0
                goto L32
            L31:
                r5 = r1
            L32:
                r8 = 0
                r2 = r9
                r6 = r11
                r7 = r12
                r2.<init>(r3, r4, r5, r6, r7, r8)
                r9.modalities = r13
                java.lang.CharSequence r10 = r10.getNegativeButtonText()
                if (r10 == 0) goto L49
                java.lang.String r10 = r10.toString()
                if (r10 != 0) goto L48
                goto L49
            L48:
                r1 = r10
            L49:
                r9.negativeButtonText = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.domain.model.BiometricPromptRequest.Biometric.<init>(android.hardware.biometrics.PromptInfo, com.android.systemui.biometrics.domain.model.BiometricUserInfo, com.android.systemui.biometrics.domain.model.BiometricOperationInfo, com.android.systemui.biometrics.domain.model.BiometricModalities):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Credential extends BiometricPromptRequest {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Password extends Credential {
            public Password(PromptInfo promptInfo, BiometricUserInfo biometricUserInfo, BiometricOperationInfo biometricOperationInfo) {
                super(promptInfo, biometricUserInfo, biometricOperationInfo, null);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Pattern extends Credential {
            public final boolean stealthMode;

            public Pattern(PromptInfo promptInfo, BiometricUserInfo biometricUserInfo, BiometricOperationInfo biometricOperationInfo, boolean z) {
                super(promptInfo, biometricUserInfo, biometricOperationInfo, null);
                this.stealthMode = z;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Pin extends Credential {
            public Pin(PromptInfo promptInfo, BiometricUserInfo biometricUserInfo, BiometricOperationInfo biometricOperationInfo) {
                super(promptInfo, biometricUserInfo, biometricOperationInfo, null);
            }
        }

        public /* synthetic */ Credential(PromptInfo promptInfo, BiometricUserInfo biometricUserInfo, BiometricOperationInfo biometricOperationInfo, DefaultConstructorMarker defaultConstructorMarker) {
            this(promptInfo, biometricUserInfo, biometricOperationInfo);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private Credential(android.hardware.biometrics.PromptInfo r10, com.android.systemui.biometrics.domain.model.BiometricUserInfo r11, com.android.systemui.biometrics.domain.model.BiometricOperationInfo r12) {
            /*
                r9 = this;
                java.lang.CharSequence r0 = r10.getDeviceCredentialTitle()
                if (r0 != 0) goto La
                java.lang.CharSequence r0 = r10.getTitle()
            La:
                java.lang.String r1 = ""
                if (r0 == 0) goto L17
                java.lang.String r0 = r0.toString()
                if (r0 != 0) goto L15
                goto L17
            L15:
                r3 = r0
                goto L18
            L17:
                r3 = r1
            L18:
                java.lang.CharSequence r0 = r10.getDeviceCredentialSubtitle()
                if (r0 != 0) goto L22
                java.lang.CharSequence r0 = r10.getSubtitle()
            L22:
                if (r0 == 0) goto L2d
                java.lang.String r0 = r0.toString()
                if (r0 != 0) goto L2b
                goto L2d
            L2b:
                r4 = r0
                goto L2e
            L2d:
                r4 = r1
            L2e:
                java.lang.CharSequence r0 = r10.getDeviceCredentialDescription()
                if (r0 != 0) goto L38
                java.lang.CharSequence r0 = r10.getDescription()
            L38:
                if (r0 == 0) goto L43
                java.lang.String r10 = r0.toString()
                if (r10 != 0) goto L41
                goto L43
            L41:
                r5 = r10
                goto L44
            L43:
                r5 = r1
            L44:
                r8 = 0
                r2 = r9
                r6 = r11
                r7 = r12
                r2.<init>(r3, r4, r5, r6, r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.domain.model.BiometricPromptRequest.Credential.<init>(android.hardware.biometrics.PromptInfo, com.android.systemui.biometrics.domain.model.BiometricUserInfo, com.android.systemui.biometrics.domain.model.BiometricOperationInfo):void");
        }
    }

    public /* synthetic */ BiometricPromptRequest(String str, String str2, String str3, BiometricUserInfo biometricUserInfo, BiometricOperationInfo biometricOperationInfo, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, biometricUserInfo, biometricOperationInfo);
    }

    private BiometricPromptRequest(String str, String str2, String str3, BiometricUserInfo biometricUserInfo, BiometricOperationInfo biometricOperationInfo) {
        this.title = str;
        this.subtitle = str2;
        this.description = str3;
        this.userInfo = biometricUserInfo;
        this.operationInfo = biometricOperationInfo;
    }
}
