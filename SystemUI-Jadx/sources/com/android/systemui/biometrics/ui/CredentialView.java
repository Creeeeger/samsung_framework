package com.android.systemui.biometrics.ui;

import com.android.systemui.biometrics.AuthPanelController;
import com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface CredentialView {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Host {
    }

    void init(CredentialViewModel credentialViewModel, Host host, AuthPanelController authPanelController, boolean z);
}
