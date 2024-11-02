package com.android.systemui.plugins.keyguardstatusview;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginKeyguardUpdateMonitor {
    void dispatchFaceWidgetFullScreenMode(boolean z);

    int getCurrentUser();

    boolean isDeviceInteractive();

    boolean isDeviceProvisioned();

    boolean isEnabledBioUnlock();

    boolean isFMMLock();

    boolean isFingerprintOptionEnabled();

    boolean isKeyguardShowing();

    boolean isKeyguardUnlocking();

    boolean isKeyguardVisible();

    boolean isRemoteLock();

    boolean isSystemUser();

    boolean isUnlockWithFingerprintPossible(int i);

    boolean isUserUnlocked();

    void registerCallback(PluginKeyguardUpdateMonitorCallback pluginKeyguardUpdateMonitorCallback);

    void removeCallback(PluginKeyguardUpdateMonitorCallback pluginKeyguardUpdateMonitorCallback);
}
