package com.android.systemui.statusbar.phone;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserManager;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.util.Log;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.privacy.PrivacyItem;
import com.android.systemui.privacy.PrivacyItemController;
import com.android.systemui.privacy.PrivacyType;
import com.android.systemui.privacy.logging.PrivacyLogger;
import com.android.systemui.qs.tiles.SRotationLockTile;
import com.android.systemui.screenrecord.RecordingController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.PhoneStatusBarPolicy;
import com.android.systemui.statusbar.policy.BatteryController;
import com.android.systemui.statusbar.policy.BatteryControllerImpl;
import com.android.systemui.statusbar.policy.CastController;
import com.android.systemui.statusbar.policy.CastControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DataSaverController;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.statusbar.policy.HotspotController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.LocationController;
import com.android.systemui.statusbar.policy.LocationControllerImpl;
import com.android.systemui.statusbar.policy.NextAlarmController;
import com.android.systemui.statusbar.policy.RotationLockController;
import com.android.systemui.statusbar.policy.SBluetoothController;
import com.android.systemui.statusbar.policy.SBluetoothControllerImpl;
import com.android.systemui.statusbar.policy.SensorPrivacyController;
import com.android.systemui.statusbar.policy.UserInfoController;
import com.android.systemui.statusbar.policy.UserInfoControllerImpl;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import com.android.systemui.util.RingerModeTracker;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.time.DateFormatUtil;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhoneStatusBarPolicy implements SBluetoothController.SCallback, CommandQueue.Callbacks, RotationLockController.RotationLockControllerCallback, DataSaverController.Listener, ZenModeController.Callback, DeviceProvisionedController.DeviceProvisionedListener, KeyguardStateController.Callback, PrivacyItemController.Callback, LocationController.LocationChangeCallback, RecordingController.RecordingStateChangeCallback {
    public static final boolean DEBUG = Log.isLoggable("PhoneStatusBarPolicy", 3);
    public static final int LOCATION_STATUS_ICON_ID = PrivacyType.TYPE_LOCATION.getIconId();
    public final ActivityManager mActivityManager;
    public final AlarmManager mAlarmManager;
    public final BatteryController mBatteryController;
    public final SBluetoothController mBluetooth;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final CastController mCast;
    public final CommandQueue mCommandQueue;
    public final ConfigurationController mConfigurationController;
    public boolean mCurrentUserSetup;
    public final DataSaverController mDataSaver;
    public final DevicePolicyManager mDevicePolicyManager;
    public final int mDisplayId;
    public final Handler mHandler;
    public final HotspotController mHotspot;
    public final StatusBarIconController mIconController;
    public final KeyguardStateController mKeyguardStateController;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public final LocationController mLocationController;
    public final Executor mMainExecutor;
    public boolean mMuteVisible;
    public final NextAlarmController mNextAlarmController;
    public final PrivacyItemController mPrivacyItemController;
    public final PrivacyLogger mPrivacyLogger;
    public final DeviceProvisionedController mProvisionedController;
    public final RecordingController mRecordingController;
    public final Resources mResources;
    public final RingerModeTracker mRingerModeTracker;
    public final RotationLockController mRotationLockController;
    public final SensorPrivacyController mSensorPrivacyController;
    public final SettingsHelper mSettingsHelper;
    public final String mSlotAlarmClock;
    public final String mSlotBTTethering;
    public final String mSlotBluetooth;
    public final String mSlotBluetoothConnected;
    public final String mSlotCamera;
    public final String mSlotCast;
    public final String mSlotDataSaver;
    public final String mSlotHeadset;
    public final String mSlotHotspot;
    public final String mSlotLocation;
    public final String mSlotManagedProfile;
    public final String mSlotMicrophone;
    public final String mSlotMute;
    public final String mSlotPowerSave;
    public final String mSlotRotate;
    public final String mSlotScreenRecord;
    public final String mSlotSensorsOff;
    public final String mSlotTty;
    public final String mSlotVibrate;
    public final String mSlotZen;
    public final TelecomManager mTelecomManager;
    public final Executor mUiBgExecutor;
    public final UserInfoController mUserInfoController;
    public final UserManager mUserManager;
    public final UserTracker mUserTracker;
    public boolean mVibrateVisible;
    public final ZenModeController mZenController;
    public boolean mManagedProfileIconVisible = false;
    public NotificationManager mNotificationManager = null;
    public final AnonymousClass1 mProcessListener = new ActivityManager.SemProcessListener() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.1
        public final void onForegroundActivitiesChanged(int i, int i2, boolean z) {
            ActivityManager.RunningTaskInfo runningTask = ActivityManagerWrapper.sInstance.getRunningTask();
            if (runningTask != null && runningTask.topActivityInfo != null) {
                PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                if (phoneStatusBarPolicy.mDisplayId == runningTask.displayId) {
                    phoneStatusBarPolicy.updateManagedProfile();
                }
            }
        }

        public final void onProcessDied(int i, int i2) {
        }
    };
    public final UserTracker.Callback mUserSwitchListener = new AnonymousClass2();
    public final AnonymousClass3 mHotspotCallback = new HotspotController.Callback() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.3
        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onHotspotChanged(int i, boolean z) {
            PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
            ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconVisibility(phoneStatusBarPolicy.mSlotHotspot, z);
        }

        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onHotspotPrepared() {
        }

        @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
        public final void onUpdateConnectedDevices() {
        }
    };
    public final AnonymousClass4 mCastCallback = new CastController.Callback() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.4
        @Override // com.android.systemui.statusbar.policy.CastController.Callback
        public final void onCastDevicesChanged() {
            boolean z;
            boolean z2;
            PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
            Iterator it = ((ArrayList) ((CastControllerImpl) phoneStatusBarPolicy.mCast).getCastDevices()).iterator();
            while (it.hasNext()) {
                int i = ((CastController.CastDevice) it.next()).state;
                if (i == 1 || i == 2) {
                    z = true;
                    break;
                }
            }
            z = false;
            Handler handler = phoneStatusBarPolicy.mHandler;
            AnonymousClass8 anonymousClass8 = phoneStatusBarPolicy.mRemoveCastIconRunnable;
            handler.removeCallbacks(anonymousClass8);
            if (z) {
                RecordingController recordingController = phoneStatusBarPolicy.mRecordingController;
                synchronized (recordingController) {
                    z2 = recordingController.mIsRecording;
                }
                if (!z2) {
                    String string = phoneStatusBarPolicy.mResources.getString(R.string.accessibility_casting);
                    StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController;
                    String str = phoneStatusBarPolicy.mSlotCast;
                    statusBarIconControllerImpl.setIcon(string, str, R.drawable.stat_sys_cast);
                    statusBarIconControllerImpl.setIconVisibility(str, true);
                    return;
                }
            }
            handler.postDelayed(anonymousClass8, 3000L);
        }
    };
    public final AnonymousClass5 mNextAlarmCallback = new NextAlarmController.NextAlarmChangeCallback() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.5
        @Override // com.android.systemui.statusbar.policy.NextAlarmController.NextAlarmChangeCallback
        public final void onNextAlarmChanged(AlarmManager.AlarmClockInfo alarmClockInfo) {
            PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
            boolean z = PhoneStatusBarPolicy.DEBUG;
            phoneStatusBarPolicy.getClass();
            PhoneStatusBarPolicy.this.updateAlarm();
        }
    };
    public final AnonymousClass6 mSensorPrivacyListener = new AnonymousClass6();
    public final AnonymousClass7 mIntentReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.7
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z;
            boolean z2;
            int i;
            int i2;
            String action = intent.getAction();
            action.getClass();
            char c = 65535;
            switch (action.hashCode()) {
                case -1676458352:
                    if (action.equals("android.intent.action.HEADSET_PLUG")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1238404651:
                    if (action.equals("android.intent.action.MANAGED_PROFILE_UNAVAILABLE")) {
                        c = 1;
                        break;
                    }
                    break;
                case -864107122:
                    if (action.equals("android.intent.action.MANAGED_PROFILE_AVAILABLE")) {
                        c = 2;
                        break;
                    }
                    break;
                case -229777127:
                    if (action.equals("android.intent.action.SIM_STATE_CHANGED")) {
                        c = 3;
                        break;
                    }
                    break;
                case -19011148:
                    if (action.equals("android.intent.action.LOCALE_CHANGED")) {
                        c = 4;
                        break;
                    }
                    break;
                case 217805295:
                    if (action.equals("android.app.action.NOTIFICATION_POLICY_CHANGED")) {
                        c = 5;
                        break;
                    }
                    break;
                case 502473491:
                    if (action.equals("android.intent.action.TIMEZONE_CHANGED")) {
                        c = 6;
                        break;
                    }
                    break;
                case 505380757:
                    if (action.equals("android.intent.action.TIME_SET")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1041332296:
                    if (action.equals("android.intent.action.DATE_CHANGED")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1051344550:
                    if (action.equals("android.telecom.action.CURRENT_TTY_MODE_CHANGED")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1051477093:
                    if (action.equals("android.intent.action.MANAGED_PROFILE_REMOVED")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1862867569:
                    if (action.equals("com.android.systemui.action.dnd_off")) {
                        c = 11;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                    boolean z3 = PhoneStatusBarPolicy.DEBUG;
                    phoneStatusBarPolicy.getClass();
                    if (intent.getIntExtra("state", 0) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (intent.getIntExtra("microphone", 0) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    String str = phoneStatusBarPolicy.mSlotHeadset;
                    StatusBarIconController statusBarIconController = phoneStatusBarPolicy.mIconController;
                    if (z) {
                        if (z2) {
                            i = R.string.accessibility_status_bar_headset;
                        } else {
                            i = R.string.accessibility_status_bar_headphones;
                        }
                        String string = phoneStatusBarPolicy.mResources.getString(i);
                        if (z2) {
                            i2 = R.drawable.stat_sys_headset_mic;
                        } else {
                            i2 = R.drawable.stat_sys_headset;
                        }
                        StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) statusBarIconController;
                        statusBarIconControllerImpl.setIcon(string, str, i2);
                        statusBarIconControllerImpl.setIconVisibility(str, true);
                        return;
                    }
                    ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
                    return;
                case 1:
                case 2:
                case '\n':
                    PhoneStatusBarPolicy phoneStatusBarPolicy2 = PhoneStatusBarPolicy.this;
                    boolean z4 = PhoneStatusBarPolicy.DEBUG;
                    phoneStatusBarPolicy2.updateManagedProfile();
                    return;
                case 3:
                    intent.getBooleanExtra("rebroadcastOnUnlock", false);
                    return;
                case 4:
                case 5:
                    PhoneStatusBarPolicy phoneStatusBarPolicy3 = PhoneStatusBarPolicy.this;
                    boolean z5 = PhoneStatusBarPolicy.DEBUG;
                    phoneStatusBarPolicy3.updateVolumeZen();
                    return;
                case 6:
                case 7:
                case '\b':
                    PhoneStatusBarPolicy phoneStatusBarPolicy4 = PhoneStatusBarPolicy.this;
                    boolean z6 = PhoneStatusBarPolicy.DEBUG;
                    phoneStatusBarPolicy4.updateVolumeZen();
                    return;
                case '\t':
                    PhoneStatusBarPolicy phoneStatusBarPolicy5 = PhoneStatusBarPolicy.this;
                    int intExtra = intent.getIntExtra("android.telecom.extra.CURRENT_TTY_MODE", 0);
                    boolean z7 = PhoneStatusBarPolicy.DEBUG;
                    phoneStatusBarPolicy5.updateTTY(intExtra);
                    return;
                case 11:
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        String[] split = context.getPackageManager().getNameForUid(extras.getInt(NetworkAnalyticsConstants.DataPoints.UID)).split(":");
                        if (split.length != 0 && split[0].equals("android.uid.systemui")) {
                            PhoneStatusBarPolicy.this.mNotificationManager.setZenMode(0, null, SubRoom.EXTRA_VALUE_NOTIFICATION);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    public final AnonymousClass8 mRemoveCastIconRunnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.8
        @Override // java.lang.Runnable
        public final void run() {
            boolean z = PhoneStatusBarPolicy.DEBUG;
            PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
            ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconVisibility(phoneStatusBarPolicy.mSlotCast, false);
        }
    };
    public final AnonymousClass9 mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.9
        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onLocaleListChanged() {
            PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
            Resources resources = phoneStatusBarPolicy.mResources;
            String string = resources.getString(R.string.status_bar_alarm);
            StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController;
            statusBarIconControllerImpl.setIconContentDescription(string, phoneStatusBarPolicy.mSlotAlarmClock);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_ringer_vibrate), phoneStatusBarPolicy.mSlotVibrate);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_ringer_silent), phoneStatusBarPolicy.mSlotMute);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_status_bar_hotspot), phoneStatusBarPolicy.mSlotHotspot);
            statusBarIconControllerImpl.setIconContentDescription(phoneStatusBarPolicy.mDevicePolicyManager.getResources().getString("SystemUi.STATUS_BAR_WORK_ICON_ACCESSIBILITY", new PhoneStatusBarPolicy$$ExternalSyntheticLambda2(phoneStatusBarPolicy)), phoneStatusBarPolicy.mSlotManagedProfile);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_data_saver_on), phoneStatusBarPolicy.mSlotDataSaver);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.ongoing_privacy_chip_content_multiple_apps, resources.getString(PrivacyType.TYPE_MICROPHONE.getNameId())), phoneStatusBarPolicy.mSlotMicrophone);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.ongoing_privacy_chip_content_multiple_apps, resources.getString(PrivacyType.TYPE_CAMERA.getNameId())), phoneStatusBarPolicy.mSlotCamera);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_location_active), phoneStatusBarPolicy.mSlotLocation);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_sensors_off_active), phoneStatusBarPolicy.mSlotSensorsOff);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.status_bar_power_saving_description), phoneStatusBarPolicy.mSlotPowerSave);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_quick_settings_bluetooth_on), phoneStatusBarPolicy.mSlotBluetooth);
            statusBarIconControllerImpl.setIconContentDescription(resources.getString(R.string.accessibility_bluetooth_connected), phoneStatusBarPolicy.mSlotBluetoothConnected);
        }
    };
    public final AnonymousClass10 mBatteryStateChangeCallback = new BatteryController.BatteryStateChangeCallback() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.10
        @Override // com.android.systemui.statusbar.policy.BatteryController.BatteryStateChangeCallback
        public final void onPowerSaveChanged(boolean z) {
            PhoneStatusBarPolicy.m1426$$Nest$mupdatePowerSaveState(PhoneStatusBarPolicy.this, z);
        }
    };
    public final AnonymousClass11 mOnChangedCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.11
        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            if (uri != null && uri.equals(Settings.System.getUriFor("emergency_mode"))) {
                PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                PhoneStatusBarPolicy.m1426$$Nest$mupdatePowerSaveState(phoneStatusBarPolicy, ((BatteryControllerImpl) phoneStatusBarPolicy.mBatteryController).mPowerSave);
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$12, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass12 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$privacy$PrivacyType;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            $SwitchMap$com$android$systemui$privacy$PrivacyType = iArr;
            try {
                iArr[PrivacyType.TYPE_CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$privacy$PrivacyType[PrivacyType.TYPE_LOCATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$privacy$PrivacyType[PrivacyType.TYPE_MICROPHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 implements UserTracker.Callback {
        public AnonymousClass2() {
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            PhoneStatusBarPolicy.this.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneStatusBarPolicy.AnonymousClass2 anonymousClass2 = PhoneStatusBarPolicy.AnonymousClass2.this;
                    PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                    boolean z = PhoneStatusBarPolicy.DEBUG;
                    phoneStatusBarPolicy.updateAlarm();
                    PhoneStatusBarPolicy.this.updateManagedProfile();
                    PhoneStatusBarPolicy.this.onUserSetupChanged();
                }
            });
        }

        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanging(int i) {
            PhoneStatusBarPolicy.this.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ((UserInfoControllerImpl) PhoneStatusBarPolicy.this.mUserInfoController).reloadUserInfo();
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass6 {
        public AnonymousClass6() {
        }
    }

    /* renamed from: -$$Nest$mupdatePowerSaveState, reason: not valid java name */
    public static void m1426$$Nest$mupdatePowerSaveState(PhoneStatusBarPolicy phoneStatusBarPolicy, boolean z) {
        boolean z2;
        boolean isEmergencyMode = phoneStatusBarPolicy.mSettingsHelper.isEmergencyMode();
        if (z && !isEmergencyMode) {
            z2 = true;
        } else {
            z2 = false;
        }
        EmergencyButtonController$$ExternalSyntheticOutline0.m("updatePowerSaveState: isPowerSave=", z, ", isEmergencyMode=", isEmergencyMode, "PhoneStatusBarPolicy");
        ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconVisibility(phoneStatusBarPolicy.mSlotPowerSave, z2);
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$9] */
    /* JADX WARN: Type inference failed for: r2v11, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$10] */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$11] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$1] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$3] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$4] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$5] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$7] */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$8] */
    public PhoneStatusBarPolicy(StatusBarIconController statusBarIconController, CommandQueue commandQueue, BroadcastDispatcher broadcastDispatcher, Executor executor, Executor executor2, Looper looper, Resources resources, CastController castController, HotspotController hotspotController, SBluetoothController sBluetoothController, NextAlarmController nextAlarmController, UserInfoController userInfoController, RotationLockController rotationLockController, DataSaverController dataSaverController, ZenModeController zenModeController, DeviceProvisionedController deviceProvisionedController, KeyguardStateController keyguardStateController, LocationController locationController, SensorPrivacyController sensorPrivacyController, AlarmManager alarmManager, UserManager userManager, UserTracker userTracker, DevicePolicyManager devicePolicyManager, RecordingController recordingController, TelecomManager telecomManager, int i, SharedPreferences sharedPreferences, DateFormatUtil dateFormatUtil, RingerModeTracker ringerModeTracker, PrivacyItemController privacyItemController, PrivacyLogger privacyLogger, ConfigurationController configurationController, BatteryController batteryController, KnoxStateMonitor knoxStateMonitor, ActivityManager activityManager, SettingsHelper settingsHelper) {
        this.mIconController = statusBarIconController;
        this.mCommandQueue = commandQueue;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mHandler = new Handler(looper);
        this.mResources = resources;
        this.mCast = castController;
        this.mHotspot = hotspotController;
        this.mBluetooth = sBluetoothController;
        this.mNextAlarmController = nextAlarmController;
        this.mAlarmManager = alarmManager;
        this.mUserInfoController = userInfoController;
        this.mUserManager = userManager;
        this.mUserTracker = userTracker;
        this.mDevicePolicyManager = devicePolicyManager;
        this.mRotationLockController = rotationLockController;
        this.mDataSaver = dataSaverController;
        this.mZenController = zenModeController;
        this.mProvisionedController = deviceProvisionedController;
        this.mKeyguardStateController = keyguardStateController;
        this.mLocationController = locationController;
        this.mPrivacyItemController = privacyItemController;
        this.mSensorPrivacyController = sensorPrivacyController;
        this.mRecordingController = recordingController;
        this.mMainExecutor = executor;
        this.mUiBgExecutor = executor2;
        this.mTelecomManager = telecomManager;
        this.mRingerModeTracker = ringerModeTracker;
        this.mPrivacyLogger = privacyLogger;
        this.mConfigurationController = configurationController;
        this.mBatteryController = batteryController;
        this.mSettingsHelper = settingsHelper;
        this.mSlotCast = resources.getString(17042913);
        this.mSlotHotspot = resources.getString(17042922);
        this.mSlotBluetooth = resources.getString(17042908);
        this.mSlotBluetoothConnected = resources.getString(17042909);
        this.mSlotTty = resources.getString(17042948);
        this.mSlotZen = resources.getString(17042952);
        this.mSlotMute = resources.getString(17042933);
        this.mSlotVibrate = resources.getString(17042949);
        this.mSlotAlarmClock = resources.getString(17042906);
        this.mSlotManagedProfile = resources.getString(17042928);
        this.mSlotRotate = resources.getString(17042941);
        this.mSlotHeadset = resources.getString(17042921);
        this.mSlotDataSaver = resources.getString(17042917);
        this.mSlotLocation = resources.getString(17042927);
        this.mSlotMicrophone = resources.getString(17042929);
        this.mSlotCamera = resources.getString(17042912);
        this.mSlotSensorsOff = resources.getString(17042944);
        this.mSlotScreenRecord = resources.getString(17042942);
        this.mSlotPowerSave = resources.getString(17042939);
        this.mSlotBTTethering = resources.getString(17042910);
        this.mDisplayId = i;
        this.mActivityManager = activityManager;
        this.mKnoxStateMonitor = knoxStateMonitor;
    }

    public final String getApplicationNameFromPackage(String str) {
        PackageManager packageManager = ((ZenModeControllerImpl) this.mZenController).mContext.getPackageManager();
        try {
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.android.systemui.statusbar.policy.BluetoothController.Callback
    public final void onBluetoothDevicesChanged() {
        updateBluetooth();
    }

    @Override // com.android.systemui.statusbar.policy.BluetoothController.Callback
    public final void onBluetoothStateChange(boolean z) {
        updateBluetooth();
    }

    @Override // com.android.systemui.statusbar.policy.ZenModeController.Callback
    public final void onConfigChanged$1() {
        updateVolumeZen();
    }

    @Override // com.android.systemui.screenrecord.RecordingController.RecordingStateChangeCallback
    public final void onCountdown(long j) {
        int i;
        if (DEBUG) {
            Log.d("PhoneStatusBarPolicy", "screenrecord: countdown " + j);
        }
        int floorDiv = (int) Math.floorDiv(j + 500, 1000);
        String num = Integer.toString(floorDiv);
        if (floorDiv != 1) {
            if (floorDiv != 2) {
                if (floorDiv != 3) {
                    i = R.drawable.stat_sys_screen_record;
                } else {
                    i = R.drawable.stat_sys_screen_record_3;
                }
            } else {
                i = R.drawable.stat_sys_screen_record_2;
            }
        } else {
            i = R.drawable.stat_sys_screen_record_1;
        }
        StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) this.mIconController;
        String str = this.mSlotScreenRecord;
        statusBarIconControllerImpl.setIcon(num, str, i);
        statusBarIconControllerImpl.setIconVisibility(str, true);
        statusBarIconControllerImpl.setIconAccessibilityLiveRegion(2, str);
    }

    @Override // com.android.systemui.screenrecord.RecordingController.RecordingStateChangeCallback
    public final void onCountdownEnd() {
        if (DEBUG) {
            Log.d("PhoneStatusBarPolicy", "screenrecord: hiding icon during countdown");
        }
        Handler handler = this.mHandler;
        handler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconVisibility(phoneStatusBarPolicy.mSlotScreenRecord, false);
            }
        });
        handler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconAccessibilityLiveRegion(0, phoneStatusBarPolicy.mSlotScreenRecord);
            }
        });
    }

    @Override // com.android.systemui.statusbar.policy.DataSaverController.Listener
    public final void onDataSaverChanged(boolean z) {
        ((StatusBarIconControllerImpl) this.mIconController).setIconVisibility(this.mSlotDataSaver, z);
    }

    @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
    public final void onKeyguardShowingChanged() {
        updateManagedProfile();
    }

    @Override // com.android.systemui.statusbar.policy.LocationController.LocationChangeCallback
    public final void onLocationActiveChanged() {
        if (!this.mPrivacyItemController.privacyConfig.locationAvailable) {
            boolean z = ((LocationControllerImpl) this.mLocationController).mAreActiveLocationRequests;
            String str = this.mSlotLocation;
            StatusBarIconController statusBarIconController = this.mIconController;
            if (z) {
                ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, true);
            } else {
                ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
            }
        }
    }

    @Override // com.android.systemui.privacy.PrivacyItemController.Callback
    public final void onPrivacyItemsChanged(List list) {
        Iterator it = list.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (it.hasNext()) {
            PrivacyItem privacyItem = (PrivacyItem) it.next();
            if (privacyItem != null) {
                int i = AnonymousClass12.$SwitchMap$com$android$systemui$privacy$PrivacyType[privacyItem.privacyType.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            z2 = true;
                        }
                    } else {
                        z3 = true;
                    }
                } else {
                    z = true;
                }
            } else {
                Log.e("PhoneStatusBarPolicy", "updatePrivacyItems - null item found");
                StringWriter stringWriter = new StringWriter();
                this.mPrivacyItemController.dump(new PrintWriter(stringWriter), null);
                throw new NullPointerException(stringWriter.toString());
            }
        }
        this.mPrivacyLogger.logStatusBarIconsVisible(z, z2, z3);
    }

    @Override // com.android.systemui.screenrecord.RecordingController.RecordingStateChangeCallback
    public final void onRecordingEnd() {
        if (DEBUG) {
            Log.d("PhoneStatusBarPolicy", "screenrecord: hiding icon");
        }
        this.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconVisibility(phoneStatusBarPolicy.mSlotScreenRecord, false);
            }
        });
    }

    @Override // com.android.systemui.screenrecord.RecordingController.RecordingStateChangeCallback
    public final void onRecordingStart() {
        if (DEBUG) {
            Log.d("PhoneStatusBarPolicy", "screenrecord: showing icon");
        }
        ((StatusBarIconControllerImpl) this.mIconController).setIcon(this.mResources.getString(R.string.screenrecord_ongoing_screen_only), this.mSlotScreenRecord, R.drawable.stat_sys_screen_record);
        this.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                ((StatusBarIconControllerImpl) phoneStatusBarPolicy.mIconController).setIconVisibility(phoneStatusBarPolicy.mSlotScreenRecord, true);
            }
        });
    }

    @Override // com.android.systemui.statusbar.policy.RotationLockController.RotationLockControllerCallback
    public final void onRotationLockStateChanged(boolean z) {
        RotationLockController rotationLockController = this.mRotationLockController;
        Resources resources = this.mResources;
        boolean isCurrentOrientationLockPortrait = SRotationLockTile.isCurrentOrientationLockPortrait(rotationLockController, resources);
        String str = this.mSlotRotate;
        StatusBarIconController statusBarIconController = this.mIconController;
        if (z) {
            if (isCurrentOrientationLockPortrait) {
                ((StatusBarIconControllerImpl) statusBarIconController).setIcon(resources.getString(R.string.accessibility_rotation_lock_on_portrait), str, R.drawable.stat_sys_rotate_portrait);
            } else {
                ((StatusBarIconControllerImpl) statusBarIconController).setIcon(resources.getString(R.string.accessibility_rotation_lock_on_landscape), str, R.drawable.stat_sys_rotate_landscape);
            }
            ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, true);
            return;
        }
        ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
    }

    @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
    public final void onUserSetupChanged() {
        boolean isCurrentUserSetup = ((DeviceProvisionedControllerImpl) this.mProvisionedController).isCurrentUserSetup();
        if (this.mCurrentUserSetup == isCurrentUserSetup) {
            return;
        }
        this.mCurrentUserSetup = isCurrentUserSetup;
        updateAlarm();
    }

    @Override // com.android.systemui.statusbar.policy.ZenModeController.Callback
    public final void onZenChanged(int i) {
        updateVolumeZen();
    }

    public final void updateAlarm() {
        boolean z;
        List nextAlarmClocks = this.mAlarmManager.getNextAlarmClocks(-2);
        boolean z2 = false;
        if (nextAlarmClocks != null && !nextAlarmClocks.isEmpty()) {
            z = nextAlarmClocks.stream().anyMatch(new Predicate() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda4
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    PhoneStatusBarPolicy.this.getClass();
                    PendingIntent showIntent = ((AlarmManager.AlarmClockInfo) obj).getShowIntent();
                    if (showIntent == null) {
                        return false;
                    }
                    String creatorPackage = showIntent.getCreatorPackage();
                    if ("com.sec.android.app.clockpackage".equals(creatorPackage)) {
                        Intent intent = showIntent.getIntent();
                        if (intent != null) {
                            equals = !intent.getBooleanExtra("dontShowAlarmIcon", false);
                        } else {
                            equals = true;
                        }
                    } else {
                        equals = "com.google.android.deskclock".equals(creatorPackage);
                    }
                    if (!equals) {
                        return false;
                    }
                    return true;
                }
            });
        } else {
            z = false;
        }
        if (this.mCurrentUserSetup && z) {
            z2 = true;
        }
        ((StatusBarIconControllerImpl) this.mIconController).setIconVisibility(this.mSlotAlarmClock, z2);
    }

    public final void updateBluetooth() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        SBluetoothController sBluetoothController = this.mBluetooth;
        if (sBluetoothController != null) {
            SBluetoothControllerImpl sBluetoothControllerImpl = (SBluetoothControllerImpl) sBluetoothController;
            boolean z4 = sBluetoothControllerImpl.mEnabled;
            z = true;
            if (sBluetoothControllerImpl.mConnectionState == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                z = false;
                z3 = z4;
            }
        } else {
            z = false;
        }
        StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) this.mIconController;
        statusBarIconControllerImpl.setIconVisibility(this.mSlotBluetooth, z3);
        statusBarIconControllerImpl.setIconVisibility(this.mSlotBluetoothConnected, z);
    }

    public final void updateManagedProfile() {
        this.mUiBgExecutor.execute(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                final PhoneStatusBarPolicy phoneStatusBarPolicy = PhoneStatusBarPolicy.this;
                phoneStatusBarPolicy.getClass();
                try {
                    final int lastResumedActivityUserId = ActivityTaskManager.getService().getLastResumedActivityUserId();
                    final boolean z2 = false;
                    if (phoneStatusBarPolicy.mUserManager.isManagedProfile(lastResumedActivityUserId)) {
                        if (((KnoxStateMonitorImpl) phoneStatusBarPolicy.mKnoxStateMonitor).mContainerMonitor.mUserManager.getUserInfo(lastResumedActivityUserId).isManagedProfile()) {
                            z = !SemPersonaManager.isAppSeparationUserId(lastResumedActivityUserId);
                        } else {
                            z = false;
                        }
                        if (z) {
                            z2 = true;
                        }
                    }
                    final String string = phoneStatusBarPolicy.mDevicePolicyManager.getResources().getString("SystemUi.STATUS_BAR_WORK_ICON_ACCESSIBILITY", new PhoneStatusBarPolicy$$ExternalSyntheticLambda2(phoneStatusBarPolicy));
                    phoneStatusBarPolicy.mHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda5
                        /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
                        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                        */
                        public final void run() {
                            /*
                                r6 = this;
                                com.android.systemui.statusbar.phone.PhoneStatusBarPolicy r0 = com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.this
                                boolean r1 = r2
                                int r2 = r3
                                java.lang.String r6 = r4
                                java.lang.String r3 = r0.mSlotManagedProfile
                                com.android.systemui.statusbar.phone.StatusBarIconController r4 = r0.mIconController
                                if (r1 == 0) goto L38
                                com.android.systemui.statusbar.policy.KeyguardStateController r1 = r0.mKeyguardStateController
                                com.android.systemui.statusbar.policy.KeyguardStateControllerImpl r1 = (com.android.systemui.statusbar.policy.KeyguardStateControllerImpl) r1
                                boolean r5 = r1.mShowing
                                if (r5 == 0) goto L1a
                                boolean r1 = r1.mOccluded
                                if (r1 == 0) goto L38
                            L1a:
                                com.android.systemui.knox.KnoxStateMonitor r1 = r0.mKnoxStateMonitor
                                com.android.systemui.knox.KnoxStateMonitorImpl r1 = (com.android.systemui.knox.KnoxStateMonitorImpl) r1
                                com.android.systemui.knox.ContainerMonitor r1 = r1.mContainerMonitor
                                r1.getClass()
                                boolean r1 = com.samsung.android.knox.SemPersonaManager.isSecureFolderId(r2)
                                if (r1 == 0) goto L2d
                                r1 = 2131233314(0x7f080a22, float:1.8082762E38)
                                goto L30
                            L2d:
                                r1 = 2131235260(0x7f0811bc, float:1.8086709E38)
                            L30:
                                r2 = r4
                                com.android.systemui.statusbar.phone.StatusBarIconControllerImpl r2 = (com.android.systemui.statusbar.phone.StatusBarIconControllerImpl) r2
                                r2.setIcon(r6, r3, r1)
                                r6 = 1
                                goto L39
                            L38:
                                r6 = 0
                            L39:
                                boolean r1 = r0.mManagedProfileIconVisible
                                if (r1 == r6) goto L44
                                com.android.systemui.statusbar.phone.StatusBarIconControllerImpl r4 = (com.android.systemui.statusbar.phone.StatusBarIconControllerImpl) r4
                                r4.setIconVisibility(r3, r6)
                                r0.mManagedProfileIconVisible = r6
                            L44:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy$$ExternalSyntheticLambda5.run():void");
                        }
                    });
                } catch (RemoteException e) {
                    Log.w("PhoneStatusBarPolicy", "updateManagedProfile: ", e);
                }
            }
        });
    }

    public final void updateTTY(int i) {
        boolean z;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        String str = this.mSlotTty;
        StatusBarIconController statusBarIconController = this.mIconController;
        if (z) {
            ((StatusBarIconControllerImpl) statusBarIconController).setIcon(this.mResources.getString(R.string.accessibility_tty_enabled), str, R.drawable.stat_sys_tty_mode);
            ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, true);
            return;
        }
        ((StatusBarIconControllerImpl) statusBarIconController).setIconVisibility(str, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x028b, code lost:
    
        if (r2.intValue() == 0) goto L106;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateVolumeZen() {
        /*
            Method dump skipped, instructions count: 714
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.PhoneStatusBarPolicy.updateVolumeZen():void");
    }

    @Override // com.android.systemui.statusbar.policy.SBluetoothController.SCallback
    public final void onBluetoothScanStateChanged(boolean z) {
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void appTransitionStarting(int i, long j, long j2, boolean z) {
    }
}
