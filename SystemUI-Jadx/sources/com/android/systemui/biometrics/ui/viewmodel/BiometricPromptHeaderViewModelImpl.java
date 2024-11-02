package com.android.systemui.biometrics.ui.viewmodel;

import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import com.android.systemui.biometrics.domain.model.BiometricPromptRequest;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricPromptHeaderViewModelImpl implements CredentialHeaderViewModel {
    public final String description;
    public final Drawable icon;
    public final BiometricPromptRequest.Credential request;
    public final String subtitle;
    public final String title;
    public final UserHandle user;

    public BiometricPromptHeaderViewModelImpl(BiometricPromptRequest.Credential credential, UserHandle userHandle, String str, String str2, String str3, Drawable drawable) {
        this.request = credential;
        this.user = userHandle;
        this.title = str;
        this.subtitle = str2;
        this.description = str3;
        this.icon = drawable;
    }
}
