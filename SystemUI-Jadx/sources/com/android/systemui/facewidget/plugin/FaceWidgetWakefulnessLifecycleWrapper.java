package com.android.systemui.facewidget.plugin;

import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.plugins.keyguardstatusview.PluginKeyguardStatusView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetWakefulnessLifecycleWrapper {
    public final AnonymousClass1 mObserver;
    public PluginKeyguardStatusView mPluginKeyguardStatusView;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.facewidget.plugin.FaceWidgetWakefulnessLifecycleWrapper$1, java.lang.Object] */
    public FaceWidgetWakefulnessLifecycleWrapper(WakefulnessLifecycle wakefulnessLifecycle) {
        ?? r0 = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.facewidget.plugin.FaceWidgetWakefulnessLifecycleWrapper.1
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedGoingToSleep() {
                PluginKeyguardStatusView pluginKeyguardStatusView = FaceWidgetWakefulnessLifecycleWrapper.this.mPluginKeyguardStatusView;
                if (pluginKeyguardStatusView != null) {
                    pluginKeyguardStatusView.onFinishedGoingToSleep();
                }
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedWakingUp() {
                PluginKeyguardStatusView pluginKeyguardStatusView = FaceWidgetWakefulnessLifecycleWrapper.this.mPluginKeyguardStatusView;
                if (pluginKeyguardStatusView != null) {
                    pluginKeyguardStatusView.onFinishedWakingUp();
                }
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedGoingToSleep() {
                PluginKeyguardStatusView pluginKeyguardStatusView = FaceWidgetWakefulnessLifecycleWrapper.this.mPluginKeyguardStatusView;
                if (pluginKeyguardStatusView != null) {
                    pluginKeyguardStatusView.onStartedGoingToSleep();
                }
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                PluginKeyguardStatusView pluginKeyguardStatusView = FaceWidgetWakefulnessLifecycleWrapper.this.mPluginKeyguardStatusView;
                if (pluginKeyguardStatusView != null) {
                    pluginKeyguardStatusView.onStartedWakingUp();
                }
            }
        };
        this.mObserver = r0;
        wakefulnessLifecycle.addObserver(r0);
    }
}
