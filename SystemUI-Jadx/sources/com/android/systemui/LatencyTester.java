package com.android.systemui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.biometrics.BiometricSourceType;
import android.os.Build;
import android.provider.DeviceConfig;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.statusbar.phone.BiometricUnlockController;
import com.android.systemui.util.DeviceConfigProxy;
import com.android.systemui.util.concurrency.DelayableExecutor;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LatencyTester implements CoreStartable {
    public static final boolean DEFAULT_ENABLED = Build.IS_ENG;
    public final BiometricUnlockController mBiometricUnlockController;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final AnonymousClass1 mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.LatencyTester.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("com.android.systemui.latency.ACTION_FINGERPRINT_WAKE".equals(action)) {
                LatencyTester.m70$$Nest$mfakeWakeAndUnlock(LatencyTester.this, BiometricSourceType.FINGERPRINT);
            } else if ("com.android.systemui.latency.ACTION_FACE_WAKE".equals(action)) {
                LatencyTester.m70$$Nest$mfakeWakeAndUnlock(LatencyTester.this, BiometricSourceType.FACE);
            }
        }
    };
    public final DeviceConfigProxy mDeviceConfigProxy;
    public boolean mEnabled;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;

    /* renamed from: -$$Nest$mfakeWakeAndUnlock, reason: not valid java name */
    public static void m70$$Nest$mfakeWakeAndUnlock(LatencyTester latencyTester, BiometricSourceType biometricSourceType) {
        if (latencyTester.mEnabled) {
            BiometricSourceType biometricSourceType2 = BiometricSourceType.FACE;
            KeyguardUpdateMonitor keyguardUpdateMonitor = latencyTester.mKeyguardUpdateMonitor;
            if (biometricSourceType == biometricSourceType2) {
                keyguardUpdateMonitor.onFaceAuthenticated(KeyguardUpdateMonitor.getCurrentUser(), true);
            } else if (biometricSourceType == BiometricSourceType.FINGERPRINT) {
                keyguardUpdateMonitor.onFingerprintAuthenticated(KeyguardUpdateMonitor.getCurrentUser(), true);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.LatencyTester$1] */
    public LatencyTester(BiometricUnlockController biometricUnlockController, BroadcastDispatcher broadcastDispatcher, DeviceConfigProxy deviceConfigProxy, DelayableExecutor delayableExecutor, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this.mBiometricUnlockController = biometricUnlockController;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mDeviceConfigProxy = deviceConfigProxy;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        updateEnabled();
        DeviceConfig.OnPropertiesChangedListener onPropertiesChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.LatencyTester$$ExternalSyntheticLambda0
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                LatencyTester.this.updateEnabled();
            }
        };
        deviceConfigProxy.getClass();
        DeviceConfig.addOnPropertiesChangedListener("latency_tracker", delayableExecutor, onPropertiesChangedListener);
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("mEnabled="), this.mEnabled, printWriter);
    }

    public final void registerForBroadcasts(boolean z) {
        AnonymousClass1 anonymousClass1 = this.mBroadcastReceiver;
        BroadcastDispatcher broadcastDispatcher = this.mBroadcastDispatcher;
        if (z) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.android.systemui.latency.ACTION_FINGERPRINT_WAKE");
            intentFilter.addAction("com.android.systemui.latency.ACTION_FACE_WAKE");
            broadcastDispatcher.registerReceiver(intentFilter, anonymousClass1);
            return;
        }
        broadcastDispatcher.unregisterReceiver(anonymousClass1);
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        registerForBroadcasts(this.mEnabled);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateEnabled() {
        /*
            r4 = this;
            boolean r0 = r4.mEnabled
            boolean r1 = android.os.Build.IS_DEBUGGABLE
            if (r1 == 0) goto L19
            com.android.systemui.util.DeviceConfigProxy r1 = r4.mDeviceConfigProxy
            r1.getClass()
            java.lang.String r1 = "latency_tracker"
            java.lang.String r2 = "enabled"
            boolean r3 = com.android.systemui.LatencyTester.DEFAULT_ENABLED
            boolean r1 = android.provider.DeviceConfig.getBoolean(r1, r2, r3)
            if (r1 == 0) goto L19
            r1 = 1
            goto L1a
        L19:
            r1 = 0
        L1a:
            r4.mEnabled = r1
            if (r1 == r0) goto L21
            r4.registerForBroadcasts(r1)
        L21:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.LatencyTester.updateEnabled():void");
    }
}
