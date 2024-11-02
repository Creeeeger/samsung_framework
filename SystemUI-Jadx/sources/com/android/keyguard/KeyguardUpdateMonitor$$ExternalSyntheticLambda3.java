package com.android.keyguard;

import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger;
import com.android.systemui.LsRune;
import com.android.systemui.log.LogLevel;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardUpdateMonitor$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardUpdateMonitor f$0;

    public /* synthetic */ KeyguardUpdateMonitor$$ExternalSyntheticLambda3(KeyguardUpdateMonitor keyguardUpdateMonitor, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardUpdateMonitor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        int i;
        switch (this.$r8$classId) {
            case 0:
                KeyguardUpdateMonitor keyguardUpdateMonitor = this.f$0;
                keyguardUpdateMonitor.getClass();
                keyguardUpdateMonitor.updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET);
                return;
            case 1:
                this.f$0.updateFingerprintListeningState(2);
                return;
            case 2:
                KeyguardUpdateMonitor keyguardUpdateMonitor2 = this.f$0;
                KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger = keyguardUpdateMonitor2.mLogger;
                keyguardUpdateMonitorLogger.getClass();
                keyguardUpdateMonitorLogger.log("Fp cancellation not received, transitioning to STOPPED", LogLevel.ERROR);
                if (keyguardUpdateMonitor2.mFingerprintRunningState == 3) {
                    z = true;
                } else {
                    z = false;
                }
                keyguardUpdateMonitor2.mFingerprintRunningState = 0;
                if (z) {
                    keyguardUpdateMonitor2.updateFingerprintListeningState(2);
                    return;
                } else {
                    keyguardUpdateMonitor2.updateFingerprintListeningState(1);
                    return;
                }
            case 3:
                KeyguardUpdateMonitor keyguardUpdateMonitor3 = this.f$0;
                KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger2 = keyguardUpdateMonitor3.mLogger;
                keyguardUpdateMonitorLogger2.getClass();
                keyguardUpdateMonitorLogger2.log("Face cancellation not received, transitioning to STOPPED", LogLevel.ERROR);
                keyguardUpdateMonitor3.mFaceRunningState = 0;
                keyguardUpdateMonitor3.updateFaceListeningState(1, FaceAuthUiEvent.FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED);
                return;
            case 4:
                KeyguardUpdateMonitor keyguardUpdateMonitor4 = this.f$0;
                keyguardUpdateMonitor4.getClass();
                int defaultSubscriptionId = SubscriptionManager.getDefaultSubscriptionId();
                ServiceState serviceStateForSubscriber = keyguardUpdateMonitor4.mTelephonyManager.getServiceStateForSubscriber(defaultSubscriptionId);
                KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = keyguardUpdateMonitor4.mHandler;
                if (LsRune.SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE) {
                    i = VolteConstants.ErrorCode.CALL_END_REASON_TELEPHONY_NOT_RESPONDING;
                } else {
                    i = 330;
                }
                anonymousClass15.sendMessage(anonymousClass15.obtainMessage(i, defaultSubscriptionId, 0, serviceStateForSubscriber));
                return;
            case 5:
                KeyguardUpdateMonitor keyguardUpdateMonitor5 = this.f$0;
                keyguardUpdateMonitor5.mTrustManager.registerTrustListener(keyguardUpdateMonitor5);
                keyguardUpdateMonitor5.setStrongAuthTracker(keyguardUpdateMonitor5.mStrongAuthTracker);
                return;
            case 6:
                KeyguardUpdateMonitor keyguardUpdateMonitor6 = this.f$0;
                keyguardUpdateMonitor6.mTelephonyListenerManager.addActiveDataSubscriptionIdListener(keyguardUpdateMonitor6.mPhoneStateListener);
                for (int i2 = 0; i2 < keyguardUpdateMonitor6.mTelephonyManager.getActiveModemCount(); i2++) {
                    int simState = keyguardUpdateMonitor6.mTelephonyManager.getSimState(i2);
                    int[] subscriptionIds = keyguardUpdateMonitor6.mSubscriptionManager.getSubscriptionIds(i2);
                    if (subscriptionIds != null) {
                        for (int i3 : subscriptionIds) {
                            keyguardUpdateMonitor6.mHandler.obtainMessage(304, i3, i2, Integer.valueOf(simState)).sendToTarget();
                        }
                    }
                }
                return;
            case 7:
                KeyguardUpdateMonitor keyguardUpdateMonitor7 = this.f$0;
                keyguardUpdateMonitor7.getClass();
                keyguardUpdateMonitor7.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_USER_SWITCHING);
                return;
            default:
                KeyguardUpdateMonitor keyguardUpdateMonitor8 = this.f$0;
                keyguardUpdateMonitor8.mLogger.d("Retrying fingerprint listening after power pressed error.");
                keyguardUpdateMonitor8.updateFingerprintListeningState(0);
                return;
        }
    }
}
