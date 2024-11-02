package com.android.systemui.facewidget.plugin;

import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorCallback;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.keyguardstatusview.PluginKeyguardStatusView;
import com.android.systemui.plugins.keyguardstatusview.PluginKnoxStateMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetKnoxStateMonitorWrapper implements PluginKnoxStateMonitor {
    public final AnonymousClass1 mKnoxStateCallback;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public PluginKeyguardStatusView mPluginKeyguardStatusView;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.knox.KnoxStateMonitorCallback, com.android.systemui.facewidget.plugin.FaceWidgetKnoxStateMonitorWrapper$1] */
    public FaceWidgetKnoxStateMonitorWrapper(KnoxStateMonitor knoxStateMonitor) {
        ?? r0 = new KnoxStateMonitorCallback() { // from class: com.android.systemui.facewidget.plugin.FaceWidgetKnoxStateMonitorWrapper.1
            @Override // com.android.systemui.knox.KnoxStateMonitorCallback
            public final void onUpdateLockscreenHiddenItems() {
                PluginKeyguardStatusView pluginKeyguardStatusView = FaceWidgetKnoxStateMonitorWrapper.this.mPluginKeyguardStatusView;
                if (pluginKeyguardStatusView != null) {
                    pluginKeyguardStatusView.onUpdateLockscreenHiddenItems();
                }
            }
        };
        this.mKnoxStateCallback = r0;
        this.mKnoxStateMonitor = knoxStateMonitor;
        ((KnoxStateMonitorImpl) knoxStateMonitor).registerCallback(r0);
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginKnoxStateMonitor
    public final boolean isLockscreenAllDisabled() {
        boolean z;
        CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).mCustomSdkMonitor;
        if (customSdkMonitor == null) {
            return false;
        }
        if ((customSdkMonitor.mKnoxCustomLockScreenHiddenItems & 1023) == 1023) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginKnoxStateMonitor
    public final boolean isLockscreenClockEnabled() {
        boolean z;
        CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).mCustomSdkMonitor;
        if (customSdkMonitor == null) {
            return false;
        }
        if ((customSdkMonitor.mKnoxCustomLockScreenHiddenItems & 1) != 0) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginKnoxStateMonitor
    public final boolean isLockscreenDateEnabled() {
        boolean z;
        CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).mCustomSdkMonitor;
        if (customSdkMonitor == null) {
            return false;
        }
        if ((customSdkMonitor.mKnoxCustomLockScreenHiddenItems & 16) != 0) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginKnoxStateMonitor
    public final boolean isLockscreenOwnerInfoEnabled() {
        boolean z;
        CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) this.mKnoxStateMonitor).mCustomSdkMonitor;
        if (customSdkMonitor == null) {
            return false;
        }
        if ((customSdkMonitor.mKnoxCustomLockScreenHiddenItems & 32) != 0) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }
}
