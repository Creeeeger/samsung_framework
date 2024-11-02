package com.android.systemui.biometrics;

import android.os.Bundle;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface AuthBiometricViewAdapter {
    View asView();

    void cancelAnimation();

    boolean isCoex();

    void onAuthenticationFailed(int i, String str);

    void onAuthenticationSucceeded(int i);

    void onDialogAnimatedIn(boolean z);

    void onError(int i, String str);

    void onHelp(int i, String str);

    void onOrientationChanged();

    void onSaveState(Bundle bundle);

    void requestLayout();

    void restoreState(Bundle bundle);

    void startTransitionToCredentialUI();
}
