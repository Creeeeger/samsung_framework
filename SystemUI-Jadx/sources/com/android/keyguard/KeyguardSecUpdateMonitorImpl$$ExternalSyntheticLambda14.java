package com.android.keyguard;

import android.content.Intent;
import android.hardware.biometrics.BiometricSourceType;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14(Object obj, Object obj2, int i, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        switch (this.$r8$classId) {
            case 0:
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = (KeyguardSecUpdateMonitorImpl) this.f$0;
                BiometricSourceType biometricSourceType = (BiometricSourceType) this.f$1;
                Intent intent = (Intent) this.f$2;
                keyguardSecUpdateMonitorImpl.getClass();
                Object[] objArr = new Object[2];
                objArr[0] = biometricSourceType;
                if (biometricSourceType == BiometricSourceType.FINGERPRINT) {
                    i = keyguardSecUpdateMonitorImpl.mBiometricId;
                } else {
                    i = -1;
                }
                objArr[1] = Integer.valueOf(i);
                LogUtil.d("KeyguardUpdateMonitor", "sendBiometricUnlockState type=%s biometricId=%d", objArr);
                keyguardSecUpdateMonitorImpl.mContext.sendBroadcast(intent);
                return;
            default:
                SystemUIAnalytics.sendEventLog((String) this.f$0, (String) this.f$1, (String) this.f$2);
                return;
        }
    }
}
