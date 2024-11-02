package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.TriggerEvent;
import android.hardware.TriggerEventListener;
import com.android.keyguard.ActiveUnlockConfig;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.CoreStartable;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.domain.interactor.KeyguardFaceAuthInteractor;
import com.android.systemui.keyguard.domain.interactor.SystemUIKeyguardFaceAuthInteractor;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.util.Assert;
import com.android.systemui.util.sensors.AsyncSensorManager;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardLiftController implements Dumpable, CoreStartable {
    public boolean bouncerVisible;
    public final Context context;
    public final DumpManager dumpManager;
    public boolean isListening;
    public final KeyguardFaceAuthInteractor keyguardFaceAuthInteractor;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final KeyguardLiftController$keyguardUpdateMonitorCallback$1 keyguardUpdateMonitorCallback;
    public final Sensor pickupSensor;
    public final StatusBarStateController statusBarStateController;
    public final KeyguardLiftController$statusBarStateListener$1 statusBarStateListener;

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.phone.KeyguardLiftController$keyguardUpdateMonitorCallback$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.statusbar.phone.KeyguardLiftController$statusBarStateListener$1] */
    public KeyguardLiftController(Context context, StatusBarStateController statusBarStateController, AsyncSensorManager asyncSensorManager, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardFaceAuthInteractor keyguardFaceAuthInteractor, DumpManager dumpManager) {
        this.context = context;
        this.statusBarStateController = statusBarStateController;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.keyguardFaceAuthInteractor = keyguardFaceAuthInteractor;
        this.dumpManager = dumpManager;
        this.pickupSensor = asyncSensorManager.getDefaultSensor(25);
        new TriggerEventListener() { // from class: com.android.systemui.statusbar.phone.KeyguardLiftController$listener$1
            @Override // android.hardware.TriggerEventListener
            public final void onTrigger(TriggerEvent triggerEvent) {
                Assert.isMainThread();
                KeyguardLiftController keyguardLiftController = KeyguardLiftController.this;
                keyguardLiftController.isListening = false;
                SystemUIKeyguardFaceAuthInteractor systemUIKeyguardFaceAuthInteractor = (SystemUIKeyguardFaceAuthInteractor) keyguardLiftController.keyguardFaceAuthInteractor;
                systemUIKeyguardFaceAuthInteractor.getClass();
                systemUIKeyguardFaceAuthInteractor.runFaceAuth(FaceAuthUiEvent.FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED);
                KeyguardLiftController.this.keyguardUpdateMonitor.requestFaceAuth("Face auth due to pickup gesture triggered when the device is awake and not from AOD.");
                KeyguardLiftController.this.keyguardUpdateMonitor.requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.WAKE, "KeyguardLiftController");
            }
        };
        this.keyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.phone.KeyguardLiftController$keyguardUpdateMonitorCallback$1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
                KeyguardLiftController keyguardLiftController = KeyguardLiftController.this;
                keyguardLiftController.bouncerVisible = z;
                keyguardLiftController.getClass();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardVisibilityChanged(boolean z) {
                KeyguardLiftController.this.getClass();
            }
        };
        this.statusBarStateListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.phone.KeyguardLiftController$statusBarStateListener$1
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onDozingChanged(boolean z) {
                KeyguardLiftController.this.getClass();
            }
        };
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "KeyguardLiftController:", "  pickupSensor: ");
        m.append(this.pickupSensor);
        printWriter.println(m.toString());
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  isListening: ", this.isListening, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  bouncerVisible: ", this.bouncerVisible, printWriter);
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        if (this.context.getPackageManager().hasSystemFeature("android.hardware.biometrics.face")) {
            DumpManager.registerDumpable$default(this.dumpManager, KeyguardLiftController.class.getName(), this);
            this.statusBarStateController.addCallback(this.statusBarStateListener);
            this.keyguardUpdateMonitor.registerCallback(this.keyguardUpdateMonitorCallback);
        }
    }
}
