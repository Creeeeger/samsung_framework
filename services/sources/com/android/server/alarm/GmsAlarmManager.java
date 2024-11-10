package com.android.server.alarm;

import android.app.ActivityManagerNative;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManagerInternal;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.telephony.TelephonyManager;
import android.util.EventLog;
import android.util.Slog;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.backup.BackupManagerConstants;
import com.android.server.clipboard.ClipboardService;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.analytics.activation.ActivationMonitor;
import com.samsung.android.knox.custom.LauncherConfigurationInternal;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class GmsAlarmManager {
    public NetWorkStats avaStats;
    public boolean isChinaMode;
    public boolean isHongKongMode;
    public AlarmManager mAlarmManager;
    public AlarmManagerService mAlarmService;
    public BatteryChargingReceiver mBatteryChargingReceiver;
    public ArrayList mCheckinServerUrl;
    public int mConfigupdaterUid;
    public Context mContext;
    public ArrayList mCurrentIpList;
    public int mGmsPkgAppid;
    public int mGmsPkgUid;
    public GmsHandler mHandler;
    public PowerManagerInternal mLocalPowerManager;
    public NetworkInfo mNetworkInfo;
    public NetworkReceiver mNetworkReceiver;
    public INetworkManagementService mNetworkService;
    public SmartManagerSettingsObserver mObserver;
    public SCPMReceiver mSCPMReceiver;
    public ScreenReceiver mScreenReceiver;
    public SetupWizardCompleteOrBootCompleteReceiver mSetupWizardCompleteOrBootCompleteReceiver;
    public UserAddRemoveReceiver mUserAddRemoveReceiver;
    public int mVendingUid;
    public NetWorkStats noAvaStats;
    public NetWorkStats vpnStats;
    public static final Uri SMART_MGR_SETTINGS_URI = Uri.parse("content://com.samsung.android.sm/settings");
    public static HandlerThread sHandlerThread = new HandlerThread("GmsAlarmManager", 1);
    public static boolean DEBUG_SCPM = true;
    public static StringBuilder sb = new StringBuilder();
    public boolean mWaitCheckNetWork = true;
    public boolean mGoogleNetWork = true;
    public boolean isGmsNetWorkLimt = false;
    public boolean isCharging = false;
    public boolean isSetupWizardCompleteOrBootComplete = false;
    public boolean mScreenOffChange = false;
    public boolean mScreenOn = true;
    public ConnectivityManager cm = null;
    public boolean mUserEnable = true;
    public int mTimeoutcount = 0;
    public int mTimeoutcountDef = 0;
    public Intent mIntent = null;
    public PendingIntent mPendingIntent = null;
    public Intent mInsertLogIntent = null;
    public PendingIntent mInsertLogPendingIntent = null;
    public boolean mBigdataEnable = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE");
    public int mPolicyControlSwitch = 7;
    public final Uri SCPM_URI_GNET = Uri.parse("content://com.samsung.android.sm.policy/policy_item/gmsnet");
    public final Uri SCPM_URI_POLICY = Uri.parse("content://com.samsung.android.sm.policy/policy_item/policy_list");
    public BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.alarm.GmsAlarmManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() == null) {
                return;
            }
            if ("com.samsung.android.server.action_check_gms_network".equals(intent.getAction())) {
                GmsAlarmManager.this.mHandler.sendEmptyMessage(1);
            } else if ("com.samsung.android.server.action_insert_log".equals(intent.getAction())) {
                GmsAlarmManager.this.mHandler.sendEmptyMessage(6);
            } else if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                GmsAlarmManager.this.sendInsertLogDelay(BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS);
            }
        }
    };
    public ArrayList mGmsUidOfMultiUser = new ArrayList();

    public GmsAlarmManager(Context context) {
        this.mGmsPkgUid = -1;
        this.mVendingUid = -1;
        this.mConfigupdaterUid = -1;
        this.mGmsPkgAppid = -1;
        this.isChinaMode = false;
        this.isHongKongMode = false;
        this.mContext = context;
        this.isChinaMode = isChn();
        this.isHongKongMode = isHongkong();
        PackageManager packageManager = context.getPackageManager();
        this.mCurrentIpList = new ArrayList();
        this.mCheckinServerUrl = new ArrayList();
        try {
            this.mGmsPkgUid = packageManager.getPackageUid("com.google.android.gms", 0);
            this.mVendingUid = packageManager.getPackageUid("com.android.vending", 0);
            this.mConfigupdaterUid = packageManager.getPackageUid("com.google.android.configupdater", 0);
            this.mGmsPkgAppid = UserHandle.getAppId(this.mGmsPkgUid);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e("GmsAlarmManager", "NameNotFoundException" + e);
        }
    }

    public void init(AlarmManagerService alarmManagerService) {
        if ((this.isChinaMode || this.isHongKongMode) && this.mGmsPkgUid != -1) {
            sHandlerThread.start();
            this.mHandler = new GmsHandler(sHandlerThread.getLooper());
            if (this.isHongKongMode) {
                this.mUserEnable = false;
            }
            this.mAlarmService = alarmManagerService;
            this.mCheckinServerUrl.add("checkin.gstatic.com");
            initNetworkReceiver();
            initScreenReceiver();
            initUserAddRemoveReceiver();
            initSetupWizardCompleteOrBootCompleteReceiver();
            initSCPMReceiver();
            initBatteryChargingReceiver();
            this.mLocalPowerManager = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.samsung.android.server.action_check_gms_network");
            intentFilter.addAction("com.samsung.android.server.action_insert_log");
            intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
            this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
            this.mWaitCheckNetWork = false;
            this.mGoogleNetWork = false;
            this.isCharging = false;
            Intent intent = new Intent("com.samsung.android.server.action_check_gms_network");
            this.mIntent = intent;
            this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 67108864);
            Intent intent2 = new Intent("com.samsung.android.server.action_insert_log");
            this.mInsertLogIntent = intent2;
            this.mInsertLogPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, intent2, 67108864);
            this.avaStats = new NetWorkStats();
            this.noAvaStats = new NetWorkStats();
            this.vpnStats = new NetWorkStats();
        }
    }

    public final void initSCPMReceiver() {
        this.mSCPMReceiver = new SCPMReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("sec.app.policy.UPDATE.gmsnet");
        this.mContext.registerReceiver(this.mSCPMReceiver, intentFilter);
    }

    public final void initScreenReceiver() {
        this.mScreenReceiver = new ScreenReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        this.mContext.registerReceiver(this.mScreenReceiver, intentFilter);
    }

    public final void initNetworkReceiver() {
        this.mNetworkReceiver = new NetworkReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mContext.registerReceiver(this.mNetworkReceiver, intentFilter);
    }

    public final void initUserAddRemoveReceiver() {
        this.mUserAddRemoveReceiver = new UserAddRemoveReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_ADDED");
        intentFilter.addAction("android.intent.action.USER_REMOVED");
        this.mContext.registerReceiver(this.mUserAddRemoveReceiver, intentFilter);
    }

    public final void initSetupWizardCompleteOrBootCompleteReceiver() {
        this.mSetupWizardCompleteOrBootCompleteReceiver = new SetupWizardCompleteOrBootCompleteReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE");
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        this.mContext.registerReceiver(this.mSetupWizardCompleteOrBootCompleteReceiver, intentFilter);
    }

    public final void initBatteryChargingReceiver() {
        this.mBatteryChargingReceiver = new BatteryChargingReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.CHARGING");
        intentFilter.addAction("android.os.action.DISCHARGING");
        this.mContext.registerReceiver(this.mBatteryChargingReceiver, intentFilter);
    }

    public final void sendCheckNetWorkDelay(long j) {
        if (this.mAlarmManager == null) {
            this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        }
        AlarmManager alarmManager = this.mAlarmManager;
        if (alarmManager == null || this.mPendingIntent == null) {
            return;
        }
        alarmManager.set(2, SystemClock.elapsedRealtime() + j, this.mPendingIntent);
        this.mWaitCheckNetWork = true;
    }

    public final void sendInsertLogDelay(long j) {
        if (this.mAlarmManager == null) {
            this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        }
        AlarmManager alarmManager = this.mAlarmManager;
        if (alarmManager == null || this.mInsertLogPendingIntent == null) {
            return;
        }
        alarmManager.set(3, SystemClock.elapsedRealtime() + j, this.mInsertLogPendingIntent);
    }

    public final void cancelAlarm() {
        PendingIntent pendingIntent;
        AlarmManager alarmManager = this.mAlarmManager;
        if (alarmManager == null || (pendingIntent = this.mPendingIntent) == null) {
            return;
        }
        alarmManager.cancel(pendingIntent);
    }

    /* loaded from: classes.dex */
    public class BatteryChargingReceiver extends BroadcastReceiver {
        public BatteryChargingReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() == null) {
                return;
            }
            if ("android.os.action.CHARGING".equals(intent.getAction())) {
                GmsAlarmManager.this.mHandler.removeMessages(4);
                GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(4, 10000L);
            } else {
                GmsAlarmManager.this.mHandler.removeMessages(5);
                GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(5, 10000L);
            }
        }
    }

    public final boolean isGmsDelay12HourAlarm(PendingIntent pendingIntent) {
        if (pendingIntent == null || !"com.google.android.gms".equals(pendingIntent.getCreatorPackage())) {
            return false;
        }
        Intent infoFromPendingIntent = getInfoFromPendingIntent(pendingIntent);
        String action = infoFromPendingIntent == null ? null : infoFromPendingIntent.getAction();
        if (action != null) {
            return action.startsWith("com.google.android.gms.gcm.") || action.equals("com.google.android.intent.action.GCM_RECONNECT");
        }
        return false;
    }

    public final boolean isGmsDelay6HourAlarm(PendingIntent pendingIntent) {
        if (pendingIntent == null || !"com.google.android.gms".equals(pendingIntent.getCreatorPackage())) {
            return false;
        }
        Intent infoFromPendingIntent = getInfoFromPendingIntent(pendingIntent);
        String action = infoFromPendingIntent == null ? null : infoFromPendingIntent.getAction();
        if (action != null && (action.startsWith("CONTEXT_MANAGER_ALARM_WAKEUP_") || action.matches("com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS") || action.matches("com.google.android.gms.matchstick.register_intent_action") || action.matches("com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS") || action.matches("com.google.android.intent.action.SEND_IDLE"))) {
            return true;
        }
        ComponentName component = infoFromPendingIntent != null ? infoFromPendingIntent.getComponent() : null;
        return component != null && component.toString().contains("com.google.android.gms.checkin.EventLogServiceReceiver");
    }

    public void schedulingGmsAlarms(Alarm alarm) {
        PendingIntent pendingIntent;
        int i;
        if ((this.mPolicyControlSwitch & 1) == 0) {
            return;
        }
        if ((!this.isChinaMode && !this.isHongKongMode) || this.mGmsPkgUid == -1 || alarm == null || (pendingIntent = alarm.operation) == null || !this.mUserEnable) {
            return;
        }
        if (isGmsDelay12HourAlarm(pendingIntent)) {
            i = 12;
        } else if (!isGmsDelay6HourAlarm(alarm.operation)) {
            return;
        } else {
            i = 6;
        }
        if (this.mGoogleNetWork) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long whenElapsed = alarm.getWhenElapsed() - elapsedRealtime;
        long j = i * ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS;
        if (whenElapsed > j) {
            return;
        }
        alarm.setPolicyElapsed(5, elapsedRealtime + j);
    }

    /* loaded from: classes.dex */
    public class NetworkReceiver extends BroadcastReceiver {
        public NetworkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() != null && "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                Slog.v("GmsAlarmManager", "CONNECTIVITY RECEIVER");
                GmsAlarmManager.this.mNetworkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (GmsAlarmManager.this.mNetworkInfo != null) {
                    int type = GmsAlarmManager.this.mNetworkInfo.getType();
                    EventLog.writeEvent(40200, type);
                    Slog.v("GmsAlarmManager", "NetworkInfo type = " + type + "  -- isConnected = " + GmsAlarmManager.this.mNetworkInfo.isConnected());
                    if (type == -1 || type == 1 || type == 0 || type == 17 || type == 16) {
                        if (type == 17) {
                            if (GmsAlarmManager.this.mNetworkInfo.isConnected()) {
                                GmsAlarmManager.this.vpnStats.addStartTime(SystemClock.elapsedRealtime());
                            } else {
                                GmsAlarmManager.this.vpnStats.setEndTime(SystemClock.elapsedRealtime());
                            }
                        }
                        if (!GmsAlarmManager.this.mScreenOn && !GmsAlarmManager.this.mWaitCheckNetWork && !GmsAlarmManager.this.mGoogleNetWork) {
                            GmsAlarmManager.this.mScreenOffChange = true;
                        } else {
                            GmsAlarmManager.this.cancelAlarm();
                            GmsAlarmManager.this.sendCheckNetWorkDelay(10000L);
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class ScreenReceiver extends BroadcastReceiver {
        public ScreenReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() == null) {
                return;
            }
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                GmsAlarmManager.this.mScreenOn = true;
                if (GmsAlarmManager.this.mScreenOffChange) {
                    GmsAlarmManager.this.cancelAlarm();
                    GmsAlarmManager.this.sendCheckNetWorkDelay(10000L);
                    GmsAlarmManager.this.mScreenOffChange = false;
                    return;
                } else {
                    if (GmsAlarmManager.this.mHandler.hasMessages(1)) {
                        return;
                    }
                    GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(1, ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS);
                    return;
                }
            }
            GmsAlarmManager.this.mScreenOn = false;
            GmsAlarmManager.this.mScreenOffChange = false;
        }
    }

    /* loaded from: classes.dex */
    public class SetupWizardCompleteOrBootCompleteReceiver extends BroadcastReceiver {
        public SetupWizardCompleteOrBootCompleteReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() == null) {
                return;
            }
            if ("com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE".equals(intent.getAction())) {
                if (GmsAlarmManager.this.isChinaMode) {
                    Slog.v("GmsAlarmManager", "ACTION***" + intent.getAction());
                    GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete = true;
                    GmsAlarmManager.this.mHandler.removeMessages(1);
                    GmsAlarmManager.this.mHandler.sendEmptyMessage(1);
                    return;
                }
                return;
            }
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                GmsAlarmManager.this.mHandler.sendEmptyMessage(7);
                if (GmsAlarmManager.this.isChinaMode) {
                    Slog.v("GmsAlarmManager", "ACTION***" + intent.getAction());
                    GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete = true;
                    GmsAlarmManager.this.mHandler.removeMessages(1);
                    GmsAlarmManager.this.mHandler.sendEmptyMessage(1);
                }
                GmsAlarmManager.this.mHandler.sendEmptyMessage(10);
            }
        }
    }

    /* loaded from: classes.dex */
    public class UserAddRemoveReceiver extends BroadcastReceiver {
        public UserAddRemoveReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            int intExtra = intent.getIntExtra("android.intent.extra.user_handle", -1);
            if (intExtra == -1 || action == null) {
                return;
            }
            Message message = new Message();
            message.arg1 = intExtra;
            if (action.equals("android.intent.action.USER_REMOVED")) {
                message.what = 8;
                GmsAlarmManager.this.mHandler.sendMessage(message);
            } else if (action.equals("android.intent.action.USER_ADDED")) {
                message.what = 9;
                GmsAlarmManager.this.mHandler.sendMessage(message);
            }
        }
    }

    /* loaded from: classes.dex */
    public class SCPMReceiver extends BroadcastReceiver {
        public SCPMReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() != null && "sec.app.policy.UPDATE.gmsnet".equals(intent.getAction())) {
                Slog.v("GmsAlarmManager", "ACTION***" + intent.getAction());
                GmsAlarmManager.this.mHandler.sendEmptyMessage(7);
            }
        }
    }

    /* loaded from: classes.dex */
    public class GmsHandler extends Handler {
        public GmsHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (GmsAlarmManager.this.mUserEnable) {
                        GmsAlarmManager.this.mHandler.removeMessages(1);
                        if (GmsAlarmManager.this.isWifiConnected()) {
                            GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(1, 900000L);
                        } else {
                            GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(1, 1800000L);
                        }
                        if (GmsAlarmManager.this.mScreenOn || GmsAlarmManager.this.mWaitCheckNetWork || GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete) {
                            boolean z = GmsAlarmManager.this.mGoogleNetWork;
                            if ((GmsAlarmManager.this.isChinaMode && GmsAlarmManager.this.isChnSimOrNoSim()) || (GmsAlarmManager.this.isHongKongMode && GmsAlarmManager.this.isChnSim())) {
                                if (GmsAlarmManager.this.checkActiveNet()) {
                                    int checkGoogleNetwork = GmsAlarmManager.this.checkGoogleNetwork("https://www.google.com/");
                                    Slog.d("GmsAlarmManager", "[GMS-CORE] China or hongkong mode and google network return: " + checkGoogleNetwork);
                                    if (checkGoogleNetwork == 200 || checkGoogleNetwork == 204 || checkGoogleNetwork == 302) {
                                        GmsAlarmManager.this.mGoogleNetWork = true;
                                    } else {
                                        GmsAlarmManager.this.mGoogleNetWork = false;
                                    }
                                } else {
                                    GmsAlarmManager.this.mGoogleNetWork = false;
                                }
                            } else {
                                GmsAlarmManager.this.mGoogleNetWork = true;
                            }
                            if (GmsAlarmManager.this.checkActiveNet()) {
                                if (GmsAlarmManager.this.mGoogleNetWork) {
                                    Slog.d("GmsAlarmManager", "[GMS-CORE] net work google can net");
                                    GmsAlarmManager gmsAlarmManager = GmsAlarmManager.this;
                                    gmsAlarmManager.setUrlFirewallRule(true, gmsAlarmManager.mCurrentIpList);
                                    GmsAlarmManager.this.mCurrentIpList.clear();
                                } else {
                                    Slog.d("GmsAlarmManager", "[GMS-CORE] net work google no net");
                                    Iterator it = GmsAlarmManager.this.mCheckinServerUrl.iterator();
                                    while (it.hasNext()) {
                                        GmsAlarmManager.this.parseHostAndSetUrlFirewallRule((String) it.next());
                                    }
                                }
                            } else {
                                Slog.d("GmsAlarmManager", "[GMS-CORE] no net work");
                                GmsAlarmManager gmsAlarmManager2 = GmsAlarmManager.this;
                                gmsAlarmManager2.setUrlFirewallRule(true, gmsAlarmManager2.mCurrentIpList);
                                GmsAlarmManager.this.mCurrentIpList.clear();
                            }
                            GmsAlarmManager.this.mWaitCheckNetWork = false;
                            if (z) {
                                GmsAlarmManager.this.avaStats.setEndTime(SystemClock.elapsedRealtime());
                            } else {
                                GmsAlarmManager.this.noAvaStats.setEndTime(SystemClock.elapsedRealtime());
                            }
                            if (!GmsAlarmManager.this.mGoogleNetWork) {
                                GmsAlarmManager.this.mHandler.removeMessages(2);
                                GmsAlarmManager.this.mHandler.sendEmptyMessage(2);
                                GmsAlarmManager.this.noAvaStats.addStartTime(SystemClock.elapsedRealtime());
                                return;
                            } else {
                                GmsAlarmManager.this.mHandler.removeMessages(3);
                                GmsAlarmManager.this.mHandler.sendEmptyMessage(3);
                                GmsAlarmManager.this.avaStats.addStartTime(SystemClock.elapsedRealtime());
                                return;
                            }
                        }
                        return;
                    }
                    return;
                case 2:
                    if (GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete) {
                        GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete = false;
                        GmsAlarmManager.this.setGMSLocationProviderChangeReceiverState(2);
                    }
                    if (GmsAlarmManager.this.isGmsNetWorkLimt) {
                        return;
                    }
                    Slog.d("GmsAlarmManager", "[GMS-CORE] MSG_DISABLE_GMS_NETWORK:" + GmsAlarmManager.this.mGmsPkgUid + "," + GmsAlarmManager.this.mVendingUid + "," + GmsAlarmManager.this.mConfigupdaterUid);
                    if (!GmsAlarmManager.this.isCharging) {
                        EventLogTags.writeSecDisableNet();
                        GmsAlarmManager.this.setGmsNetWorkAllow(false);
                    }
                    GmsAlarmManager.this.sendIntentToIBS(false);
                    GmsAlarmManager.this.isGmsNetWorkLimt = true;
                    GmsAlarmManager.this.setGMSLocationProviderChangeReceiverState(2);
                    GmsAlarmManager.this.setWakeLockBlackListEnableDisable(true);
                    return;
                case 3:
                    if (GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete) {
                        GmsAlarmManager.this.isSetupWizardCompleteOrBootComplete = false;
                        GmsAlarmManager.this.setGMSLocationProviderChangeReceiverState(1);
                    }
                    if (GmsAlarmManager.this.isGmsNetWorkLimt) {
                        Slog.d("GmsAlarmManager", "[GMS-CORE] MSG_ENABLE_GMS_NETWORK:" + GmsAlarmManager.this.mGmsPkgUid + "," + GmsAlarmManager.this.mVendingUid + "," + GmsAlarmManager.this.mConfigupdaterUid);
                        if (!GmsAlarmManager.this.isCharging) {
                            EventLogTags.writeSecEnableNet();
                            GmsAlarmManager.this.setGmsNetWorkAllow(true);
                        }
                        GmsAlarmManager.this.sendIntentToIBS(true);
                        GmsAlarmManager.this.isGmsNetWorkLimt = false;
                        GmsAlarmManager.this.restoreGcmAlarm();
                        GmsAlarmManager.this.setGMSLocationProviderChangeReceiverState(1);
                        GmsAlarmManager.this.setWakeLockBlackListEnableDisable(false);
                        return;
                    }
                    return;
                case 4:
                    if (GmsAlarmManager.this.isGmsNetWorkLimt && !GmsAlarmManager.this.isCharging) {
                        Slog.v("GmsAlarmManager", "MSG_ENABLE_GMS_NETWORK_BY_CHARGING");
                        EventLogTags.writeSecEnableNetByCharging();
                        GmsAlarmManager.this.setGmsNetWorkAllow(true);
                        GmsAlarmManager.this.restoreGcmAlarm();
                    }
                    GmsAlarmManager.this.isCharging = true;
                    return;
                case 5:
                    if (GmsAlarmManager.this.isGmsNetWorkLimt && GmsAlarmManager.this.isCharging) {
                        Slog.v("GmsAlarmManager", "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING");
                        EventLogTags.writeSecDisableNetByUncharging();
                        GmsAlarmManager.this.setGmsNetWorkAllow(false);
                    }
                    GmsAlarmManager.this.isCharging = false;
                    return;
                case 6:
                    GmsAlarmManager gmsAlarmManager3 = GmsAlarmManager.this;
                    gmsAlarmManager3.insertLog("com.android.server.gmsalarmmanager", "GNET", gmsAlarmManager3.bigData(SystemClock.elapsedRealtime()));
                    GmsAlarmManager.this.sendInsertLogDelay(BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS);
                    return;
                case 7:
                    GmsAlarmManager.this.updateSCPMParametersFromDB();
                    return;
                case 8:
                    GmsAlarmManager.this.disableMultiUserGmsRestriction(message.arg1);
                    return;
                case 9:
                    GmsAlarmManager.this.enableMultiUserGmsRestriction(message.arg1);
                    return;
                case 10:
                    GmsAlarmManager.this.checkOnceMultiUserid();
                    return;
                case 11:
                    if (GmsAlarmManager.this.mUserEnable) {
                        GmsAlarmManager.this.mHandler.removeMessages(1);
                        GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(1, 10000L);
                        return;
                    } else {
                        GmsAlarmManager.this.mHandler.removeMessages(3);
                        GmsAlarmManager.this.mHandler.sendEmptyMessageDelayed(3, 10000L);
                        return;
                    }
                case 12:
                    GmsAlarmManager.this.restoreGcmAlarm();
                    GmsAlarmManager.this.setGmsNetWorkForceReset();
                    GmsAlarmManager.this.forceWakeLockBlackListReset();
                    GmsAlarmManager.this.isGmsNetWorkLimt = false;
                    return;
                default:
                    return;
            }
        }
    }

    public final void sendIntentToIBS(boolean z) {
        Intent intent = new Intent("com.samsung.android.server.action_google_net_state");
        intent.putExtra(LauncherConfigurationInternal.KEY_STATE_BOOLEAN, z);
        this.mContext.sendBroadcast(intent);
    }

    public final void setWakeLockBlackListEnableDisable(boolean z) {
        PowerManagerInternal powerManagerInternal;
        if ((this.mPolicyControlSwitch & 4) == 0 || (powerManagerInternal = this.mLocalPowerManager) == null) {
            return;
        }
        powerManagerInternal.setWakeLockBlackListEnableDisable(this.mGmsPkgAppid, z);
    }

    public final void forceWakeLockBlackListReset() {
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal == null || !this.isGmsNetWorkLimt) {
            return;
        }
        powerManagerInternal.setWakeLockBlackListEnableDisable(this.mGmsPkgAppid, false);
    }

    public final void restoreGcmAlarm() {
        Alarm alarm = this.mAlarmService.getAlarm("com.google.android.gms", "com.google.android.intent.action.GCM_RECONNECT");
        if (alarm == null) {
            return;
        }
        alarm.setPolicyElapsed(5, SystemClock.elapsedRealtime() + 10000);
        this.mAlarmService.addAlarm(alarm);
    }

    public final void checkOnceMultiUserid() {
        List users = ((UserManager) this.mContext.getSystemService("user")).getUsers();
        for (int size = users.size() - 1; size >= 0; size--) {
            UserInfo userInfo = (UserInfo) users.get(size);
            int i = userInfo.id;
            Slog.d("GmsAlarmManager", "get userId: " + userInfo.id);
            if (i > -1 && i != 0) {
                Message message = new Message();
                message.what = 9;
                message.arg1 = i;
                this.mHandler.sendMessage(message);
            }
        }
    }

    public final void setGmsNetWorkForceReset() {
        if (this.mNetworkService == null && getNetworkManagementService() == null) {
            return;
        }
        try {
            if (this.isGmsNetWorkLimt) {
                this.mNetworkService.setFirewallRuleWifi(this.mGmsPkgUid, true);
                this.mNetworkService.setFirewallRuleMobileData(this.mGmsPkgUid, true);
                this.mNetworkService.setFirewallRuleWifi(this.mConfigupdaterUid, true);
                this.mNetworkService.setFirewallRuleMobileData(this.mConfigupdaterUid, true);
                setGmsMultiUserWorkAllow(true);
            }
        } catch (RemoteException e) {
            Slog.e("GmsAlarmManager", "RemoteException:" + e);
        } catch (IllegalStateException e2) {
            Slog.e("GmsAlarmManager", "IllegalStateException:" + e2);
        }
    }

    public final void setGmsNetWorkAllow(boolean z) {
        if ((this.mPolicyControlSwitch & 2) == 0) {
            return;
        }
        if (this.mNetworkService == null && getNetworkManagementService() == null) {
            return;
        }
        try {
            this.mNetworkService.setFirewallRuleWifi(this.mGmsPkgUid, z);
            this.mNetworkService.setFirewallRuleMobileData(this.mGmsPkgUid, z);
            this.mNetworkService.setFirewallRuleWifi(this.mConfigupdaterUid, z);
            this.mNetworkService.setFirewallRuleMobileData(this.mConfigupdaterUid, z);
            setGmsMultiUserWorkAllow(z);
        } catch (RemoteException e) {
            Slog.e("GmsAlarmManager", "RemoteException:" + e);
        } catch (IllegalStateException e2) {
            Slog.e("GmsAlarmManager", "IllegalStateException:" + e2);
        }
    }

    public final void setGmsMultiUserWorkAllow(boolean z) {
        if (this.mNetworkService == null && getNetworkManagementService() == null) {
            return;
        }
        try {
            Iterator it = this.mGmsUidOfMultiUser.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                this.mNetworkService.setFirewallRuleWifi(num.intValue(), z);
                this.mNetworkService.setFirewallRuleMobileData(num.intValue(), z);
            }
        } catch (RemoteException e) {
            Slog.e("GmsAlarmManager", "RemoteException:" + e);
        } catch (IllegalStateException e2) {
            Slog.e("GmsAlarmManager", "IllegalStateException:" + e2);
        }
    }

    public final void disableMultiUserGmsRestriction(int i) {
        ArrayList updateMultiUserGmsUid = updateMultiUserGmsUid(i);
        Iterator it = updateMultiUserGmsUid.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (!this.mGmsUidOfMultiUser.contains(num)) {
                return;
            } else {
                this.mGmsUidOfMultiUser.remove(num);
            }
        }
        if (updateMultiUserGmsUid.size() == 0 || !this.isGmsNetWorkLimt) {
            return;
        }
        if (this.mNetworkService == null && getNetworkManagementService() == null) {
            return;
        }
        try {
            Iterator it2 = updateMultiUserGmsUid.iterator();
            while (it2.hasNext()) {
                Integer num2 = (Integer) it2.next();
                this.mNetworkService.setFirewallRuleWifi(num2.intValue(), true);
                this.mNetworkService.setFirewallRuleMobileData(num2.intValue(), true);
            }
        } catch (RemoteException e) {
            Slog.e("GmsAlarmManager", "RemoteException:" + e);
        } catch (IllegalStateException e2) {
            Slog.e("GmsAlarmManager", "IllegalStateException:" + e2);
        }
    }

    public final void enableMultiUserGmsRestriction(int i) {
        ArrayList updateMultiUserGmsUid = updateMultiUserGmsUid(i);
        Iterator it = updateMultiUserGmsUid.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (!this.mGmsUidOfMultiUser.contains(num)) {
                this.mGmsUidOfMultiUser.add(num);
            }
        }
        if (updateMultiUserGmsUid.size() == 0 || !this.isGmsNetWorkLimt) {
            return;
        }
        if (this.mNetworkService == null && getNetworkManagementService() == null) {
            return;
        }
        try {
            Iterator it2 = updateMultiUserGmsUid.iterator();
            while (it2.hasNext()) {
                Integer num2 = (Integer) it2.next();
                this.mNetworkService.setFirewallRuleWifi(num2.intValue(), false);
                this.mNetworkService.setFirewallRuleMobileData(num2.intValue(), false);
            }
        } catch (RemoteException e) {
            Slog.e("GmsAlarmManager", "RemoteException:" + e);
        } catch (IllegalStateException e2) {
            Slog.e("GmsAlarmManager", "IllegalStateException:" + e2);
        }
    }

    public final INetworkManagementService getNetworkManagementService() {
        IBinder service;
        if (this.mNetworkService == null && (service = ServiceManager.getService("network_management")) != null) {
            this.mNetworkService = INetworkManagementService.Stub.asInterface(service);
        }
        return this.mNetworkService;
    }

    public final boolean isChn() {
        return "CHINA".equalsIgnoreCase(SystemProperties.get(ActivationMonitor.COUNTRY_CODE_PROPERTY));
    }

    public final boolean isHongkong() {
        return "HONG KONG".equalsIgnoreCase(SystemProperties.get(ActivationMonitor.COUNTRY_CODE_PROPERTY));
    }

    public final boolean isChnSimOrNoSim() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        if (telephonyManager == null) {
            return false;
        }
        String simSerialNumber = telephonyManager.getSimSerialNumber();
        return simSerialNumber == null || simSerialNumber.startsWith("8986") || simSerialNumber.startsWith("8985");
    }

    public final boolean isChnSim() {
        String simSerialNumber;
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        if (telephonyManager == null || (simSerialNumber = telephonyManager.getSimSerialNumber()) == null) {
            return false;
        }
        return simSerialNumber.startsWith("8986") || simSerialNumber.startsWith("8985");
    }

    public final int checkGoogleNetwork(String str) {
        Slog.v("GmsAlarmManager", "checkGoogleNetwork: " + str);
        if (!this.mGmsUidOfMultiUser.isEmpty() && isVPNConnected()) {
            this.mTimeoutcountDef = 0;
            return checkGoogleNetworkByAll(str);
        }
        this.mTimeoutcount = 0;
        return checkGoogleNetworkByDefault(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f3, code lost:
    
        if (r6 == null) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int checkGoogleNetworkByAll(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.alarm.GmsAlarmManager.checkGoogleNetworkByAll(java.lang.String):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public final int checkGoogleNetworkByDefault(String str) {
        IOException e;
        HttpURLConnection httpURLConnection;
        Slog.v("GmsAlarmManager", "checkGoogleNetworkByDefault addr: " + str);
        ?? r2 = 0;
        HttpURLConnection httpURLConnection2 = null;
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            } catch (IOException e2) {
                e = e2;
                httpURLConnection = null;
            } catch (Exception e3) {
                e = e3;
            }
            try {
                httpURLConnection.setReadTimeout(3000);
                httpURLConnection.setConnectTimeout(3000);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestMethod("HEAD");
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                Slog.v("GmsAlarmManager", "checkGoogleNetworkByDefault: " + responseCode);
                EventLog.writeEvent(40203, responseCode);
                this.mTimeoutcountDef = 0;
                httpURLConnection.disconnect();
                return responseCode;
            } catch (IOException e4) {
                e = e4;
                e.printStackTrace();
                if (isVPNConnected()) {
                    this.mTimeoutcountDef++;
                    Slog.v("GmsAlarmManager", "checkGoogleNetworkByDefault timeout count default: " + this.mTimeoutcountDef);
                    if (this.mTimeoutcountDef < 5) {
                        this.mHandler.sendEmptyMessageDelayed(1, 120000L);
                    } else {
                        this.mTimeoutcountDef = 0;
                    }
                } else {
                    this.mTimeoutcountDef = 0;
                }
                if (httpURLConnection == null) {
                    return -1;
                }
                httpURLConnection.disconnect();
                return -1;
            } catch (Exception e5) {
                e = e5;
                httpURLConnection2 = httpURLConnection;
                e.printStackTrace();
                if (httpURLConnection2 == null) {
                    return -1;
                }
                httpURLConnection2.disconnect();
                return -1;
            }
        } catch (Throwable th2) {
            th = th2;
            r2 = str;
            if (r2 != 0) {
                r2.disconnect();
            }
            throw th;
        }
    }

    public final boolean checkActiveNet() {
        NetworkInfo activeNetworkInfo;
        if (this.cm == null) {
            this.cm = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        }
        ConnectivityManager connectivityManager = this.cm;
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return false;
        }
        Slog.v("GmsAlarmManager", "networkInfo:" + activeNetworkInfo);
        return activeNetworkInfo.isAvailable();
    }

    public final boolean isWifiConnected() {
        NetworkInfo networkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getNetworkInfo(1);
        return networkInfo != null && networkInfo.isConnected();
    }

    public final boolean isVPNConnected() {
        NetworkInfo networkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getNetworkInfo(17);
        return networkInfo != null && networkInfo.isConnected();
    }

    public final void setGMSLocationProviderChangeReceiverState(int i) {
        if (this.isHongKongMode) {
            return;
        }
        try {
            this.mContext.getPackageManager().setComponentEnabledSetting(new ComponentName("com.google.android.gms", "com.google.android.location.network.LocationProviderChangeReceiver"), i, 1);
            Slog.i("GmsAlarmManager", "setGMSLocationProviderChangeReceiverState:" + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final Intent getInfoFromPendingIntent(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            return null;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return ActivityManagerNative.getDefault().getIntentForIntentSender(pendingIntent.getTarget());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void updateSettings() {
        if (!this.isHongKongMode || this.mGmsPkgUid == -1) {
            return;
        }
        this.mObserver = new SmartManagerSettingsObserver(this.mHandler);
        this.mContext.getContentResolver().registerContentObserver(SMART_MGR_SETTINGS_URI, false, this.mObserver);
        getSettingsValueFromDB();
    }

    /* loaded from: classes.dex */
    public class SmartManagerSettingsObserver extends ContentObserver {
        public SmartManagerSettingsObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Slog.d("GmsAlarmManager", "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!");
            GmsAlarmManager.this.getSettingsValueFromDB();
        }
    }

    public final void getSettingsValueFromDB() {
        Cursor cursor;
        try {
            cursor = this.mContext.getContentResolver().query(SMART_MGR_SETTINGS_URI, new String[]{"key", "value"}, null, null, null);
        } catch (Exception e) {
            Slog.e("GmsAlarmManager", "Exception with contentResolver : " + e.getMessage());
            e.printStackTrace();
            cursor = null;
        }
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    if ("spcm_switch".equals(cursor.getString(0))) {
                        boolean z = Integer.parseInt(cursor.getString(1)) == 3;
                        Slog.d("GmsAlarmManager", "get from smartmanager DB, spcm_switch : " + z);
                        if (this.mUserEnable != z) {
                            this.mUserEnable = z;
                            this.mHandler.sendEmptyMessage(11);
                        }
                    }
                } catch (Exception e2) {
                    Slog.e("GmsAlarmManager", "Exception with parseInt : " + e2.getMessage());
                }
            }
            cursor.close();
        }
    }

    public final void insertLog(String str, String str2, String str3) {
        if (this.mBigdataEnable) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put(LauncherConfigurationInternal.KEY_FEATURE_INT, str2);
            if (str3 != null) {
                contentValues.put("extra", str3);
            }
            Intent intent = new Intent();
            intent.setAction("com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY");
            intent.putExtra("data", contentValues);
            intent.setPackage("com.samsung.android.providers.context");
            this.mContext.sendBroadcast(intent);
        }
        Slog.d("GmsAlarmManager", "app_id = " + str + ", feature = " + str2 + ", extra = " + str3);
    }

    /* loaded from: classes.dex */
    public class NetWorkStats {
        public ArrayList data;
        public long mCount;
        public final Object mLock;
        public long mTime;

        public NetWorkStats() {
            this.mCount = 0L;
            this.mTime = 0L;
            this.data = new ArrayList();
            this.mLock = new Object();
        }

        /* loaded from: classes.dex */
        public class NetWorkData {
            public long endTime;
            public long startTime;
            public long totalTime;

            public NetWorkData() {
            }

            public void setEndTime(long j) {
                this.endTime = j;
                this.totalTime = j - this.startTime;
            }
        }

        public void addStartTime(long j) {
            NetWorkData netWorkData = new NetWorkData();
            netWorkData.startTime = j;
            synchronized (this.mLock) {
                removeLastData(SystemClock.elapsedRealtime() - 172800000);
                this.data.add(netWorkData);
            }
        }

        public void setEndTime(long j) {
            synchronized (this.mLock) {
                if (this.data.size() == 0) {
                    return;
                }
                ((NetWorkData) this.data.get(r2.size() - 1)).setEndTime(j);
            }
        }

        public void removeLastData(long j) {
            if (j < 0) {
                return;
            }
            synchronized (this.mLock) {
                int i = 0;
                while (true) {
                    if (i >= this.data.size()) {
                        i = -1;
                        break;
                    } else if (((NetWorkData) this.data.get(i)).endTime != 0 && ((NetWorkData) this.data.get(i)).endTime > j) {
                        break;
                    } else {
                        i++;
                    }
                }
                for (int i2 = 0; i2 < i; i2++) {
                    this.data.remove(0);
                }
            }
        }

        public String dump(long j) {
            long j2;
            long j3 = BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS;
            long j4 = j - BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS;
            this.mCount = 0L;
            synchronized (this.mLock) {
                try {
                    if (j4 <= 0) {
                        this.mCount = this.data.size();
                        j3 = 0;
                        for (int i = 0; i < this.data.size(); i++) {
                            if (((NetWorkData) this.data.get(i)).totalTime != 0) {
                                j3 += ((NetWorkData) this.data.get(i)).totalTime;
                            }
                        }
                        if (this.data.size() > 0) {
                            if (((NetWorkData) this.data.get(r3.size() - 1)).totalTime == 0) {
                                j3 += j - ((NetWorkData) this.data.get(r3.size() - 1)).startTime;
                            }
                        }
                    } else {
                        long j5 = 0;
                        for (int i2 = 0; i2 < this.data.size(); i2++) {
                            if (((NetWorkData) this.data.get(i2)).totalTime != 0 && ((NetWorkData) this.data.get(i2)).endTime - j4 > 0) {
                                this.mCount++;
                                if (j5 != 0) {
                                    j2 = ((NetWorkData) this.data.get(i2)).totalTime;
                                } else if (((NetWorkData) this.data.get(i2)).startTime < j4) {
                                    j2 = ((NetWorkData) this.data.get(i2)).endTime - j4;
                                } else {
                                    j2 = ((NetWorkData) this.data.get(i2)).endTime - ((NetWorkData) this.data.get(i2)).startTime;
                                }
                                j5 += j2;
                            }
                        }
                        if (this.data.size() > 0) {
                            if (((NetWorkData) this.data.get(r10.size() - 1)).totalTime == 0) {
                                if (((NetWorkData) this.data.get(r5.size() - 1)).startTime >= j4) {
                                    j3 = (j - ((NetWorkData) this.data.get(r1.size() - 1)).startTime) + j5;
                                }
                                this.mCount++;
                            }
                        }
                        j3 = j5;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            long j6 = j3 / ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS;
            long j7 = (j3 - (ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS * j6)) / 60000;
            this.mTime = j3 / 60000;
            return j6 + "h " + j7 + "m(" + this.mCount + "X)";
        }
    }

    public final String dumpNetStats(long j) {
        return (("Since last 24 hours\nTotal time and # of event Google access is available   : " + this.avaStats.dump(j) + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE) + "Total time and # of event Google access is not possible : " + this.noAvaStats.dump(j) + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE) + "Total time and # of event VPN is connected :" + this.vpnStats.dump(j);
    }

    public final String bigData(long j) {
        this.avaStats.dump(j);
        sb.setLength(0);
        sb.append("{");
        sb.append("\"GMST\":\"" + this.avaStats.mTime + "\",");
        sb.append("\"GMSC\":\"" + this.avaStats.mCount + "\",");
        this.noAvaStats.dump(j);
        sb.append("\"NGMST\":\"" + this.noAvaStats.mTime + "\",");
        sb.append("\"NGMSC\":\"" + this.noAvaStats.mCount + "\",");
        this.vpnStats.dump(j);
        sb.append("\"VPNT\":\"" + this.vpnStats.mTime + "\",");
        sb.append("\"VPNC\":\"" + this.vpnStats.mCount + "\"");
        sb.append("}");
        return sb.toString();
    }

    public void parseHostAndSetUrlFirewallRule(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Slog.d("GmsAlarmManager", "[GMS-CORE] parseHostAndSetUrlFirewallRule host = " + str);
            InetAddress[] allByName = InetAddress.getAllByName(str);
            for (int i = 0; i < allByName.length; i++) {
                String hostAddress = allByName[i].getHostAddress();
                Slog.d("GmsAlarmManager", allByName[i].getHostAddress());
                arrayList.add(hostAddress);
            }
            if (this.mCurrentIpList.size() == arrayList.size() && this.mCurrentIpList.containsAll(arrayList)) {
                return;
            }
            setUrlFirewallRule(true, this.mCurrentIpList);
            setUrlFirewallRule(false, arrayList);
            this.mCurrentIpList.clear();
            this.mCurrentIpList.addAll(arrayList);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
    }

    public void setUrlFirewallRule(boolean z, ArrayList arrayList) {
        try {
            if (this.mNetworkService == null && getNetworkManagementService() == null) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Slog.d("GmsAlarmManager", "[GMS-CORE] setUrlFirewallRule, ip = " + str + " isDeleteRule = " + z + " mGmsPkgUid = " + this.mGmsPkgUid);
                this.mNetworkService.setUrlFirewallRuleMobileData(this.mGmsPkgUid, str, z);
                this.mNetworkService.setUrlFirewallRuleWifi(this.mGmsPkgUid, str, z);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final ArrayList updateMultiUserGmsUid(int i) {
        PackageManager packageManager = this.mContext.getPackageManager();
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        Slog.d("GmsAlarmManager", "get Multi userId: " + i);
        if (i > -1) {
            try {
                int packageUidAsUser = packageManager.getPackageUidAsUser("com.google.android.gms", 0, i);
                int packageUidAsUser2 = packageManager.getPackageUidAsUser("com.android.vending", 0, i);
                int packageUidAsUser3 = packageManager.getPackageUidAsUser("com.google.android.configupdater", 0, i);
                arrayList.add(Integer.valueOf(packageUidAsUser));
                arrayList.add(Integer.valueOf(packageUidAsUser3));
                Slog.v("GmsAlarmManager", "gmsuid = " + packageUidAsUser + " vendinguid = " + packageUidAsUser2 + " configupdate = " + packageUidAsUser3);
            } catch (PackageManager.NameNotFoundException e) {
                Slog.v("GmsAlarmManager", "NameNotFoundException" + e);
            }
        }
        return arrayList;
    }

    public final void updateSCPMParametersFromDB() {
        if (DEBUG_SCPM) {
            Slog.d("GmsAlarmManager", "updateSCPMParametersFromDB");
        }
        if (isSCPMAvailable()) {
            if (isNeedUpdateSCPMPolicy() && hasValidItemFromDB()) {
                getSCPMPolicyItemFromDB();
                this.mHandler.sendEmptyMessage(12);
            } else {
                Slog.d("GmsAlarmManager", "scpm doesn't find the Policy name for gmsnet");
            }
        }
    }

    public final boolean isSCPMAvailable() {
        if (DEBUG_SCPM) {
            Slog.d("GmsAlarmManager", "isSCPMAvailable");
        }
        return this.mContext.getPackageManager().resolveContentProvider("com.samsung.android.sm.policy", 0) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
    
        r2 = r8.getString(r8.getColumnIndex("policyName"));
        r3 = r8.getString(r8.getColumnIndex("policyVersion"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if ("gmsnet".equals(r2) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        android.util.Slog.d("GmsAlarmManager", "isNeedUpdateSCPMPolicy: policyName=" + r2 + " , policyVersion=" + r3);
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0067, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
    
        if (r8 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        if (r8.moveToNext() == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isNeedUpdateSCPMPolicy() {
        /*
            r8 = this;
            boolean r0 = com.android.server.alarm.GmsAlarmManager.DEBUG_SCPM
            java.lang.String r1 = "GmsAlarmManager"
            if (r0 == 0) goto Lb
            java.lang.String r0 = "isNeedUpdateSCPMPolicy"
            android.util.Slog.d(r1, r0)
        Lb:
            android.content.Context r0 = r8.mContext     // Catch: java.lang.Exception -> L1c
            android.content.ContentResolver r2 = r0.getContentResolver()     // Catch: java.lang.Exception -> L1c
            android.net.Uri r3 = r8.SCPM_URI_POLICY     // Catch: java.lang.Exception -> L1c
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r8 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L1c
            goto L23
        L1c:
            java.lang.String r8 = "policy list is null"
            android.util.Slog.d(r1, r8)
            r8 = 0
        L23:
            r0 = 0
            if (r8 == 0) goto L6a
        L26:
            boolean r2 = r8.moveToNext()
            if (r2 == 0) goto L67
            java.lang.String r2 = "policyName"
            int r2 = r8.getColumnIndex(r2)
            java.lang.String r2 = r8.getString(r2)
            java.lang.String r3 = "policyVersion"
            int r3 = r8.getColumnIndex(r3)
            java.lang.String r3 = r8.getString(r3)
            java.lang.String r4 = "gmsnet"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L26
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = "isNeedUpdateSCPMPolicy: policyName="
            r0.append(r4)
            r0.append(r2)
            java.lang.String r2 = " , policyVersion="
            r0.append(r2)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            android.util.Slog.d(r1, r0)
            r0 = 1
        L67:
            r8.close()
        L6a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.alarm.GmsAlarmManager.isNeedUpdateSCPMPolicy():boolean");
    }

    public final boolean hasValidItemFromDB() {
        Cursor cursor;
        String[] strArr = {"item", "category", "data1"};
        Slog.d("GmsAlarmManager", "hasValidItemFromDB!!");
        try {
            cursor = this.mContext.getContentResolver().query(this.SCPM_URI_GNET, strArr, null, null, null);
        } catch (Exception e) {
            Slog.e("GmsAlarmManager", "Exception with contentResolver : " + e.getMessage());
            e.printStackTrace();
            cursor = null;
        }
        boolean z = false;
        if (cursor != null) {
            while (true) {
                if (!cursor.moveToNext()) {
                    break;
                }
                if (cursor.getString(0) != null) {
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    if ("checkin_addr".equals(string) && "whitelist".equals(string2)) {
                        this.mCheckinServerUrl.clear();
                        z = true;
                        break;
                    }
                }
            }
            cursor.close();
        } else {
            Slog.e("GmsAlarmManager", "hasValidItemFromDB error, no database!!");
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ed, code lost:
    
        if (r3.equals("network_restriction") == false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getSCPMPolicyItemFromDB() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.alarm.GmsAlarmManager.getSCPMPolicyItemFromDB():void");
    }

    public void doDump(PrintWriter printWriter) {
        printWriter.println("  <GmsAlarmManager>");
        printWriter.println("isChinaMode:" + this.isChinaMode);
        printWriter.println("isHongKongMode:" + this.isHongKongMode);
        printWriter.println("mGmsPkgUid:" + this.mGmsPkgUid);
        if ((this.isChinaMode || this.isHongKongMode) && this.mGmsPkgUid != -1) {
            printWriter.println("mVendingUid:" + this.mVendingUid);
            printWriter.println("mConfigupdaterUid:" + this.mConfigupdaterUid);
            Iterator it = this.mGmsUidOfMultiUser.iterator();
            while (it.hasNext()) {
                printWriter.println("MultiUidList: " + ((Integer) it.next()).intValue());
            }
            printWriter.println("mUserEnable:" + this.mUserEnable);
            printWriter.println("mWaitCheckNetWork:" + this.mWaitCheckNetWork);
            printWriter.println("mGoogleNetWork:" + this.mGoogleNetWork);
            printWriter.println("isGmsNetWorkLimt:" + this.isGmsNetWorkLimt);
            printWriter.println("mScreenOn:" + this.mScreenOn);
            printWriter.println("mScreenOffChange:" + this.mScreenOffChange);
            printWriter.println("isCharging:" + this.isCharging);
            printWriter.println("mPolicyControlSwitch:" + Integer.toBinaryString(this.mPolicyControlSwitch));
            printWriter.println(dumpNetStats(SystemClock.elapsedRealtime()));
            Iterator it2 = this.mCheckinServerUrl.iterator();
            while (it2.hasNext()) {
                printWriter.println("mCheckinServerUrl:" + ((String) it2.next()));
            }
        }
    }
}
