package com.android.systemui.power;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.Vibrator;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.Slog;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.app.IBatteryStats;
import com.android.systemui.LsRune;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.media.NotificationPlayer;
import com.android.systemui.power.dialog.BatteryHealthInterruptionDialog;
import com.android.systemui.power.dialog.BatterySwellingLowTempDialog;
import com.android.systemui.power.dialog.HappenedOverheatShutdownDialog;
import com.android.systemui.power.dialog.HvChargerEnableDialog;
import com.android.systemui.power.dialog.IncompatibleChargerDialog;
import com.android.systemui.power.dialog.IncompleteChargerDialog;
import com.android.systemui.power.dialog.OverheatDialog;
import com.android.systemui.power.dialog.PdChargerAlertDialog;
import com.android.systemui.power.dialog.PowerUiDialog;
import com.android.systemui.power.dialog.SafeModeDialog;
import com.android.systemui.power.dialog.UsbDamageProtectionDialog;
import com.android.systemui.power.dialog.WaterProtectionDialog;
import com.android.systemui.power.dialog.WillOverheatShutdownDialog;
import com.android.systemui.power.dialog.WirelessFodDialog;
import com.android.systemui.power.notification.PowerUiNotification;
import com.android.systemui.power.notification.PowerUiNotificationFactory;
import com.android.systemui.power.sound.PowerUiSound;
import com.android.systemui.power.sound.PowerUiSoundFactory;
import com.android.systemui.util.DeviceType;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.feature.SemGateConfig;
import com.samsung.android.view.SemWindowManager;
import com.sec.ims.presence.ServiceTuple;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecPowerNotificationWarnings {
    public final AudioManager mAudioManager;
    public boolean mAutomaticTestMode;
    public int mBatteryHealth;
    public AlertDialog mBatteryHealthInterruptionDialog;
    public final AnonymousClass4 mBatteryHealthInterruptionTask;
    public int mBatteryLevel;
    public final Intent mBatterySettings;
    public IBatteryStats mBatteryStats;
    public int mBatteryStatus;
    public int mBucket;
    public long mChargingTime;
    public int mChargingType;
    public Toast mConnectedChargerChangedToast;
    public final Context mContext;
    public int mCurrentBatteryMode;
    public boolean mDoNotShowChargingNotice;
    public boolean mFTAMode;
    public final AnonymousClass2 mFoldStateListener;
    public AlertDialog mHVchargerEnablePopupDialog;
    public final Handler mHandler;
    public HandlerWrapper mHandlerWrapper;
    public AlertDialog mIncompatibleChargerDialog;
    public boolean mIsHiccupState;
    public boolean mIsInCall;
    public boolean mIsMaximumProtectionEnabled;
    public boolean mIsTemperatureHiccupState;
    public boolean mIsUnintentionalPopupShowing;
    public boolean mIsWaterDetected;
    public final NotificationManager mNotificationManager;
    public final NotificationPlayer mNotificationPlayer;
    public int mOldBatteryLevel;
    public int mOldChargingType;
    public String mOptimizationChargingFinishTime;
    public AlertDialog mOverheatNoticeDialog;
    public AlertDialog mOverheatShutdownHappenedDialog;
    public final AnonymousClass9 mOverheatShutdownTask;
    public boolean mPlaySound;
    public final PowerManager mPowerManager;
    public AlertDialog mSafeModeDialog;
    public boolean mShowChargingNotice;
    public AlertDialog mSlowByChargerConnectionInfoDialog;
    public final Intent mSmartManagerBatterySettings;
    public int mSuperFastCharger;
    public AlertDialog mSwellingDialog;
    public final AnonymousClass5 mTemperatureLimitAlertTask;
    public WindowManager.LayoutParams mUnintentionalLCDOnWindowLp;
    public UnintentionalLcdOnView mUnintentionalLcdOnWindow;
    public AlertDialog mUsbDamageProtectionAlertDialog;
    public final AnonymousClass21 mUsbDamageProtectionAlertTask;
    public PowerManager.WakeLock mUsbDamageProtectionPartialWakeLock;
    public final Vibrator mVibrator;
    public boolean mWarning;
    public long mWarningTriggerTimeMs;
    public AlertDialog mWaterProtectionAlertDialog;
    public final AnonymousClass18 mWaterProtectionAlertTask;
    public PowerManager.WakeLock mWaterProtectionPartialWakeLock;
    public AlertDialog mWillOverheatShutdownWarningDialog;
    public WindowManager mWindowManager;
    public AlertDialog mWirelessFodAlertDialog;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Receiver extends BroadcastReceiver {
        public /* synthetic */ Receiver(SecPowerNotificationWarnings secPowerNotificationWarnings, int i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Slog.i("SecPowerUI.Notification", "Received " + action);
            if (action.equals("PNW.batteryInfo")) {
                SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings.mContext.startActivityAsUser(secPowerNotificationWarnings.mBatterySettings, UserHandle.CURRENT);
                return;
            }
            if (action.equals("PNW.dismissedWarning")) {
                SecPowerNotificationWarnings.this.dismissLowBatteryWarning();
                return;
            }
            if (action.equals("PNW.powerMode")) {
                SecPowerNotificationWarnings secPowerNotificationWarnings2 = SecPowerNotificationWarnings.this;
                if (secPowerNotificationWarnings2.mCurrentBatteryMode == 2) {
                    return;
                }
                if (secPowerNotificationWarnings2.mWarning) {
                    Slog.i("SecPowerUI.Notification", "dismissing low battery notification");
                }
                secPowerNotificationWarnings2.mWarning = false;
                secPowerNotificationWarnings2.updateNotification();
                SecPowerNotificationWarnings secPowerNotificationWarnings3 = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings3.mContext.startActivityAsUser(secPowerNotificationWarnings3.mSmartManagerBatterySettings, UserHandle.CURRENT);
                return;
            }
            if ("PNW.abnormalPadNoThanks".equals(action)) {
                SecPowerNotificationWarnings secPowerNotificationWarnings4 = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings4.getClass();
                Log.i("SecPowerUI.Notification", "handleAbnormalPadNotiNoThanks");
                Log.i("SecPowerUI.Notification", "dismissAbnormalPadNotification");
                secPowerNotificationWarnings4.cancelNotification(8);
                SharedPreferences sharedPreferences = secPowerNotificationWarnings4.mContext.getSharedPreferences("com.android.systemui.abnormal_pad", 0);
                if (sharedPreferences != null) {
                    Log.i("SecPowerUI.Notification", "User clicked Do_not_show_again, so we set preference.");
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putBoolean("DoNotShowAbnormalPadNoti", true);
                    edit.commit();
                    return;
                }
                return;
            }
            if (action.equals("com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON")) {
                SecPowerNotificationWarnings.this.dismissLowBatteryWarning();
                return;
            }
            if (action.equals("com.samsung.intent.action.EMERGENCY_STATE_CHANGED")) {
                int i = SecPowerNotificationWarnings.this.mCurrentBatteryMode;
                int intExtra = intent.getIntExtra("reason", 0);
                if (intExtra == 3) {
                    SecPowerNotificationWarnings.this.mCurrentBatteryMode = 2;
                } else if (intExtra == 5) {
                    SecPowerNotificationWarnings.this.mCurrentBatteryMode = 0;
                }
                SecPowerNotificationWarnings secPowerNotificationWarnings5 = SecPowerNotificationWarnings.this;
                if (secPowerNotificationWarnings5.mWarning && i != secPowerNotificationWarnings5.mCurrentBatteryMode) {
                    secPowerNotificationWarnings5.updateNotification();
                    return;
                }
                return;
            }
            if (action.equals("com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT")) {
                final SecPowerNotificationWarnings secPowerNotificationWarnings6 = SecPowerNotificationWarnings.this;
                if (secPowerNotificationWarnings6.mOverheatNoticeDialog == null) {
                    AlertDialog popupDialog = secPowerNotificationWarnings6.getPopupDialog(7);
                    secPowerNotificationWarnings6.mOverheatNoticeDialog = popupDialog;
                    if (popupDialog != null) {
                        popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.8
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                SecPowerNotificationWarnings.this.mOverheatNoticeDialog = null;
                            }
                        });
                        secPowerNotificationWarnings6.mOverheatNoticeDialog.getWindow().setType(2009);
                        secPowerNotificationWarnings6.mOverheatNoticeDialog.show();
                        return;
                    }
                    return;
                }
                return;
            }
            if (action.equals("com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE")) {
                final SecPowerNotificationWarnings secPowerNotificationWarnings7 = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings7.getClass();
                Log.d("SecPowerUI.Notification", "showSafeModePopUp()");
                if (secPowerNotificationWarnings7.mSafeModeDialog == null) {
                    AlertDialog popupDialog2 = secPowerNotificationWarnings7.getPopupDialog(10);
                    secPowerNotificationWarnings7.mSafeModeDialog = popupDialog2;
                    if (popupDialog2 != null) {
                        popupDialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.12
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                SecPowerNotificationWarnings.this.mSafeModeDialog = null;
                            }
                        });
                        secPowerNotificationWarnings7.mSafeModeDialog.show();
                        return;
                    }
                    return;
                }
                return;
            }
            if (action.equals("com.sec.factory.app.factorytest.FTA_ON")) {
                SecPowerNotificationWarnings.this.mFTAMode = true;
                Log.d("SecPowerUI.Notification", "FTA mode ON");
                return;
            }
            if (action.equals("com.sec.factory.app.factorytest.FTA_OFF")) {
                SecPowerNotificationWarnings.this.mFTAMode = false;
                Log.d("SecPowerUI.Notification", "FTA mode OFF");
                return;
            }
            if (action.equals("com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON")) {
                SecPowerNotificationWarnings secPowerNotificationWarnings8 = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings8.mAutomaticTestMode = true;
                secPowerNotificationWarnings8.dismissSlowByChargerConnectionInfoPopUp();
                Log.d("SecPowerUI.Notification", "Automatic test mode ON");
                return;
            }
            if (action.equals("com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF")) {
                SecPowerNotificationWarnings.this.mAutomaticTestMode = false;
                Log.d("SecPowerUI.Notification", "Automatic test mode OFF");
            } else if (action.equals("com.samsung.android.systemui.action.DELETED_CHARGING_NOTI")) {
                SecPowerNotificationWarnings.this.mDoNotShowChargingNotice = true;
            } else if (action.equals("com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED")) {
                SecPowerNotificationWarnings secPowerNotificationWarnings9 = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings9.cancelNotification(10);
                secPowerNotificationWarnings9.mOptimizationChargingFinishTime = "";
            }
        }

        private Receiver() {
        }
    }

    /* JADX WARN: Type inference failed for: r13v3, types: [com.samsung.android.view.SemWindowManager$FoldStateListener, com.android.systemui.power.SecPowerNotificationWarnings$2] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.power.SecPowerNotificationWarnings$4] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.power.SecPowerNotificationWarnings$5] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.power.SecPowerNotificationWarnings$9] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.systemui.power.SecPowerNotificationWarnings$18] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.android.systemui.power.SecPowerNotificationWarnings$21] */
    public SecPowerNotificationWarnings(Context context) {
        new Intent("android.settings.BATTERY_SAVER_SETTINGS").setFlags(478150656);
        Receiver receiver = new Receiver(this, 0);
        this.mIsInCall = false;
        this.mBatterySettings = new Intent("com.samsung.android.sm.ACTION_BATTERY").setFlags(478150656);
        this.mSmartManagerBatterySettings = new Intent("com.samsung.android.sm.ACTION_POWER_MODE_SETTINGS").setFlags(478150656);
        this.mShowChargingNotice = false;
        this.mIsMaximumProtectionEnabled = false;
        this.mSuperFastCharger = 0;
        this.mChargingType = 0;
        this.mOldChargingType = 0;
        this.mOldBatteryLevel = 0;
        this.mChargingTime = 0L;
        this.mBatteryLevel = 0;
        this.mBatteryStatus = 1;
        this.mBatteryHealth = 1;
        this.mIsWaterDetected = false;
        this.mIsHiccupState = false;
        this.mIsTemperatureHiccupState = false;
        this.mIsUnintentionalPopupShowing = false;
        this.mFoldStateListener = null;
        this.mFTAMode = false;
        this.mAutomaticTestMode = false;
        this.mHandlerWrapper = null;
        this.mDoNotShowChargingNotice = false;
        this.mBatteryHealthInterruptionTask = new Runnable() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.4
            @Override // java.lang.Runnable
            public final void run() {
                SecPowerNotificationWarnings.this.showBatteryHealthInterruptionWarning();
            }
        };
        this.mTemperatureLimitAlertTask = new Runnable() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.5
            @Override // java.lang.Runnable
            public final void run() {
                SecPowerNotificationWarnings.this.showBatteryHealthInterruptionPopUp();
            }
        };
        this.mOverheatShutdownTask = new Runnable() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.9
            @Override // java.lang.Runnable
            public final void run() {
                SharedPreferences sharedPreferences = SecPowerNotificationWarnings.this.mContext.getSharedPreferences("com.android.systemui.power_overheat_shutdown_happened", 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putBoolean("OverheatShutdownHappened", true);
                    edit.commit();
                }
                Log.d("SecPowerUI.Notification", "overheat shutdown");
                Log.d("SecPowerUI.Notification", "overheat shutdown - productType = in_house");
                SecPowerNotificationWarnings.this.mContext.sendBroadcast(new Intent("com.android.systemui.power.action.ACTION_REQUEST_SHUTDOWN"));
            }
        };
        this.mWaterProtectionAlertTask = new Runnable() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.18
            @Override // java.lang.Runnable
            public final void run() {
                SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                secPowerNotificationWarnings.showWaterProtectionAlertDialog(secPowerNotificationWarnings.mIsWaterDetected);
            }
        };
        this.mUsbDamageProtectionAlertTask = new Runnable() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.21
            @Override // java.lang.Runnable
            public final void run() {
                SecPowerNotificationWarnings.this.showUsbDamageProtectionAlertDialog();
            }
        };
        this.mContext = context;
        Handler handler = new Handler(Looper.getMainLooper());
        this.mHandler = handler;
        this.mNotificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
        this.mAudioManager = (AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mNotificationPlayer = new NotificationPlayer("SecPowerUI.Notification");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("PNW.batteryInfo");
        intentFilter.addAction("PNW.powerMode");
        intentFilter.addAction("PNW.abnormalPadNoThanks");
        intentFilter.addAction("PNW.dismissedWarning");
        intentFilter.addAction("com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON");
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_STATE_CHANGED");
        intentFilter.addAction("com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT");
        intentFilter.addAction("com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE");
        intentFilter.addAction("com.sec.factory.app.factorytest.FTA_ON");
        intentFilter.addAction("com.sec.factory.app.factorytest.FTA_OFF");
        intentFilter.addAction("com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON");
        intentFilter.addAction("com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF");
        if (PowerUiRune.POLICY_CHARGING_NOTIFICATION) {
            intentFilter.addAction("com.samsung.android.systemui.action.DELETED_CHARGING_NOTI");
        }
        if (PowerUiRune.ADAPTIVE_PROTECTION_NOTIFICATION) {
            intentFilter.addAction("com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED");
        }
        SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
        secPowerNotificationWarnings.mContext.registerReceiverAsUser(receiver, UserHandle.ALL, intentFilter, "android.permission.DEVICE_POWER", secPowerNotificationWarnings.mHandler, 2);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("low_power"), false, new ContentObserver(handler) { // from class: com.android.systemui.power.SecPowerNotificationWarnings.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                int i = Settings.Global.getInt(SecPowerNotificationWarnings.this.mContext.getContentResolver(), "low_power", 0);
                SecPowerNotificationWarnings secPowerNotificationWarnings2 = SecPowerNotificationWarnings.this;
                int i2 = secPowerNotificationWarnings2.mCurrentBatteryMode;
                if (i != 0) {
                    secPowerNotificationWarnings2.mCurrentBatteryMode = 1;
                } else {
                    secPowerNotificationWarnings2.mCurrentBatteryMode = 0;
                }
                if (secPowerNotificationWarnings2.mWarning && i2 != secPowerNotificationWarnings2.mCurrentBatteryMode) {
                    secPowerNotificationWarnings2.updateNotification();
                }
                Intent intent = new Intent("com.samsung.android.sm.action.ACTION_ACTIVE_TILE_SERVICE");
                intent.setPackage(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME", "com.samsung.android.lool"));
                intent.putExtra("extra_type", "power_mode");
                try {
                    SecPowerNotificationWarnings.this.mContext.startService(intent);
                } catch (Exception e) {
                    Log.e("SecPowerUI.Notification", "Error", e);
                }
            }
        });
        int i = Settings.Global.getInt(context.getContentResolver(), "low_power", 0);
        if (SemEmergencyManager.isEmergencyMode(context)) {
            this.mCurrentBatteryMode = 2;
        } else if (i != 0) {
            this.mCurrentBatteryMode = 1;
        } else {
            this.mCurrentBatteryMode = 0;
        }
        if (LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY) {
            ?? r13 = new SemWindowManager.FoldStateListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.2
                public final void onFoldStateChanged(boolean z) {
                    if (SecPowerNotificationWarnings.this.mIsUnintentionalPopupShowing) {
                        Log.d("SecPowerUI.Notification", "Fold state has been changed so dimiss unintentional lcd on view");
                        SecPowerNotificationWarnings.this.dismissUnintentionalLcdOnWindow();
                    }
                }

                public final void onTableModeChanged(boolean z) {
                }
            };
            this.mFoldStateListener = r13;
            SemWindowManager.getInstance().registerFoldStateListener((SemWindowManager.FoldStateListener) r13, (Handler) null);
        }
    }

    public final void cancelNotification(int i) {
        PowerUiNotification notification2 = PowerUiNotificationFactory.getNotification(i, this.mContext);
        if (notification2 == null) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Illegal notification type : ", i, "SecPowerUI.Notification");
            return;
        }
        notification2.mNotificationManager = this.mNotificationManager;
        notification2.setInformation(getSecBatteryStatsSnapshot());
        notification2.dismissNotification();
    }

    public final void dismissLowBatteryWarning() {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("dismissing low battery warning: level="), this.mBatteryLevel, "SecPowerUI.Notification");
        if (this.mWarning) {
            Slog.i("SecPowerUI.Notification", "dismissing low battery notification");
        }
        this.mWarning = false;
        updateNotification();
        restoreScreenTimeOutIfNeeded();
    }

    public final void dismissSlowByChargerConnectionInfoPopUp() {
        Log.d("SecPowerUI.Notification", "dismissSlowByChargerConnectionInfoPopUp()");
        AlertDialog alertDialog = this.mSlowByChargerConnectionInfoDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.mSlowByChargerConnectionInfoDialog = null;
        }
    }

    public final synchronized void dismissUnintentionalLcdOnWindow() {
        if (this.mIsUnintentionalPopupShowing) {
            Log.d("SecPowerUI.Notification", "dismissUnintentionalLcdOnWindow");
            UnintentionalLcdOnView unintentionalLcdOnView = this.mUnintentionalLcdOnWindow;
            if (unintentionalLcdOnView != null) {
                this.mWindowManager.removeView(unintentionalLcdOnView);
                this.mUnintentionalLcdOnWindow.setVisibility(8);
                UnintentionalLcdOnView unintentionalLcdOnView2 = this.mUnintentionalLcdOnWindow;
                if (unintentionalLcdOnView2.mTouchListener == this) {
                    unintentionalLcdOnView2.mTouchListener = null;
                }
                this.mUnintentionalLcdOnWindow = null;
                this.mIsUnintentionalPopupShowing = false;
            }
            this.mWindowManager = null;
            this.mUnintentionalLCDOnWindowLp = null;
            String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
        }
    }

    public final AlertDialog getPopupDialog(int i) {
        PowerUiDialog incompleteChargerDialog;
        Context context = this.mContext;
        switch (i) {
            case 2:
                incompleteChargerDialog = new IncompleteChargerDialog(context);
                break;
            case 3:
                incompleteChargerDialog = new BatterySwellingLowTempDialog(context);
                break;
            case 4:
                incompleteChargerDialog = new IncompatibleChargerDialog(context);
                break;
            case 5:
                incompleteChargerDialog = new PdChargerAlertDialog(context);
                break;
            case 6:
                incompleteChargerDialog = new BatteryHealthInterruptionDialog(context);
                break;
            case 7:
                incompleteChargerDialog = new OverheatDialog(context);
                break;
            case 8:
                incompleteChargerDialog = new WillOverheatShutdownDialog(context);
                break;
            case 9:
                incompleteChargerDialog = new HappenedOverheatShutdownDialog(context);
                break;
            case 10:
                incompleteChargerDialog = new SafeModeDialog(context);
                break;
            case 11:
                incompleteChargerDialog = new WirelessFodDialog(context);
                break;
            case 12:
                incompleteChargerDialog = new WaterProtectionDialog(context);
                break;
            case 13:
                incompleteChargerDialog = new UsbDamageProtectionDialog(context);
                break;
            case 14:
                incompleteChargerDialog = new HvChargerEnableDialog(context);
                break;
            default:
                incompleteChargerDialog = null;
                break;
        }
        if (incompleteChargerDialog == null) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Illegal dialog type : ", i, "SecPowerUI.Notification");
            return null;
        }
        incompleteChargerDialog.setInformation(getSecBatteryStatsSnapshot());
        if (!incompleteChargerDialog.checkCondition()) {
            return null;
        }
        return incompleteChargerDialog.getDialog();
    }

    public final SecBatteryStatsSnapshot getSecBatteryStatsSnapshot() {
        SecBatteryStatsSnapshot secBatteryStatsSnapshot = new SecBatteryStatsSnapshot();
        secBatteryStatsSnapshot.batteryHealth = this.mBatteryHealth;
        secBatteryStatsSnapshot.batteryLevel = this.mBatteryLevel;
        secBatteryStatsSnapshot.chargingTime = this.mChargingTime;
        secBatteryStatsSnapshot.currentBatteryMode = this.mCurrentBatteryMode;
        secBatteryStatsSnapshot.isHiccupState = this.mIsHiccupState;
        secBatteryStatsSnapshot.chargingType = this.mChargingType;
        secBatteryStatsSnapshot.automaticTestMode = this.mAutomaticTestMode;
        secBatteryStatsSnapshot.optimizationChargingFinishTime = this.mOptimizationChargingFinishTime;
        Log.d("SecPowerUI.Notification", secBatteryStatsSnapshot.toString());
        return secBatteryStatsSnapshot;
    }

    public final void playPowerSound(int i) {
        PowerUiSound powerUiSound = PowerUiSoundFactory.getPowerUiSound(i, this.mContext);
        powerUiSound.mNotificationPlayer = this.mNotificationPlayer;
        powerUiSound.mVibrator = this.mVibrator;
        powerUiSound.mIsInCall = this.mIsInCall;
        powerUiSound.mChargingType = this.mSuperFastCharger;
        powerUiSound.mAudioManager = this.mAudioManager;
        powerUiSound.playSoundAndVibration();
    }

    public final void restoreScreenTimeOutIfNeeded() {
        Context context = this.mContext;
        SharedPreferences sharedPreferences = context.getSharedPreferences("powerui_prefs", 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("ScreenTimeOut", ":");
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("1. restoreScreenTimeOut - saved_value : ", string, "SecPowerUI.Notification");
            try {
                String[] split = string.split(":");
                if (split.length < 2) {
                    Log.e("SecPowerUI.Notification", "no saved value, so we do nothing !!");
                } else {
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    Log.d("SecPowerUI.Notification", "2.restoreScreenTimeOut - saved value : screenTimeOut=" + parseInt + " userId=" + parseInt2);
                    if (parseInt > 30000) {
                        Log.d("SecPowerUI.Notification", "3.restoreScreenTimeOut - restore user value !!");
                        Settings.System.putIntForUser(context.getContentResolver(), "screen_off_timeout", parseInt, parseInt2);
                    }
                }
            } catch (Error | Exception e) {
                Log.e("SecPowerUI.Notification", "restoreScreenTimeOutIfNeeded ", e);
            }
            sharedPreferences.edit().remove("ScreenTimeOut").commit();
        }
    }

    public final void showAdaptiveProtectionNotification(String str) {
        String str2;
        Date parse;
        Context context = this.mContext;
        try {
            parse = new SimpleDateFormat("HH:mm", Locale.getDefault()).parse(str);
        } catch (ParseException e) {
            Log.w("PowerUi.PowerUtils", "ParseException", e);
        }
        if (parse != null) {
            str2 = DateFormat.getTimeFormat(context).format(Long.valueOf(parse.getTime()));
            this.mOptimizationChargingFinishTime = str2;
            showNotification(10);
        }
        str2 = "";
        this.mOptimizationChargingFinishTime = str2;
        showNotification(10);
    }

    public final void showBatteryHealthInterruptionPopUp() {
        int i;
        int i2 = this.mBatteryHealth;
        Handler handler = this.mHandler;
        if (i2 == 8) {
            handler.removeCallbacks(this.mBatteryHealthInterruptionTask);
        }
        AnonymousClass5 anonymousClass5 = this.mTemperatureLimitAlertTask;
        handler.removeCallbacks(anonymousClass5);
        if (this.mBatteryHealthInterruptionDialog != null) {
            Log.d("SecPowerUI.Notification", "mBatteryHealthInterruptionDialog is not null");
            int i3 = this.mBatteryHealth;
            if (i3 == 6) {
                i = R.string.battery_health_interruption_by_terminal_open_text;
            } else if (i3 == 8) {
                if (DeviceType.isTablet()) {
                    i = R.string.battery_health_interruption_by_limit_high_temperature_text_tablet;
                } else {
                    i = R.string.battery_health_interruption_by_limit_high_temperature_text_phone;
                }
            } else {
                i = 0;
            }
            if (i == 0) {
                Log.e("SecPowerUI.Notification", "status is NotCharging but health is wrong value");
                return;
            }
            AlertDialog alertDialog = this.mBatteryHealthInterruptionDialog;
            String string = this.mContext.getString(i);
            AlertController alertController = alertDialog.mAlert;
            alertController.mMessage = string;
            TextView textView = alertController.mMessageView;
            if (textView != null) {
                textView.setText(string);
            }
        } else {
            AlertDialog popupDialog = getPopupDialog(6);
            this.mBatteryHealthInterruptionDialog = popupDialog;
            if (popupDialog == null) {
                return;
            }
            popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.3
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                    secPowerNotificationWarnings.mBatteryHealthInterruptionDialog = null;
                    if (4 == secPowerNotificationWarnings.mBatteryStatus) {
                        secPowerNotificationWarnings.mHandler.postDelayed(secPowerNotificationWarnings.mBatteryHealthInterruptionTask, 60000L);
                    }
                }
            });
            this.mBatteryHealthInterruptionDialog.show();
        }
        if (this.mBatteryHealth == 8) {
            playPowerSound(5);
            handler.postDelayed(anonymousClass5, 1600L);
        } else {
            playPowerSound(4);
        }
    }

    public final void showBatteryHealthInterruptionWarning() {
        Log.d("SecPowerUI.Notification", "showBatteryHealthInterruptionWarning()");
        boolean z = false;
        if (1 == Settings.System.getInt(this.mContext.getContentResolver(), "SHOULD_SHUT_DOWN", 0)) {
            z = true;
        }
        if (z) {
            Log.d("SecPowerUI.Notification", "don't show Battery health interruption warning while Shutdown is ON");
            return;
        }
        int i = this.mBatteryHealth;
        if (i != 8 && i != 6) {
            if (this.mBatteryHealthInterruptionDialog != null) {
                Handler handler = this.mHandler;
                handler.removeCallbacks(this.mBatteryHealthInterruptionTask);
                handler.removeCallbacks(this.mTemperatureLimitAlertTask);
                Log.d("SecPowerUI.Notification", "dismissBatteryHealthInterruptionPopUp()");
                AlertDialog alertDialog = this.mBatteryHealthInterruptionDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            }
            showNotification(5);
            return;
        }
        if (i == 6) {
            Log.d("SecPowerUI.Notification", "dismissBatteryHealthInterruptionNotification()");
            cancelNotification(5);
        }
        showBatteryHealthInterruptionPopUp();
    }

    public final void showChargingNotice() {
        int i;
        long j = this.mChargingTime;
        boolean z = this.mIsMaximumProtectionEnabled;
        Context context = this.mContext;
        this.mIsMaximumProtectionEnabled = PowerUtils.isMaximumProtectionEnabled(context);
        long j2 = 0;
        if (PowerUiRune.BATTERY_CHARGING_ESTIMATE_TIME) {
            if (this.mBatteryStats == null) {
                this.mBatteryStats = IBatteryStats.Stub.asInterface(ServiceManager.getService("batterystats"));
            }
            IBatteryStats iBatteryStats = this.mBatteryStats;
            if (iBatteryStats != null) {
                try {
                    j2 = iBatteryStats.computeChargeTimeRemaining();
                } catch (RemoteException e) {
                    Log.e("PowerUi.PowerUtils", "Error calling IBatteryStats: ", e);
                }
            }
            this.mChargingTime = j2;
        } else {
            this.mChargingTime = 0L;
        }
        Log.d("SecPowerUI.Notification", "showChargingNotice oldChargingType : " + this.mOldChargingType + " / currentChargingType : " + this.mChargingType + ", oldChargingTime : " + j + " / mChargingTime : " + this.mChargingTime);
        if (this.mOldChargingType == 9 && this.mChargingType != 9) {
            dismissSlowByChargerConnectionInfoPopUp();
        }
        if (!PowerUiRune.SPECIFIC_POWER_REQUEST_BY_VZW && this.mOldChargingType == 8 && this.mChargingType != 8) {
            dismissSlowByChargerConnectionInfoPopUp();
        }
        if (PowerUiRune.POLICY_CHARGING_NOTIFICATION) {
            if (this.mDoNotShowChargingNotice && z == this.mIsMaximumProtectionEnabled && (i = this.mChargingType) != 8 && i != 9) {
                Log.d("SecPowerUI.Notification", "showChargingNotice User swipe, so return!");
                return;
            }
            this.mDoNotShowChargingNotice = false;
        }
        if (this.mShowChargingNotice && j == this.mChargingTime && this.mOldBatteryLevel == this.mBatteryLevel && this.mOldChargingType == this.mChargingType && z == this.mIsMaximumProtectionEnabled) {
            Log.d("SecPowerUI.Notification", "showChargingNotice There is no change about charging status, so return!");
            return;
        }
        this.mOldBatteryLevel = this.mBatteryLevel;
        int i2 = this.mOldChargingType;
        Log.d("SecPowerUI.Notification", "showChargingNotification()");
        showNotification(2);
        int i3 = this.mChargingType;
        if (i3 == 8) {
            if (i2 != 8) {
                Log.w("SecPowerUI.Notification", "Show slow charging toast");
                Toast.makeText(context, context.getString(R.string.battery_slow_charging_toast_text), 0).show();
                turnOnScreen();
            }
        } else if (i3 == 9 && i2 != 9) {
            Log.i("SecPowerUI.Notification", "showIncompleteChargerConnectionInfoPopUp()");
            if (this.mSlowByChargerConnectionInfoDialog == null) {
                AlertDialog popupDialog = getPopupDialog(2);
                this.mSlowByChargerConnectionInfoDialog = popupDialog;
                if (popupDialog != null) {
                    popupDialog.setOnDismissListener(new SecPowerNotificationWarnings$$ExternalSyntheticLambda0(this, 0));
                    this.mSlowByChargerConnectionInfoDialog.show();
                    turnOnScreen();
                }
            }
        }
        this.mShowChargingNotice = true;
    }

    public final void showChargingTypeSwitchedNotice(boolean z) {
        String string;
        if (SemGateConfig.isGateEnabled()) {
            Log.d("SecPowerUI.Notification", "GATE tool is running so don't show Charging type switched notice");
            return;
        }
        Context context = this.mContext;
        if (z) {
            string = context.getString(R.string.battery_cable_charging_from_wireless_to_cable_text);
        } else {
            string = context.getString(R.string.battery_wireless_charging_from_cable_to_wireless_text);
        }
        Log.d("SecPowerUI.Notification", "showChargingTypeSwitchedToast()");
        if (this.mConnectedChargerChangedToast == null) {
            this.mConnectedChargerChangedToast = Toast.makeText(context, "", 0);
        }
        Toast toast = this.mConnectedChargerChangedToast;
        if (toast != null) {
            toast.setText(string);
            this.mConnectedChargerChangedToast.setDuration(0);
            this.mConnectedChargerChangedToast.show();
        } else {
            Toast.makeText(context, string, 0).show();
        }
        this.mDoNotShowChargingNotice = false;
    }

    public final void showIncompatibleChargerNotice() {
        boolean z = false;
        if (1 == Settings.System.getInt(this.mContext.getContentResolver(), "SHOULD_SHUT_DOWN", 0)) {
            z = true;
        }
        if (z) {
            Log.d("SecPowerUI.Notification", "don't show Incompatible charging warning while Shutdown is ON");
            return;
        }
        if (this.mFTAMode) {
            Log.d("SecPowerUI.Notification", "FTA Mode is ON so don't show Incompatible charging warning");
            return;
        }
        Log.d("SecPowerUI.Notification", "showIncompatibleChargerWarning()");
        dismissLowBatteryWarning();
        showNotification(3);
        Log.d("SecPowerUI.Notification", "showIncompatibleChargerNotification()");
        if (this.mIncompatibleChargerDialog == null) {
            AlertDialog popupDialog = getPopupDialog(4);
            this.mIncompatibleChargerDialog = popupDialog;
            if (popupDialog != null) {
                popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.13
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        SecPowerNotificationWarnings.this.mIncompatibleChargerDialog = null;
                    }
                });
                this.mIncompatibleChargerDialog.show();
            }
        }
    }

    public final void showLowBatteryWarning(boolean z) {
        boolean z2;
        Log.i("SecPowerUI.Notification", "show low battery warning: level=" + this.mBatteryLevel + " [" + this.mBucket + "] playSound=" + z);
        Context context = this.mContext;
        if (1 == Settings.System.getInt(context.getContentResolver(), "SHOULD_SHUT_DOWN", 0)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            Log.d("SecPowerUI.Notification", "Shutdown is ON");
            return;
        }
        if (this.mFTAMode && -2 != this.mBucket) {
            Log.d("SecPowerUI.Notification", "FTA Mode is ON and Not critical Low battery");
            return;
        }
        this.mPlaySound = z;
        this.mWarning = true;
        updateNotification();
        if (this.mBucket == -2) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("powerui_prefs", 0);
            int intForUser = Settings.System.getIntForUser(context.getContentResolver(), "screen_off_timeout", 30000, ActivityManager.semGetCurrentUser());
            if (intForUser > 30000) {
                if (sharedPreferences != null) {
                    String str = intForUser + ":" + ActivityManager.semGetCurrentUser();
                    Log.d("SecPowerUI.Notification", "1.backupAndResetScreenTimeOut backup screen timeout : " + intForUser + " value : " + str);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString("ScreenTimeOut", str);
                    edit.commit();
                    Log.d("SecPowerUI.Notification", "2.backupAndResetScreenTimeOut set default timeout!!");
                    Settings.System.putIntForUser(context.getContentResolver(), "screen_off_timeout", 30000, -2);
                    return;
                }
                return;
            }
            Log.d("SecPowerUI.Notification", "screen time out is shorter than default value, so we do nothing !!");
        }
    }

    public final void showNotification(int i) {
        PowerUiNotification notification2 = PowerUiNotificationFactory.getNotification(i, this.mContext);
        if (notification2 == null) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Illegal notification type : ", i, "SecPowerUI.Notification");
            return;
        }
        notification2.mNotificationManager = this.mNotificationManager;
        notification2.setInformation(getSecBatteryStatsSnapshot());
        notification2.showNotification();
    }

    public final void showSafeModeNotice() {
        Log.d("SecPowerUI.Notification", "showSafeModeNotice()");
        showNotification(7);
    }

    public final void showUsbDamageProtectionAlertDialog() {
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("show UsbDamageProtectionAlertDialog - mIsTemperatureHiccupState = "), this.mIsTemperatureHiccupState, "SecPowerUI.Notification");
        Handler handler = this.mHandler;
        AnonymousClass21 anonymousClass21 = this.mUsbDamageProtectionAlertTask;
        handler.removeCallbacks(anonymousClass21);
        if (this.mUsbDamageProtectionPartialWakeLock == null) {
            PowerManager.WakeLock newWakeLock = this.mPowerManager.newWakeLock(1, "SecPowerUI.Notification USB damage");
            this.mUsbDamageProtectionPartialWakeLock = newWakeLock;
            newWakeLock.acquire();
        }
        if (this.mUsbDamageProtectionAlertDialog == null) {
            AlertDialog popupDialog = getPopupDialog(13);
            this.mUsbDamageProtectionAlertDialog = popupDialog;
            if (popupDialog == null) {
                return;
            }
            popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.19
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                    secPowerNotificationWarnings.mUsbDamageProtectionAlertDialog = null;
                    secPowerNotificationWarnings.stopPowerSound(1600);
                }
            });
            this.mUsbDamageProtectionAlertDialog.show();
            this.mUsbDamageProtectionAlertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                    if (!secPowerNotificationWarnings.mIsTemperatureHiccupState) {
                        secPowerNotificationWarnings.mContext.sendBroadcast(new Intent("com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"));
                        SecPowerNotificationWarnings secPowerNotificationWarnings2 = SecPowerNotificationWarnings.this;
                        secPowerNotificationWarnings2.mHandler.removeCallbacks(secPowerNotificationWarnings2.mUsbDamageProtectionAlertTask);
                        PowerManager.WakeLock wakeLock = SecPowerNotificationWarnings.this.mUsbDamageProtectionPartialWakeLock;
                        if (wakeLock != null) {
                            wakeLock.release();
                            SecPowerNotificationWarnings.this.mUsbDamageProtectionPartialWakeLock = null;
                        }
                        AlertDialog alertDialog = SecPowerNotificationWarnings.this.mUsbDamageProtectionAlertDialog;
                        if (alertDialog != null) {
                            alertDialog.dismiss();
                        }
                    }
                }
            });
            turnOnScreen();
        }
        playPowerSound(7);
        handler.postDelayed(anonymousClass21, 1600L);
    }

    public final void showWaterProtectionAlertDialog(boolean z) {
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("show WaterProtectionAlertDialog - isWaterDetected = ", z, " mIsWaterDetected = ");
        m.append(this.mIsWaterDetected);
        m.append(" mIsHiccupState = ");
        m.append(this.mIsHiccupState);
        m.append("mWaterProtectionAlertDialog : ");
        m.append(this.mWaterProtectionAlertDialog);
        Log.d("SecPowerUI.Notification", m.toString());
        this.mIsWaterDetected = z;
        Handler handler = this.mHandler;
        AnonymousClass18 anonymousClass18 = this.mWaterProtectionAlertTask;
        handler.removeCallbacks(anonymousClass18);
        if (this.mWaterProtectionPartialWakeLock == null) {
            PowerManager.WakeLock newWakeLock = this.mPowerManager.newWakeLock(1, "SecPowerUI.Notification");
            this.mWaterProtectionPartialWakeLock = newWakeLock;
            newWakeLock.acquire();
        }
        if (this.mWaterProtectionAlertDialog == null) {
            if (!z && !this.mIsHiccupState) {
                Log.w("SecPowerUI.Notification", "Wrong executed, so return");
                PowerManager.WakeLock wakeLock = this.mWaterProtectionPartialWakeLock;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.mWaterProtectionPartialWakeLock = null;
                    return;
                }
                return;
            }
            AlertDialog popupDialog = getPopupDialog(12);
            this.mWaterProtectionAlertDialog = popupDialog;
            if (popupDialog == null) {
                return;
            }
            popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.16
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    Log.d("SecPowerUI.Notification", "mWaterProtectionAlertDialog onDismiss");
                    SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                    secPowerNotificationWarnings.mWaterProtectionAlertDialog = null;
                    secPowerNotificationWarnings.stopPowerSound(1600);
                }
            });
            this.mWaterProtectionAlertDialog.show();
            if (this.mIsHiccupState) {
                this.mWaterProtectionAlertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (!SecPowerNotificationWarnings.this.mIsHiccupState) {
                            Log.d("SecPowerUI.Notification", "mWaterProtectionAlertDialog onClick");
                            SecPowerNotificationWarnings secPowerNotificationWarnings = SecPowerNotificationWarnings.this;
                            secPowerNotificationWarnings.mHandler.removeCallbacks(secPowerNotificationWarnings.mWaterProtectionAlertTask);
                            SecPowerNotificationWarnings.this.mContext.sendBroadcast(new Intent("com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"));
                            PowerManager.WakeLock wakeLock2 = SecPowerNotificationWarnings.this.mWaterProtectionPartialWakeLock;
                            if (wakeLock2 != null) {
                                wakeLock2.release();
                                SecPowerNotificationWarnings.this.mWaterProtectionPartialWakeLock = null;
                            }
                            AlertDialog alertDialog = SecPowerNotificationWarnings.this.mWaterProtectionAlertDialog;
                            if (alertDialog != null) {
                                alertDialog.dismiss();
                            }
                        }
                    }
                });
            }
            turnOnScreen();
        }
        playPowerSound(6);
        handler.postDelayed(anonymousClass18, 1600L);
    }

    public final void showWillOverheatShutdownWarning() {
        boolean z = false;
        if (1 == Settings.System.getInt(this.mContext.getContentResolver(), "SHOULD_SHUT_DOWN", 0)) {
            z = true;
        }
        if (z) {
            Log.d("SecPowerUI.Notification", "don't show Overheat shutdown warning while Shutdown is ON");
            return;
        }
        Log.d("SecPowerUI.Notification", "showWillOverheatShutdownWarning()");
        Log.d("SecPowerUI.Notification", "dismissOverheatShutdownHappenedPopUp()");
        AlertDialog alertDialog = this.mOverheatShutdownHappenedDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (this.mWillOverheatShutdownWarningDialog == null) {
            AlertDialog popupDialog = getPopupDialog(8);
            this.mWillOverheatShutdownWarningDialog = popupDialog;
            if (popupDialog != null) {
                popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.6
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        SecPowerNotificationWarnings.this.mWillOverheatShutdownWarningDialog = null;
                    }
                });
                this.mWillOverheatShutdownWarningDialog.show();
                this.mWillOverheatShutdownWarningDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AlertDialog alertDialog2 = SecPowerNotificationWarnings.this.mWillOverheatShutdownWarningDialog;
                        if (alertDialog2 != null) {
                            alertDialog2.dismiss();
                        }
                    }
                });
                turnOnScreen();
            }
        }
    }

    public final void stopPowerSound(int i) {
        PowerUiSound powerUiSound = PowerUiSoundFactory.getPowerUiSound(i, this.mContext);
        NotificationPlayer notificationPlayer = this.mNotificationPlayer;
        powerUiSound.mNotificationPlayer = notificationPlayer;
        powerUiSound.mVibrator = this.mVibrator;
        powerUiSound.mIsInCall = this.mIsInCall;
        powerUiSound.mChargingType = this.mSuperFastCharger;
        powerUiSound.mAudioManager = this.mAudioManager;
        if (notificationPlayer != null) {
            notificationPlayer.stop();
        }
        Vibrator vibrator = powerUiSound.mVibrator;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    public final void turnOnScreen() {
        PowerManager powerManager = this.mPowerManager;
        if (powerManager == null) {
            Log.e("SecPowerUI.Notification", "turnOnScreen : fail to get PowerManager reference");
        } else {
            powerManager.wakeUp(SystemClock.uptimeMillis(), this.mContext.getOpPackageName());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateNotification() {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "updateNotification mWarning="
            r0.<init>(r1)
            boolean r1 = r7.mWarning
            r0.append(r1)
            java.lang.String r1 = " mPlaySound="
            r0.append(r1)
            boolean r1 = r7.mPlaySound
            java.lang.String r2 = "SecPowerUI.Notification"
            androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0.m(r0, r1, r2)
            boolean r0 = r7.mWarning
            r1 = 1
            if (r0 == 0) goto L8a
            java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r0 = com.android.systemui.knox.KnoxStateMonitor.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.knox.KnoxStateMonitor r0 = (com.android.systemui.knox.KnoxStateMonitor) r0
            com.android.systemui.knox.KnoxStateMonitorImpl r0 = (com.android.systemui.knox.KnoxStateMonitorImpl) r0
            com.android.systemui.knox.CustomSdkMonitor r0 = r0.mCustomSdkMonitor
            r3 = 0
            if (r0 == 0) goto L39
            int r0 = r0.mHideNotificationMessages
            r0 = r0 & r1
            if (r0 == 0) goto L34
            r0 = r3
            goto L35
        L34:
            r0 = r1
        L35:
            if (r0 == 0) goto L39
            r0 = r1
            goto L3a
        L39:
            r0 = r3
        L3a:
            if (r0 != 0) goto L42
            java.lang.String r7 = "We do not show warning notifications due to KNOX."
            android.util.Log.d(r2, r7)
            return
        L42:
            android.content.Context r0 = r7.mContext
            com.android.systemui.power.notification.PowerUiNotification r0 = com.android.systemui.power.notification.PowerUiNotificationFactory.getNotification(r1, r0)
            android.app.NotificationManager r4 = r7.mNotificationManager
            if (r0 != 0) goto L53
            java.lang.String r0 = "Illegal notification type : 1"
            android.util.Log.e(r2, r0)
            r0 = 0
            goto L60
        L53:
            r0.mNotificationManager = r4
            com.android.systemui.power.SecBatteryStatsSnapshot r2 = r7.getSecBatteryStatsSnapshot()
            r0.setInformation(r2)
            android.app.Notification$Builder r0 = r0.getBuilder()
        L60:
            if (r0 != 0) goto L63
            goto L8d
        L63:
            long r5 = r7.mWarningTriggerTimeMs
            r0.setWhen(r5)
            boolean r2 = r7.mPlaySound
            r5 = 3
            if (r2 == 0) goto L70
            r7.playPowerSound(r5)
        L70:
            boolean r2 = r7.mPlaySound
            r1 = r1 ^ r2
            r0.setOnlyAlertOnce(r1)
            r7.mPlaySound = r3
            android.app.Notification r7 = r0.build()
            android.os.UserHandle r0 = android.os.UserHandle.ALL
            java.lang.String r1 = "low_battery"
            r2 = 2
            r4.cancelAsUser(r1, r2, r0)
            android.os.UserHandle r0 = android.os.UserHandle.ALL
            r4.notifyAsUser(r1, r5, r7, r0)
            goto L8d
        L8a:
            r7.cancelNotification(r1)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.power.SecPowerNotificationWarnings.updateNotification():void");
    }
}
