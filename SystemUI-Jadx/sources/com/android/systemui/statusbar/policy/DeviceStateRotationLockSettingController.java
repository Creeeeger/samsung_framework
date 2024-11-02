package com.android.systemui.statusbar.policy;

import android.hardware.devicestate.DeviceStateManager;
import android.os.Trace;
import android.util.IndentingPrintWriter;
import android.util.SparseIntArray;
import com.android.internal.view.RotationPolicy;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.settingslib.devicestate.DeviceStateRotationLockSettingsManager;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.policy.RotationLockController;
import com.android.systemui.util.wrapper.RotationPolicyWrapper;
import com.android.systemui.util.wrapper.RotationPolicyWrapperImpl;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceStateRotationLockSettingController implements RotationLockController.RotationLockControllerCallback, Dumpable {
    public int mDeviceState = -1;
    public DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0 mDeviceStateCallback;
    public final DeviceStateManager mDeviceStateManager;
    public DeviceStateRotationLockSettingController$$ExternalSyntheticLambda1 mDeviceStateRotationLockSettingsListener;
    public final DeviceStateRotationLockSettingsManager mDeviceStateRotationLockSettingsManager;
    public final DeviceStateRotationLockSettingControllerLogger mLogger;
    public final Executor mMainExecutor;
    public final RotationPolicyWrapper mRotationPolicyWrapper;

    public DeviceStateRotationLockSettingController(RotationPolicyWrapper rotationPolicyWrapper, DeviceStateManager deviceStateManager, Executor executor, DeviceStateRotationLockSettingsManager deviceStateRotationLockSettingsManager, DeviceStateRotationLockSettingControllerLogger deviceStateRotationLockSettingControllerLogger, DumpManager dumpManager) {
        this.mRotationPolicyWrapper = rotationPolicyWrapper;
        this.mDeviceStateManager = deviceStateManager;
        this.mMainExecutor = executor;
        this.mDeviceStateRotationLockSettingsManager = deviceStateRotationLockSettingsManager;
        this.mLogger = deviceStateRotationLockSettingControllerLogger;
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter);
        DeviceStateRotationLockSettingsManager deviceStateRotationLockSettingsManager = this.mDeviceStateRotationLockSettingsManager;
        deviceStateRotationLockSettingsManager.getClass();
        indentingPrintWriter.println("DeviceStateRotationLockSettingsManager");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("mPostureRotationLockDefaults: " + Arrays.toString(deviceStateRotationLockSettingsManager.mPostureRotationLockDefaults));
        indentingPrintWriter.println("mPostureDefaultRotationLockSettings: " + deviceStateRotationLockSettingsManager.mPostureDefaultRotationLockSettings);
        indentingPrintWriter.println("mDeviceStateRotationLockSettings: " + deviceStateRotationLockSettingsManager.mPostureRotationLockSettings);
        indentingPrintWriter.println("mPostureRotationLockFallbackSettings: " + deviceStateRotationLockSettingsManager.mPostureRotationLockFallbackSettings);
        indentingPrintWriter.println("mSettableDeviceStates: " + deviceStateRotationLockSettingsManager.mSettableDeviceStates);
        indentingPrintWriter.decreaseIndent();
        indentingPrintWriter.println("DeviceStateRotationLockSettingController");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("mDeviceState: " + this.mDeviceState);
        indentingPrintWriter.decreaseIndent();
    }

    @Override // com.android.systemui.statusbar.policy.RotationLockController.RotationLockControllerCallback
    public final void onRotationLockStateChanged(boolean z) {
        boolean z2;
        int i = this.mDeviceState;
        DeviceStateRotationLockSettingsManager deviceStateRotationLockSettingsManager = this.mDeviceStateRotationLockSettingsManager;
        int i2 = 1;
        if (deviceStateRotationLockSettingsManager.getRotationLockSetting(i) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        final DeviceStateRotationLockSettingControllerLogger deviceStateRotationLockSettingControllerLogger = this.mLogger;
        deviceStateRotationLockSettingControllerLogger.getClass();
        LogLevel logLevel = LogLevel.VERBOSE;
        Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingControllerLogger$logRotationLockStateChanged$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                int int1 = logMessage.getInt1();
                String access$toDevicePostureString = DeviceStateRotationLockSettingControllerLogger.access$toDevicePostureString(DeviceStateRotationLockSettingControllerLogger.this, logMessage.getInt1());
                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("onRotationLockStateChanged: state=", int1, " [", access$toDevicePostureString, "], newRotationLocked="), logMessage.getBool1(), ", currentRotationLocked=", logMessage.getBool2());
            }
        };
        LogBuffer logBuffer = deviceStateRotationLockSettingControllerLogger.logBuffer;
        LogMessage obtain = logBuffer.obtain("DSRotateLockSettingCon", logLevel, function1, null);
        obtain.setInt1(i);
        obtain.setBool1(z);
        obtain.setBool2(z2);
        logBuffer.commit(obtain);
        if (i == -1 || z == z2) {
            return;
        }
        int i3 = this.mDeviceState;
        LogMessage obtain2 = logBuffer.obtain("DSRotateLockSettingCon", logLevel, new Function1() { // from class: com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingControllerLogger$logSaveNewRotationLockSetting$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "saveNewRotationLockSetting: isRotationLocked=" + logMessage.getBool1() + ", state=" + logMessage.getInt1();
            }
        }, null);
        obtain2.setBool1(z);
        obtain2.setInt1(i3);
        logBuffer.commit(obtain2);
        int deviceStateToPosture = deviceStateRotationLockSettingsManager.mPosturesHelper.deviceStateToPosture(i3);
        if (deviceStateRotationLockSettingsManager.mPostureRotationLockFallbackSettings.indexOfKey(deviceStateToPosture) >= 0) {
            deviceStateToPosture = deviceStateRotationLockSettingsManager.mPostureRotationLockFallbackSettings.get(deviceStateToPosture);
        }
        SparseIntArray sparseIntArray = deviceStateRotationLockSettingsManager.mPostureRotationLockSettings;
        if (!z) {
            i2 = 2;
        }
        sparseIntArray.put(deviceStateToPosture, i2);
        deviceStateRotationLockSettingsManager.persistSettings();
    }

    public final void readPersistedSetting(int i, String str) {
        int rotationLockSetting = this.mDeviceStateRotationLockSettingsManager.getRotationLockSetting(i);
        boolean z = true;
        if (rotationLockSetting != 1) {
            z = false;
        }
        RotationPolicyWrapperImpl rotationPolicyWrapperImpl = (RotationPolicyWrapperImpl) this.mRotationPolicyWrapper;
        boolean isRotationLocked = RotationPolicy.isRotationLocked(rotationPolicyWrapperImpl.context);
        final DeviceStateRotationLockSettingControllerLogger deviceStateRotationLockSettingControllerLogger = this.mLogger;
        deviceStateRotationLockSettingControllerLogger.getClass();
        LogLevel logLevel = LogLevel.VERBOSE;
        Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str2;
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                int int1 = logMessage.getInt1();
                String access$toDevicePostureString = DeviceStateRotationLockSettingControllerLogger.access$toDevicePostureString(DeviceStateRotationLockSettingControllerLogger.this, logMessage.getInt1());
                int int2 = logMessage.getInt2();
                if (int2 != 0) {
                    if (int2 != 1) {
                        if (int2 != 2) {
                            str2 = "Unknown";
                        } else {
                            str2 = "UNLOCKED";
                        }
                    } else {
                        str2 = "LOCKED";
                    }
                } else {
                    str2 = "IGNORED";
                }
                boolean bool1 = logMessage.getBool1();
                boolean bool2 = logMessage.getBool2();
                StringBuilder m = CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("readPersistedSetting: caller=", str1, ", state=", int1, " [");
                AppOpItem$$ExternalSyntheticOutline0.m(m, access$toDevicePostureString, "], rotationLockSettingForState: ", str2, ", shouldBeLocked=");
                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(m, bool1, ", isLocked=", bool2);
            }
        };
        LogBuffer logBuffer = deviceStateRotationLockSettingControllerLogger.logBuffer;
        LogMessage obtain = logBuffer.obtain("DSRotateLockSettingCon", logLevel, function1, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        obtain.setInt2(rotationLockSetting);
        obtain.setBool1(z);
        obtain.setBool2(isRotationLocked);
        logBuffer.commit(obtain);
        if (rotationLockSetting == 0) {
            return;
        }
        this.mDeviceState = i;
        if (z != isRotationLocked) {
            rotationPolicyWrapperImpl.setRotationLock(z);
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [android.hardware.devicestate.DeviceStateManager$DeviceStateCallback, com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0] */
    public final void setListening(boolean z) {
        DeviceStateRotationLockSettingControllerLogger deviceStateRotationLockSettingControllerLogger = this.mLogger;
        deviceStateRotationLockSettingControllerLogger.getClass();
        LogLevel logLevel = LogLevel.VERBOSE;
        DeviceStateRotationLockSettingControllerLogger$logListeningChange$2 deviceStateRotationLockSettingControllerLogger$logListeningChange$2 = new Function1() { // from class: com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingControllerLogger$logListeningChange$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("setListening: ", ((LogMessage) obj).getBool1());
            }
        };
        LogBuffer logBuffer = deviceStateRotationLockSettingControllerLogger.logBuffer;
        LogMessage obtain = logBuffer.obtain("DSRotateLockSettingCon", logLevel, deviceStateRotationLockSettingControllerLogger$logListeningChange$2, null);
        obtain.setBool1(true);
        logBuffer.commit(obtain);
        ?? r5 = new DeviceStateManager.DeviceStateCallback() { // from class: com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingController$$ExternalSyntheticLambda0
            public final void onStateChanged(int i) {
                DeviceStateRotationLockSettingController deviceStateRotationLockSettingController = DeviceStateRotationLockSettingController.this;
                int i2 = deviceStateRotationLockSettingController.mDeviceState;
                final DeviceStateRotationLockSettingControllerLogger deviceStateRotationLockSettingControllerLogger2 = deviceStateRotationLockSettingController.mLogger;
                deviceStateRotationLockSettingControllerLogger2.getClass();
                LogLevel logLevel2 = LogLevel.VERBOSE;
                Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.policy.DeviceStateRotationLockSettingControllerLogger$logUpdateDeviceState$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LogMessage logMessage = (LogMessage) obj;
                        int int1 = logMessage.getInt1();
                        String access$toDevicePostureString = DeviceStateRotationLockSettingControllerLogger.access$toDevicePostureString(DeviceStateRotationLockSettingControllerLogger.this, logMessage.getInt1());
                        int int2 = logMessage.getInt2();
                        String access$toDevicePostureString2 = DeviceStateRotationLockSettingControllerLogger.access$toDevicePostureString(DeviceStateRotationLockSettingControllerLogger.this, logMessage.getInt2());
                        StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("updateDeviceState: current=", int1, " [", access$toDevicePostureString, "], new=");
                        m.append(int2);
                        m.append(" [");
                        m.append(access$toDevicePostureString2);
                        m.append("]");
                        return m.toString();
                    }
                };
                LogBuffer logBuffer2 = deviceStateRotationLockSettingControllerLogger2.logBuffer;
                LogMessage obtain2 = logBuffer2.obtain("DSRotateLockSettingCon", logLevel2, function1, null);
                obtain2.setInt1(i2);
                obtain2.setInt2(i);
                logBuffer2.commit(obtain2);
                if (Trace.isEnabled()) {
                    Trace.traceBegin(4096L, "updateDeviceState [state=" + i + "]");
                }
                try {
                    if (deviceStateRotationLockSettingController.mDeviceState != i) {
                        deviceStateRotationLockSettingController.readPersistedSetting(i, "updateDeviceState");
                    }
                } finally {
                    Trace.endSection();
                }
            }
        };
        this.mDeviceStateCallback = r5;
        this.mDeviceStateManager.registerCallback(this.mMainExecutor, (DeviceStateManager.DeviceStateCallback) r5);
        DeviceStateRotationLockSettingController$$ExternalSyntheticLambda1 deviceStateRotationLockSettingController$$ExternalSyntheticLambda1 = new DeviceStateRotationLockSettingController$$ExternalSyntheticLambda1(this);
        this.mDeviceStateRotationLockSettingsListener = deviceStateRotationLockSettingController$$ExternalSyntheticLambda1;
        ((HashSet) this.mDeviceStateRotationLockSettingsManager.mListeners).add(deviceStateRotationLockSettingController$$ExternalSyntheticLambda1);
    }
}
