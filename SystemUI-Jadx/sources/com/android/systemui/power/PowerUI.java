package com.android.systemui.power;

import android.animation.Animator;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.hardware.scontext.SContextEvent;
import android.hardware.scontext.SContextListener;
import android.hardware.scontext.SContextManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.IThermalEventListener;
import android.os.IThermalService;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Temperature;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.Slog;
import android.view.View;
import android.view.WindowManager;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.settingslib.Utils;
import com.android.settingslib.fuelgauge.Estimate;
import com.android.systemui.BasicRune;
import com.android.systemui.CoreStartable;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.PowerUiRune;
import com.android.systemui.R;
import com.android.systemui.SystemUIApplication;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.power.ChargerAnimationView;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.volume.Events;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.hardware.SemBatteryUtils;
import com.samsung.android.knox.custom.SettingsManager;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentService;
import com.samsung.android.view.SemWindowManager;
import dagger.Lazy;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Future;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PowerUI implements CoreStartable, CommandQueue.Callbacks, ChargerAnimationView.ChargerAnimationListener, WirelessMisalignListener {
    public static final boolean DEBUG = Log.isLoggable("PowerUI", 3);
    public PowerManager.WakeLock mBatteryHealthInterruptionPartialWakeLock;
    public PowerManager.WakeLock mBatteryHealthInterruptionScreenDimWakeLock;
    public int mBatteryProtectionThreshold;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final Lazy mCentralSurfacesOptionalLazy;
    public ChargerAnimationView mChargerAnimationView;
    public WindowManager.LayoutParams mChargerAnimationWindowLp;
    public WindowManager mChargerAnimationWindowManager;
    public String mChargingStartTime;
    public final CommandQueue mCommandQueue;
    public final Context mContext;
    BatteryStateSnapshot mCurrentBatteryStateSnapshot;
    public boolean mEnableSkinTemperatureWarning;
    public boolean mEnableUsbTemperatureAlarm;
    public final EnhancedEstimates mEnhancedEstimates;
    BatteryStateSnapshot mLastBatteryStateSnapshot;
    public Future mLastShowWarningTask;
    public int mLowBatteryAlertCloseLevel;
    boolean mLowWarningShownThisChargeCycle;
    public int mLtcHighSocThreshold;
    public int mLtcReleaseThreshold;
    public InattentiveSleepWarningView mOverlayView;
    public final Lazy mPluginAODManagerLazy;
    public final PowerManager mPowerManager;
    public final SecPowerNotificationWarnings mSecPowerNotificationWarnings;
    boolean mSevereWarningShownThisChargeCycle;
    public IThermalEventListener mSkinThermalEventListener;
    public String mSleepChargingEvent;
    public int mSuperFastCharger;
    IThermalService mThermalService;
    public IThermalEventListener mUsbThermalEventListener;
    public final UserTracker mUserTracker;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final WarningsUI mWarnings;
    public WirelessMisalignView mWirelessMisalignView;
    public PowerManager.WakeLock mWirelessMisalignWakeLock;
    public WindowManager.LayoutParams mWirelessMisalignWindowLp;
    public WindowManager mWirelessMisalignWindowManager;
    public final Handler mHandler = new Handler();
    final Receiver mReceiver = new Receiver();
    public final Configuration mLastConfiguration = new Configuration();
    public int mPlugType = -1;
    public int mInvalidCharger = 0;
    public final int[] mLowBatteryReminderLevels = new int[2];
    public long mScreenOffTime = -1;
    int mBatteryLevel = 100;
    int mBatteryStatus = 1;
    public final AnonymousClass1 mWakefulnessObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.power.PowerUI.1
        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onFinishedGoingToSleep() {
            PowerUI.this.mScreenOffTime = SystemClock.elapsedRealtime();
        }

        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onStartedWakingUp() {
            PowerUI.this.mScreenOffTime = -1L;
        }
    };
    public final UserTracker.Callback mUserChangedCallback = new UserTracker.Callback() { // from class: com.android.systemui.power.PowerUI.2
        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            Slog.i("PowerUI", "onUserChanged : " + i);
            PowerUI powerUI = PowerUI.this;
            ((PowerNotificationWarnings) powerUI.mWarnings).updateNotification();
            powerUI.mSecPowerNotificationWarnings.updateNotification();
            if (PowerUiRune.ADAPTIVE_PROTECTION_NOTIFICATION && powerUI.mProtectBatteryValue == 4 && i != 0) {
                Slog.i("PowerUI", "start battery protection InitService at user " + i);
                Intent intent = new Intent();
                intent.setPackage(PowerUiConstants.DC_PACKAGE_NAME);
                intent.setAction("com.samsung.android.sm.service.action.ACTION_BATTERY_PROTECTION_INIT_SERVICE");
                context.startService(intent);
            }
        }
    };
    public boolean mIsRunningLowBatteryTask = false;
    public boolean mIsRunningStopPowerSoundTask = false;
    public int mBatterySwellingMode = 0;
    public boolean mBatteryHighVoltageCharger = false;
    public boolean mFullyConnected = true;
    public boolean mBatterySlowCharger = false;
    public boolean mIsChangedStringAfterCharging = false;
    public int mBatteryChargingType = 0;
    public int mBatteryOnline = -1;
    public boolean mIsChargerAnimationPlaying = false;
    public boolean mIsWirelessMisalignTask = false;
    public SContextManager mSContextManager = null;
    public boolean mIsMotionDetectionSupported = false;
    public boolean mIsSContextEnabled = false;
    public boolean mIsSContextListenerRegistered = false;
    public boolean mIsDeviceMoving = true;
    public boolean mWirelessFodState = false;
    public boolean mBatteryWaterConnector = false;
    public boolean mIsHiccupState = false;
    public boolean mTemperatureHiccupState = false;
    public boolean mDismissBatteryHealthInterruptionWarning = false;
    public int mBatteryHealth = 1;
    public boolean mIsShutdownTaskDelayed = false;
    public int mBatteryOverheatLevel = 0;
    public int mCallState = 0;
    public boolean mBootCompleted = false;
    public int mBatteryCurrentEvent = 0;
    public boolean mIsProtectingBatteryCutOffSettingEnabled = false;
    public int mProtectBatteryValue = -1;
    public boolean mIsAfterAdaptiveProtection = false;
    public int mBatteryMiscEvent = 0;
    public int mTurnOffPsmLevel = -1;
    public final AnonymousClass7 mLowBatteryWarningTask = new Runnable() { // from class: com.android.systemui.power.PowerUI.7
        @Override // java.lang.Runnable
        public final void run() {
            Log.d("PowerUI", "mLowBatteryWarningTask");
            PowerUI powerUI = PowerUI.this;
            powerUI.mIsRunningLowBatteryTask = false;
            powerUI.mSecPowerNotificationWarnings.showLowBatteryWarning(true);
        }
    };
    public final AnonymousClass8 mScreenOnOffCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.power.PowerUI.8
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onFinishedGoingToSleep(int i) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            PowerUI powerUI = PowerUI.this;
            powerUI.mScreenOffTime = elapsedRealtime;
            SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
            secPowerNotificationWarnings.getClass();
            Log.d("SecPowerUI.Notification", "dismissUnintentionallyLcdOnNotice");
            secPowerNotificationWarnings.dismissUnintentionalLcdOnWindow();
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onStartedWakingUp() {
            PowerUI.this.mScreenOffTime = -1L;
        }
    };
    public final AnonymousClass9 mOverheatShutdownWarningTask = new Runnable() { // from class: com.android.systemui.power.PowerUI.9
        @Override // java.lang.Runnable
        public final void run() {
            PowerUI powerUI = PowerUI.this;
            if (powerUI.mCallState == 0) {
                SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
                secPowerNotificationWarnings.getClass();
                Log.d("SecPowerUI.Notification", "runOverheatShutdownTask - Delay time = 10000");
                secPowerNotificationWarnings.mHandler.postDelayed(secPowerNotificationWarnings.mOverheatShutdownTask, 10000);
                PowerUI.this.mSecPowerNotificationWarnings.showWillOverheatShutdownWarning();
                return;
            }
            Log.d("PowerUI", "Battery overheat but on call, so delayed power off");
            PowerUI.this.mIsShutdownTaskDelayed = true;
        }
    };
    public final AnonymousClass10 mPhoneStateListener = new PhoneStateListener() { // from class: com.android.systemui.power.PowerUI.10
        @Override // android.telephony.PhoneStateListener
        public final void onCallStateChanged(int i, String str) {
            ActionBarContextView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("mPhoneStateListener onCallStateChanged(): state= ", i, " mIsShutdownTaskDelayed = "), PowerUI.this.mIsShutdownTaskDelayed, "PowerUI");
            PowerUI powerUI = PowerUI.this;
            powerUI.mCallState = i;
            if (i == 0 && powerUI.mIsShutdownTaskDelayed) {
                powerUI.mIsShutdownTaskDelayed = false;
                if (2 == powerUI.mBatteryOverheatLevel) {
                    SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
                    secPowerNotificationWarnings.getClass();
                    Log.d("SecPowerUI.Notification", "runOverheatShutdownTask - Delay time = 10000");
                    secPowerNotificationWarnings.mHandler.postDelayed(secPowerNotificationWarnings.mOverheatShutdownTask, 10000);
                    PowerUI.this.mSecPowerNotificationWarnings.showWillOverheatShutdownWarning();
                }
            }
            if (i == 0) {
                PowerUI.this.mSecPowerNotificationWarnings.mIsInCall = false;
            } else {
                PowerUI.this.mSecPowerNotificationWarnings.mIsInCall = true;
            }
        }
    };
    public final AnonymousClass11 mAfterChargingNoticeTask = new Runnable() { // from class: com.android.systemui.power.PowerUI.11
        @Override // java.lang.Runnable
        public final void run() {
            PowerUI powerUI = PowerUI.this;
            powerUI.mIsChangedStringAfterCharging = true;
            int i = powerUI.mBatteryChargingType;
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    i = 11;
                    break;
                case 6:
                case 7:
                    i = 10;
                    break;
            }
            powerUI.mBatteryChargingType = i;
            SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
            int i2 = powerUI.mSuperFastCharger;
            secPowerNotificationWarnings.mOldChargingType = secPowerNotificationWarnings.mChargingType;
            secPowerNotificationWarnings.mChargingType = i;
            secPowerNotificationWarnings.mSuperFastCharger = i2;
            secPowerNotificationWarnings.showChargingNotice();
        }
    };
    public final AnonymousClass12 mStopPowerSoundTask = new Runnable() { // from class: com.android.systemui.power.PowerUI.12
        @Override // java.lang.Runnable
        public final void run() {
            Log.d("PowerUI", "mStopPowerSoundTask");
            PowerUI powerUI = PowerUI.this;
            powerUI.mIsRunningStopPowerSoundTask = false;
            powerUI.mSecPowerNotificationWarnings.stopPowerSound(1);
        }
    };
    public final AnonymousClass13 mSContextListener = new SContextListener() { // from class: com.android.systemui.power.PowerUI.13
        public final void onSContextChanged(SContextEvent sContextEvent) {
            if (sContextEvent.scontext.getType() == 46) {
                int action = sContextEvent.getWirelessChargingDetectionContext().getAction();
                if (action != 0) {
                    if (action == 1) {
                        Log.d("PowerUI", "SContextListener - Move");
                        PowerUI powerUI = PowerUI.this;
                        powerUI.mIsDeviceMoving = true;
                        if (powerUI.mIsSContextListenerRegistered) {
                            if (powerUI.mPlugType != 4 || powerUI.mBatteryStatus != 2) {
                                Log.d("PowerUI", "Unregister SContextListener - From Listener");
                                PowerUI powerUI2 = PowerUI.this;
                                powerUI2.mSContextManager.unregisterListener(powerUI2.mSContextListener, 46);
                                PowerUI.this.mIsSContextListenerRegistered = false;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                Log.d("PowerUI", "SContextListener - No Move");
                PowerUI.this.mIsDeviceMoving = false;
            }
        }
    };
    public final AnonymousClass14 mWirelessMisalignTimeoutTask = new Runnable() { // from class: com.android.systemui.power.PowerUI.14
        @Override // java.lang.Runnable
        public final void run() {
            if (PowerUI.this.mIsWirelessMisalignTask) {
                Log.d("PowerUI", "mWirelessMisalignTask");
                PowerUI.this.removeChargerView();
                PowerUI.this.removeMisalignView();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Receiver extends BroadcastReceiver {
        public boolean mHasReceivedBattery = false;

        public Receiver() {
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x03ed  */
        /* JADX WARN: Removed duplicated region for block: B:104:0x03f6  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0409  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0412  */
        /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:113:0x03fc  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x03b7  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x034f  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x02fd  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x02dd  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x016c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x02d6  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x02f7  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0329  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x035f  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0396  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x03b5  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x03bf  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x03ca  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x03d6  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x03e4  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onReceive(android.content.Context r22, android.content.Intent r23) {
            /*
                Method dump skipped, instructions count: 2374
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.power.PowerUI.Receiver.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SkinThermalEventListener extends IThermalEventListener.Stub {
        public SkinThermalEventListener() {
        }

        public final void notifyThrottling(Temperature temperature) {
            int status = temperature.getStatus();
            if (status >= 5) {
                if (!((Boolean) ((Optional) PowerUI.this.mCentralSurfacesOptionalLazy.get()).map(new PowerUI$SkinThermalEventListener$$ExternalSyntheticLambda0()).orElse(Boolean.FALSE)).booleanValue()) {
                    PowerNotificationWarnings powerNotificationWarnings = (PowerNotificationWarnings) PowerUI.this.mWarnings;
                    if (!powerNotificationWarnings.mHighTempWarning) {
                        powerNotificationWarnings.mHighTempWarning = true;
                        Context context = powerNotificationWarnings.mContext;
                        String string = context.getString(R.string.high_temp_notif_message);
                        Notification.Builder color = new Notification.Builder(context, "ALR").setSmallIcon(R.drawable.ic_device_thermostat_24).setWhen(0L).setShowWhen(false).setContentTitle(context.getString(R.string.high_temp_title)).setContentText(string).setStyle(new Notification.BigTextStyle().bigText(string)).setVisibility(1).setContentIntent(powerNotificationWarnings.pendingBroadcast("PNW.clickedTempWarning")).setDeleteIntent(powerNotificationWarnings.pendingBroadcast("PNW.dismissedTempWarning")).setColor(Utils.getColorAttrDefaultColor(android.R.attr.colorError, context, 0));
                        SystemUIApplication.overrideNotificationAppName(context, color, false);
                        powerNotificationWarnings.mNoMan.notifyAsUser("high_temp", 4, color.build(), UserHandle.ALL);
                    }
                    StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("SkinThermalEventListener: notifyThrottling was called , current skin status = ", status, ", temperature = ");
                    m.append(temperature.getValue());
                    Slog.d("PowerUI", m.toString());
                    return;
                }
                return;
            }
            PowerNotificationWarnings powerNotificationWarnings2 = (PowerNotificationWarnings) PowerUI.this.mWarnings;
            if (powerNotificationWarnings2.mHighTempWarning) {
                powerNotificationWarnings2.dismissHighTemperatureWarningInternal();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class UsbThermalEventListener extends IThermalEventListener.Stub {
        public UsbThermalEventListener() {
        }

        public final void notifyThrottling(Temperature temperature) {
            int status = temperature.getStatus();
            if (status >= 5) {
                final PowerNotificationWarnings powerNotificationWarnings = (PowerNotificationWarnings) PowerUI.this.mWarnings;
                powerNotificationWarnings.mHandler.post(new Runnable() { // from class: com.android.systemui.power.PowerNotificationWarnings$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PowerNotificationWarnings powerNotificationWarnings2 = PowerNotificationWarnings.this;
                        if (powerNotificationWarnings2.mUsbHighTempDialog == null) {
                            Context context = powerNotificationWarnings2.mContext;
                            SystemUIDialog systemUIDialog = new SystemUIDialog(context, 2132018528);
                            systemUIDialog.setCancelable(false);
                            systemUIDialog.setIconAttribute(android.R.attr.alertDialogIcon);
                            systemUIDialog.setTitle(R.string.high_temp_alarm_title);
                            SystemUIDialog.setShowForAllUsers(systemUIDialog);
                            systemUIDialog.setMessage(context.getString(R.string.high_temp_alarm_notify_message, ""));
                            systemUIDialog.setPositiveButton(android.R.string.ok, new PowerNotificationWarnings$$ExternalSyntheticLambda1(powerNotificationWarnings2, 0));
                            systemUIDialog.setNegativeButton(R.string.high_temp_alarm_help_care_steps, new PowerNotificationWarnings$$ExternalSyntheticLambda1(powerNotificationWarnings2, 1));
                            systemUIDialog.setOnDismissListener(new PowerNotificationWarnings$$ExternalSyntheticLambda2(powerNotificationWarnings2, 0));
                            systemUIDialog.getWindow().addFlags(2097280);
                            systemUIDialog.show();
                            powerNotificationWarnings2.mUsbHighTempDialog = systemUIDialog;
                            Events.writeEvent(19, 3, Boolean.valueOf(powerNotificationWarnings2.mKeyguard.isKeyguardLocked()));
                        }
                    }
                });
                Slog.d("PowerUI", "UsbThermalEventListener: notifyThrottling was called , current usb port status = " + status + ", temperature = " + temperature.getValue());
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface WarningsUI {
    }

    /* renamed from: -$$Nest$mcheckAbnormalChargingPad, reason: not valid java name */
    public static void m1305$$Nest$mcheckAbnormalChargingPad(PowerUI powerUI, int i) {
        int i2 = i & QuickStepContract.SYSUI_STATE_DEVICE_DOZING;
        SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
        if (i2 == 0 && (powerUI.mBatteryMiscEvent & QuickStepContract.SYSUI_STATE_DEVICE_DOZING) != 0) {
            secPowerNotificationWarnings.getClass();
            Log.i("SecPowerUI.Notification", "showAbnormalPadNotification");
            secPowerNotificationWarnings.showNotification(8);
        } else if (i2 != 0 && (powerUI.mBatteryMiscEvent & QuickStepContract.SYSUI_STATE_DEVICE_DOZING) == 0) {
            secPowerNotificationWarnings.getClass();
            Log.i("SecPowerUI.Notification", "dismissAbnormalPadNotification");
            secPowerNotificationWarnings.cancelNotification(8);
        }
    }

    /* renamed from: -$$Nest$mcheckBatteryHealthInterruptionStatus, reason: not valid java name */
    public static void m1306$$Nest$mcheckBatteryHealthInterruptionStatus(int i, PowerUI powerUI, boolean z) {
        int i2;
        int i3 = powerUI.mBatteryStatus;
        PowerManager powerManager = powerUI.mPowerManager;
        SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
        if (4 == i3 && (3 == (i2 = powerUI.mBatteryHealth) || 7 == i2 || 6 == i2)) {
            if (6 == i2 && z) {
                Log.i("PowerUI", "This status is not charging && false present but direct mode , so we do nothing !!");
                return;
            }
            Log.i("PowerUI", "Unhealth state");
            if (powerUI.mBatteryHealthInterruptionScreenDimWakeLock == null) {
                PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(268435462, "PowerUI");
                powerUI.mBatteryHealthInterruptionScreenDimWakeLock = newWakeLock;
                if (PowerUiRune.KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION && powerUI.mBatteryHealth == 6) {
                    newWakeLock.acquire();
                } else {
                    newWakeLock.acquire(60000L);
                }
                if (powerUI.mBatteryHealth == 6) {
                    if (powerUI.mBatteryHealthInterruptionPartialWakeLock == null) {
                        powerUI.mBatteryHealthInterruptionPartialWakeLock = powerManager.newWakeLock(1, "PowerUI");
                    }
                    powerUI.mBatteryHealthInterruptionPartialWakeLock.acquire();
                }
                secPowerNotificationWarnings.showBatteryHealthInterruptionWarning();
            } else if (8 == i) {
                secPowerNotificationWarnings.showBatteryHealthInterruptionWarning();
            }
        } else if (4 == i3 && 8 == powerUI.mBatteryHealth) {
            PowerManager.WakeLock wakeLock = powerUI.mBatteryHealthInterruptionScreenDimWakeLock;
            if (wakeLock == null) {
                PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(268435462, "PowerUI");
                powerUI.mBatteryHealthInterruptionScreenDimWakeLock = newWakeLock2;
                if (PowerUiRune.KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION) {
                    newWakeLock2.acquire();
                } else {
                    newWakeLock2.acquire(60000L);
                }
                if (powerUI.mBatteryHealthInterruptionPartialWakeLock == null) {
                    powerUI.mBatteryHealthInterruptionPartialWakeLock = powerManager.newWakeLock(1, "PowerUI");
                }
                powerUI.mBatteryHealthInterruptionPartialWakeLock.acquire();
                secPowerNotificationWarnings.showBatteryHealthInterruptionWarning();
            } else if (3 == i) {
                if (!PowerUiRune.KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION) {
                    wakeLock.acquire(60000L);
                }
                secPowerNotificationWarnings.showBatteryHealthInterruptionWarning();
            }
        } else if (powerUI.mBatteryHealthInterruptionScreenDimWakeLock != null) {
            if (4 == powerUI.mPlugType && 3 == i3 && 3 == powerUI.mBatteryHealth) {
                powerUI.mDismissBatteryHealthInterruptionWarning = true;
            } else {
                Handler handler = secPowerNotificationWarnings.mHandler;
                handler.removeCallbacks(secPowerNotificationWarnings.mBatteryHealthInterruptionTask);
                handler.removeCallbacks(secPowerNotificationWarnings.mTemperatureLimitAlertTask);
                Log.d("SecPowerUI.Notification", "dismissBatteryHealthInterruptionNotification()");
                secPowerNotificationWarnings.cancelNotification(5);
                Log.d("SecPowerUI.Notification", "dismissBatteryHealthInterruptionPopUp()");
                AlertDialog alertDialog = secPowerNotificationWarnings.mBatteryHealthInterruptionDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                powerUI.mDismissBatteryHealthInterruptionWarning = false;
            }
            if (PowerUiRune.KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION && powerUI.mBatteryHealthInterruptionScreenDimWakeLock.isHeld()) {
                powerUI.mBatteryHealthInterruptionScreenDimWakeLock.release();
            }
            PowerManager.WakeLock wakeLock2 = powerUI.mBatteryHealthInterruptionPartialWakeLock;
            if (wakeLock2 != null && wakeLock2.isHeld()) {
                powerUI.mBatteryHealthInterruptionPartialWakeLock.release();
            }
            powerUI.mBatteryHealthInterruptionScreenDimWakeLock = null;
        }
        if (powerUI.mDismissBatteryHealthInterruptionWarning && 2 == powerUI.mBatteryStatus) {
            Handler handler2 = secPowerNotificationWarnings.mHandler;
            handler2.removeCallbacks(secPowerNotificationWarnings.mBatteryHealthInterruptionTask);
            handler2.removeCallbacks(secPowerNotificationWarnings.mTemperatureLimitAlertTask);
            Log.d("SecPowerUI.Notification", "dismissBatteryHealthInterruptionNotification()");
            secPowerNotificationWarnings.cancelNotification(5);
            Log.d("SecPowerUI.Notification", "dismissBatteryHealthInterruptionPopUp()");
            AlertDialog alertDialog2 = secPowerNotificationWarnings.mBatteryHealthInterruptionDialog;
            if (alertDialog2 != null) {
                alertDialog2.dismiss();
            }
            powerUI.mDismissBatteryHealthInterruptionWarning = false;
        }
        int i4 = powerUI.mBatteryHealth;
        if (i != i4) {
            if (5 == i || 5 == i4 || 9 == i || 9 == i4) {
                SettingsManager settingsManager = SettingsManager.getInstance();
                if (settingsManager != null && !settingsManager.getScreenWakeupOnPowerState()) {
                    Log.d("PowerUI", "Knox Customization: shouldWakeUp: not waking when battery health is changed");
                } else {
                    Log.d("PowerUI", "Overvoltage/Undervoltage status is changed so turn on the screen.");
                    powerManager.wakeUp(SystemClock.uptimeMillis(), powerUI.mContext.getOpPackageName());
                }
            }
        }
    }

    /* renamed from: -$$Nest$mcheckBatteryProtectionTipsNotification, reason: not valid java name */
    public static void m1307$$Nest$mcheckBatteryProtectionTipsNotification(PowerUI powerUI, int i) {
        Context context = powerUI.mContext;
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.systemui.power_tips_notification", 0);
            boolean z = sharedPreferences.getBoolean("tipsNotiFirstTime", true);
            Slog.d("PowerUI", "checkBatteryProtectionTipsNotification, first : " + z);
            if (i == 0) {
                int i2 = powerUI.mPlugType;
                if ((i2 == 1 || i2 == 4) && z) {
                    Intent intent = new Intent();
                    intent.setClassName("com.samsung.android.app.tips", "com.samsung.android.app.tips.TipsIntentService");
                    intent.putExtra("tips_extras", 8);
                    intent.putExtra("tips_extras2", "BATT_0003");
                    intent.putExtra("tips_extras3", context.getString(R.string.battery_protection_tips_noti_content));
                    intent.putExtra("tips_extras4", context.getString(R.string.battery_protection_tips_noti_title));
                    Slog.d("PowerUI", "checkBatteryProtectionTipsNotification, show Battery protection tip");
                    if (context.startForegroundService(intent) != null) {
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putBoolean("tipsNotiFirstTime", false);
                        edit.commit();
                    }
                }
            }
        } catch (ForegroundServiceStartNotAllowedException | SecurityException e) {
            Log.e("PowerUI", "Exception occur", e);
        }
    }

    /* renamed from: -$$Nest$mcheckBatterySwellingStatus, reason: not valid java name */
    public static void m1308$$Nest$mcheckBatterySwellingStatus(PowerUI powerUI, int i, int i2) {
        powerUI.getClass();
        StringBuilder sb = new StringBuilder("Battery swelling mode - priorBatterySwellingMode = ");
        sb.append(i);
        sb.append(" mBatterySwellingMode = ");
        sb.append(powerUI.mBatterySwellingMode);
        sb.append(" mBatteryStatus = ");
        RecyclerView$$ExternalSyntheticOutline0.m(sb, powerUI.mBatteryStatus, "PowerUI");
        int i3 = powerUI.mBatterySwellingMode;
        if (i != i3 || i2 != powerUI.mBatteryStatus) {
            SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
            if (i3 > 0 && powerUI.mBatteryStatus == 2) {
                secPowerNotificationWarnings.getClass();
                if (i3 == 1) {
                    Log.d("SecPowerUI.Notification", "showBatterySwellingNotice()");
                    secPowerNotificationWarnings.showNotification(4);
                } else {
                    ListPopupWindow$$ExternalSyntheticOutline0.m("Not battery low swelling mode, (ignore high swelling mode) so return ", i3, "SecPowerUI.Notification");
                }
                if (powerUI.mBatterySwellingMode == 1) {
                    Log.d("SecPowerUI.Notification", "showBatterySwellingPopup for low temp");
                    Log.d("SecPowerUI.Notification", "showBatterySwellingLowTempPopup()");
                    if (secPowerNotificationWarnings.mSwellingDialog == null) {
                        AlertDialog popupDialog = secPowerNotificationWarnings.getPopupDialog(3);
                        secPowerNotificationWarnings.mSwellingDialog = popupDialog;
                        if (popupDialog != null) {
                            popupDialog.setOnDismissListener(new SecPowerNotificationWarnings$$ExternalSyntheticLambda0(secPowerNotificationWarnings, 1));
                            secPowerNotificationWarnings.mSwellingDialog.show();
                            secPowerNotificationWarnings.turnOnScreen();
                        }
                    }
                } else {
                    Log.d("SecPowerUI.Notification", "Neither battery swelling mode nor low temp, so no popup is shown");
                }
                secPowerNotificationWarnings.mDoNotShowChargingNotice = false;
                secPowerNotificationWarnings.mChargingType = 0;
                secPowerNotificationWarnings.mOldChargingType = 0;
                secPowerNotificationWarnings.mChargingTime = 0L;
                secPowerNotificationWarnings.mShowChargingNotice = false;
                secPowerNotificationWarnings.dismissSlowByChargerConnectionInfoPopUp();
                Log.d("SecPowerUI.Notification", "dismissChargingNotification()");
                secPowerNotificationWarnings.cancelNotification(2);
                powerUI.mHandler.removeCallbacks(powerUI.mAfterChargingNoticeTask);
                powerUI.mIsChangedStringAfterCharging = false;
                return;
            }
            secPowerNotificationWarnings.getClass();
            Log.d("SecPowerUI.Notification", "dismissBatterySwellingNotice()");
            secPowerNotificationWarnings.cancelNotification(4);
            Log.d("SecPowerUI.Notification", "dismissBatterySwellingPopup()");
            AlertDialog alertDialog = secPowerNotificationWarnings.mSwellingDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
        }
    }

    /* renamed from: -$$Nest$mcheckConnectedChargerStatus, reason: not valid java name */
    public static void m1309$$Nest$mcheckConnectedChargerStatus(PowerUI powerUI, int i) {
        if (2 == powerUI.mBatteryStatus) {
            int i2 = powerUI.mPlugType;
            if (1 != i2 && 2 != i2) {
                if (4 == i2) {
                    if (100 == powerUI.mBatteryOnline) {
                        powerUI.mBatteryChargingType = 7;
                    } else {
                        powerUI.mBatteryChargingType = 6;
                    }
                } else {
                    powerUI.mBatteryChargingType = 0;
                }
            } else if (PowerUiRune.SPECIFIC_POWER_REQUEST_BY_VZW) {
                if (powerUI.mBatterySlowCharger) {
                    powerUI.mBatteryChargingType = 8;
                } else if (!powerUI.mFullyConnected) {
                    powerUI.mBatteryChargingType = 9;
                } else {
                    int i3 = powerUI.mSuperFastCharger;
                    if (i3 == 3) {
                        powerUI.mBatteryChargingType = 3;
                    } else if (i3 == 4) {
                        powerUI.mBatteryChargingType = 4;
                    } else if (powerUI.mBatteryHighVoltageCharger) {
                        powerUI.mBatteryChargingType = 2;
                    } else {
                        powerUI.mBatteryChargingType = 1;
                    }
                }
            } else if (!powerUI.mFullyConnected) {
                powerUI.mBatteryChargingType = 9;
            } else if (powerUI.mBatterySlowCharger) {
                powerUI.mBatteryChargingType = 8;
            } else {
                int i4 = powerUI.mSuperFastCharger;
                if (i4 == 3) {
                    powerUI.mBatteryChargingType = 3;
                } else if (i4 == 4) {
                    powerUI.mBatteryChargingType = 4;
                } else if (powerUI.mBatteryHighVoltageCharger) {
                    powerUI.mBatteryChargingType = 2;
                } else {
                    powerUI.mBatteryChargingType = 1;
                }
            }
            if (i2 == i && powerUI.mIsChangedStringAfterCharging) {
                int i5 = powerUI.mBatteryChargingType;
                switch (i5) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        i5 = 11;
                        break;
                    case 6:
                    case 7:
                        i5 = 10;
                        break;
                }
                powerUI.mBatteryChargingType = i5;
            }
            if (PowerUiRune.ADAPTIVE_PROTECTION_NOTIFICATION && powerUI.mIsAfterAdaptiveProtection) {
                powerUI.mBatteryChargingType = 12;
            }
        } else {
            powerUI.mBatteryChargingType = 0;
        }
        int i6 = powerUI.mBatteryChargingType;
        int i7 = powerUI.mSuperFastCharger;
        SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
        secPowerNotificationWarnings.mOldChargingType = secPowerNotificationWarnings.mChargingType;
        secPowerNotificationWarnings.mChargingType = i6;
        secPowerNotificationWarnings.mSuperFastCharger = i7;
    }

    /* renamed from: -$$Nest$mcheckFullBatteryStatus, reason: not valid java name */
    public static void m1310$$Nest$mcheckFullBatteryStatus(PowerUI powerUI, int i) {
        boolean z;
        int i2 = powerUI.mBatteryStatus;
        if (i != i2) {
            if (5 != i2 || i == 2) {
                if (powerUI.mBatteryLevel >= powerUI.mBatteryProtectionThreshold && powerUI.mIsProtectingBatteryCutOffSettingEnabled) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    return;
                }
            }
            if (!powerUI.mPowerManager.isInteractive()) {
                Lazy lazy = powerUI.mPluginAODManagerLazy;
                ((PluginAODManager) lazy.get()).chargingAnimStarted(true);
                ((PluginAODManager) lazy.get()).chargingAnimStarted(false);
            }
        }
    }

    /* renamed from: -$$Nest$mcheckHVchargerEnableConnection, reason: not valid java name */
    public static void m1311$$Nest$mcheckHVchargerEnableConnection(PowerUI powerUI, int i) {
        int i2 = powerUI.mBatteryCurrentEvent & QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY;
        SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
        if (i2 != 0 && (i & QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY) == 0) {
            if (!PowerUtils.isViewCoverClosed()) {
                secPowerNotificationWarnings.getClass();
                Log.d("SecPowerUI.Notification", "showHVchargerEnableAlertDialog()");
                if (secPowerNotificationWarnings.mHVchargerEnablePopupDialog == null) {
                    AlertDialog popupDialog = secPowerNotificationWarnings.getPopupDialog(14);
                    secPowerNotificationWarnings.mHVchargerEnablePopupDialog = popupDialog;
                    if (popupDialog != null) {
                        popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.22
                            public AnonymousClass22() {
                            }

                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                SecPowerNotificationWarnings.this.mHVchargerEnablePopupDialog = null;
                            }
                        });
                        secPowerNotificationWarnings.turnOnScreen();
                        secPowerNotificationWarnings.mHVchargerEnablePopupDialog.show();
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if ((i & QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY) != 0 && i2 == 0) {
            secPowerNotificationWarnings.getClass();
            Log.d("SecPowerUI.Notification", "dismissHVchargerEnableAlertDialog()");
            AlertDialog alertDialog = secPowerNotificationWarnings.mHVchargerEnablePopupDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
                Log.d("SecPowerUI.Notification", "afcDisableChargerDialog is dimissed");
            }
        }
    }

    /* renamed from: -$$Nest$mcheckIncompatibleChargerConnection, reason: not valid java name */
    public static void m1312$$Nest$mcheckIncompatibleChargerConnection(PowerUI powerUI, int i) {
        int i2 = powerUI.mBatteryOnline;
        SecPowerNotificationWarnings secPowerNotificationWarnings = powerUI.mSecPowerNotificationWarnings;
        if (i2 == 0 && i != 0) {
            secPowerNotificationWarnings.showIncompatibleChargerNotice();
            return;
        }
        if (i == 0 && i2 != 0) {
            AlertDialog alertDialog = secPowerNotificationWarnings.mIncompatibleChargerDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            Log.d("SecPowerUI.Notification", "dismissing incompatible charger notification");
            secPowerNotificationWarnings.cancelNotification(3);
        }
    }

    /* renamed from: -$$Nest$mcheckTipsNotification, reason: not valid java name */
    public static void m1313$$Nest$mcheckTipsNotification(PowerUI powerUI, int i) {
        int i2;
        if (powerUI.mPlugType == 0 && i > 30 && powerUI.mBatteryLevel <= 30) {
            Context context = powerUI.mContext;
            boolean z = false;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.systemui.power_tips_notification", 0);
            if (sharedPreferences != null) {
                boolean z2 = sharedPreferences.getBoolean("tipsNotiConfirmed", false);
                Slog.d("PowerUI", "checkTipsNotificaiton confirmed : " + z2);
                if (!z2) {
                    int i3 = sharedPreferences.getInt("tipsNotiRegisteredCount", 0);
                    int i4 = Settings.Secure.getInt(context.getContentResolver(), "refresh_rate_mode", 0);
                    Slog.d("PowerUI", "checkTipsNotificaiton notiCount : " + i3 + "  refreshRate : " + i4);
                    if (i3 < 3 && i4 > 0) {
                        long j = sharedPreferences.getLong("tipsNotiLastTime", 0L);
                        long currentTimeMillis = System.currentTimeMillis();
                        StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("lastNotifiedTime = ", j, "  currentTime = ");
                        m.append(currentTimeMillis);
                        Slog.d("PowerUI", m.toString());
                        if (currentTimeMillis - j > 604800000) {
                            boolean z3 = sharedPreferences.getBoolean("ignoreRUT", false);
                            Slog.d("PowerUI", "ignore_rut = " + z3);
                            if (z3) {
                                powerUI.showTipsNotification();
                                return;
                            }
                            if (Settings.Global.getInt(context.getContentResolver(), "low_power", 0) == 1) {
                                z = true;
                            }
                            if (z) {
                                i2 = -1;
                            } else {
                                long batteryRemainingUsageTime = SemBatteryUtils.getBatteryRemainingUsageTime(context, 39);
                                if (batteryRemainingUsageTime < 0) {
                                    batteryRemainingUsageTime = SemBatteryUtils.getBatteryRemainingUsageTime(context, 5);
                                }
                                i2 = (int) batteryRemainingUsageTime;
                            }
                            Slog.d("PowerUI", "remaining time : " + i2);
                            if (i2 > 0 && i2 < 780) {
                                powerUI.showTipsNotification();
                                return;
                            }
                            return;
                        }
                        Slog.e("PowerUI", "last tip notification has been registered within 1 week, so we ignore this case!!");
                        return;
                    }
                    Slog.e("PowerUI", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("Noti count = ", i3, " refresh rate settings = ", i4, " , so we do not register tip notification!!"));
                    return;
                }
                Slog.e("PowerUI", "User confirmed, so we do not register tip notification!!");
            }
        }
    }

    /* renamed from: -$$Nest$mcheckTurnOffPsmNotification, reason: not valid java name */
    public static void m1314$$Nest$mcheckTurnOffPsmNotification(PowerUI powerUI, int i) {
        int i2 = powerUI.mTurnOffPsmLevel;
        Context context = powerUI.mContext;
        if (i2 == -1) {
            final ContentResolver contentResolver = context.getContentResolver();
            powerUI.mTurnOffPsmLevel = Settings.Global.getInt(contentResolver, "turn_off_psm_trigger_level", 50);
            contentResolver.registerContentObserver(Settings.Global.getUriFor("turn_off_psm_trigger_level"), false, new ContentObserver(powerUI.mHandler) { // from class: com.android.systemui.power.PowerUI.15
                @Override // android.database.ContentObserver
                public final void onChange(boolean z) {
                    PowerUI.this.mTurnOffPsmLevel = Settings.Global.getInt(contentResolver, "turn_off_psm_trigger_level", 50);
                }
            }, -1);
        }
        int i3 = powerUI.mTurnOffPsmLevel;
        if (i < i3 && powerUI.mBatteryLevel >= i3 && Settings.Global.getInt(context.getContentResolver(), "low_power", 0) == 1) {
            Intent intent = new Intent("com.samsung.android.sm.ACTION_TURN_OFF_PSM_NOTI");
            intent.setComponent(TipsConfig.TURN_OFF_PSM_COMPONENT_NAME);
            context.sendBroadcast(intent);
        }
    }

    /* renamed from: -$$Nest$mcheckTurnOnProtectBatteryByLongTa, reason: not valid java name */
    public static void m1315$$Nest$mcheckTurnOnProtectBatteryByLongTa(PowerUI powerUI) {
        if (powerUI.mPlugType != 0 && !powerUI.mIsProtectingBatteryCutOffSettingEnabled) {
            powerUI.startScheduling();
            return;
        }
        Context context = powerUI.mContext;
        boolean z = context.getSharedPreferences("com.android.systemui.power_auto_on_protect_battery", 0).getBoolean("auto_on_protect_battery_timer_started", false);
        int i = Settings.Global.getInt(context.getContentResolver(), "auto_on_protect_battery", -1);
        Log.i("PowerUI", "checkShouldTurnOffProtectBattery : " + i + ", Scheduling start ? : " + z);
        if (!z && powerUI.mPlugType == 0 && i == 1) {
            PowerUtils.sendIntentToDc(context, "com.samsung.android.sm.action.TURN_OFF_PROTECT_BATTERY_BY_LONG_TERM_TA");
        }
        powerUI.clearScheduling();
    }

    /* renamed from: -$$Nest$mcheckTurnOnProtectBatteryByLongTermCharge, reason: not valid java name */
    public static void m1316$$Nest$mcheckTurnOnProtectBatteryByLongTermCharge(PowerUI powerUI) {
        if (powerUI.mBatteryLevel >= powerUI.mLtcHighSocThreshold && powerUI.mProtectBatteryValue != 2) {
            powerUI.startScheduling();
            return;
        }
        Context context = powerUI.mContext;
        boolean z = context.getSharedPreferences("com.android.systemui.power_auto_on_protect_battery", 0).getBoolean("auto_on_protect_battery_timer_started", false);
        Log.i("PowerUI", "checkRestoreProtectBattery pb value : " + powerUI.mProtectBatteryValue + ", Scheduling start ? : " + z);
        if (!z && powerUI.mBatteryLevel < powerUI.mLtcReleaseThreshold && powerUI.mProtectBatteryValue == 2) {
            PowerUtils.sendIntentToDc(context, "com.samsung.android.sm.action.TURN_OFF_PROTECT_BATTERY_BY_LONG_TERM_TA");
        } else if (!z && powerUI.mBatteryLevel < powerUI.mLtcHighSocThreshold && Settings.Global.getInt(context.getContentResolver(), "key_ltc_state", 0) == 1) {
            PowerUtils.sendIntentToDc(context, "com.samsung.android.sm.action.TURN_OFF_SOFT_NOTI_BY_LONG_TERM_TA");
        }
        powerUI.clearScheduling();
    }

    /* renamed from: -$$Nest$mcheckWirelessMisalign, reason: not valid java name */
    public static void m1317$$Nest$mcheckWirelessMisalign(PowerUI powerUI, int i) {
        boolean z;
        boolean z2;
        powerUI.getClass();
        if ((i & QuickStepContract.SYSUI_STATE_BACK_DISABLED) == 4194304) {
            z = true;
        } else {
            z = false;
        }
        if ((powerUI.mBatteryMiscEvent & QuickStepContract.SYSUI_STATE_BACK_DISABLED) == 4194304) {
            z2 = true;
        } else {
            z2 = false;
        }
        Log.i("PowerUI", "oldMisalign : " + z + ", curMisalign : " + z2);
        if (powerUI.mPlugType > 0) {
            if (!z && z2) {
                Log.i("PowerUI", "old not misalign but now misalign");
                if (!PowerUtils.isViewCoverClosed()) {
                    powerUI.removeChargerView();
                    powerUI.removeMisalignView();
                    powerUI.setWirelessMisalignView(0);
                    powerUI.mIsWirelessMisalignTask = true;
                    powerUI.mHandler.postDelayed(powerUI.mWirelessMisalignTimeoutTask, 30000L);
                    return;
                }
                return;
            }
            if (z && !z2) {
                Log.i("PowerUI", "old misalign but now not misalign");
                powerUI.removeChargerView();
                powerUI.removeMisalignView();
                powerUI.setWirelessMisalignView(1);
                return;
            }
            if (!z || !z2) {
                powerUI.removeMisalignView();
                return;
            }
            return;
        }
        powerUI.removeMisalignView();
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:161:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00b0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x02ff -> B:78:0x0306). Please report as a decompilation issue!!! */
    /* renamed from: -$$Nest$mplayChargerConnectionAnimation, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1318$$Nest$mplayChargerConnectionAnimation(int r12, int r13, com.android.systemui.power.PowerUI r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.power.PowerUI.m1318$$Nest$mplayChargerConnectionAnimation(int, int, com.android.systemui.power.PowerUI, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* renamed from: -$$Nest$mplayChargerConnectionSound, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1319$$Nest$mplayChargerConnectionSound(int r5, int r6, com.android.systemui.power.PowerUI r7, boolean r8) {
        /*
            r7.getClass()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "priorPlugType = "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r1 = " mPlugType = "
            r0.append(r1)
            int r1 = r7.mPlugType
            java.lang.String r2 = " priorBatteryStatus = "
            java.lang.String r3 = " mBatteryStatus = "
            androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(r0, r1, r2, r6, r3)
            int r1 = r7.mBatteryStatus
            java.lang.String r2 = "PowerUI"
            androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0.m(r0, r1, r2)
            int r0 = r7.mBatteryLevel
            int r1 = r7.mBatteryProtectionThreshold
            r3 = 1
            r4 = 0
            if (r0 < r1) goto L31
            boolean r0 = r7.mIsProtectingBatteryCutOffSettingEnabled
            if (r0 == 0) goto L31
            r0 = r3
            goto L32
        L31:
            r0 = r4
        L32:
            if (r0 == 0) goto L3a
            java.lang.String r5 = "Skip charging sound - by protect battery cutoff"
            android.util.Log.w(r2, r5)
            goto L5b
        L3a:
            boolean r5 = r7.skipAnimByPlugStatus(r5, r6, r8)
            if (r5 == 0) goto L46
            java.lang.String r5 = "Skip charging sound - by plug status"
            android.util.Log.w(r2, r5)
            goto L5b
        L46:
            boolean r5 = r7.skipAnimByMotionDetected()
            if (r5 == 0) goto L52
            java.lang.String r5 = "Skip charging sound - by motion detected"
            android.util.Log.w(r2, r5)
            goto L5b
        L52:
            boolean r5 = r7.mIsAfterAdaptiveProtection
            if (r5 == 0) goto L5d
            java.lang.String r5 = "Skip charging sound - After adaptive protection"
            android.util.Log.w(r2, r5)
        L5b:
            r5 = r4
            goto L5e
        L5d:
            r5 = r3
        L5e:
            if (r5 == 0) goto L79
            boolean r5 = r7.mIsRunningStopPowerSoundTask
            android.os.Handler r6 = r7.mHandler
            com.android.systemui.power.PowerUI$12 r8 = r7.mStopPowerSoundTask
            if (r5 == 0) goto L6d
            r6.removeCallbacks(r8)
            r7.mIsRunningStopPowerSoundTask = r4
        L6d:
            com.android.systemui.power.SecPowerNotificationWarnings r5 = r7.mSecPowerNotificationWarnings
            r5.playPowerSound(r3)
            r0 = 3000(0xbb8, double:1.482E-320)
            r6.postDelayed(r8, r0)
            r7.mIsRunningStopPowerSoundTask = r3
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.power.PowerUI.m1319$$Nest$mplayChargerConnectionSound(int, int, com.android.systemui.power.PowerUI, boolean):void");
    }

    /* renamed from: -$$Nest$msendLowBatteryDumpIfNeeded, reason: not valid java name */
    public static void m1320$$Nest$msendLowBatteryDumpIfNeeded(PowerUI powerUI, int i, int i2, int i3) {
        Context context = powerUI.mContext;
        if (1 == Settings.System.getInt(context.getContentResolver(), "LOW_BATTERY_DUMP", 0)) {
            int i4 = powerUI.mBatteryLevel;
            if ((((i - i4 >= 10 || i4 - i >= 10) && -1 != i) || (i3 < i2 && -2 == i3)) && powerUI.mBootCompleted) {
                Log.d("PowerUI", "Low battery dump");
                Intent intent = new Intent("com.samsung.systemui.power.action.LOW_BATTERY_DUMP");
                intent.addFlags(16777216);
                context.sendBroadcast(intent);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: -$$Nest$mshowChargingNotice, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1321$$Nest$mshowChargingNotice(com.android.systemui.power.PowerUI r16, int r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.power.PowerUI.m1321$$Nest$mshowChargingNotice(com.android.systemui.power.PowerUI, int, int, int):void");
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.systemui.power.PowerUI$13] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.android.systemui.power.PowerUI$14] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.power.PowerUI$7] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.power.PowerUI$8] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.power.PowerUI$9] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.systemui.power.PowerUI$10] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.systemui.power.PowerUI$11] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.systemui.power.PowerUI$12] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.power.PowerUI$1] */
    public PowerUI(Context context, BroadcastDispatcher broadcastDispatcher, CommandQueue commandQueue, Lazy lazy, WarningsUI warningsUI, EnhancedEstimates enhancedEstimates, WakefulnessLifecycle wakefulnessLifecycle, PowerManager powerManager, UserTracker userTracker, Lazy lazy2) {
        this.mContext = context;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mCommandQueue = commandQueue;
        this.mCentralSurfacesOptionalLazy = lazy;
        this.mWarnings = warningsUI;
        this.mEnhancedEstimates = enhancedEstimates;
        this.mPowerManager = powerManager;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mUserTracker = userTracker;
        this.mSecPowerNotificationWarnings = new SecPowerNotificationWarnings(context);
        this.mPluginAODManagerLazy = lazy2;
    }

    public static WindowManager.LayoutParams getLayoutParam(String str) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2, UcmAgentService.ERROR_APDU_CREATION, -3);
        if (LsRune.LOCKUI_AOD_PACKAGE_AVAILABLE) {
            layoutParams.semAddExtensionFlags(262144);
        }
        layoutParams.layoutInDisplayCutoutMode = 1;
        layoutParams.setFitInsetsTypes(0);
        layoutParams.setTrustedOverlay();
        layoutParams.setTitle(str);
        return layoutParams;
    }

    public final void checkAdaptiveProtectionNotification(String str, String str2) {
        StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("checkAdaptiveProtectionNotification : ", str, ", lev : ");
        m.append(this.mBatteryLevel);
        Slog.i("PowerUI", m.toString());
        boolean equalsIgnoreCase = "on".equalsIgnoreCase(str);
        SecPowerNotificationWarnings secPowerNotificationWarnings = this.mSecPowerNotificationWarnings;
        Context context = this.mContext;
        if (equalsIgnoreCase && this.mProtectBatteryValue == 4) {
            if (this.mBatteryLevel != 100) {
                Slog.i("PowerUI", "show AdaptiveProtectionNotification");
                secPowerNotificationWarnings.showAdaptiveProtectionNotification(str2);
            }
            Settings.Global.putInt(context.getContentResolver(), "key_sleep_charging", 1);
            return;
        }
        if ("update".equalsIgnoreCase(str) && this.mProtectBatteryValue == 4) {
            if (this.mBatteryLevel != 100) {
                Slog.i("PowerUI", "update AdaptiveProtectionNotification");
                secPowerNotificationWarnings.showAdaptiveProtectionNotification(str2);
            }
            Settings.Global.putInt(context.getContentResolver(), "key_sleep_charging", 2);
            return;
        }
        if ("off".equalsIgnoreCase(str)) {
            Slog.i("PowerUI", "off AdaptiveProtectionNotification");
            dismissAdaptiveProtectionNotification();
            this.mIsAfterAdaptiveProtection = true;
        } else {
            Slog.i("PowerUI", "dismiss AdaptiveProtectionNotification");
            dismissAdaptiveProtectionNotification();
        }
    }

    public final void checkBatteryProtectionNotification() {
        int i;
        StringBuilder sb = new StringBuilder("checkBatteryProtectionNotification : ");
        sb.append(this.mBatteryStatus);
        sb.append(", pb value : ");
        sb.append(this.mProtectBatteryValue);
        sb.append(", plugType : ");
        sb.append(this.mPlugType);
        sb.append(", level : ");
        TooltipPopup$$ExternalSyntheticOutline0.m(sb, this.mBatteryLevel, "PowerUI");
        Context context = this.mContext;
        boolean isSleepChargingOn = PowerUtils.isSleepChargingOn(context);
        SecPowerNotificationWarnings secPowerNotificationWarnings = this.mSecPowerNotificationWarnings;
        if (!isSleepChargingOn && (i = this.mProtectBatteryValue) != 0 && this.mPlugType != 0 && this.mBatteryStatus != 2 && this.mBatteryHealth == 2 && this.mBatteryOverheatLevel == 0 && (this.mBatteryLevel != 100 || (i != 3 && i != 4))) {
            if (!PowerUtils.isSleepChargingOn(context) && this.mBatteryStatus >= 4 && this.mBatteryHealth == 2 && this.mBatteryOverheatLevel == 0) {
                int i2 = this.mProtectBatteryValue;
                if (i2 != 2 && i2 != 1) {
                    if (this.mBatteryLevel != 100) {
                        if (i2 != 3 && i2 != 4) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                secPowerNotificationWarnings.showNotification(9);
                return;
            }
            return;
        }
        secPowerNotificationWarnings.cancelNotification(9);
    }

    public final void checkOverheatShutdownHappened() {
        NotificationListener$$ExternalSyntheticOutline0.m(new StringBuilder("checkOverheatShutdownHappened, boot completed : "), this.mBootCompleted, "PowerUI");
        Context context = this.mContext;
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.systemui.power_overheat_shutdown_happened", 0);
        if (sharedPreferences != null) {
            if (sharedPreferences.getBoolean("OverheatShutdownHappened", false)) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean("OverheatShutdownHappened", false);
                edit.commit();
                context.sendBroadcast(new Intent("com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"));
                SecPowerNotificationWarnings secPowerNotificationWarnings = this.mSecPowerNotificationWarnings;
                if (1 == Settings.System.getInt(secPowerNotificationWarnings.mContext.getContentResolver(), "SHOULD_SHUT_DOWN", 0)) {
                    z = true;
                }
                if (z) {
                    Log.d("SecPowerUI.Notification", "don't show Overheat shutdown notice while Shutdown is ON");
                    return;
                }
                if (secPowerNotificationWarnings.mWillOverheatShutdownWarningDialog != null) {
                    Log.d("SecPowerUI.Notification", "don't show Overheat shutdown notice while Over heat shutdown warning");
                    return;
                }
                Log.d("SecPowerUI.Notification", "showOverheatShutdownHappenedNotice()");
                Log.d("SecPowerUI.Notification", "showOverheatShutdownHappenedPopUp()");
                if (secPowerNotificationWarnings.mOverheatShutdownHappenedDialog == null) {
                    AlertDialog popupDialog = secPowerNotificationWarnings.getPopupDialog(9);
                    secPowerNotificationWarnings.mOverheatShutdownHappenedDialog = popupDialog;
                    if (popupDialog != null) {
                        popupDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.10
                            public AnonymousClass10() {
                            }

                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                SecPowerNotificationWarnings.this.mOverheatShutdownHappenedDialog = null;
                            }
                        });
                        secPowerNotificationWarnings.mOverheatShutdownHappenedDialog.show();
                        secPowerNotificationWarnings.mOverheatShutdownHappenedDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.power.SecPowerNotificationWarnings.11
                            public AnonymousClass11() {
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                SecPowerNotificationWarnings secPowerNotificationWarnings2 = SecPowerNotificationWarnings.this;
                                secPowerNotificationWarnings2.getClass();
                                Log.d("SecPowerUI.Notification", "dismissOverheatShutdownHappenedPopUp()");
                                AlertDialog alertDialog = secPowerNotificationWarnings2.mOverheatShutdownHappenedDialog;
                                if (alertDialog != null) {
                                    alertDialog.dismiss();
                                }
                            }
                        });
                        secPowerNotificationWarnings.turnOnScreen();
                        return;
                    }
                    return;
                }
                return;
            }
            Log.d("PowerUI", "Not an overheat shutdown case");
        }
    }

    public final void clearScheduling() {
        Log.i("PowerUI", "Clear time");
        boolean z = PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE;
        Context context = this.mContext;
        if (z) {
            Settings.Global.putLong(context.getContentResolver(), "ltc_highsoc_exceed_time", 0L);
        } else if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA) {
            Settings.Global.putString(context.getContentResolver(), "charger_connected_time", "");
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.systemui.power_auto_on_protect_battery", 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putBoolean("auto_on_protect_battery_timer_started", false);
            edit.commit();
        }
    }

    public final void dismissAdaptiveProtectionNotification() {
        Log.i("PowerUI", "dismissAdaptiveProtectionNotification");
        SecPowerNotificationWarnings secPowerNotificationWarnings = this.mSecPowerNotificationWarnings;
        secPowerNotificationWarnings.cancelNotification(10);
        secPowerNotificationWarnings.mOptimizationChargingFinishTime = "";
        Settings.Global.putInt(this.mContext.getContentResolver(), "key_sleep_charging", 0);
        this.mChargingStartTime = "";
        this.mSleepChargingEvent = "off";
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void dismissInattentiveSleepWarning(boolean z) {
        InattentiveSleepWarningView inattentiveSleepWarningView = this.mOverlayView;
        if (inattentiveSleepWarningView != null && inattentiveSleepWarningView.getParent() != null) {
            inattentiveSleepWarningView.mDismissing = true;
            if (z) {
                final Animator animator = inattentiveSleepWarningView.mFadeOutAnimator;
                Objects.requireNonNull(animator);
                inattentiveSleepWarningView.postOnAnimation(new Runnable() { // from class: com.android.systemui.power.InattentiveSleepWarningView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        animator.start();
                    }
                });
            } else {
                inattentiveSleepWarningView.setVisibility(4);
                inattentiveSleepWarningView.mWindowManager.removeView(inattentiveSleepWarningView);
            }
        }
    }

    public synchronized void doSkinThermalEventListenerRegistration() {
        boolean z;
        boolean z2;
        boolean z3 = this.mEnableSkinTemperatureWarning;
        boolean z4 = true;
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "show_temperature_warning", this.mContext.getResources().getInteger(R.integer.config_showTemperatureWarning)) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mEnableSkinTemperatureWarning = z;
        if (z != z3) {
            try {
                if (this.mSkinThermalEventListener == null) {
                    this.mSkinThermalEventListener = new SkinThermalEventListener();
                }
                if (this.mThermalService == null) {
                    this.mThermalService = IThermalService.Stub.asInterface(ServiceManager.getService("thermalservice"));
                }
                if (this.mEnableSkinTemperatureWarning) {
                    z2 = this.mThermalService.registerThermalEventListenerWithType(this.mSkinThermalEventListener, 3);
                } else {
                    z2 = this.mThermalService.unregisterThermalEventListener(this.mSkinThermalEventListener);
                }
            } catch (RemoteException e) {
                Slog.e("PowerUI", "Exception while (un)registering skin thermal event listener.", e);
                z2 = false;
            }
            if (!z2) {
                if (this.mEnableSkinTemperatureWarning) {
                    z4 = false;
                }
                this.mEnableSkinTemperatureWarning = z4;
                Slog.e("PowerUI", "Failed to register or unregister skin thermal event listener.");
            }
        }
    }

    public synchronized void doUsbThermalEventListenerRegistration() {
        boolean z;
        boolean z2;
        boolean z3 = this.mEnableUsbTemperatureAlarm;
        boolean z4 = true;
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "show_usb_temperature_alarm", this.mContext.getResources().getInteger(R.integer.config_showUsbPortAlarm)) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mEnableUsbTemperatureAlarm = z;
        if (z != z3) {
            try {
                if (this.mUsbThermalEventListener == null) {
                    this.mUsbThermalEventListener = new UsbThermalEventListener();
                }
                if (this.mThermalService == null) {
                    this.mThermalService = IThermalService.Stub.asInterface(ServiceManager.getService("thermalservice"));
                }
                if (this.mEnableUsbTemperatureAlarm) {
                    z2 = this.mThermalService.registerThermalEventListenerWithType(this.mUsbThermalEventListener, 4);
                } else {
                    z2 = this.mThermalService.unregisterThermalEventListener(this.mUsbThermalEventListener);
                }
            } catch (RemoteException e) {
                Slog.e("PowerUI", "Exception while (un)registering usb thermal event listener.", e);
                z2 = false;
            }
            if (!z2) {
                if (this.mEnableUsbTemperatureAlarm) {
                    z4 = false;
                }
                this.mEnableUsbTemperatureAlarm = z4;
                Slog.e("PowerUI", "Failed to register or unregister usb thermal event listener.");
            }
        }
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        String str;
        String str2;
        String str3;
        printWriter.print("mLowBatteryAlertCloseLevel=");
        printWriter.println(this.mLowBatteryAlertCloseLevel);
        printWriter.print("mLowBatteryReminderLevels=");
        printWriter.println(Arrays.toString(this.mLowBatteryReminderLevels));
        printWriter.print("mBatteryLevel=");
        printWriter.println(Integer.toString(this.mBatteryLevel));
        printWriter.print("mBatteryStatus=");
        printWriter.println(Integer.toString(this.mBatteryStatus));
        printWriter.print("mPlugType=");
        printWriter.println(Integer.toString(this.mPlugType));
        printWriter.print("mInvalidCharger=");
        printWriter.println(Integer.toString(this.mInvalidCharger));
        printWriter.print("mScreenOffTime=");
        printWriter.print(this.mScreenOffTime);
        if (this.mScreenOffTime >= 0) {
            printWriter.print(" (");
            printWriter.print(SystemClock.elapsedRealtime() - this.mScreenOffTime);
            printWriter.print(" ago)");
        }
        printWriter.println();
        printWriter.print("soundTimeout=");
        printWriter.println(Settings.Global.getInt(this.mContext.getContentResolver(), "low_battery_sound_timeout", 0));
        printWriter.print("bucket: ");
        printWriter.println(Integer.toString(findBatteryLevelBucket(this.mBatteryLevel)));
        printWriter.print("mEnableSkinTemperatureWarning=");
        printWriter.println(this.mEnableSkinTemperatureWarning);
        printWriter.print("mEnableUsbTemperatureAlarm=");
        printWriter.println(this.mEnableUsbTemperatureAlarm);
        final SecPowerNotificationWarnings secPowerNotificationWarnings = this.mSecPowerNotificationWarnings;
        secPowerNotificationWarnings.getClass();
        if (!PowerUiRune.CHN_SMART_MANAGER) {
            HandlerWrapper handlerWrapper = new HandlerWrapper();
            secPowerNotificationWarnings.mHandlerWrapper = handlerWrapper;
            handlerWrapper.mWorker.post(new Runnable() { // from class: com.android.systemui.power.SecPowerNotificationWarnings$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SecPowerNotificationWarnings secPowerNotificationWarnings2 = SecPowerNotificationWarnings.this;
                    secPowerNotificationWarnings2.getClass();
                    Log.i("SecPowerUI.Notification", "dumpsAdditionalBatteryInfo call DC service in worker thread");
                    Intent intent = new Intent();
                    intent.setPackage(PowerUiConstants.DC_PACKAGE_NAME);
                    intent.setAction("com.samsung.android.sm.DUMP");
                    Context context = secPowerNotificationWarnings2.mContext;
                    try {
                        if (context.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("dump", (Integer) 1);
                            Log.i("SecPowerUI.Notification", "update dc dump provider");
                            context.getContentResolver().update(PowerUiConstants.SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI, contentValues, null, null);
                        } else {
                            Log.i("SecPowerUI.Notification", "start dc dump service");
                            context.startService(intent);
                            Log.w("SecPowerUI.Notification", "quitBgThread");
                            secPowerNotificationWarnings2.mHandlerWrapper.mWorkerThread.quitSafely();
                            secPowerNotificationWarnings2.mHandlerWrapper = null;
                        }
                    } catch (Error | Exception e) {
                        Log.w("SecPowerUI.Notification", "err", e);
                    }
                }
            });
        }
        PowerNotificationWarnings powerNotificationWarnings = (PowerNotificationWarnings) this.mWarnings;
        powerNotificationWarnings.getClass();
        printWriter.print("mWarning=");
        printWriter.println(false);
        printWriter.print("mPlaySound=");
        printWriter.println(false);
        printWriter.print("mInvalidCharger=");
        printWriter.println(powerNotificationWarnings.mInvalidCharger);
        printWriter.print("mShowing=");
        printWriter.println(PowerNotificationWarnings.SHOWING_STRINGS[powerNotificationWarnings.mShowing]);
        printWriter.print("mSaverConfirmation=");
        String str4 = "not null";
        if (powerNotificationWarnings.mSaverConfirmation != null) {
            str = "not null";
        } else {
            str = null;
        }
        printWriter.println(str);
        printWriter.print("mSaverEnabledConfirmation=");
        printWriter.print("mHighTempWarning=");
        printWriter.println(powerNotificationWarnings.mHighTempWarning);
        printWriter.print("mHighTempDialog=");
        if (powerNotificationWarnings.mHighTempDialog != null) {
            str2 = "not null";
        } else {
            str2 = null;
        }
        printWriter.println(str2);
        printWriter.print("mThermalShutdownDialog=");
        if (powerNotificationWarnings.mThermalShutdownDialog != null) {
            str3 = "not null";
        } else {
            str3 = null;
        }
        printWriter.println(str3);
        printWriter.print("mUsbHighTempDialog=");
        if (powerNotificationWarnings.mUsbHighTempDialog == null) {
            str4 = null;
        }
        printWriter.println(str4);
    }

    public final int findBatteryLevelBucket(int i) {
        if (i >= this.mLowBatteryAlertCloseLevel) {
            return 1;
        }
        int[] iArr = this.mLowBatteryReminderLevels;
        if (i > iArr[0]) {
            return 0;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (i <= iArr[length]) {
                return (-1) - length;
            }
        }
        throw new RuntimeException("not possible!");
    }

    public void maybeShowHybridWarning(BatteryStateSnapshot batteryStateSnapshot, BatteryStateSnapshot batteryStateSnapshot2) {
        int i = batteryStateSnapshot.batteryLevel;
        boolean z = false;
        boolean z2 = DEBUG;
        if (i >= 30) {
            this.mLowWarningShownThisChargeCycle = false;
            this.mSevereWarningShownThisChargeCycle = false;
            if (z2) {
                Slog.d("PowerUI", "Charge cycle reset! Can show warnings again");
            }
        }
        if (batteryStateSnapshot.bucket != batteryStateSnapshot2.bucket || batteryStateSnapshot2.plugged) {
            z = true;
        }
        boolean shouldShowHybridWarning = shouldShowHybridWarning(batteryStateSnapshot);
        SecPowerNotificationWarnings secPowerNotificationWarnings = this.mSecPowerNotificationWarnings;
        if (shouldShowHybridWarning) {
            secPowerNotificationWarnings.showLowBatteryWarning(z);
            if (batteryStateSnapshot.batteryLevel <= batteryStateSnapshot.severeLevelThreshold) {
                this.mSevereWarningShownThisChargeCycle = true;
                this.mLowWarningShownThisChargeCycle = true;
                if (z2) {
                    Slog.d("PowerUI", "Severe warning marked as shown this cycle");
                    return;
                }
                return;
            }
            Slog.d("PowerUI", "Low warning marked as shown this cycle");
            this.mLowWarningShownThisChargeCycle = true;
            return;
        }
        if (shouldDismissHybridWarning(batteryStateSnapshot)) {
            if (z2) {
                Slog.d("PowerUI", "Dismissing warning");
            }
            secPowerNotificationWarnings.dismissLowBatteryWarning();
        } else {
            if (z2) {
                Slog.d("PowerUI", "Updating warning");
            }
            secPowerNotificationWarnings.dismissLowBatteryWarning();
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void onConfigurationChanged(Configuration configuration) {
        if ((this.mLastConfiguration.updateFrom(configuration) & 3) != 0) {
            this.mHandler.post(new Runnable() { // from class: com.android.systemui.power.PowerUI$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PowerUI powerUI = PowerUI.this;
                    powerUI.doSkinThermalEventListenerRegistration();
                    powerUI.doUsbThermalEventListenerRegistration();
                }
            });
        }
    }

    public Estimate refreshEstimateIfNeeded() {
        BatteryStateSnapshot batteryStateSnapshot = this.mLastBatteryStateSnapshot;
        if (batteryStateSnapshot != null && batteryStateSnapshot.timeRemainingMillis != -1 && this.mBatteryLevel == batteryStateSnapshot.batteryLevel) {
            BatteryStateSnapshot batteryStateSnapshot2 = this.mLastBatteryStateSnapshot;
            return new Estimate(batteryStateSnapshot2.timeRemainingMillis, batteryStateSnapshot2.isBasedOnUsage, batteryStateSnapshot2.averageTimeToDischargeMillis);
        }
        ((EnhancedEstimatesImpl) this.mEnhancedEstimates).getClass();
        Estimate estimate = new Estimate(-1L, false, -1L);
        if (DEBUG) {
            Slog.d("PowerUI", "updated estimate: " + estimate.estimateMillis);
        }
        return estimate;
    }

    public final void removeChargerView() {
        WindowManager windowManager;
        if (this.mIsChargerAnimationPlaying) {
            if (!this.mPowerManager.isInteractive()) {
                Log.i("PowerUI", "onChargerAnimationEnd : Lcd OFF -> so call chargingAnimStarted(false)");
                ((PluginAODManager) this.mPluginAODManagerLazy.get()).chargingAnimStarted(false);
            }
            ChargerAnimationView chargerAnimationView = this.mChargerAnimationView;
            if (chargerAnimationView != null && (windowManager = this.mChargerAnimationWindowManager) != null) {
                windowManager.removeView(chargerAnimationView);
                this.mChargerAnimationView = null;
            }
            this.mChargerAnimationWindowManager = null;
            this.mIsChargerAnimationPlaying = false;
        }
    }

    public final void removeMisalignView() {
        WindowManager windowManager;
        PowerManager.WakeLock wakeLock = this.mWirelessMisalignWakeLock;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.mWirelessMisalignWakeLock.release();
            this.mWirelessMisalignWakeLock = null;
        }
        WirelessMisalignView wirelessMisalignView = this.mWirelessMisalignView;
        if (wirelessMisalignView != null && (windowManager = this.mWirelessMisalignWindowManager) != null) {
            windowManager.removeView(wirelessMisalignView);
            this.mWirelessMisalignView = null;
        }
        this.mWirelessMisalignWindowManager = null;
        this.mIsWirelessMisalignTask = false;
        this.mHandler.removeCallbacks(this.mWirelessMisalignTimeoutTask);
    }

    public final void setWirelessMisalignView(int i) {
        boolean z;
        if (this.mWirelessMisalignWindowLp == null) {
            WindowManager.LayoutParams layoutParam = getLayoutParam("PowerUI.WirelessMisalignViewLp");
            this.mWirelessMisalignWindowLp = layoutParam;
            layoutParam.type = 2009;
        }
        boolean isFolded = SemWindowManager.getInstance().isFolded();
        WindowManager windowManager = this.mWirelessMisalignWindowManager;
        Context context = this.mContext;
        if (windowManager == null) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("folder state : ", isFolded, "PowerUI");
            boolean z2 = BasicRune.BASIC_FOLDABLE_TYPE_FLIP;
            if (z2 && isFolded) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Context subDisplayContext = PowerUtils.getSubDisplayContext(context);
                if (PowerUiRune.COVER_DISPLAY_LARGE_SCREEN) {
                    this.mWirelessMisalignWindowLp.layoutInDisplayCutoutMode = 3;
                }
                this.mWirelessMisalignWindowManager = (WindowManager) subDisplayContext.getSystemService("window");
                this.mWirelessMisalignView = (WirelessMisalignView) View.inflate(subDisplayContext, R.layout.battery_misalign_subdisplay_layout, null);
            } else {
                this.mWirelessMisalignWindowManager = (WindowManager) context.getSystemService("window");
                if (isFolded && BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
                    this.mWirelessMisalignView = (WirelessMisalignView) View.inflate(context, R.layout.battery_misalign_normal_layout, null);
                } else if (BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
                    this.mWirelessMisalignView = (WirelessMisalignView) View.inflate(context, R.layout.battery_misalign_fold_layout, null);
                } else if (z2) {
                    this.mWirelessMisalignView = (WirelessMisalignView) View.inflate(context, R.layout.battery_misalign_flip_layout, null);
                } else {
                    this.mWirelessMisalignView = (WirelessMisalignView) View.inflate(context, R.layout.battery_misalign_normal_layout, null);
                }
            }
        }
        this.mWirelessMisalignWindowManager.addView(this.mWirelessMisalignView, this.mWirelessMisalignWindowLp);
        WirelessMisalignView wirelessMisalignView = this.mWirelessMisalignView;
        wirelessMisalignView.mListener = this;
        if (i != 0) {
            if (i == 1) {
                wirelessMisalignView.mTextContainerLayout.setVisibility(8);
                wirelessMisalignView.mButton.setVisibility(8);
                wirelessMisalignView.mCenterImageView.setImageResource(R.drawable.overlay_center_alignment_ok);
            }
        } else {
            wirelessMisalignView.mTextContainerLayout.setVisibility(0);
            wirelessMisalignView.mButton.setVisibility(0);
            wirelessMisalignView.mCenterImageView.setImageResource(R.drawable.overlay_center_alignment);
        }
        PowerManager powerManager = this.mPowerManager;
        if (powerManager != null) {
            Log.i("PowerUI", "turn on screen - misalign view");
            powerManager.wakeUp(SystemClock.uptimeMillis(), context.getOpPackageName());
            if (this.mWirelessMisalignWakeLock == null) {
                this.mWirelessMisalignWakeLock = powerManager.newWakeLock(268435462, "PowerUI");
            }
            this.mWirelessMisalignWakeLock.acquire(30000L);
        }
        this.mWirelessMisalignView.setWirelessMisalignViewVisibility(0);
    }

    public boolean shouldDismissHybridWarning(BatteryStateSnapshot batteryStateSnapshot) {
        if (!batteryStateSnapshot.plugged && batteryStateSnapshot.batteryLevel <= batteryStateSnapshot.lowLevelThreshold) {
            return false;
        }
        return true;
    }

    public boolean shouldDismissLowBatteryWarning(BatteryStateSnapshot batteryStateSnapshot, BatteryStateSnapshot batteryStateSnapshot2) {
        if (!batteryStateSnapshot.isPowerSaver && !batteryStateSnapshot.plugged) {
            int i = batteryStateSnapshot2.bucket;
            int i2 = batteryStateSnapshot.bucket;
            if (i2 <= i || i2 <= 0) {
                return false;
            }
        }
        return true;
    }

    public boolean shouldShowHybridWarning(BatteryStateSnapshot batteryStateSnapshot) {
        boolean z;
        boolean z2;
        boolean z3 = batteryStateSnapshot.plugged;
        boolean z4 = false;
        boolean z5 = true;
        int i = batteryStateSnapshot.batteryStatus;
        if (!z3 && i != 1) {
            boolean z6 = this.mLowWarningShownThisChargeCycle;
            int i2 = batteryStateSnapshot.batteryLevel;
            if (!z6 && !batteryStateSnapshot.isPowerSaver && i2 <= batteryStateSnapshot.lowLevelThreshold) {
                z = true;
            } else {
                z = false;
            }
            if (!this.mSevereWarningShownThisChargeCycle && i2 <= batteryStateSnapshot.severeLevelThreshold) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z || z2) {
                z4 = true;
            }
            if (DEBUG) {
                StringBuilder m = RowView$$ExternalSyntheticOutline0.m("Enhanced trigger is: ", z4, "\nwith battery snapshot: mLowWarningShownThisChargeCycle: ");
                m.append(this.mLowWarningShownThisChargeCycle);
                m.append(" mSevereWarningShownThisChargeCycle: ");
                m.append(this.mSevereWarningShownThisChargeCycle);
                m.append("\n");
                m.append(batteryStateSnapshot.toString());
                Slog.d("PowerUI", m.toString());
            }
            return z4;
        }
        StringBuilder sb = new StringBuilder("can't show warning due to - plugged: ");
        sb.append(batteryStateSnapshot.plugged);
        sb.append(" status unknown: ");
        if (i != 1) {
            z5 = false;
        }
        sb.append(z5);
        Slog.d("PowerUI", sb.toString());
        return false;
    }

    public boolean shouldShowLowBatteryWarning(BatteryStateSnapshot batteryStateSnapshot, BatteryStateSnapshot batteryStateSnapshot2) {
        if (!batteryStateSnapshot.plugged && !batteryStateSnapshot.isPowerSaver) {
            int i = batteryStateSnapshot2.bucket;
            int i2 = batteryStateSnapshot.bucket;
            if ((i2 < i || batteryStateSnapshot2.plugged) && i2 < 0 && batteryStateSnapshot.batteryStatus != 1) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showInattentiveSleepWarning() {
        if (this.mOverlayView == null) {
            this.mOverlayView = new InattentiveSleepWarningView(this.mContext);
        }
        InattentiveSleepWarningView inattentiveSleepWarningView = this.mOverlayView;
        if (inattentiveSleepWarningView.getParent() != null) {
            if (inattentiveSleepWarningView.mFadeOutAnimator.isStarted()) {
                inattentiveSleepWarningView.mFadeOutAnimator.cancel();
                return;
            }
            return;
        }
        inattentiveSleepWarningView.setAlpha(1.0f);
        inattentiveSleepWarningView.setVisibility(0);
        WindowManager windowManager = inattentiveSleepWarningView.mWindowManager;
        IBinder iBinder = inattentiveSleepWarningView.mWindowToken;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2006, 256, -3);
        layoutParams.privateFlags |= 16;
        layoutParams.setTitle("InattentiveSleepWarning");
        layoutParams.token = iBinder;
        windowManager.addView(inattentiveSleepWarningView, layoutParams);
        inattentiveSleepWarningView.announceForAccessibility(inattentiveSleepWarningView.getContext().getString(R.string.inattentive_sleep_warning_message));
    }

    public final void showTipsNotification() {
        Intent intent = new Intent();
        Intent intent2 = new Intent();
        intent2.setClassName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.Settings$HighRefreshRatesSettingsActivity");
        intent2.setFlags(268468224);
        Intent intent3 = new Intent("com.samsung.android.sm.TIPS_DELETED");
        intent3.setClassName("com.android.systemui", "com.android.systemui.power.TipsNotificationService");
        intent.setClassName("com.samsung.android.app.tips", "com.samsung.android.app.tips.TipsIntentService");
        intent.putExtra("tips_extras", 9);
        intent.putExtra("tips_id", String.valueOf(120999));
        Context context = this.mContext;
        intent.putExtra("tips_app_name", context.getPackageName());
        intent.putExtra("tips_title", context.getString(R.string.motion_smoothness_tips_noti_title));
        intent.putExtra("tips_text", context.getString(R.string.motion_smoothness_tips_noti_content));
        intent.putExtra("tips_noti_category", "CATEGORY_RECOMMENDATION");
        intent.putExtra("tips_action", intent2);
        intent.putExtra("tips_delete_action", intent3);
        intent.putExtra("tips_delete_action_type", 1);
        intent.putExtra("tips_condition", 1);
        intent.putExtra("tips_noti_skip_add_action", 1);
        Slog.d("PowerUI", "showTipsNotification - ALL condition is OK, so show tips notification !!");
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.systemui.power_tips_notification", 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putLong("tipsNotiLastTime", System.currentTimeMillis());
            edit.commit();
        }
        context.startForegroundService(intent);
    }

    public final boolean skipAnimByMotionDetected() {
        if (!this.mIsMotionDetectionSupported || this.mIsDeviceMoving || 4 != this.mPlugType) {
            return false;
        }
        Log.w("PowerUI", "Charger connected but device had no move detection");
        if (!this.mPowerManager.isInteractive()) {
            Log.w("PowerUI", "Charger connected but device had no move detection and screen off => trigger AOD");
            Lazy lazy = this.mPluginAODManagerLazy;
            ((PluginAODManager) lazy.get()).chargingAnimStarted(true);
            ((PluginAODManager) lazy.get()).chargingAnimStarted(false);
        }
        return true;
    }

    public final boolean skipAnimByPlugStatus(int i, int i2, boolean z) {
        int i3;
        int i4;
        if (i != -1 && (i3 = this.mPlugType) != 0 && 2 == (i4 = this.mBatteryStatus) && this.mFullyConnected && ((i2 != 5 && i2 != i4) || i != i3 || !z)) {
            if (this.mBatteryOnline == 99) {
                Log.w("PowerUI", "AFC retry case");
                return true;
            }
            if ((i3 == 1 && i == 2) || (i3 == 2 && i == 1)) {
                Log.w("PowerUI", "Only cable charger type changed");
                return true;
            }
            return false;
        }
        Log.w("PowerUI", "Plug reason");
        return true;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        long elapsedRealtime;
        int i;
        Intent registerReceiver;
        PowerManager powerManager = this.mPowerManager;
        if (powerManager.isScreenOn()) {
            elapsedRealtime = -1;
        } else {
            elapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.mScreenOffTime = elapsedRealtime;
        Context context = this.mContext;
        this.mLastConfiguration.setTo(context.getResources().getConfiguration());
        Handler handler = this.mHandler;
        ContentObserver contentObserver = new ContentObserver(handler) { // from class: com.android.systemui.power.PowerUI.3
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                PowerUI.this.updateBatteryWarningLevels();
            }
        };
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = false;
        contentResolver.registerContentObserver(Settings.Global.getUriFor("low_power_trigger_level"), false, contentObserver, -1);
        updateBatteryWarningLevels();
        Receiver receiver = this.mReceiver;
        receiver.getClass();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        intentFilter.addAction("com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT");
        intentFilter.addAction("com.samsung.systemui.power.action.WATER_ALERT_SOUND_TEST");
        intentFilter.addAction("com.samsung.intent.action.KSO_SHOW_POPUP");
        intentFilter.addAction("com.samsung.intent.action.KSO_CLOSE_POPUP");
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.samsung.CHECK_COOLDOWN_LEVEL");
        intentFilter2.addAction("com.sec.android.intent.action.SAFEMODE_ENABLE");
        PowerUI powerUI = PowerUI.this;
        powerUI.mContext.registerReceiver(receiver, intentFilter2, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION", powerUI.mHandler, 2);
        if (PowerUiRune.TIPS_NOTIFICATION) {
            intentFilter.addAction("com.samsung.android.sm.IGNORE_RUT_TIPS_NOTI");
            intentFilter.addAction("com.samsung.android.sm.CLEAR_TIPS_NOTI");
            intentFilter.addAction("android.intent.action.tips.noti.confirmed");
        }
        if (PowerUiRune.INIT_LTC_TIME_CHANGED) {
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_SET");
        }
        if (PowerUiRune.ADAPTIVE_PROTECTION_NOTIFICATION) {
            intentFilter.addAction("com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING");
        }
        PowerUI powerUI2 = PowerUI.this;
        powerUI2.mBroadcastDispatcher.registerReceiverWithHandler(receiver, intentFilter, powerUI2.mHandler);
        if (!receiver.mHasReceivedBattery && (registerReceiver = PowerUI.this.mContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 2)) != null) {
            receiver.onReceive(PowerUI.this.mContext, registerReceiver);
        }
        ((UserTrackerImpl) this.mUserTracker).addCallback(this.mUserChangedCallback, context.getMainExecutor());
        this.mWakefulnessLifecycle.addObserver(this.mWakefulnessObserver);
        int i2 = context.getSharedPreferences("powerui_prefs", 0).getInt("boot_count", -1);
        try {
            i = Settings.Global.getInt(context.getContentResolver(), "boot_count");
        } catch (Settings.SettingNotFoundException unused) {
            Slog.e("PowerUI", "Failed to read system boot count from Settings.Global.BOOT_COUNT");
            i = -1;
        }
        if (i > i2) {
            context.getSharedPreferences("powerui_prefs", 0).edit().putInt("boot_count", i).apply();
            if (powerManager.getLastShutdownReason() == 4) {
                PowerNotificationWarnings powerNotificationWarnings = (PowerNotificationWarnings) this.mWarnings;
                Context context2 = powerNotificationWarnings.mContext;
                String string = context2.getString(R.string.thermal_shutdown_message);
                Notification.Builder color = new Notification.Builder(context2, "ALR").setSmallIcon(R.drawable.ic_device_thermostat_24).setWhen(0L).setShowWhen(false).setContentTitle(context2.getString(R.string.thermal_shutdown_title)).setContentText(string).setStyle(new Notification.BigTextStyle().bigText(string)).setVisibility(1).setContentIntent(powerNotificationWarnings.pendingBroadcast("PNW.clickedThermalShutdownWarning")).setDeleteIntent(powerNotificationWarnings.pendingBroadcast("PNW.dismissedThermalShutdownWarning")).setColor(Utils.getColorAttrDefaultColor(android.R.attr.colorError, context2, 0));
                SystemUIApplication.overrideNotificationAppName(context2, color, false);
                powerNotificationWarnings.mNoMan.notifyAsUser("high_temp", 39, color.build(), UserHandle.ALL);
            }
        }
        contentResolver.registerContentObserver(Settings.Global.getUriFor("show_temperature_warning"), false, new ContentObserver(handler) { // from class: com.android.systemui.power.PowerUI.4
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                PowerUI.this.doSkinThermalEventListenerRegistration();
            }
        });
        contentResolver.registerContentObserver(Settings.Global.getUriFor("show_usb_temperature_alarm"), false, new ContentObserver(handler) { // from class: com.android.systemui.power.PowerUI.5
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                PowerUI.this.doUsbThermalEventListenerRegistration();
            }
        });
        doSkinThermalEventListenerRegistration();
        doUsbThermalEventListenerRegistration();
        this.mCommandQueue.addCallback((CommandQueue.Callbacks) this);
        boolean equals = "1".equals(SystemProperties.get("sys.boot_completed"));
        this.mBootCompleted = equals;
        if (equals) {
            checkOverheatShutdownHappened();
            if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE) {
                int protectBatteryValue = PowerUtils.getProtectBatteryValue(context);
                int i3 = Settings.Global.getInt(context.getContentResolver(), "prev_protect_battery_ltc", -1);
                if (protectBatteryValue == 2) {
                    Settings.Global.putInt(context.getContentResolver(), "protect_battery", i3);
                    Settings.Global.putInt(context.getContentResolver(), "prev_protect_battery_ltc", -1);
                }
                clearScheduling();
            }
            if (PowerUiRune.ADAPTIVE_PROTECTION_NOTIFICATION) {
                dismissAdaptiveProtectionNotification();
                this.mIsAfterAdaptiveProtection = false;
            }
        }
        if (PowerUiRune.PROTECT_BATTERY_CUTOFF) {
            this.mBatteryProtectionThreshold = Settings.Global.getInt(context.getContentResolver(), "battery_protection_threshold", Settings.Global.BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE);
            contentResolver.registerContentObserver(Settings.Global.getUriFor("protect_battery"), false, new ContentObserver(handler) { // from class: com.android.systemui.power.PowerUI.6
                @Override // android.database.ContentObserver
                public final void onChange(boolean z2) {
                    boolean z3;
                    PowerUI powerUI3 = PowerUI.this;
                    int i4 = powerUI3.mProtectBatteryValue;
                    powerUI3.mProtectBatteryValue = PowerUtils.getProtectBatteryValue(powerUI3.mContext);
                    PowerUI powerUI4 = PowerUI.this;
                    int i5 = powerUI4.mProtectBatteryValue;
                    boolean z4 = true;
                    if (i5 != 1 && i5 != 2) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    powerUI4.mIsProtectingBatteryCutOffSettingEnabled = z3;
                    if (PowerUiRune.BATTERY_PROTECTION_NOTIFICATION) {
                        powerUI4.mSecPowerNotificationWarnings.cancelNotification(9);
                        PowerUI powerUI5 = PowerUI.this;
                        int i6 = powerUI5.mProtectBatteryValue;
                        if ((i4 != 4 || i6 != 3) && ((i4 != 3 || i6 != 4) && ((i4 != 0 || i6 != 3) && (i4 != 0 || i6 != 4)))) {
                            z4 = false;
                        }
                        if (z4) {
                            powerUI5.checkBatteryProtectionNotification();
                        }
                    }
                    if (PowerUiRune.ADAPTIVE_PROTECTION_NOTIFICATION && i4 == 4) {
                        PowerUI powerUI6 = PowerUI.this;
                        if (powerUI6.mProtectBatteryValue != 4) {
                            powerUI6.dismissAdaptiveProtectionNotification();
                            PowerUI.this.mIsAfterAdaptiveProtection = false;
                        }
                    }
                    if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE) {
                        PowerUI.m1316$$Nest$mcheckTurnOnProtectBatteryByLongTermCharge(PowerUI.this);
                    } else if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA) {
                        PowerUI.m1315$$Nest$mcheckTurnOnProtectBatteryByLongTa(PowerUI.this);
                    }
                }
            }, -1);
            int protectBatteryValue2 = PowerUtils.getProtectBatteryValue(context);
            this.mProtectBatteryValue = protectBatteryValue2;
            if (protectBatteryValue2 == 1 || protectBatteryValue2 == 2) {
                z = true;
            }
            this.mIsProtectingBatteryCutOffSettingEnabled = z;
            if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE) {
                this.mLtcHighSocThreshold = Settings.Global.getInt(context.getContentResolver(), "ltc_highsoc_threshold", 95);
                this.mLtcReleaseThreshold = Settings.Global.getInt(context.getContentResolver(), "ltc_release_threshold", 75);
                Log.i("PowerUI", "enabled level : " + this.mLtcHighSocThreshold + ", clear level : " + this.mLtcReleaseThreshold + ", duration : " + Settings.Global.getInt(context.getContentResolver(), "ltc_highsoc_duration", 10080));
            }
        }
        this.mSecPowerNotificationWarnings.restoreScreenTimeOutIfNeeded();
        if (context.getPackageManager().hasSystemFeature("com.sec.feature.sensorhub")) {
            Log.d("PowerUI", "start : hasSystemFeature(com.sec.feature.sensorhub)");
            this.mIsMotionDetectionSupported = true;
            SContextManager sContextManager = (SContextManager) context.getSystemService("scontext");
            this.mSContextManager = sContextManager;
            if (sContextManager != null) {
                this.mIsSContextEnabled = sContextManager.isAvailableService(46);
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("start : (mSContextManager != null - mIsSContextEnabled = "), this.mIsSContextEnabled, "PowerUI");
            }
        }
        ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).registerCallback(this.mScreenOnOffCallback);
        this.mBatteryHealthInterruptionPartialWakeLock = powerManager.newWakeLock(1, "PowerUI");
        ((TelephonyManager) context.getSystemService("phone")).listen(this.mPhoneStateListener, 32);
    }

    public final void startScheduling() {
        Context context = this.mContext;
        if (!context.getSharedPreferences("com.android.systemui.power_auto_on_protect_battery", 0).getBoolean("auto_on_protect_battery_timer_started", false)) {
            Log.i("PowerUI", "Meet soc conditions, start scheduling");
            if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE) {
                Settings.Global.putLong(context.getContentResolver(), "ltc_highsoc_exceed_time", System.currentTimeMillis());
            } else if (PowerUiRune.TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA) {
                Settings.Global.putString(context.getContentResolver(), "charger_connected_time", String.valueOf(System.currentTimeMillis()));
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.systemui.power_auto_on_protect_battery", 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean("auto_on_protect_battery_timer_started", true);
                edit.commit();
            }
        }
    }

    public final void updateBatteryWarningLevels() {
        Context context = this.mContext;
        int integer = context.getResources().getInteger(android.R.integer.config_dreamsBatteryLevelDrainCutoff);
        int integer2 = context.getResources().getInteger(android.R.integer.config_triplePressOnPowerBehavior);
        if (integer2 < integer) {
            integer2 = integer;
        }
        int[] iArr = this.mLowBatteryReminderLevels;
        iArr[0] = integer2;
        iArr[1] = integer;
        this.mLowBatteryAlertCloseLevel = context.getResources().getInteger(android.R.integer.config_tooltipAnimTime) + integer2;
    }
}
