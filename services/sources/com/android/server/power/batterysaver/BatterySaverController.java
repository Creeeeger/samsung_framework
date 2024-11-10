package com.android.server.power.batterysaver;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManagerInternal;
import android.os.BatterySaverPolicyConfig;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import com.android.server.LocalServices;
import com.android.server.power.Slog;
import com.android.server.power.batterysaver.BatterySaverPolicy;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Optional;

/* loaded from: classes3.dex */
public class BatterySaverController implements BatterySaverPolicy.BatterySaverPolicyListener {
    public boolean mAdaptiveEnabledRaw;
    public boolean mAdaptivePreviouslyEnabled;
    public final BatterySaverPolicy mBatterySaverPolicy;
    public final BatterySavingStats mBatterySavingStats;
    public final Context mContext;
    public boolean mFullEnabledRaw;
    public boolean mFullPreviouslyEnabled;
    public final MyHandler mHandler;
    public boolean mIsInteractive;
    public boolean mIsPluggedIn;
    public final Object mLock;
    public PowerManager mPowerManager;
    public Optional mPowerSaveModeChangedListenerPackage;
    public final ArrayList mListeners = new ArrayList();
    public final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.server.power.batterysaver.BatterySaverController.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            action.hashCode();
            boolean z = true;
            char c = 65535;
            switch (action.hashCode()) {
                case -2128145023:
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1538406691:
                    if (action.equals("android.intent.action.BATTERY_CHANGED")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1454123155:
                    if (action.equals("android.intent.action.SCREEN_ON")) {
                        c = 2;
                        break;
                    }
                    break;
                case 498807504:
                    if (action.equals("android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED")) {
                        c = 3;
                        break;
                    }
                    break;
                case 870701415:
                    if (action.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 2:
                    if (!BatterySaverController.this.isPolicyEnabled()) {
                        BatterySaverController.this.updateBatterySavingStats();
                        return;
                    } else {
                        BatterySaverController.this.mHandler.postStateChanged(false, 5);
                        return;
                    }
                case 1:
                    synchronized (BatterySaverController.this.mLock) {
                        BatterySaverController batterySaverController = BatterySaverController.this;
                        if (intent.getIntExtra("plugged", 0) == 0) {
                            z = false;
                        }
                        batterySaverController.mIsPluggedIn = z;
                        break;
                    }
                case 3:
                case 4:
                    break;
                default:
                    return;
            }
            BatterySaverController.this.updateBatterySavingStats();
        }
    };

    public final String serviceTypeToString(int i) {
        if (i == 0) {
            return "NULL";
        }
        switch (i) {
            case 2:
                return "VIBRATION";
            case 3:
                return "ANIMATION";
            case 4:
                return "FULL_BACKUP";
            case 5:
                return "KEYVALUE_BACKUP";
            case 6:
                return "NETWORK_FIREWALL";
            case 7:
                return "SCREEN_BRIGHTNESS";
            case 8:
                return "SOUND";
            case 9:
                return "BATTERY_STATS";
            case 10:
                return "DATA_SAVER";
            case 11:
                return "FORCE_ALL_APPS_STANDBY";
            case 12:
                return "FORCE_BACKGROUND_CHECK";
            case 13:
                return "OPTIONAL_SENSORS";
            case 14:
                return "AOD";
            default:
                return "UNKNOWN";
        }
    }

    public static String reasonToString(int i) {
        switch (i) {
            case 0:
                return "Percentage Auto ON";
            case 1:
                return "Percentage Auto OFF";
            case 2:
                return "Manual ON";
            case 3:
                return "Manual OFF";
            case 4:
                return "Sticky restore";
            case 5:
                return "Interactivity changed";
            case 6:
                return "Policy changed";
            case 7:
                return "Plugged in";
            case 8:
                return "Setting changed";
            case 9:
                return "Dynamic Warning Auto ON";
            case 10:
                return "Dynamic Warning Auto OFF";
            case 11:
                return "Adaptive Power Savings changed";
            case 12:
                return "timeout";
            case 13:
                return "Full Power Savings changed";
            default:
                return "Unknown reason: " + i;
        }
    }

