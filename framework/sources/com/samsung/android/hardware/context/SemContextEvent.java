package com.samsung.android.hardware.context;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* loaded from: classes5.dex */
public class SemContextEvent implements Parcelable {
    static final Parcelable.Creator<SemContextEvent> CREATOR = new Parcelable.Creator<SemContextEvent>() { // from class: com.samsung.android.hardware.context.SemContextEvent.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemContextEvent createFromParcel(Parcel in) {
            return new SemContextEvent(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemContextEvent[] newArray(int size) {
            return new SemContextEvent[size];
        }
    };
    public Bundle context;
    private SemContextEventContext mEventContext;
    public SemContext semContext;
    public long timestamp;

    /* renamed from: com.samsung.android.hardware.context.SemContextEvent$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemContextEvent> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemContextEvent createFromParcel(Parcel in) {
            return new SemContextEvent(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemContextEvent[] newArray(int size) {
            return new SemContextEvent[size];
        }
    }

    public SemContextEvent() {
        this.semContext = new SemContext();
        this.timestamp = 0L;
    }

    public SemContextEvent(Parcel src) {
        readFromParcel(src);
    }

    public byte[] getValues() {
        byte[] ret = this.context.getByteArray("array");
        Log.d("SemContextService", "EventContext getValues: " + ((int) ret[0]));
        return ret;
    }

    public SemContextApproach getApproachContext() {
        return (SemContextApproach) this.mEventContext;
    }

    public SemContextPedometer getPedometerContext() {
        return (SemContextPedometer) this.mEventContext;
    }

    SemContextStepCountAlert getStepCountAlertContext() {
        return (SemContextStepCountAlert) this.mEventContext;
    }

    public SemContextMovement getMovementContext() {
        return (SemContextMovement) this.mEventContext;
    }

    public SemContextAutoRotation getAutoRotationContext() {
        return (SemContextAutoRotation) this.mEventContext;
    }

    public SemContextAirMotion getAirMotionContext() {
        return (SemContextAirMotion) this.mEventContext;
    }

    public SemContextCallPose getCallPoseContext() {
        return (SemContextCallPose) this.mEventContext;
    }

    public SemContextShakeMotion getShakeMotionContext() {
        return (SemContextShakeMotion) this.mEventContext;
    }

    public SemContextFlipCoverAction getFlipCoverActionContext() {
        return (SemContextFlipCoverAction) this.mEventContext;
    }

    public SemContextGyroTemperature getGyroTemperatureContext() {
        return (SemContextGyroTemperature) this.mEventContext;
    }

    public SemContextPutDownMotion getPutDownMotionContext() {
        return (SemContextPutDownMotion) this.mEventContext;
    }

    public SemContextWakeUpVoice getWakeUpVoiceContext() {
        return (SemContextWakeUpVoice) this.mEventContext;
    }

    public SemContextBounceShortMotion getBounceShortMotionContext() {
        return (SemContextBounceShortMotion) this.mEventContext;
    }

    public SemContextBounceLongMotion getBounceLongMotionContext() {
        return (SemContextBounceLongMotion) this.mEventContext;
    }

    @Deprecated
    public SemContextWristUpMotion getWristUpMotionContext() {
        return (SemContextWristUpMotion) this.mEventContext;
    }

    public SemContextFlatMotion getFlatMotionContext() {
        return (SemContextFlatMotion) this.mEventContext;
    }

    @Deprecated
    public SemContextMovementAlert getMovementAlertContext() {
        return (SemContextMovementAlert) this.mEventContext;
    }

    public SemContextDevicePosition getDevicePositionContext() {
        return (SemContextDevicePosition) this.mEventContext;
    }

    public SemContextActivityLocationLogging getActivityLocationLoggingContext() {
        return (SemContextActivityLocationLogging) this.mEventContext;
    }

    public SemContextActivityTracker getActivityTrackerContext() {
        return (SemContextActivityTracker) this.mEventContext;
    }

    public SemContextActivityBatch getActivityBatchContext() {
        return (SemContextActivityBatch) this.mEventContext;
    }

    public SemContextActivityNotification getActivityNotificationContext() {
        return (SemContextActivityNotification) this.mEventContext;
    }

    public SemContextSpecificPoseAlert getSpecificPoseAlertContext() {
        return (SemContextSpecificPoseAlert) this.mEventContext;
    }

    public SemContextActivityNotificationEx getActivityNotificationExContext() {
        return (SemContextActivityNotificationEx) this.mEventContext;
    }

    public SemContextActivityNotificationForLocation getActivityNotificationForLocationContext() {
        return (SemContextActivityNotificationForLocation) this.mEventContext;
    }

    SemContextCallMotion getCallMotionContext() {
        return (SemContextCallMotion) this.mEventContext;
    }

    @Deprecated(forRemoval = true, since = "15.5")
    public SemContextStepLevelMonitor getStepLevelMonitorContext() {
        return (SemContextStepLevelMonitor) this.mEventContext;
    }

    public SemContextActiveTimeMonitor getActiveTimeMonitorContext() {
        return (SemContextActiveTimeMonitor) this.mEventContext;
    }

    @Deprecated(forRemoval = true, since = "15.5")
    public SemContextSedentaryTimer getSedentaryTimerContext() {
        return (SemContextSedentaryTimer) this.mEventContext;
    }

    public SemContextFlatMotionForTableMode getFlatMotionForTableModeContext() {
        return (SemContextFlatMotionForTableMode) this.mEventContext;
    }

    public SemContextAutoBrightness getAutoBrightnessContext() {
        return (SemContextAutoBrightness) this.mEventContext;
    }

    public SemContextAbnormalPressure getAbnormalPressureContext() {
        return (SemContextAbnormalPressure) this.mEventContext;
    }

    @Deprecated(forRemoval = true, since = "15.5")
    public SemContextPhoneStatusMonitor getPhoneStatusMonitorContext() {
        return (SemContextPhoneStatusMonitor) this.mEventContext;
    }

    public SemContextHallSensor getHallSensorContext() {
        return (SemContextHallSensor) this.mEventContext;
    }

    public SemContextEnvironmentAdaptiveDisplay getEnvironmentAdaptiveDisplayContext() {
        return (SemContextEnvironmentAdaptiveDisplay) this.mEventContext;
    }

    public SemContextWirelessChargingDetection getWirelessChargingDetectionContext() {
        return (SemContextWirelessChargingDetection) this.mEventContext;
    }

    public SemContextLocationCore getLocationCoreContext() {
        return (SemContextLocationCore) this.mEventContext;
    }

    @Deprecated
    public SemContextFlipMotion getFlipMotionContext() {
        return (SemContextFlipMotion) this.mEventContext;
    }

    public SemContextAnyMotionDetector getAnyMotionDetectorContext() {
        return (SemContextAnyMotionDetector) this.mEventContext;
    }

    public SemContextCarryingDetection getCarryingDetectionContext() {
        return (SemContextCarryingDetection) this.mEventContext;
    }

    public SemContextSensorStatusCheck getSensorStatusCheckContext() {
        return (SemContextSensorStatusCheck) this.mEventContext;
    }

    public SemContextLocationChangeTrigger getLocationChangeTriggerContext() {
        return (SemContextLocationChangeTrigger) this.mEventContext;
    }

    public SemContextDeviceActivityDetector getDeviceActivityDetectorContext() {
        return (SemContextDeviceActivityDetector) this.mEventContext;
    }

    public SemContextFreeFallDetection getFreeFallDetectionContext() {
        return (SemContextFreeFallDetection) this.mEventContext;
    }

    public SemContextSlocationArDistance getSlocationArDistanceContext() {
        return (SemContextSlocationArDistance) this.mEventContext;
    }

    public void setContextEvent(int event, Bundle context) {
        this.semContext.setType(event);
        this.timestamp = System.nanoTime();
        this.context = context;
        switch (event) {
            case 1:
                SemContextApproach semContextApproach = new SemContextApproach();
                this.mEventContext = semContextApproach;
                semContextApproach.setValues(context);
                return;
            case 2:
                SemContextPedometer semContextPedometer = new SemContextPedometer();
                this.mEventContext = semContextPedometer;
                semContextPedometer.setValues(context);
                return;
            case 3:
                SemContextStepCountAlert semContextStepCountAlert = new SemContextStepCountAlert();
                this.mEventContext = semContextStepCountAlert;
                semContextStepCountAlert.setValues(context);
                return;
            case 4:
            case 8:
            case 9:
            case 10:
            case 23:
            case 29:
            case 31:
            case 37:
            case 38:
            case 40:
            case 45:
            case 48:
            case 53:
            default:
                return;
            case 5:
                SemContextMovement semContextMovement = new SemContextMovement();
                this.mEventContext = semContextMovement;
                semContextMovement.setValues(context);
                return;
            case 6:
                SemContextAutoRotation semContextAutoRotation = new SemContextAutoRotation();
                this.mEventContext = semContextAutoRotation;
                semContextAutoRotation.setValues(context);
                return;
            case 7:
                SemContextAirMotion semContextAirMotion = new SemContextAirMotion();
                this.mEventContext = semContextAirMotion;
                semContextAirMotion.setValues(context);
                return;
            case 11:
                SemContextCallPose semContextCallPose = new SemContextCallPose();
                this.mEventContext = semContextCallPose;
                semContextCallPose.setValues(context);
                return;
            case 12:
                SemContextShakeMotion semContextShakeMotion = new SemContextShakeMotion();
                this.mEventContext = semContextShakeMotion;
                semContextShakeMotion.setValues(context);
                return;
            case 13:
                SemContextFlipCoverAction semContextFlipCoverAction = new SemContextFlipCoverAction();
                this.mEventContext = semContextFlipCoverAction;
                semContextFlipCoverAction.setValues(context);
                return;
            case 14:
                SemContextGyroTemperature semContextGyroTemperature = new SemContextGyroTemperature();
                this.mEventContext = semContextGyroTemperature;
                semContextGyroTemperature.setValues(context);
                return;
            case 15:
                SemContextPutDownMotion semContextPutDownMotion = new SemContextPutDownMotion();
                this.mEventContext = semContextPutDownMotion;
                semContextPutDownMotion.setValues(context);
                return;
            case 16:
                SemContextWakeUpVoice semContextWakeUpVoice = new SemContextWakeUpVoice();
                this.mEventContext = semContextWakeUpVoice;
                semContextWakeUpVoice.setValues(context);
                return;
            case 17:
                SemContextBounceShortMotion semContextBounceShortMotion = new SemContextBounceShortMotion();
                this.mEventContext = semContextBounceShortMotion;
                semContextBounceShortMotion.setValues(context);
                return;
            case 18:
                SemContextBounceLongMotion semContextBounceLongMotion = new SemContextBounceLongMotion();
                this.mEventContext = semContextBounceLongMotion;
                semContextBounceLongMotion.setValues(context);
                return;
            case 19:
                SemContextWristUpMotion semContextWristUpMotion = new SemContextWristUpMotion();
                this.mEventContext = semContextWristUpMotion;
                semContextWristUpMotion.setValues(context);
                return;
            case 20:
                SemContextFlatMotion semContextFlatMotion = new SemContextFlatMotion();
                this.mEventContext = semContextFlatMotion;
                semContextFlatMotion.setValues(context);
                return;
            case 21:
                SemContextMovementAlert semContextMovementAlert = new SemContextMovementAlert();
                this.mEventContext = semContextMovementAlert;
                semContextMovementAlert.setValues(context);
                return;
            case 22:
                SemContextDevicePosition semContextDevicePosition = new SemContextDevicePosition();
                this.mEventContext = semContextDevicePosition;
                semContextDevicePosition.setValues(context);
                return;
            case 24:
                SemContextActivityLocationLogging semContextActivityLocationLogging = new SemContextActivityLocationLogging();
                this.mEventContext = semContextActivityLocationLogging;
                semContextActivityLocationLogging.setValues(context);
                return;
            case 25:
                SemContextActivityTracker semContextActivityTracker = new SemContextActivityTracker();
                this.mEventContext = semContextActivityTracker;
                semContextActivityTracker.setValues(context);
                return;
            case 26:
                SemContextActivityBatch semContextActivityBatch = new SemContextActivityBatch();
                this.mEventContext = semContextActivityBatch;
                semContextActivityBatch.setValues(context);
                return;
            case 27:
                SemContextActivityNotification semContextActivityNotification = new SemContextActivityNotification();
                this.mEventContext = semContextActivityNotification;
                semContextActivityNotification.setValues(context);
                return;
            case 28:
                SemContextSpecificPoseAlert semContextSpecificPoseAlert = new SemContextSpecificPoseAlert();
                this.mEventContext = semContextSpecificPoseAlert;
                semContextSpecificPoseAlert.setValues(context);
                return;
            case 30:
                SemContextActivityNotificationForLocation semContextActivityNotificationForLocation = new SemContextActivityNotificationForLocation();
                this.mEventContext = semContextActivityNotificationForLocation;
                semContextActivityNotificationForLocation.setValues(context);
                return;
            case 32:
                SemContextCallMotion semContextCallMotion = new SemContextCallMotion();
                this.mEventContext = semContextCallMotion;
                semContextCallMotion.setValues(context);
                return;
            case 33:
                SemContextStepLevelMonitor semContextStepLevelMonitor = new SemContextStepLevelMonitor();
                this.mEventContext = semContextStepLevelMonitor;
                semContextStepLevelMonitor.setValues(context);
                return;
            case 34:
                SemContextActiveTimeMonitor semContextActiveTimeMonitor = new SemContextActiveTimeMonitor();
                this.mEventContext = semContextActiveTimeMonitor;
                semContextActiveTimeMonitor.setValues(context);
                return;
            case 35:
                SemContextSedentaryTimer semContextSedentaryTimer = new SemContextSedentaryTimer();
                this.mEventContext = semContextSedentaryTimer;
                semContextSedentaryTimer.setValues(context);
                return;
            case 36:
                SemContextFlatMotionForTableMode semContextFlatMotionForTableMode = new SemContextFlatMotionForTableMode();
                this.mEventContext = semContextFlatMotionForTableMode;
                semContextFlatMotionForTableMode.setValues(context);
                return;
            case 39:
                SemContextAutoBrightness semContextAutoBrightness = new SemContextAutoBrightness();
                this.mEventContext = semContextAutoBrightness;
                semContextAutoBrightness.setValues(context);
                return;
            case 41:
                SemContextAbnormalPressure semContextAbnormalPressure = new SemContextAbnormalPressure();
                this.mEventContext = semContextAbnormalPressure;
                semContextAbnormalPressure.setValues(context);
                return;
            case 42:
                SemContextPhoneStatusMonitor semContextPhoneStatusMonitor = new SemContextPhoneStatusMonitor();
                this.mEventContext = semContextPhoneStatusMonitor;
                semContextPhoneStatusMonitor.setValues(context);
                return;
            case 43:
                SemContextHallSensor semContextHallSensor = new SemContextHallSensor();
                this.mEventContext = semContextHallSensor;
                semContextHallSensor.setValues(context);
                return;
            case 44:
                SemContextEnvironmentAdaptiveDisplay semContextEnvironmentAdaptiveDisplay = new SemContextEnvironmentAdaptiveDisplay();
                this.mEventContext = semContextEnvironmentAdaptiveDisplay;
                semContextEnvironmentAdaptiveDisplay.setValues(context);
                return;
            case 46:
                SemContextWirelessChargingDetection semContextWirelessChargingDetection = new SemContextWirelessChargingDetection();
                this.mEventContext = semContextWirelessChargingDetection;
                semContextWirelessChargingDetection.setValues(context);
                return;
            case 47:
                SemContextLocationCore semContextLocationCore = new SemContextLocationCore();
                this.mEventContext = semContextLocationCore;
                semContextLocationCore.setValues(context);
                return;
            case 49:
                SemContextFlipMotion semContextFlipMotion = new SemContextFlipMotion();
                this.mEventContext = semContextFlipMotion;
                semContextFlipMotion.setValues(context);
                return;
            case 50:
                SemContextAnyMotionDetector semContextAnyMotionDetector = new SemContextAnyMotionDetector();
                this.mEventContext = semContextAnyMotionDetector;
                semContextAnyMotionDetector.setValues(context);
                return;
            case 51:
                SemContextCarryingDetection semContextCarryingDetection = new SemContextCarryingDetection();
                this.mEventContext = semContextCarryingDetection;
                semContextCarryingDetection.setValues(context);
                return;
            case 52:
                SemContextSensorStatusCheck semContextSensorStatusCheck = new SemContextSensorStatusCheck();
                this.mEventContext = semContextSensorStatusCheck;
                semContextSensorStatusCheck.setValues(context);
                return;
            case 54:
                SemContextDeviceActivityDetector semContextDeviceActivityDetector = new SemContextDeviceActivityDetector();
                this.mEventContext = semContextDeviceActivityDetector;
                semContextDeviceActivityDetector.setValues(context);
                return;
            case 55:
                SemContextFreeFallDetection semContextFreeFallDetection = new SemContextFreeFallDetection();
                this.mEventContext = semContextFreeFallDetection;
                semContextFreeFallDetection.setValues(context);
                return;
            case 56:
                SemContextSlocationArDistance semContextSlocationArDistance = new SemContextSlocationArDistance();
                this.mEventContext = semContextSlocationArDistance;
                semContextSlocationArDistance.setValues(context);
                return;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.timestamp);
        dest.writeParcelable(this.semContext, flags);
        dest.writeParcelable(this.mEventContext, flags);
        dest.writeBundle(this.context);
    }

    private void readFromParcel(Parcel src) {
        this.timestamp = src.readLong();
        this.semContext = (SemContext) src.readParcelable(SemContext.class.getClassLoader());
        this.mEventContext = (SemContextEventContext) src.readParcelable(SemContextEventContext.class.getClassLoader());
        this.context = src.readBundle(getClass().getClassLoader());
    }
}
