package com.android.server.policy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.PowerManager;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import com.android.server.devicestate.DeviceState;
import com.android.server.devicestate.DeviceStateProvider;
import com.android.server.input.InputManagerInternal;
import com.android.server.policy.devicestate.config.Conditions;
import com.android.server.policy.devicestate.config.DeviceStateConfig;
import com.android.server.policy.devicestate.config.LidSwitchCondition;
import com.android.server.policy.devicestate.config.NumericRange;
import com.android.server.policy.devicestate.config.SensorCondition;
import com.android.server.policy.devicestate.config.XmlParser;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BooleanSupplier;
import java.util.function.ToIntFunction;
import javax.xml.datatype.DatatypeConfigurationException;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class DeviceStateProviderImpl implements DeviceStateProvider, InputManagerInternal.LidSwitchCallback, SensorEventListener, PowerManager.OnThermalStatusChangedListener {
    public final Context mContext;
    public Boolean mIsLidOpen;
    public final DeviceState[] mOrderedStates;
    public boolean mPowerSaveModeEnabled;
    public static final BooleanSupplier TRUE_BOOLEAN_SUPPLIER = new BooleanSupplier() { // from class: com.android.server.policy.DeviceStateProviderImpl$$ExternalSyntheticLambda1
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            boolean lambda$static$0;
            lambda$static$0 = DeviceStateProviderImpl.lambda$static$0();
            return lambda$static$0;
        }
    };
    public static final BooleanSupplier FALSE_BOOLEAN_SUPPLIER = new BooleanSupplier() { // from class: com.android.server.policy.DeviceStateProviderImpl$$ExternalSyntheticLambda2
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            boolean lambda$static$1;
            lambda$static$1 = DeviceStateProviderImpl.lambda$static$1();
            return lambda$static$1;
        }
    };
    static final DeviceState DEFAULT_DEVICE_STATE = new DeviceState(0, "DEFAULT", 0);
    public final Object mLock = new Object();
    public final SparseArray mStateConditions = new SparseArray();
    public DeviceStateProvider.Listener mListener = null;
    public int mLastReportedState = -1;
    public final Map mLatestSensorEvent = new ArrayMap();
    public int mThermalStatus = 0;

    /* loaded from: classes3.dex */
    public interface ReadableConfig {
        InputStream openRead();
    }

    public static boolean isThermalStatusCriticalOrAbove(int i) {
        return i == 4 || i == 5 || i == 6;
    }

    public static /* synthetic */ boolean lambda$static$0() {
        return true;
    }

    public static /* synthetic */ boolean lambda$static$1() {
        return false;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public static DeviceStateProviderImpl create(Context context) {
        File configurationFile = getConfigurationFile();
        if (configurationFile == null) {
            return createFromConfig(context, null);
        }
        return createFromConfig(context, new ReadableFileConfig(configurationFile));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a1, code lost:
    
        switch(r11) {
            case 0: goto L53;
            case 1: goto L52;
            case 2: goto L51;
            case 3: goto L50;
            case 4: goto L48;
            case 5: goto L47;
            default: goto L49;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a5, code lost:
    
        r8 = r8 | 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cc, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a8, code lost:
    
        r8 = r8 | 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
    
        r8 = r8 | 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c4, code lost:
    
        r8 = r8 | 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c7, code lost:
    
        r8 = r8 | 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ca, code lost:
    
        r8 = r8 | 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00aa, code lost:
    
        android.util.Slog.w("DeviceStateProviderImpl", "Parsed unknown flag with name: " + r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.server.policy.DeviceStateProviderImpl createFromConfig(android.content.Context r12, com.android.server.policy.DeviceStateProviderImpl.ReadableConfig r13) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.policy.DeviceStateProviderImpl.createFromConfig(android.content.Context, com.android.server.policy.DeviceStateProviderImpl$ReadableConfig):com.android.server.policy.DeviceStateProviderImpl");
    }

    public DeviceStateProviderImpl(Context context, List list, List list2) {
        Preconditions.checkArgument(list.size() == list2.size(), "Number of device states must be equal to the number of device state conditions.");
        this.mContext = context;
        DeviceState[] deviceStateArr = (DeviceState[]) list.toArray(new DeviceState[list.size()]);
        Arrays.sort(deviceStateArr, Comparator.comparingInt(new ToIntFunction() { // from class: com.android.server.policy.DeviceStateProviderImpl$$ExternalSyntheticLambda0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((DeviceState) obj).getIdentifier();
            }
        }));
        this.mOrderedStates = deviceStateArr;
        setStateConditions(list, list2);
        final PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        if (powerManager != null) {
            if (hasThermalSensitiveState(list)) {
                powerManager.addThermalStatusListener(this);
            }
            if (hasPowerSaveSensitiveState(list)) {
                context.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.policy.DeviceStateProviderImpl.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context2, Intent intent) {
                        if ("android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL".equals(intent.getAction())) {
                            DeviceStateProviderImpl.this.onPowerSaveModeChanged(powerManager.isPowerSaveMode());
                        }
                    }
                }, new IntentFilter("android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"));
            }
        }
    }

    public final void setStateConditions(List list, List list2) {
        boolean z;
        boolean z2;
        ArraySet arraySet = new ArraySet();
        boolean z3 = false;
        for (int i = 0; i < list2.size(); i++) {
            int identifier = ((DeviceState) list.get(i)).getIdentifier();
            Conditions conditions = (Conditions) list2.get(i);
            if (conditions == null) {
                if (((DeviceState) list.get(i)).hasFlag(4)) {
                    this.mStateConditions.put(identifier, FALSE_BOOLEAN_SUPPLIER);
                } else {
                    this.mStateConditions.put(identifier, TRUE_BOOLEAN_SUPPLIER);
                }
            } else {
                ArraySet arraySet2 = new ArraySet();
                ArrayList arrayList = new ArrayList();
                LidSwitchCondition lidSwitch = conditions.getLidSwitch();
                if (lidSwitch != null) {
                    arrayList.add(new LidSwitchBooleanSupplier(lidSwitch.getOpen()));
                    z = true;
                } else {
                    z = false;
                }
                List sensor = conditions.getSensor();
                int i2 = 0;
                while (true) {
                    if (i2 >= sensor.size()) {
                        z2 = true;
                        break;
                    }
                    SensorCondition sensorCondition = (SensorCondition) sensor.get(i2);
                    String type = sensorCondition.getType();
                    String name = sensorCondition.getName();
                    Sensor findSensor = findSensor(type, name);
                    if (findSensor == null) {
                        Slog.e("DeviceStateProviderImpl", "Failed to find Sensor with type: " + type + " and name: " + name);
                        z2 = false;
                        break;
                    }
                    arrayList.add(new SensorBooleanSupplier(findSensor, sensorCondition.getValue()));
                    arraySet2.add(findSensor);
                    i2++;
                }
                if (z2) {
                    z3 |= z;
                    arraySet.addAll(arraySet2);
                    if (arrayList.size() > 1) {
                        this.mStateConditions.put(identifier, new AndBooleanSupplier(arrayList));
                    } else if (arrayList.size() > 0) {
                        this.mStateConditions.put(identifier, (BooleanSupplier) arrayList.get(0));
                    } else {
                        this.mStateConditions.put(identifier, TRUE_BOOLEAN_SUPPLIER);
                    }
                } else {
                    this.mStateConditions.put(identifier, FALSE_BOOLEAN_SUPPLIER);
                }
            }
        }
        if (z3) {
            ((InputManagerInternal) LocalServices.getService(InputManagerInternal.class)).registerLidSwitchCallback(this);
        }
        SensorManager sensorManager = (SensorManager) this.mContext.getSystemService(SensorManager.class);
        for (int i3 = 0; i3 < arraySet.size(); i3++) {
            sensorManager.registerListener(this, (Sensor) arraySet.valueAt(i3), 0);
        }
    }

    public final Sensor findSensor(String str, String str2) {
        List<Sensor> sensorList = ((SensorManager) this.mContext.getSystemService(SensorManager.class)).getSensorList(-1);
        for (int i = 0; i < sensorList.size(); i++) {
            Sensor sensor = sensorList.get(i);
            String stringType = sensor.getStringType();
            String name = sensor.getName();
            if (stringType != null && name != null && stringType.equals(str) && name.equals(str2)) {
                return sensor;
            }
        }
        return null;
    }

    @Override // com.android.server.devicestate.DeviceStateProvider
    public void setListener(DeviceStateProvider.Listener listener) {
        synchronized (this.mLock) {
            if (this.mListener != null) {
                throw new RuntimeException("Provider already has a listener set.");
            }
            this.mListener = listener;
        }
        notifySupportedStatesChanged(1);
        notifyDeviceStateChangedIfNeeded();
    }

    public final void notifySupportedStatesChanged(int i) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            DeviceStateProvider.Listener listener = this.mListener;
            if (listener == null) {
                return;
            }
            for (DeviceState deviceState : this.mOrderedStates) {
                if ((!isThermalStatusCriticalOrAbove(this.mThermalStatus) || !deviceState.hasFlag(16)) && (!this.mPowerSaveModeEnabled || !deviceState.hasFlag(32))) {
                    arrayList.add(deviceState);
                }
            }
            listener.onSupportedDeviceStatesChanged((DeviceState[]) arrayList.toArray(new DeviceState[arrayList.size()]), i);
        }
    }

    public void notifyDeviceStateChangedIfNeeded() {
        int i;
        synchronized (this.mLock) {
            if (this.mListener == null) {
                return;
            }
            int i2 = 0;
            while (true) {
                DeviceState[] deviceStateArr = this.mOrderedStates;
                if (i2 >= deviceStateArr.length) {
                    i = -1;
                    break;
                }
                i = deviceStateArr[i2].getIdentifier();
                if (((BooleanSupplier) this.mStateConditions.get(i)).getAsBoolean()) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i == -1) {
                Slog.e("DeviceStateProviderImpl", "No declared device states match any of the required conditions.");
                dumpSensorValues();
            }
            if (i == -1 || i == this.mLastReportedState) {
                i = -1;
            } else {
                this.mLastReportedState = i;
            }
            if (i != -1) {
                this.mListener.onStateChanged(i);
            }
        }
    }

    @Override // com.android.server.input.InputManagerInternal.LidSwitchCallback
    public void notifyLidSwitchChanged(long j, boolean z) {
        synchronized (this.mLock) {
            this.mIsLidOpen = Boolean.valueOf(z);
        }
        notifyDeviceStateChangedIfNeeded();
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        synchronized (this.mLock) {
            this.mLatestSensorEvent.put(sensorEvent.sensor, sensorEvent);
        }
        notifyDeviceStateChangedIfNeeded();
    }

    /* loaded from: classes3.dex */
    public final class LidSwitchBooleanSupplier implements BooleanSupplier {
        public final boolean mExpectedOpen;

        public LidSwitchBooleanSupplier(boolean z) {
            this.mExpectedOpen = z;
        }

        @Override // java.util.function.BooleanSupplier
        public boolean getAsBoolean() {
            boolean z;
            synchronized (DeviceStateProviderImpl.this.mLock) {
                if (DeviceStateProviderImpl.this.mIsLidOpen == null) {
                    throw new IllegalStateException("Have not received lid switch value.");
                }
                z = DeviceStateProviderImpl.this.mIsLidOpen.booleanValue() == this.mExpectedOpen;
            }
            return z;
        }
    }

    /* loaded from: classes3.dex */
    public final class SensorBooleanSupplier implements BooleanSupplier {
        public final List mExpectedValues;
        public final Sensor mSensor;

        public SensorBooleanSupplier(Sensor sensor, List list) {
            this.mSensor = sensor;
            this.mExpectedValues = list;
        }

        @Override // java.util.function.BooleanSupplier
        public boolean getAsBoolean() {
            synchronized (DeviceStateProviderImpl.this.mLock) {
                SensorEvent sensorEvent = (SensorEvent) DeviceStateProviderImpl.this.mLatestSensorEvent.get(this.mSensor);
                if (sensorEvent == null) {
                    throw new IllegalStateException("Have not received sensor event.");
                }
                if (sensorEvent.values.length < this.mExpectedValues.size()) {
                    throw new RuntimeException("Number of supplied numeric range(s) does not match the number of values in the latest sensor event for sensor: " + this.mSensor);
                }
                for (int i = 0; i < this.mExpectedValues.size(); i++) {
                    if (!adheresToRange(sensorEvent.values[i], (NumericRange) this.mExpectedValues.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }

        public final boolean adheresToRange(float f, NumericRange numericRange) {
            BigDecimal min_optional = numericRange.getMin_optional();
            if (min_optional != null && f <= min_optional.floatValue()) {
                return false;
            }
            BigDecimal minInclusive_optional = numericRange.getMinInclusive_optional();
            if (minInclusive_optional != null && f < minInclusive_optional.floatValue()) {
                return false;
            }
            BigDecimal max_optional = numericRange.getMax_optional();
            if (max_optional != null && f >= max_optional.floatValue()) {
                return false;
            }
            BigDecimal maxInclusive_optional = numericRange.getMaxInclusive_optional();
            return maxInclusive_optional == null || f <= maxInclusive_optional.floatValue();
        }
    }

    /* loaded from: classes3.dex */
    public final class AndBooleanSupplier implements BooleanSupplier {
        public List mBooleanSuppliers;

        public AndBooleanSupplier(List list) {
            this.mBooleanSuppliers = list;
        }

        @Override // java.util.function.BooleanSupplier
        public boolean getAsBoolean() {
            for (int i = 0; i < this.mBooleanSuppliers.size(); i++) {
                if (!((BooleanSupplier) this.mBooleanSuppliers.get(i)).getAsBoolean()) {
                    return false;
                }
            }
            return true;
        }
    }

    public static File getConfigurationFile() {
        File buildPath = Environment.buildPath(Environment.getDataDirectory(), new String[]{"system/devicestate/", "device_state_configuration.xml"});
        if (buildPath.exists()) {
            return buildPath;
        }
        File buildPath2 = Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc/devicestate/", "device_state_configuration.xml"});
        if (buildPath2.exists()) {
            return buildPath2;
        }
        return null;
    }

    public final void dumpSensorValues() {
        Slog.i("DeviceStateProviderImpl", "Sensor values:");
        for (Sensor sensor : this.mLatestSensorEvent.keySet()) {
            SensorEvent sensorEvent = (SensorEvent) this.mLatestSensorEvent.get(sensor);
            if (sensorEvent != null) {
                Slog.i("DeviceStateProviderImpl", sensor.getName() + ": " + Arrays.toString(sensorEvent.values));
            } else {
                Slog.i("DeviceStateProviderImpl", sensor.getName() + ": null");
            }
        }
    }

    public static DeviceStateConfig parseConfig(ReadableConfig readableConfig) {
        try {
            InputStream openRead = readableConfig.openRead();
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(openRead);
                try {
                    DeviceStateConfig read = XmlParser.read(bufferedInputStream);
                    bufferedInputStream.close();
                    if (openRead != null) {
                        openRead.close();
                    }
                    return read;
                } finally {
                }
            } catch (Throwable th) {
                if (openRead != null) {
                    try {
                        openRead.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | DatatypeConfigurationException | XmlPullParserException e) {
            Slog.e("DeviceStateProviderImpl", "Encountered an error while reading device state config", e);
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public final class ReadableFileConfig implements ReadableConfig {
        public final File mFile;

        public ReadableFileConfig(File file) {
            this.mFile = file;
        }

        @Override // com.android.server.policy.DeviceStateProviderImpl.ReadableConfig
        public InputStream openRead() {
            return new FileInputStream(this.mFile);
        }
    }

    public void onPowerSaveModeChanged(boolean z) {
        synchronized (this.mLock) {
            if (this.mPowerSaveModeEnabled != z) {
                this.mPowerSaveModeEnabled = z;
                notifySupportedStatesChanged(z ? 4 : 5);
            }
        }
    }

    @Override // android.os.PowerManager.OnThermalStatusChangedListener
    public void onThermalStatusChanged(int i) {
        int i2;
        synchronized (this.mLock) {
            i2 = this.mThermalStatus;
            this.mThermalStatus = i;
        }
        boolean isThermalStatusCriticalOrAbove = isThermalStatusCriticalOrAbove(i);
        if (isThermalStatusCriticalOrAbove != isThermalStatusCriticalOrAbove(i2)) {
            Slog.i("DeviceStateProviderImpl", "Updating supported device states due to thermal status change. isThermalStatusCriticalOrAbove: " + isThermalStatusCriticalOrAbove);
            notifySupportedStatesChanged(isThermalStatusCriticalOrAbove ? 3 : 2);
        }
    }

    public static boolean hasThermalSensitiveState(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((DeviceState) it.next()).hasFlag(16)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasPowerSaveSensitiveState(List list) {
        for (int i = 0; i < list.size(); i++) {
            if (((DeviceState) list.get(i)).hasFlag(32)) {
                return true;
            }
        }
        return false;
    }
}
