package com.android.keyguard;

import android.hardware.biometrics.BiometricManager;
import com.android.systemui.plugins.WeatherData;
import com.android.systemui.util.Assert;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardUpdateMonitor$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardUpdateMonitor f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ KeyguardUpdateMonitor$$ExternalSyntheticLambda5(KeyguardUpdateMonitor keyguardUpdateMonitor, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardUpdateMonitor;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                KeyguardUpdateMonitor keyguardUpdateMonitor = this.f$0;
                WeatherData weatherData = (WeatherData) this.f$1;
                keyguardUpdateMonitor.getClass();
                Assert.isMainThread();
                for (int i = 0; i < keyguardUpdateMonitor.mCallbacks.size(); i++) {
                    KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor.mCallbacks.get(i)).get();
                    if (keyguardUpdateMonitorCallback != null) {
                        keyguardUpdateMonitorCallback.onWeatherDataChanged(weatherData);
                    }
                }
                return;
            default:
                KeyguardUpdateMonitor keyguardUpdateMonitor2 = this.f$0;
                BiometricManager biometricManager = (BiometricManager) this.f$1;
                if (biometricManager != null) {
                    biometricManager.registerEnabledOnKeyguardCallback(keyguardUpdateMonitor2.mBiometricEnabledCallback);
                    return;
                } else {
                    keyguardUpdateMonitor2.getClass();
                    return;
                }
        }
    }
}
