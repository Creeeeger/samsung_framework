package com.android.systemui.statusbar.policy;

import android.hardware.SensorPrivacyManager;
import android.util.ArraySet;
import android.util.SparseBooleanArray;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyController;
import java.util.Iterator;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndividualSensorPrivacyControllerImpl implements IndividualSensorPrivacyController {
    public static final int[] SENSORS = {2, 1};
    public final SensorPrivacyManager mSensorPrivacyManager;
    public final SparseBooleanArray mSoftwareToggleState = new SparseBooleanArray();
    public final SparseBooleanArray mHardwareToggleState = new SparseBooleanArray();
    public final Set mCallbacks = new ArraySet();

    public IndividualSensorPrivacyControllerImpl(SensorPrivacyManager sensorPrivacyManager) {
        this.mSensorPrivacyManager = sensorPrivacyManager;
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        ((ArraySet) this.mCallbacks).add((IndividualSensorPrivacyController.Callback) obj);
    }

    public final void init() {
        SensorPrivacyManager.OnSensorPrivacyChangedListener onSensorPrivacyChangedListener = new SensorPrivacyManager.OnSensorPrivacyChangedListener() { // from class: com.android.systemui.statusbar.policy.IndividualSensorPrivacyControllerImpl.1
            public final void onSensorPrivacyChanged(int i, boolean z) {
            }

            public final void onSensorPrivacyChanged(SensorPrivacyManager.OnSensorPrivacyChangedListener.SensorPrivacyChangedParams sensorPrivacyChangedParams) {
                IndividualSensorPrivacyControllerImpl individualSensorPrivacyControllerImpl = IndividualSensorPrivacyControllerImpl.this;
                int sensor = sensorPrivacyChangedParams.getSensor();
                int toggleType = sensorPrivacyChangedParams.getToggleType();
                boolean isEnabled = sensorPrivacyChangedParams.isEnabled();
                if (toggleType == 1) {
                    individualSensorPrivacyControllerImpl.mSoftwareToggleState.put(sensor, isEnabled);
                } else if (toggleType == 2) {
                    individualSensorPrivacyControllerImpl.mHardwareToggleState.put(sensor, isEnabled);
                }
                Iterator it = ((ArraySet) individualSensorPrivacyControllerImpl.mCallbacks).iterator();
                while (it.hasNext()) {
                    ((IndividualSensorPrivacyController.Callback) it.next()).onSensorBlockedChanged(sensor, individualSensorPrivacyControllerImpl.isSensorBlocked(sensor));
                }
            }
        };
        SensorPrivacyManager sensorPrivacyManager = this.mSensorPrivacyManager;
        sensorPrivacyManager.addSensorPrivacyListener(onSensorPrivacyChangedListener);
        int[] iArr = SENSORS;
        for (int i = 0; i < 2; i++) {
            int i2 = iArr[i];
            boolean isSensorPrivacyEnabled = sensorPrivacyManager.isSensorPrivacyEnabled(1, i2);
            boolean isSensorPrivacyEnabled2 = sensorPrivacyManager.isSensorPrivacyEnabled(2, i2);
            this.mSoftwareToggleState.put(i2, isSensorPrivacyEnabled);
            this.mHardwareToggleState.put(i2, isSensorPrivacyEnabled2);
        }
    }

    public final boolean isSensorBlocked(int i) {
        if (!this.mSoftwareToggleState.get(i, false) && !this.mHardwareToggleState.get(i, false)) {
            return false;
        }
        return true;
    }

    public final boolean isSensorBlockedByHardwareToggle(int i) {
        return this.mHardwareToggleState.get(i, false);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        ((ArraySet) this.mCallbacks).remove((IndividualSensorPrivacyController.Callback) obj);
    }

    public final void setSensorBlocked(int i, int i2, boolean z) {
        this.mSensorPrivacyManager.setSensorPrivacyForProfileGroup(i, i2, z);
    }
}
