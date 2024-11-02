package com.android.systemui.controls.controller;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.service.controls.IControlsProvider;
import android.util.ArraySet;
import android.util.Log;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.controls.controller.ControlsProviderLifecycleManager;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsProviderLifecycleManager$serviceConnection$1 implements ServiceConnection {
    public final AtomicBoolean connected = new AtomicBoolean(false);
    public final /* synthetic */ ControlsProviderLifecycleManager this$0;

    public ControlsProviderLifecycleManager$serviceConnection$1(ControlsProviderLifecycleManager controlsProviderLifecycleManager) {
        this.this$0 = controlsProviderLifecycleManager;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        super.onBindingDied(componentName);
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("onBindingDied ", componentName, this.this$0.TAG);
        }
        final ControlsProviderLifecycleManager controlsProviderLifecycleManager = this.this$0;
        ((ExecutorImpl) controlsProviderLifecycleManager.executor).execute(new Runnable() { // from class: com.android.systemui.controls.controller.ControlsProviderLifecycleManager$serviceConnection$1$onBindingDied$1
            @Override // java.lang.Runnable
            public final void run() {
                ControlsProviderLifecycleManager controlsProviderLifecycleManager2 = ControlsProviderLifecycleManager.this;
                int i = ControlsProviderLifecycleManager.BIND_FLAGS;
                controlsProviderLifecycleManager2.unbindAndCleanup("binder died");
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("onNullBinding ", componentName, this.this$0.TAG);
        final ControlsProviderLifecycleManager controlsProviderLifecycleManager = this.this$0;
        controlsProviderLifecycleManager.wrapper = null;
        ((ExecutorImpl) controlsProviderLifecycleManager.executor).execute(new Runnable() { // from class: com.android.systemui.controls.controller.ControlsProviderLifecycleManager$serviceConnection$1$onNullBinding$1
            @Override // java.lang.Runnable
            public final void run() {
                ControlsProviderLifecycleManager controlsProviderLifecycleManager2 = ControlsProviderLifecycleManager.this;
                int i = ControlsProviderLifecycleManager.BIND_FLAGS;
                controlsProviderLifecycleManager2.unbindAndCleanup("null binding");
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ArraySet arraySet;
        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("onServiceConnected ", componentName, this.this$0.TAG);
        this.this$0.wrapper = new ServiceWrapper(IControlsProvider.Stub.asInterface(iBinder));
        PackageUpdateMonitor packageUpdateMonitor = this.this$0.packageUpdateMonitor;
        if (packageUpdateMonitor.monitoring.compareAndSet(false, true)) {
            packageUpdateMonitor.register(packageUpdateMonitor.context, packageUpdateMonitor.user, false, packageUpdateMonitor.bgHandler);
        }
        ControlsProviderLifecycleManager controlsProviderLifecycleManager = this.this$0;
        synchronized (controlsProviderLifecycleManager.queuedServiceMethods) {
            arraySet = new ArraySet(controlsProviderLifecycleManager.queuedServiceMethods);
            ((ArraySet) controlsProviderLifecycleManager.queuedServiceMethods).clear();
        }
        Iterator it = arraySet.iterator();
        while (it.hasNext()) {
            ControlsProviderLifecycleManager.ServiceMethod serviceMethod = (ControlsProviderLifecycleManager.ServiceMethod) it.next();
            if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                Log.d(controlsProviderLifecycleManager.TAG, "handle PendingServiceMethod=" + serviceMethod);
            }
            serviceMethod.run();
        }
        if (BasicRune.CONTROLS_SMARTTHINGS_UNBIND) {
            ControlsProviderLifecycleManager controlsProviderLifecycleManager2 = this.this$0;
            if (!controlsProviderLifecycleManager2.requiresBound) {
                ControlsUtil controlsUtil = controlsProviderLifecycleManager2.controlsUtil;
                String packageName = controlsProviderLifecycleManager2.componentName.getPackageName();
                controlsUtil.getClass();
                if (Intrinsics.areEqual("com.samsung.android.oneconnect", packageName)) {
                    Log.w(this.this$0.TAG, "Call onServiceConnected after request unbind. Request Unbinding");
                    ControlsProviderLifecycleManager controlsProviderLifecycleManager3 = this.this$0;
                    controlsProviderLifecycleManager3.wrapper = null;
                    try {
                        controlsProviderLifecycleManager3.context.unbindService(this);
                    } catch (IllegalArgumentException unused) {
                        Log.w(this.this$0.TAG, "Failed to unbind to service");
                    }
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("onServiceDisconnected ", componentName, this.this$0.TAG);
        this.this$0.wrapper = null;
    }
}
