package com.android.systemui.unfold.updates;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.os.Trace;
import android.util.Log;
import androidx.core.util.Consumer;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.LifecycleScreenStatusProvider;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.systemui.unfold.config.ResourceUnfoldTransitionConfig;
import com.android.systemui.unfold.config.UnfoldTransitionConfig;
import com.android.systemui.unfold.system.ActivityManagerActivityTypeProvider;
import com.android.systemui.unfold.updates.FoldProvider;
import com.android.systemui.unfold.updates.FoldStateProvider;
import com.android.systemui.unfold.updates.RotationChangeProvider;
import com.android.systemui.unfold.updates.hinge.HingeAngleProvider;
import com.android.systemui.unfold.updates.screen.ScreenStatusProvider;
import com.android.systemui.unfold.util.CurrentActivityTypeProvider;
import com.android.systemui.unfold.util.UnfoldKeyguardVisibilityProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceFoldStateProvider implements FoldStateProvider {
    public final CurrentActivityTypeProvider activityTypeProvider;
    public final Context context;
    public final FoldProvider foldProvider;
    public final int halfOpenedTimeoutMillis;
    public final Handler handler;
    public final HingeAngleProvider hingeAngleProvider;
    public boolean isFolded;
    public boolean isScreenOn;
    public Integer lastFoldUpdate;
    public float lastHingeAngle;
    public float lastHingeAngleBeforeTransition;
    public final Executor mainExecutor;
    public final RotationChangeProvider rotationChangeProvider;
    public final ScreenStatusProvider screenStatusProvider;
    public final UnfoldKeyguardVisibilityProvider unfoldKeyguardVisibilityProvider;
    public final List outputListeners = new ArrayList();
    public final HingeAngleListener hingeAngleListener = new HingeAngleListener();
    public final ScreenStatusListener screenListener = new ScreenStatusListener();
    public final FoldStateListener foldStateListener = new FoldStateListener();
    public final DeviceFoldStateProvider$timeoutRunnable$1 timeoutRunnable = new Runnable() { // from class: com.android.systemui.unfold.updates.DeviceFoldStateProvider$timeoutRunnable$1
        @Override // java.lang.Runnable
        public final void run() {
            DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
            deviceFoldStateProvider.notifyFoldUpdate(deviceFoldStateProvider.lastHingeAngle, 2);
        }
    };
    public final DeviceFoldStateProvider$rotationListener$1 rotationListener = new RotationChangeProvider.RotationListener() { // from class: com.android.systemui.unfold.updates.DeviceFoldStateProvider$rotationListener$1
        @Override // com.android.systemui.unfold.updates.RotationChangeProvider.RotationListener
        public final void onRotationChanged(int i) {
            DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
            if (deviceFoldStateProvider.isTransitionInProgress()) {
                deviceFoldStateProvider.notifyFoldUpdate(deviceFoldStateProvider.lastHingeAngle, 2);
            }
        }
    };
    public boolean isUnfoldHandled = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FoldStateListener implements FoldProvider.FoldCallback {
        public FoldStateListener() {
        }

        @Override // com.android.systemui.unfold.updates.FoldProvider.FoldCallback
        public final void onFoldUpdated(boolean z) {
            DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
            deviceFoldStateProvider.isFolded = z;
            deviceFoldStateProvider.lastHingeAngle = 0.0f;
            HingeAngleProvider hingeAngleProvider = deviceFoldStateProvider.hingeAngleProvider;
            DeviceFoldStateProvider$timeoutRunnable$1 deviceFoldStateProvider$timeoutRunnable$1 = deviceFoldStateProvider.timeoutRunnable;
            Handler handler = deviceFoldStateProvider.handler;
            if (z) {
                hingeAngleProvider.stop();
                deviceFoldStateProvider.notifyFoldUpdate(deviceFoldStateProvider.lastHingeAngle, 4);
                handler.removeCallbacks(deviceFoldStateProvider$timeoutRunnable$1);
                deviceFoldStateProvider.isUnfoldHandled = false;
                return;
            }
            deviceFoldStateProvider.notifyFoldUpdate(0.0f, 0);
            if (deviceFoldStateProvider.isTransitionInProgress()) {
                handler.removeCallbacks(deviceFoldStateProvider$timeoutRunnable$1);
            }
            handler.postDelayed(deviceFoldStateProvider$timeoutRunnable$1, deviceFoldStateProvider.halfOpenedTimeoutMillis);
            hingeAngleProvider.start();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HingeAngleListener implements Consumer {
        public HingeAngleListener() {
        }

        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            int i;
            int i2;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            Integer num;
            float floatValue = ((Number) obj).floatValue();
            DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
            deviceFoldStateProvider.getClass();
            boolean z5 = DeviceFoldStateProviderKt.DEBUG;
            if (z5) {
                StringBuilder sb = new StringBuilder("Hinge angle: ");
                sb.append(floatValue);
                sb.append(", lastHingeAngle: ");
                sb.append(deviceFoldStateProvider.lastHingeAngle);
                sb.append(", lastHingeAngleBeforeTransition: ");
                SeslColorSpectrumView$$ExternalSyntheticOutline0.m(sb, deviceFoldStateProvider.lastHingeAngleBeforeTransition, "DeviceFoldProvider");
            }
            Trace.setCounter("DeviceFoldStateProvider#onHingeAngle", floatValue);
            boolean z6 = true;
            if (floatValue < deviceFoldStateProvider.lastHingeAngle) {
                i = 1;
            } else {
                i = 0;
            }
            if (deviceFoldStateProvider.isTransitionInProgress() && ((num = deviceFoldStateProvider.lastFoldUpdate) == null || i != num.intValue())) {
                deviceFoldStateProvider.lastHingeAngleBeforeTransition = deviceFoldStateProvider.lastHingeAngle;
            }
            float f = deviceFoldStateProvider.lastHingeAngleBeforeTransition;
            if (floatValue < f) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (Math.abs(floatValue - f) > 7.5f) {
                z = true;
            } else {
                z = false;
            }
            if (180.0f - floatValue < 15.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            Integer num2 = deviceFoldStateProvider.lastFoldUpdate;
            if (num2 == null || num2.intValue() != i2) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z7 = deviceFoldStateProvider.isUnfoldHandled;
            if (deviceFoldStateProvider.context.getResources().getConfiguration().smallestScreenWidthDp > 600) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z && z3 && !z2 && z7) {
                Boolean bool = ((ActivityManagerActivityTypeProvider) deviceFoldStateProvider.activityTypeProvider)._isHomeActivity;
                Integer num3 = null;
                if (bool != null) {
                    boolean booleanValue = bool.booleanValue();
                    deviceFoldStateProvider.unfoldKeyguardVisibilityProvider.getClass();
                    boolean areEqual = Intrinsics.areEqual(null, Boolean.TRUE);
                    if (z5) {
                        EmergencyButtonController$$ExternalSyntheticOutline0.m("isHomeActivity=", booleanValue, ", isOnKeyguard=", areEqual, "DeviceFoldProvider");
                    }
                    if (!booleanValue && !areEqual) {
                        num3 = 60;
                    }
                }
                if (num3 != null && floatValue >= num3.intValue()) {
                    z6 = false;
                }
                if (z6 && z4) {
                    deviceFoldStateProvider.notifyFoldUpdate(deviceFoldStateProvider.lastHingeAngle, i2);
                }
            }
            if (deviceFoldStateProvider.isTransitionInProgress()) {
                DeviceFoldStateProvider$timeoutRunnable$1 deviceFoldStateProvider$timeoutRunnable$1 = deviceFoldStateProvider.timeoutRunnable;
                Handler handler = deviceFoldStateProvider.handler;
                if (z2) {
                    deviceFoldStateProvider.notifyFoldUpdate(floatValue, 3);
                    handler.removeCallbacks(deviceFoldStateProvider$timeoutRunnable$1);
                } else {
                    if (deviceFoldStateProvider.isTransitionInProgress()) {
                        handler.removeCallbacks(deviceFoldStateProvider$timeoutRunnable$1);
                    }
                    handler.postDelayed(deviceFoldStateProvider$timeoutRunnable$1, deviceFoldStateProvider.halfOpenedTimeoutMillis);
                }
            }
            deviceFoldStateProvider.lastHingeAngle = floatValue;
            Iterator it = ((ArrayList) deviceFoldStateProvider.outputListeners).iterator();
            while (it.hasNext()) {
                ((FoldStateProvider.FoldUpdatesListener) it.next()).onHingeAngleUpdate(floatValue);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ScreenStatusListener {
        public ScreenStatusListener() {
        }

        public final void onScreenTurnedOn() {
            DeviceFoldStateProvider deviceFoldStateProvider = DeviceFoldStateProvider.this;
            if (!deviceFoldStateProvider.isFolded && !deviceFoldStateProvider.isUnfoldHandled) {
                Iterator it = deviceFoldStateProvider.outputListeners.iterator();
                while (it.hasNext()) {
                    ((FoldStateProvider.FoldUpdatesListener) it.next()).onUnfoldedScreenAvailable();
                }
                deviceFoldStateProvider.isUnfoldHandled = true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.unfold.updates.DeviceFoldStateProvider$timeoutRunnable$1] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.systemui.unfold.updates.DeviceFoldStateProvider$rotationListener$1] */
    public DeviceFoldStateProvider(UnfoldTransitionConfig unfoldTransitionConfig, HingeAngleProvider hingeAngleProvider, ScreenStatusProvider screenStatusProvider, FoldProvider foldProvider, CurrentActivityTypeProvider currentActivityTypeProvider, UnfoldKeyguardVisibilityProvider unfoldKeyguardVisibilityProvider, RotationChangeProvider rotationChangeProvider, Context context, Executor executor, Handler handler) {
        this.hingeAngleProvider = hingeAngleProvider;
        this.screenStatusProvider = screenStatusProvider;
        this.foldProvider = foldProvider;
        this.activityTypeProvider = currentActivityTypeProvider;
        this.unfoldKeyguardVisibilityProvider = unfoldKeyguardVisibilityProvider;
        this.rotationChangeProvider = rotationChangeProvider;
        this.context = context;
        this.mainExecutor = executor;
        this.handler = handler;
        this.halfOpenedTimeoutMillis = ((Number) ((ResourceUnfoldTransitionConfig) unfoldTransitionConfig).halfFoldedTimeoutMillis$delegate.getValue()).intValue();
    }

    @Override // com.android.systemui.unfold.util.CallbackController
    public final void addCallback(Object obj) {
        ((ArrayList) this.outputListeners).add((FoldStateProvider.FoldUpdatesListener) obj);
    }

    public final boolean isTransitionInProgress() {
        Integer num = this.lastFoldUpdate;
        if (num != null && num.intValue() == 0) {
            return true;
        }
        Integer num2 = this.lastFoldUpdate;
        if (num2 != null && num2.intValue() == 1) {
            return true;
        }
        return false;
    }

    public final void notifyFoldUpdate(float f, int i) {
        if (DeviceFoldStateProviderKt.DEBUG) {
            Log.d("DeviceFoldProvider", DeviceFoldStateProviderKt.name(i));
        }
        boolean isTransitionInProgress = isTransitionInProgress();
        Iterator it = this.outputListeners.iterator();
        while (it.hasNext()) {
            ((FoldStateProvider.FoldUpdatesListener) it.next()).onFoldUpdate(i);
        }
        this.lastFoldUpdate = Integer.valueOf(i);
        if (isTransitionInProgress != isTransitionInProgress()) {
            this.lastHingeAngleBeforeTransition = f;
        }
    }

    @Override // com.android.systemui.unfold.util.CallbackController
    public final void removeCallback(Object obj) {
        ((ArrayList) this.outputListeners).remove((FoldStateProvider.FoldUpdatesListener) obj);
    }

    public final void start() {
        Boolean bool;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        this.foldProvider.registerCallback(this.foldStateListener, this.mainExecutor);
        ((LifecycleScreenStatusProvider) this.screenStatusProvider).addCallback(this.screenListener);
        this.hingeAngleProvider.addCallback(this.hingeAngleListener);
        RotationChangeProvider rotationChangeProvider = this.rotationChangeProvider;
        rotationChangeProvider.getClass();
        rotationChangeProvider.mainHandler.post(new RotationChangeProvider$addCallback$1(rotationChangeProvider, this.rotationListener));
        ActivityManagerActivityTypeProvider activityManagerActivityTypeProvider = (ActivityManagerActivityTypeProvider) this.activityTypeProvider;
        ActivityManager activityManager = activityManagerActivityTypeProvider.activityManager;
        try {
            Trace.beginSection("isOnHomeActivity");
            boolean z = true;
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
            if (runningTasks != null && (runningTaskInfo = (ActivityManager.RunningTaskInfo) CollectionsKt___CollectionsKt.firstOrNull((List) runningTasks)) != null) {
                if (runningTaskInfo.topActivityType != 2) {
                    z = false;
                }
                bool = Boolean.valueOf(z);
            } else {
                bool = null;
            }
            Trace.endSection();
            activityManagerActivityTypeProvider._isHomeActivity = bool;
            TaskStackChangeListeners.INSTANCE.registerTaskStackListener(activityManagerActivityTypeProvider.taskStackChangeListener);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}
