package com.android.keyguard;

import android.hardware.biometrics.BiometricSourceType;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardBiometricLockoutLogger;
import com.android.systemui.CoreStartable;
import com.android.systemui.log.SessionTracker;
import java.io.PrintWriter;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBiometricLockoutLogger implements CoreStartable {
    public static final Companion Companion = new Companion(null);
    public boolean encryptedOrLockdown;
    public boolean faceLockedOut;
    public boolean fingerprintLockedOut;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onLockedOutStateChanged(BiometricSourceType biometricSourceType) {
            BiometricSourceType biometricSourceType2 = BiometricSourceType.FINGERPRINT;
            KeyguardBiometricLockoutLogger keyguardBiometricLockoutLogger = KeyguardBiometricLockoutLogger.this;
            if (biometricSourceType == biometricSourceType2) {
                boolean isFingerprintLockedOut = keyguardBiometricLockoutLogger.keyguardUpdateMonitor.isFingerprintLockedOut();
                if (isFingerprintLockedOut && !keyguardBiometricLockoutLogger.fingerprintLockedOut) {
                    keyguardBiometricLockoutLogger.uiEventLogger.log(KeyguardBiometricLockoutLogger.PrimaryAuthRequiredEvent.PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT, keyguardBiometricLockoutLogger.sessionTracker.getSessionId(1));
                } else if (!isFingerprintLockedOut && keyguardBiometricLockoutLogger.fingerprintLockedOut) {
                    keyguardBiometricLockoutLogger.uiEventLogger.log(KeyguardBiometricLockoutLogger.PrimaryAuthRequiredEvent.PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET, keyguardBiometricLockoutLogger.sessionTracker.getSessionId(1));
                }
                keyguardBiometricLockoutLogger.fingerprintLockedOut = isFingerprintLockedOut;
                return;
            }
            if (biometricSourceType == BiometricSourceType.FACE) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardBiometricLockoutLogger.keyguardUpdateMonitor;
                keyguardUpdateMonitor.getClass();
                boolean z = keyguardUpdateMonitor.mFaceLockedOutPermanent;
                if (z && !keyguardBiometricLockoutLogger.faceLockedOut) {
                    keyguardBiometricLockoutLogger.uiEventLogger.log(KeyguardBiometricLockoutLogger.PrimaryAuthRequiredEvent.PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT, keyguardBiometricLockoutLogger.sessionTracker.getSessionId(1));
                } else if (!z && keyguardBiometricLockoutLogger.faceLockedOut) {
                    keyguardBiometricLockoutLogger.uiEventLogger.log(KeyguardBiometricLockoutLogger.PrimaryAuthRequiredEvent.PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET, keyguardBiometricLockoutLogger.sessionTracker.getSessionId(1));
                }
                keyguardBiometricLockoutLogger.faceLockedOut = z;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:52:0x00ea, code lost:
        
            if (r8 != false) goto L66;
         */
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onStrongAuthStateChanged(int r8) {
            /*
                Method dump skipped, instructions count: 251
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1.onStrongAuthStateChanged(int):void");
        }
    };
    public final SessionTracker sessionTracker;
    public int strongAuthFlags;
    public boolean timeout;
    public final UiEventLogger uiEventLogger;
    public boolean unattendedUpdate;
    public final ViewMediatorCallback viewMediatorCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum PrimaryAuthRequiredEvent implements UiEventLogger.UiEventEnum {
        PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT(924),
        PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET(925),
        PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT(926),
        PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET(927),
        PRIMARY_AUTH_REQUIRED_ENCRYPTED_OR_LOCKDOWN(928),
        PRIMARY_AUTH_REQUIRED_TIMEOUT(929),
        PRIMARY_AUTH_REQUIRED_UNATTENDED_UPDATE(931);

        private final int mId;

        PrimaryAuthRequiredEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public KeyguardBiometricLockoutLogger(ViewMediatorCallback viewMediatorCallback, UiEventLogger uiEventLogger, KeyguardUpdateMonitor keyguardUpdateMonitor, SessionTracker sessionTracker) {
        this.viewMediatorCallback = viewMediatorCallback;
        this.uiEventLogger = uiEventLogger;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.sessionTracker = sessionTracker;
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  mFingerprintLockedOut=", this.fingerprintLockedOut, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  mFaceLockedOut=", this.faceLockedOut, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  mIsEncryptedOrLockdown=", this.encryptedOrLockdown, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  mIsUnattendedUpdate=", this.unattendedUpdate, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  mIsTimeout=", this.timeout, printWriter);
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        this.mKeyguardUpdateMonitorCallback.onStrongAuthStateChanged(KeyguardUpdateMonitor.getCurrentUser());
        this.keyguardUpdateMonitor.registerCallback(this.mKeyguardUpdateMonitorCallback);
    }
}
