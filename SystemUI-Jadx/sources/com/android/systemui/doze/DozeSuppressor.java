package com.android.systemui.doze;

import android.hardware.display.AmbientDisplayConfiguration;
import android.text.TextUtils;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.doze.DozeMachine;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.BiometricUnlockController;
import com.android.systemui.statusbar.phone.DozeServiceHost;
import com.android.systemui.statusbar.policy.BatteryControllerImpl;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import dagger.Lazy;
import java.io.PrintWriter;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DozeSuppressor implements DozeMachine.Part {
    public final Lazy mBiometricUnlockControllerLazy;
    public final AmbientDisplayConfiguration mConfig;
    public final DozeHost mDozeHost;
    public final DozeLog mDozeLog;
    public boolean mIsCarModeEnabled = false;
    public DozeMachine mMachine;
    public final UserTracker mUserTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.doze.DozeSuppressor$2, reason: invalid class name */
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
                $SwitchMap$com$android$systemui$doze$DozeMachine$State[DozeMachine.State.FINISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public DozeSuppressor(DozeHost dozeHost, AmbientDisplayConfiguration ambientDisplayConfiguration, DozeLog dozeLog, Lazy lazy, UserTracker userTracker) {
        new DozeHost.Callback() { // from class: com.android.systemui.doze.DozeSuppressor.1
            @Override // com.android.systemui.doze.DozeHost.Callback
            public final void onAlwaysOnSuppressedChanged(boolean z) {
                DozeMachine.State state;
                DozeSuppressor dozeSuppressor = DozeSuppressor.this;
                if (dozeSuppressor.mConfig.alwaysOnEnabled(((UserTrackerImpl) dozeSuppressor.mUserTracker).getUserId()) && !z) {
                    state = DozeMachine.State.DOZE_AOD;
                } else {
                    state = DozeMachine.State.DOZE;
                }
                DozeLogger dozeLogger = dozeSuppressor.mDozeLog.mLogger;
                dozeLogger.getClass();
                LogLevel logLevel = LogLevel.INFO;
                DozeLogger$logAlwaysOnSuppressedChange$2 dozeLogger$logAlwaysOnSuppressedChange$2 = new Function1() { // from class: com.android.systemui.doze.DozeLogger$logAlwaysOnSuppressedChange$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LogMessage logMessage = (LogMessage) obj;
                        return "Always on (AOD) suppressed changed, suppressed=" + logMessage.getBool1() + " nextState=" + logMessage.getStr1();
                    }
                };
                LogBuffer logBuffer = dozeLogger.buffer;
                LogMessage obtain = logBuffer.obtain("DozeLog", logLevel, dozeLogger$logAlwaysOnSuppressedChange$2, null);
                obtain.setBool1(z);
                obtain.setStr1(state.name());
                logBuffer.commit(obtain);
                dozeSuppressor.mMachine.requestState(state);
            }

            @Override // com.android.systemui.doze.DozeHost.Callback
            public final void onPowerSaveChanged() {
                DozeMachine.State state;
                DozeSuppressor dozeSuppressor = DozeSuppressor.this;
                if (((BatteryControllerImpl) ((DozeServiceHost) dozeSuppressor.mDozeHost).mBatteryController).mAodPowerSave) {
                    state = DozeMachine.State.DOZE;
                } else {
                    if (dozeSuppressor.mMachine.getState() == DozeMachine.State.DOZE) {
                        if (dozeSuppressor.mConfig.alwaysOnEnabled(((UserTrackerImpl) dozeSuppressor.mUserTracker).getUserId())) {
                            state = DozeMachine.State.DOZE_AOD;
                        }
                    }
                    state = null;
                }
                if (state != null) {
                    boolean z = ((BatteryControllerImpl) ((DozeServiceHost) dozeSuppressor.mDozeHost).mBatteryController).mAodPowerSave;
                    DozeLogger dozeLogger = dozeSuppressor.mDozeLog.mLogger;
                    dozeLogger.getClass();
                    LogLevel logLevel = LogLevel.INFO;
                    DozeLogger$logPowerSaveChanged$2 dozeLogger$logPowerSaveChanged$2 = new Function1() { // from class: com.android.systemui.doze.DozeLogger$logPowerSaveChanged$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            LogMessage logMessage = (LogMessage) obj;
                            return "Power save active=" + logMessage.getBool1() + " nextState=" + logMessage.getStr1();
                        }
                    };
                    LogBuffer logBuffer = dozeLogger.buffer;
                    LogMessage obtain = logBuffer.obtain("DozeLog", logLevel, dozeLogger$logPowerSaveChanged$2, null);
                    obtain.setBool1(z);
                    obtain.setStr1(state.name());
                    logBuffer.commit(obtain);
                    dozeSuppressor.mMachine.requestState(state);
                }
            }
        };
        this.mDozeHost = dozeHost;
        this.mConfig = ambientDisplayConfiguration;
        this.mDozeLog = dozeLog;
        this.mBiometricUnlockControllerLazy = lazy;
        this.mUserTracker = userTracker;
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void dump(PrintWriter printWriter) {
        boolean z;
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder(" isCarModeEnabled="), this.mIsCarModeEnabled, printWriter, " hasPendingAuth=");
        m.append(((BiometricUnlockController) this.mBiometricUnlockControllerLazy.get()).hasPendingAuthentication());
        printWriter.println(m.toString());
        StringBuilder sb = new StringBuilder(" isProvisioned=");
        DozeServiceHost dozeServiceHost = (DozeServiceHost) this.mDozeHost;
        DeviceProvisionedControllerImpl deviceProvisionedControllerImpl = (DeviceProvisionedControllerImpl) dozeServiceHost.mDeviceProvisionedController;
        if (deviceProvisionedControllerImpl.isDeviceProvisioned() && deviceProvisionedControllerImpl.isCurrentUserSetup()) {
            z = true;
        } else {
            z = false;
        }
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, z, printWriter, " isAlwaysOnSuppressed="), dozeServiceHost.mAlwaysOnSuppressed, printWriter, " aodPowerSaveActive="), ((BatteryControllerImpl) dozeServiceHost.mBatteryController).mAodPowerSave, printWriter);
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void onUiModeTypeChanged(int i) {
        boolean z;
        DozeMachine.State state;
        boolean z2 = true;
        if (i == 3) {
            z = true;
        } else {
            z = false;
        }
        if (this.mIsCarModeEnabled == z) {
            return;
        }
        this.mIsCarModeEnabled = z;
        DozeMachine.State state2 = this.mMachine.mState;
        if (state2 != DozeMachine.State.UNINITIALIZED && state2 != DozeMachine.State.FINISH) {
            z2 = false;
        }
        if (z2) {
            return;
        }
        DozeLog dozeLog = this.mDozeLog;
        if (z) {
            DozeLogger dozeLogger = dozeLog.mLogger;
            dozeLogger.getClass();
            LogLevel logLevel = LogLevel.INFO;
            DozeLogger$logCarModeStarted$2 dozeLogger$logCarModeStarted$2 = DozeLogger$logCarModeStarted$2.INSTANCE;
            LogBuffer logBuffer = dozeLogger.buffer;
            logBuffer.commit(logBuffer.obtain("DozeLog", logLevel, dozeLogger$logCarModeStarted$2, null));
            this.mMachine.requestState(DozeMachine.State.DOZE_SUSPEND_TRIGGERS);
            return;
        }
        DozeLogger dozeLogger2 = dozeLog.mLogger;
        dozeLogger2.getClass();
        LogLevel logLevel2 = LogLevel.INFO;
        DozeLogger$logCarModeEnded$2 dozeLogger$logCarModeEnded$2 = new Function1() { // from class: com.android.systemui.doze.DozeLogger$logCarModeEnded$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "Doze car mode ended";
            }
        };
        LogBuffer logBuffer2 = dozeLogger2.buffer;
        logBuffer2.commit(logBuffer2.obtain("DozeLog", logLevel2, dozeLogger$logCarModeEnded$2, null));
        DozeMachine dozeMachine = this.mMachine;
        if (this.mConfig.alwaysOnEnabled(((UserTrackerImpl) this.mUserTracker).getUserId())) {
            state = DozeMachine.State.DOZE_AOD;
        } else {
            state = DozeMachine.State.DOZE;
        }
        dozeMachine.requestState(state);
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void setDozeMachine(DozeMachine dozeMachine) {
        this.mMachine = dozeMachine;
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void transitionTo(DozeMachine.State state, DozeMachine.State state2) {
        String str;
        int i = AnonymousClass2.$SwitchMap$com$android$systemui$doze$DozeMachine$State[state2.ordinal()];
        boolean z = true;
        if (i == 1) {
            DeviceProvisionedControllerImpl deviceProvisionedControllerImpl = (DeviceProvisionedControllerImpl) ((DozeServiceHost) this.mDozeHost).mDeviceProvisionedController;
            if (!deviceProvisionedControllerImpl.isDeviceProvisioned() || !deviceProvisionedControllerImpl.isCurrentUserSetup()) {
                z = false;
            }
            if (!z) {
                str = "device_unprovisioned";
            } else if (((BiometricUnlockController) this.mBiometricUnlockControllerLazy.get()).hasPendingAuthentication()) {
                str = "has_pending_auth";
            } else {
                str = null;
            }
            boolean isEmpty = TextUtils.isEmpty(str);
            DozeLog dozeLog = this.mDozeLog;
            if (!isEmpty) {
                DozeLogger dozeLogger = dozeLog.mLogger;
                dozeLogger.getClass();
                LogLevel logLevel = LogLevel.INFO;
                DozeLogger$logImmediatelyEndDoze$2 dozeLogger$logImmediatelyEndDoze$2 = new Function1() { // from class: com.android.systemui.doze.DozeLogger$logImmediatelyEndDoze$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return KeyAttributes$$ExternalSyntheticOutline0.m("Doze immediately ended due to ", ((LogMessage) obj).getStr1());
                    }
                };
                LogBuffer logBuffer = dozeLogger.buffer;
                LogMessage obtain = logBuffer.obtain("DozeLog", logLevel, dozeLogger$logImmediatelyEndDoze$2, null);
                obtain.setStr1(str);
                logBuffer.commit(obtain);
                this.mMachine.requestState(DozeMachine.State.FINISH);
            }
            if (this.mIsCarModeEnabled) {
                DozeLogger dozeLogger2 = dozeLog.mLogger;
                dozeLogger2.getClass();
                LogLevel logLevel2 = LogLevel.INFO;
                DozeLogger$logCarModeStarted$2 dozeLogger$logCarModeStarted$2 = DozeLogger$logCarModeStarted$2.INSTANCE;
                LogBuffer logBuffer2 = dozeLogger2.buffer;
                logBuffer2.commit(logBuffer2.obtain("DozeLog", logLevel2, dozeLogger$logCarModeStarted$2, null));
                this.mMachine.requestState(DozeMachine.State.DOZE_SUSPEND_TRIGGERS);
            }
        }
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void destroy() {
    }
}
