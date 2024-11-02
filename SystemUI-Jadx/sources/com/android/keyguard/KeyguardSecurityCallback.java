package com.android.keyguard;

import com.android.internal.widget.LockscreenCredential;
import com.android.keyguard.KeyguardSecurityModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface KeyguardSecurityCallback {
    default void dismiss(int i, KeyguardSecurityModel.SecurityMode securityMode, boolean z) {
    }

    default boolean dismiss(boolean z, int i, boolean z2, KeyguardSecurityModel.SecurityMode securityMode) {
        return false;
    }

    default void onSecurityModeChanged(boolean z) {
    }

    default void setPrevCredential(LockscreenCredential lockscreenCredential) {
    }

    default void showBackupSecurity(KeyguardSecurityModel.SecurityMode securityMode) {
    }

    default void onCancelClicked() {
    }

    default void onUserInput() {
    }

    default void reset() {
    }

    default void userActivity() {
    }

    default void finish(int i, boolean z) {
    }

    default void reportUnlockAttempt(int i, int i2, boolean z) {
    }
}
