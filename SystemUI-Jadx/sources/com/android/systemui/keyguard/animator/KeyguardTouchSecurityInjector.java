package com.android.systemui.keyguard.animator;

import android.hardware.fingerprint.FingerprintManager;
import android.util.Log;
import android.view.MotionEvent;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTouchSecurityInjector {
    public final FingerprintManager mFingerprintManager;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;

    public KeyguardTouchSecurityInjector(KeyguardUpdateMonitor keyguardUpdateMonitor, FingerprintManager fingerprintManager) {
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mFingerprintManager = fingerprintManager == null ? null : fingerprintManager;
    }

    public final boolean isFingerprintArea(MotionEvent motionEvent) {
        FingerprintManager fingerprintManager;
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && (fingerprintManager = this.mFingerprintManager) != null) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
            if (keyguardUpdateMonitor.isFingerprintOptionEnabled() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && fingerprintManager.semGetSensorAreaInDisplay().contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                Log.e("KeyguardFingerPrintSwipe", "mLongPressCallback canceled. Touch position is FP-InDisplay area!");
                return true;
            }
            return false;
        }
        return false;
    }
}
