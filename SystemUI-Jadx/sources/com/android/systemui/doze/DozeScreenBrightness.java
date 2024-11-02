package com.android.systemui.doze;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Handler;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.IndentingPrintWriter;
import com.android.systemui.doze.DozeMachine;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.DozeServiceHost;
import com.android.systemui.statusbar.phone.ScreenOffAnimation;
import com.android.systemui.statusbar.policy.DevicePostureController;
import com.android.systemui.statusbar.policy.DevicePostureControllerImpl;
import com.android.systemui.util.sensors.AsyncSensorManager;
import com.android.systemui.util.settings.SystemSettings;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class DozeScreenBrightness extends BroadcastReceiver implements DozeMachine.Part, SensorEventListener {
    public final int mDefaultDozeBrightness;
    public int mDevicePosture;
    public final DevicePostureController mDevicePostureController;
    public final DozeHost mDozeHost;
    public final DozeLog mDozeLog;
    public final DozeParameters mDozeParameters;
    public final DozeMachine.Service mDozeService;
    public final Handler mHandler;
    public final Optional[] mLightSensorOptional;
    public boolean mRegistered;
    public final int mScreenBrightnessDim;
    public final float mScreenBrightnessMinimumDimAmountFloat;
    public final AsyncSensorManager mSensorManager;
    public final int[] mSensorToBrightness;
    public final int[] mSensorToScrimOpacity;
    public final SystemSettings mSystemSettings;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public boolean mPaused = false;
    public boolean mScreenOff = false;
    public int mLastSensorValue = -1;
    public DozeMachine.State mState = DozeMachine.State.UNINITIALIZED;
    public int mDebugBrightnessBucket = -1;
    public final AnonymousClass1 mDevicePostureCallback = new DevicePostureController.Callback() { // from class: com.android.systemui.doze.DozeScreenBrightness.1
        @Override // com.android.systemui.statusbar.policy.DevicePostureController.Callback
        public final void onPostureChanged(int i) {
            DozeScreenBrightness dozeScreenBrightness = DozeScreenBrightness.this;
            int i2 = dozeScreenBrightness.mDevicePosture;
            if (i2 != i) {
                Optional[] optionalArr = dozeScreenBrightness.mLightSensorOptional;
                if (optionalArr.length >= 2 && i < optionalArr.length) {
                    Sensor sensor = (Sensor) optionalArr[i2].get();
                    Sensor sensor2 = (Sensor) dozeScreenBrightness.mLightSensorOptional[i].get();
                    if (Objects.equals(sensor, sensor2)) {
                        dozeScreenBrightness.mDevicePosture = i;
                        return;
                    }
                    if (dozeScreenBrightness.mRegistered) {
                        dozeScreenBrightness.setLightSensorEnabled(false);
                        dozeScreenBrightness.mDevicePosture = i;
                        dozeScreenBrightness.setLightSensorEnabled(true);
                    } else {
                        dozeScreenBrightness.mDevicePosture = i;
                    }
                    DozeLog dozeLog = dozeScreenBrightness.mDozeLog;
                    int i3 = dozeScreenBrightness.mDevicePosture;
                    String str = "DozeScreenBrightness swap {" + sensor + "} => {" + sensor2 + "}, mRegistered=" + dozeScreenBrightness.mRegistered;
                    DozeLogger dozeLogger = dozeLog.mLogger;
                    dozeLogger.getClass();
                    LogLevel logLevel = LogLevel.INFO;
                    DozeLogger$logPostureChanged$2 dozeLogger$logPostureChanged$2 = DozeLogger$logPostureChanged$2.INSTANCE;
                    LogBuffer logBuffer = dozeLogger.buffer;
                    LogMessage obtain = logBuffer.obtain("DozeLog", logLevel, dozeLogger$logPostureChanged$2, null);
                    obtain.setInt1(i3);
                    obtain.setStr1(str);
                    logBuffer.commit(obtain);
                }
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.doze.DozeScreenBrightness$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$doze$DozeMachine$State;

        static {
            int[] iArr = new int[DozeMachine.State.values().length];
            $SwitchMap$com$android$systemui$doze$DozeMachine$State = iArr;
            try {
                iArr[DozeMachine.State.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.DOZE_AOD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.DOZE_REQUEST_PULSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.DOZE_AOD_DOCKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.DOZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.DOZE_SUSPEND_TRIGGERS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.DOZE_AOD_PAUSED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.FINISH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static {
        SystemProperties.getBoolean("debug.aod_brightness", false);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.doze.DozeScreenBrightness$1] */
    public DozeScreenBrightness(Context context, DozeMachine.Service service, AsyncSensorManager asyncSensorManager, Optional<Sensor>[] optionalArr, DozeHost dozeHost, Handler handler, AlwaysOnDisplayPolicy alwaysOnDisplayPolicy, WakefulnessLifecycle wakefulnessLifecycle, DozeParameters dozeParameters, DevicePostureController devicePostureController, DozeLog dozeLog, SystemSettings systemSettings) {
        this.mDozeService = service;
        this.mSensorManager = asyncSensorManager;
        this.mLightSensorOptional = optionalArr;
        this.mDevicePostureController = devicePostureController;
        this.mDevicePosture = ((DevicePostureControllerImpl) devicePostureController).mCurrentDevicePosture;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mDozeParameters = dozeParameters;
        this.mDozeHost = dozeHost;
        this.mHandler = handler;
        this.mDozeLog = dozeLog;
        this.mSystemSettings = systemSettings;
        this.mScreenBrightnessMinimumDimAmountFloat = context.getResources().getFloat(R.dimen.date_picker_day_text_size);
        this.mDefaultDozeBrightness = alwaysOnDisplayPolicy.defaultDozeBrightness;
        this.mScreenBrightnessDim = alwaysOnDisplayPolicy.dimBrightness;
        this.mSensorToBrightness = alwaysOnDisplayPolicy.screenBrightnessArray;
        this.mSensorToScrimOpacity = alwaysOnDisplayPolicy.dimmingScrimArray;
    }

    public final int clampToDimBrightnessForScreenOff(int i) {
        boolean z;
        List list = this.mDozeParameters.mScreenOffAnimationController.animations;
        boolean z2 = true;
        if (!(list instanceof Collection) || !((ArrayList) list).isEmpty()) {
            Iterator it = ((ArrayList) list).iterator();
            while (it.hasNext()) {
                if (((ScreenOffAnimation) it.next()).shouldPlayAnimation()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if ((!z && this.mWakefulnessLifecycle.mWakefulness != 3) || this.mState != DozeMachine.State.INITIALIZED) {
            z2 = false;
        }
        if (z2 && this.mWakefulnessLifecycle.mLastSleepReason == 2) {
            return Math.max(0, Math.min(i - ((int) Math.floor(this.mScreenBrightnessMinimumDimAmountFloat * 255.0f)), this.mScreenBrightnessDim));
        }
        return i;
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void dump(PrintWriter printWriter) {
        printWriter.println("DozeScreenBrightness:");
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter);
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("registered=" + this.mRegistered);
        indentingPrintWriter.println("posture=" + DevicePostureController.devicePostureToString(this.mDevicePosture));
    }

    public final boolean isLightSensorPresent() {
        boolean z;
        Optional[] optionalArr = this.mLightSensorOptional;
        if (optionalArr != null && this.mDevicePosture < optionalArr.length) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (optionalArr != null && optionalArr[0].isPresent()) {
                return true;
            }
            return false;
        }
        return optionalArr[this.mDevicePosture].isPresent();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.mDebugBrightnessBucket = intent.getIntExtra("brightness_bucket", -1);
        updateBrightnessAndReady(false);
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (Trace.isEnabled()) {
            Trace.traceBegin(4096L, "DozeScreenBrightness.onSensorChanged" + sensorEvent.values[0]);
        }
        try {
            if (this.mRegistered) {
                this.mLastSensorValue = (int) sensorEvent.values[0];
                updateBrightnessAndReady(false);
            }
        } finally {
            Trace.endSection();
        }
    }

    public void resetBrightnessToDefault() {
        this.mDozeService.setDozeScreenBrightness(clampToDimBrightnessForScreenOff(Math.min(this.mDefaultDozeBrightness, this.mSystemSettings.getIntForUser(Integer.MAX_VALUE, -2, "screen_brightness"))));
        ((DozeServiceHost) this.mDozeHost).setAodDimmingScrim(0.0f);
    }

    public final void setLightSensorEnabled(boolean z) {
        Sensor sensor;
        boolean z2 = false;
        if (z && !this.mRegistered && isLightSensorPresent()) {
            AsyncSensorManager asyncSensorManager = this.mSensorManager;
            Optional[] optionalArr = this.mLightSensorOptional;
            if (optionalArr != null && this.mDevicePosture < optionalArr.length) {
                z2 = true;
            }
            if (!z2) {
                sensor = null;
            } else {
                sensor = (Sensor) optionalArr[this.mDevicePosture].get();
            }
            this.mRegistered = asyncSensorManager.registerListener(this, sensor, 3, this.mHandler);
            this.mLastSensorValue = -1;
            return;
        }
        if (!z && this.mRegistered) {
            this.mSensorManager.unregisterListener(this);
            this.mRegistered = false;
            this.mLastSensorValue = -1;
        }
    }

    public void transitionTo(DozeMachine.State state, DozeMachine.State state2) {
        boolean z;
        this.mState = state2;
        boolean z2 = true;
        switch (AnonymousClass2.$SwitchMap$com$android$systemui$doze$DozeMachine$State[state2.ordinal()]) {
            case 1:
                resetBrightnessToDefault();
                break;
            case 2:
            case 3:
            case 4:
                setLightSensorEnabled(true);
                break;
            case 5:
            case 6:
                setLightSensorEnabled(false);
                resetBrightnessToDefault();
                break;
            case 7:
                setLightSensorEnabled(false);
                break;
            case 8:
                setLightSensorEnabled(false);
                ((DevicePostureControllerImpl) this.mDevicePostureController).removeCallback(this.mDevicePostureCallback);
                break;
        }
        if (state2 != DozeMachine.State.FINISH) {
            if (state2 == DozeMachine.State.DOZE) {
                z = true;
            } else {
                z = false;
            }
            if (this.mScreenOff != z) {
                this.mScreenOff = z;
                updateBrightnessAndReady(true);
            }
            if (state2 != DozeMachine.State.DOZE_AOD_PAUSED) {
                z2 = false;
            }
            if (this.mPaused != z2) {
                this.mPaused = z2;
                updateBrightnessAndReady(false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateBrightnessAndReady(boolean r10) {
        /*
            r9 = this;
            r0 = -1
            if (r10 != 0) goto Lb
            boolean r10 = r9.mRegistered
            if (r10 != 0) goto Lb
            int r10 = r9.mDebugBrightnessBucket
            if (r10 == r0) goto L60
        Lb:
            int r10 = r9.mDebugBrightnessBucket
            if (r10 != r0) goto L11
            int r10 = r9.mLastSensorValue
        L11:
            if (r10 < 0) goto L1c
            int[] r1 = r9.mSensorToBrightness
            int r2 = r1.length
            if (r10 < r2) goto L19
            goto L1c
        L19:
            r1 = r1[r10]
            goto L1d
        L1c:
            r1 = r0
        L1d:
            r2 = 0
            if (r1 <= 0) goto L22
            r3 = 1
            goto L23
        L22:
            r3 = r2
        L23:
            if (r3 == 0) goto L3f
            com.android.systemui.doze.DozeMachine$Service r4 = r9.mDozeService
            com.android.systemui.util.settings.SystemSettings r5 = r9.mSystemSettings
            r6 = -2
            java.lang.String r7 = "screen_brightness"
            r8 = 2147483647(0x7fffffff, float:NaN)
            int r5 = r5.getIntForUser(r8, r6, r7)
            int r1 = java.lang.Math.min(r1, r5)
            int r1 = r9.clampToDimBrightnessForScreenOff(r1)
            r4.setDozeScreenBrightness(r1)
        L3f:
            boolean r1 = r9.isLightSensorPresent()
            if (r1 != 0) goto L47
            r0 = r2
            goto L53
        L47:
            if (r3 == 0) goto L53
            if (r10 < 0) goto L53
            int[] r1 = r9.mSensorToScrimOpacity
            int r2 = r1.length
            if (r10 < r2) goto L51
            goto L53
        L51:
            r0 = r1[r10]
        L53:
            if (r0 < 0) goto L60
            com.android.systemui.doze.DozeHost r9 = r9.mDozeHost
            float r10 = (float) r0
            r0 = 1132396544(0x437f0000, float:255.0)
            float r10 = r10 / r0
            com.android.systemui.statusbar.phone.DozeServiceHost r9 = (com.android.systemui.statusbar.phone.DozeServiceHost) r9
            r9.setAodDimmingScrim(r10)
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.doze.DozeScreenBrightness.updateBrightnessAndReady(boolean):void");
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }
}