    public BatterySaverController(Object obj, Context context, Looper looper, BatterySaverPolicy batterySaverPolicy, BatterySavingStats batterySavingStats) {
        this.mLock = obj;
        this.mContext = context;
        this.mHandler = new MyHandler(looper);
        this.mBatterySaverPolicy = batterySaverPolicy;
        batterySaverPolicy.addListener(this);
        this.mBatterySavingStats = batterySavingStats;
        PowerManager.invalidatePowerSaveModeCaches();
    }

    public void addListener(PowerManagerInternal.LowPowerModeListener lowPowerModeListener) {
        synchronized (this.mLock) {
            this.mListeners.add(lowPowerModeListener);
        }
    }

    public void systemReady() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        intentFilter.addAction("android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED");
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
        this.mHandler.postSystemReady();
    }

    public final PowerManager getPowerManager() {
        if (this.mPowerManager == null) {
            PowerManager powerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
            Objects.requireNonNull(powerManager);
            this.mPowerManager = powerManager;
        }
        return this.mPowerManager;
    }

    @Override // com.android.server.power.batterysaver.BatterySaverPolicy.BatterySaverPolicyListener
    public void onBatterySaverPolicyChanged(BatterySaverPolicy batterySaverPolicy) {
        if (isPolicyEnabled()) {
            this.mHandler.postStateChanged(true, 6);
        }
    }

    /* loaded from: classes3.dex */
    public class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        public void postStateChanged(boolean z, int i) {
            obtainMessage(1, z ? 1 : 0, i).sendToTarget();
        }

        public void postSystemReady() {
            obtainMessage(2, 0, 0).sendToTarget();
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            BatterySaverController.this.handleBatterySaverStateChanged(message.arg1 == 1, message.arg2);
        }
    }

    public void enableBatterySaver(boolean z, int i) {
        Slog.d("BatterySaverController", "enableBatterySaver: " + z + "(" + i + ")");
        synchronized (this.mLock) {
            if (getFullEnabledLocked() == z) {
                return;
            }
            setFullEnabledLocked(z);
            if (updatePolicyLevelLocked()) {
                this.mHandler.postStateChanged(true, i);
            }
        }
    }

    public final boolean updatePolicyLevelLocked() {
        if (getFullEnabledLocked()) {
            return this.mBatterySaverPolicy.setPolicyLevel(2);
        }
        if (getAdaptiveEnabledLocked()) {
            return this.mBatterySaverPolicy.setPolicyLevel(1);
        }
        return this.mBatterySaverPolicy.setPolicyLevel(0);
    }

    public BatterySaverPolicyConfig getPolicyLocked(int i) {
        return this.mBatterySaverPolicy.getPolicyLocked(i).toConfig();
    }

    public boolean isEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = getFullEnabledLocked() || (getAdaptiveEnabledLocked() && this.mBatterySaverPolicy.shouldAdvertiseIsEnabled());
        }
        return z;
    }

    public final boolean isPolicyEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = getFullEnabledLocked() || getAdaptiveEnabledLocked();
        }
        return z;
    }

    public boolean isFullEnabled() {
        boolean fullEnabledLocked;
        synchronized (this.mLock) {
            fullEnabledLocked = getFullEnabledLocked();
        }
        return fullEnabledLocked;
    }

    public boolean setFullPolicyLocked(BatterySaverPolicyConfig batterySaverPolicyConfig, int i) {
        return setFullPolicyLocked(BatterySaverPolicy.Policy.fromConfig(batterySaverPolicyConfig), i);
    }

    public boolean setFullPolicyLocked(BatterySaverPolicy.Policy policy, int i) {
        if (!this.mBatterySaverPolicy.setFullPolicyLocked(policy)) {
            return false;
        }
        this.mHandler.postStateChanged(true, i);
        return true;
    }

    public boolean isAdaptiveEnabled() {
        boolean adaptiveEnabledLocked;
        synchronized (this.mLock) {
            adaptiveEnabledLocked = getAdaptiveEnabledLocked();
        }
        return adaptiveEnabledLocked;
    }

    public boolean setAdaptivePolicyLocked(BatterySaverPolicyConfig batterySaverPolicyConfig, int i) {
        return setAdaptivePolicyLocked(BatterySaverPolicy.Policy.fromConfig(batterySaverPolicyConfig), i);
    }

    public boolean setAdaptivePolicyLocked(BatterySaverPolicy.Policy policy, int i) {
        if (!this.mBatterySaverPolicy.setAdaptivePolicyLocked(policy)) {
            return false;
        }
        this.mHandler.postStateChanged(true, i);
        return true;
    }

    public boolean setAdaptivePolicyEnabledLocked(boolean z, int i) {
        if (getAdaptiveEnabledLocked() == z) {
            return false;
        }
        setAdaptiveEnabledLocked(z);
        if (!updatePolicyLevelLocked()) {
            return false;
        }
        this.mHandler.postStateChanged(true, i);
        return true;
    }

    public BatterySaverPolicy getBatterySaverPolicy() {
        return this.mBatterySaverPolicy;
    }

    public boolean isLaunchBoostDisabled() {
        return isPolicyEnabled() && this.mBatterySaverPolicy.isLaunchBoostDisabled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: all -> 0x011d, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0013, B:10:0x001d, B:13:0x0024, B:16:0x002b, B:19:0x0034, B:21:0x003a, B:22:0x0043, B:23:0x0065), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleBatterySaverStateChanged(boolean r12, int r13) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.power.batterysaver.BatterySaverController.handleBatterySaverStateChanged(boolean, int):void");
    }

    public final Optional getPowerSaveModeChangedListenerPackage() {
        Optional empty;
        if (this.mPowerSaveModeChangedListenerPackage == null) {
            String string = this.mContext.getString(R.string.global_action_lockdown);
            if (((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).isSystemPackage(string)) {
                empty = Optional.of(string);
            } else {
                empty = Optional.empty();
            }
            this.mPowerSaveModeChangedListenerPackage = empty;
        }
        return this.mPowerSaveModeChangedListenerPackage;
    }

    public final void updateBatterySavingStats() {
        int i;
        PowerManager powerManager = getPowerManager();
        if (powerManager == null) {
            Slog.wtf("BatterySaverController", "PowerManager not initialized");
            return;
        }
        boolean isInteractive = powerManager.isInteractive();
        int i2 = 2;
        int i3 = 1;
        if (powerManager.isDeviceIdleMode()) {
            i = 2;
        } else {
            i = powerManager.isLightDeviceIdleMode() ? 1 : 0;
        }
        synchronized (this.mLock) {
            BatterySavingStats batterySavingStats = this.mBatterySavingStats;
            if (getFullEnabledLocked()) {
                i2 = 1;
            } else if (!getAdaptiveEnabledLocked()) {
                i2 = 0;
            }
            int i4 = isInteractive ? 1 : 0;
            if (!this.mIsPluggedIn) {
                i3 = 0;
            }
            batterySavingStats.transitionState(i2, i4, i, i3);
        }
    }

    public final void setFullEnabledLocked(boolean z) {
        if (this.mFullEnabledRaw == z) {
            return;
        }
        PowerManager.invalidatePowerSaveModeCaches();
        this.mFullEnabledRaw = z;
    }

    public final boolean getFullEnabledLocked() {
        return this.mFullEnabledRaw;
    }

    public final void setAdaptiveEnabledLocked(boolean z) {
        if (this.mAdaptiveEnabledRaw == z) {
            return;
        }
        PowerManager.invalidatePowerSaveModeCaches();
        this.mAdaptiveEnabledRaw = z;
    }

    public final boolean getAdaptiveEnabledLocked() {
        return this.mAdaptiveEnabledRaw;
    }
}
