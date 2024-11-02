.class public final Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# static fields
.field public static final DATA_SETTINGS:Landroid/content/Intent;

.field public static final DATA_SETTINGS_UPSM:Landroid/content/Intent;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mIsVoLteCall:Z

.field public mIsVolteVideoCall:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mPhoneStateListener:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$4;

.field public final mSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubscreenContext:Landroid/content/Context;

.field public mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

.field public final mSubscreenUtil:Lcom/android/systemui/qp/util/SubscreenUtil;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.settings.DATA_USAGE_SETTINGS"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/qp/util/SubscreenUtil;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p10

    .line 3
    .line 4
    move-object/from16 v2, p14

    .line 5
    .line 6
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 12
    .line 13
    .line 14
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    .line 15
    .line 16
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 19
    .line 20
    .line 21
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    .line 22
    .line 23
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    .line 24
    .line 25
    new-instance v4, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/os/Handler;)V

    .line 31
    .line 32
    .line 33
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    .line 34
    .line 35
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    .line 36
    .line 37
    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 40
    .line 41
    const-string v6, "mobile_data"

    .line 42
    .line 43
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    .line 47
    .line 48
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 53
    .line 54
    const-string v6, "airplane_mode_on"

    .line 55
    .line 56
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    .line 60
    .line 61
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 62
    .line 63
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 64
    .line 65
    iget-object v3, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 66
    .line 67
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 72
    .line 73
    move-object/from16 v1, p11

    .line 74
    .line 75
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 76
    .line 77
    move-object v1, p8

    .line 78
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 79
    .line 80
    move-object/from16 v1, p12

    .line 81
    .line 82
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 83
    .line 84
    move-object/from16 v1, p13

    .line 85
    .line 86
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 87
    .line 88
    move-object/from16 v1, p16

    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 91
    .line 92
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 93
    .line 94
    move-object/from16 v1, p15

    .line 95
    .line 96
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 97
    .line 98
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    .line 105
    .line 106
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 107
    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    move-object/from16 v1, p17

    .line 111
    .line 112
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 113
    .line 114
    move-object/from16 v1, p18

    .line 115
    .line 116
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenUtil:Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 117
    .line 118
    const-class v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    sget-object v1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenContext:Landroid/content/Context;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    .line 134
    .line 135
    if-nez v1, :cond_0

    .line 136
    .line 137
    if-eqz v2, :cond_0

    .line 138
    .line 139
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    .line 145
    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    .line 147
    .line 148
    const-string v3, "MOBILEDATA_STATE_CHANGE"

    .line 149
    .line 150
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 155
    .line 156
    const/4 v5, 0x2

    .line 157
    const/4 v6, 0x0

    .line 158
    move-object/from16 p0, p14

    .line 159
    .line 160
    move-object p1, v1

    .line 161
    move-object p2, v0

    .line 162
    move-object p3, v3

    .line 163
    move-object p4, v4

    .line 164
    move p5, v5

    .line 165
    move-object p6, v6

    .line 166
    invoke-virtual/range {p0 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenContext:Landroid/content/Context;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    return-object p0
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 11

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMobileDataTileBlocked()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_6

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 23
    .line 24
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isUserMobileDataRestricted()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 51
    .line 52
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-nez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    const v1, 0x7f13072e

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const v1, 0x7f13072f

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const v6, 0x104000a

    .line 102
    .line 103
    .line 104
    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    const/16 v0, 0x9

    .line 107
    .line 108
    invoke-direct {v7, p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 109
    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    move-object v3, p0

    .line 115
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    return-object v2

    .line 119
    :cond_3
    sget-object p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_5

    .line 127
    .line 128
    new-instance p0, Landroid/content/Intent;

    .line 129
    .line 130
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v0, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string/jumbo v0, "root_key"

    .line 140
    .line 141
    .line 142
    const-string v1, "T_GLOBAL_ROAMING"

    .line 143
    .line 144
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const/high16 v0, 0x10000000

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_5
    sget-object p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 157
    .line 158
    .line 159
    return-object v2
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x73

    .line 2
    .line 3
    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f130dda

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne v1, v4, :cond_3

    .line 27
    .line 28
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_2
    const v0, 0x7f130b48

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2, v3}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v5, "handleClick : state "

    .line 50
    .line 51
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 55
    .line 56
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 57
    .line 58
    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, " is enabled :  "

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 87
    .line 88
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 89
    .line 90
    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 102
    .line 103
    check-cast v7, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 104
    .line 105
    invoke-virtual {v7}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMobileDataTileBlocked()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void

    .line 127
    :cond_6
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_7

    .line 132
    .line 133
    const v1, 0x7f13072e

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const v3, 0x7f13072f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const v3, 0x104000a

    .line 148
    .line 149
    .line 150
    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {v5, p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 153
    .line 154
    .line 155
    const/4 v6, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    move-object v0, p0

    .line 159
    move-object v4, v5

    .line 160
    move v5, v6

    .line 161
    move-object v6, v7

    .line 162
    move-object v7, v8

    .line 163
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_7
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_a

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_a

    .line 178
    .line 179
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 184
    .line 185
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 188
    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    iget-boolean v1, v1, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 192
    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    move v1, v4

    .line 196
    goto :goto_1

    .line 197
    :cond_8
    move v1, v3

    .line 198
    :goto_1
    if-nez v1, :cond_a

    .line 199
    .line 200
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 201
    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 213
    .line 214
    .line 215
    :goto_2
    return-void

    .line 216
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 217
    .line 218
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 219
    .line 220
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 221
    .line 222
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 223
    .line 224
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 225
    .line 226
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 227
    .line 228
    if-eqz v7, :cond_e

    .line 229
    .line 230
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_e

    .line 235
    .line 236
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    invoke-virtual {v10, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-nez v7, :cond_e

    .line 245
    .line 246
    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-eqz v7, :cond_e

    .line 251
    .line 252
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 253
    .line 254
    check-cast v7, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 255
    .line 256
    iget-boolean v7, v7, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 257
    .line 258
    if-eq v7, v4, :cond_c

    .line 259
    .line 260
    if-nez v7, :cond_e

    .line 261
    .line 262
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-eqz v7, :cond_e

    .line 267
    .line 268
    iget-object v7, v9, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 269
    .line 270
    const-string v11, "mobile_data_question"

    .line 271
    .line 272
    invoke-virtual {v7, v11}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-ne v7, v4, :cond_b

    .line 281
    .line 282
    move v7, v4

    .line 283
    goto :goto_3

    .line 284
    :cond_b
    move v7, v3

    .line 285
    :goto_3
    if-eqz v7, :cond_e

    .line 286
    .line 287
    :cond_c
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 288
    .line 289
    if-eqz v1, :cond_d

    .line 290
    .line 291
    if-eqz v8, :cond_d

    .line 292
    .line 293
    iget-boolean v1, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 294
    .line 295
    if-nez v1, :cond_d

    .line 296
    .line 297
    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 298
    .line 299
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 304
    .line 305
    const-string v1, "MOBILEDATA_STATE_CHANGE"

    .line 306
    .line 307
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_d
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda1;

    .line 312
    .line 313
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/view/View;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 317
    .line 318
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v11, "isKeyguardVisible() = "

    .line 325
    .line 326
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 330
    .line 331
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", isSecure() = "

    .line 335
    .line 336
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v1, ", canSkipBouncer() = "

    .line 347
    .line 348
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    invoke-virtual {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v1, ", isLockFunctionsEnabled() = "

    .line 363
    .line 364
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    const v7, 0x7f130b4c

    .line 386
    .line 387
    .line 388
    const/4 v9, 0x0

    .line 389
    if-eqz v1, :cond_15

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_13

    .line 396
    .line 397
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    const-string v5, "data_roaming"

    .line 402
    .line 403
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-ne v1, v4, :cond_f

    .line 408
    .line 409
    move v1, v4

    .line 410
    goto :goto_4

    .line 411
    :cond_f
    move v1, v3

    .line 412
    :goto_4
    xor-int/2addr v1, v4

    .line 413
    const-string/jumbo v4, "setDataRoaming "

    .line 414
    .line 415
    .line 416
    invoke-static {v4, v1, v6}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    if-eqz v1, :cond_10

    .line 420
    .line 421
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 422
    .line 423
    invoke-interface {v0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 424
    .line 425
    .line 426
    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    .line 427
    .line 428
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    const-string/jumbo v2, "roaming_data_popup"

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v0, v2, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 440
    .line 441
    .line 442
    goto/16 :goto_a

    .line 443
    .line 444
    :cond_10
    const-string/jumbo v4, "phone"

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 452
    .line 453
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    .line 454
    .line 455
    .line 456
    sget-boolean v4, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    .line 457
    .line 458
    if-eqz v4, :cond_11

    .line 459
    .line 460
    new-instance v9, Landroid/content/Intent;

    .line 461
    .line 462
    const-string v4, "kr.co.uplus.RESTRICT_BACKGROUND"

    .line 463
    .line 464
    invoke-direct {v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v4, "ENABLED"

    .line 468
    .line 469
    invoke-virtual {v9, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    .line 471
    .line 472
    :cond_11
    if-eqz v9, :cond_20

    .line 473
    .line 474
    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    .line 476
    .line 477
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 478
    .line 479
    if-eqz v1, :cond_12

    .line 480
    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext()Landroid/content/Context;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    :cond_12
    const v0, 0x7f130b33

    .line 486
    .line 487
    .line 488
    invoke-static {v0, v2, v3}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_a

    .line 496
    .line 497
    :cond_13
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_14

    .line 502
    .line 503
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    invoke-static {v1}, Lcom/android/systemui/Operator;->getMessageIdForMobileDataOnOffPopup(Z)I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    const v4, 0x7f130f20

    .line 520
    .line 521
    .line 522
    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 523
    .line 524
    const/4 v1, 0x3

    .line 525
    invoke-direct {v5, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 526
    .line 527
    .line 528
    const v6, 0x7f130d79

    .line 529
    .line 530
    .line 531
    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 532
    .line 533
    const/4 v1, 0x4

    .line 534
    invoke-direct {v7, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 535
    .line 536
    .line 537
    const/4 v9, 0x0

    .line 538
    move-object v0, p0

    .line 539
    move-object v1, v3

    .line 540
    move v3, v4

    .line 541
    move-object v4, v5

    .line 542
    move v5, v6

    .line 543
    move-object v6, v7

    .line 544
    move-object v7, v9

    .line 545
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_a

    .line 549
    .line 550
    :cond_14
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    invoke-static {v1}, Lcom/android/systemui/Operator;->getMessageIdForMobileDataOnOffPopup(Z)I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    const v4, 0x104000a

    .line 567
    .line 568
    .line 569
    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 570
    .line 571
    const/4 v1, 0x5

    .line 572
    invoke-direct {v5, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 573
    .line 574
    .line 575
    const v6, 0x7f130d79

    .line 576
    .line 577
    .line 578
    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 579
    .line 580
    const/4 v1, 0x6

    .line 581
    invoke-direct {v7, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 582
    .line 583
    .line 584
    const/4 v9, 0x0

    .line 585
    move-object v0, p0

    .line 586
    move-object v1, v3

    .line 587
    move v3, v4

    .line 588
    move-object v4, v5

    .line 589
    move v5, v6

    .line 590
    move-object v6, v7

    .line 591
    move-object v7, v9

    .line 592
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_a

    .line 596
    .line 597
    :cond_15
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    if-eqz v1, :cond_1c

    .line 602
    .line 603
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_1c

    .line 608
    .line 609
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    const-string v7, "mobile_data_off_popup_show_again"

    .line 614
    .line 615
    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_16

    .line 620
    .line 621
    goto :goto_5

    .line 622
    :cond_16
    move v4, v3

    .line 623
    :goto_5
    const-string v1, "handleClick : doNotShowAgainChecked :  "

    .line 624
    .line 625
    invoke-static {v1, v4, v6}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 626
    .line 627
    .line 628
    if-eqz v4, :cond_17

    .line 629
    .line 630
    invoke-virtual {v5, v3}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_a

    .line 637
    .line 638
    :cond_17
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 639
    .line 640
    if-eqz v1, :cond_18

    .line 641
    .line 642
    const v1, 0x7f130b4e

    .line 643
    .line 644
    .line 645
    goto :goto_6

    .line 646
    :cond_18
    const v1, 0x7f130b4d

    .line 647
    .line 648
    .line 649
    :goto_6
    invoke-static {}, Lcom/android/systemui/Operator;->getMessageIdMobileDataOff()I

    .line 650
    .line 651
    .line 652
    move-result v4

    .line 653
    const-string v5, "layout_inflater"

    .line 654
    .line 655
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    check-cast v5, Landroid/view/LayoutInflater;

    .line 660
    .line 661
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 662
    .line 663
    const v7, 0x7f0a0359

    .line 664
    .line 665
    .line 666
    const v10, 0x7f0a06a3

    .line 667
    .line 668
    .line 669
    if-eqz v6, :cond_1b

    .line 670
    .line 671
    if-eqz v8, :cond_1b

    .line 672
    .line 673
    iget-boolean v6, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 674
    .line 675
    if-nez v6, :cond_1b

    .line 676
    .line 677
    const v3, 0x7f0d0444

    .line 678
    .line 679
    .line 680
    invoke-virtual {v5, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    check-cast v5, Landroid/widget/TextView;

    .line 689
    .line 690
    const v6, 0x7f0712f0

    .line 691
    .line 692
    .line 693
    const v9, 0x3fa66666    # 1.3f

    .line 694
    .line 695
    .line 696
    const v10, 0x3f666666    # 0.9f

    .line 697
    .line 698
    .line 699
    if-nez v5, :cond_19

    .line 700
    .line 701
    goto :goto_7

    .line 702
    :cond_19
    invoke-static {v5, v6, v10, v9}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 703
    .line 704
    .line 705
    :goto_7
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 706
    .line 707
    .line 708
    move-result-object v7

    .line 709
    check-cast v7, Landroid/widget/CheckBox;

    .line 710
    .line 711
    if-nez v7, :cond_1a

    .line 712
    .line 713
    goto :goto_8

    .line 714
    :cond_1a
    invoke-static {v7, v6, v10, v9}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 715
    .line 716
    .line 717
    :goto_8
    move-object v9, v3

    .line 718
    goto :goto_9

    .line 719
    :cond_1b
    const v6, 0x7f0d035f

    .line 720
    .line 721
    .line 722
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    check-cast v6, Landroid/widget/TextView;

    .line 731
    .line 732
    const-string/jumbo v9, "sec"

    .line 733
    .line 734
    .line 735
    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    const/16 v10, 0x190

    .line 740
    .line 741
    invoke-static {v9, v10, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 749
    .line 750
    .line 751
    move-result-object v7

    .line 752
    check-cast v7, Landroid/widget/CheckBox;

    .line 753
    .line 754
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 755
    .line 756
    .line 757
    move-object v9, v5

    .line 758
    move-object v5, v6

    .line 759
    :goto_9
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v3

    .line 763
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    .line 765
    .line 766
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda2;

    .line 767
    .line 768
    invoke-direct {v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda2;-><init>()V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    const/4 v2, 0x0

    .line 779
    const v3, 0x7f130f20

    .line 780
    .line 781
    .line 782
    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda3;

    .line 783
    .line 784
    invoke-direct {v4, p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V

    .line 785
    .line 786
    .line 787
    const v5, 0x7f130d79

    .line 788
    .line 789
    .line 790
    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 791
    .line 792
    const/4 v7, 0x7

    .line 793
    invoke-direct {v6, p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 794
    .line 795
    .line 796
    move-object v0, p0

    .line 797
    move-object v7, v9

    .line 798
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 799
    .line 800
    .line 801
    goto :goto_a

    .line 802
    :cond_1c
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    .line 803
    .line 804
    if-nez v1, :cond_1d

    .line 805
    .line 806
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KDI_BRANDING:Z

    .line 807
    .line 808
    if-nez v1, :cond_1d

    .line 809
    .line 810
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SBM_BRANDING:Z

    .line 811
    .line 812
    if-nez v1, :cond_1d

    .line 813
    .line 814
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XJP_BRANDING:Z

    .line 815
    .line 816
    if-nez v1, :cond_1d

    .line 817
    .line 818
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_RKT_BRANDING:Z

    .line 819
    .line 820
    if-eqz v1, :cond_1e

    .line 821
    .line 822
    :cond_1d
    move v3, v4

    .line 823
    :cond_1e
    if-eqz v3, :cond_1f

    .line 824
    .line 825
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    if-eqz v1, :cond_1f

    .line 830
    .line 831
    invoke-static {}, Lcom/android/systemui/Operator;->getMessageIdMobileDataOff()I

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    const v4, 0x7f130f20

    .line 844
    .line 845
    .line 846
    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 847
    .line 848
    const/16 v1, 0x8

    .line 849
    .line 850
    invoke-direct {v5, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 851
    .line 852
    .line 853
    const v6, 0x7f130d79

    .line 854
    .line 855
    .line 856
    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 857
    .line 858
    const/4 v1, 0x2

    .line 859
    invoke-direct {v7, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 860
    .line 861
    .line 862
    const/4 v9, 0x0

    .line 863
    move-object v0, p0

    .line 864
    move-object v1, v3

    .line 865
    move v3, v4

    .line 866
    move-object v4, v5

    .line 867
    move v5, v6

    .line 868
    move-object v6, v7

    .line 869
    move-object v7, v9

    .line 870
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 871
    .line 872
    .line 873
    goto :goto_a

    .line 874
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 875
    .line 876
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 877
    .line 878
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 879
    .line 880
    xor-int/2addr v0, v4

    .line 881
    invoke-virtual {v5, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 882
    .line 883
    .line 884
    :cond_20
    :goto_a
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 885
    .line 886
    if-eqz v0, :cond_21

    .line 887
    .line 888
    if-eqz v8, :cond_21

    .line 889
    .line 890
    iget-boolean v0, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 891
    .line 892
    if-nez v0, :cond_21

    .line 893
    .line 894
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 895
    .line 896
    const-string v1, "QPBE2020"

    .line 897
    .line 898
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    :cond_21
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v2, :cond_1

    .line 12
    .line 13
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    const p0, 0x7f130b48

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 39
    .line 40
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMobileDataTileBlocked()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_6

    .line 47
    .line 48
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 53
    .line 54
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isUserMobileDataRestricted()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    const p1, 0x7f13072e

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const p1, 0x7f13072f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const v5, 0x104000a

    .line 86
    .line 87
    .line 88
    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-direct {v6, p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 91
    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    move-object v2, p0

    .line 97
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 118
    .line 119
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    iget-boolean p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    move v0, v2

    .line 130
    :cond_4
    if-nez v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    if-eqz p1, :cond_6

    .line 25
    .line 26
    check-cast v6, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 27
    .line 28
    invoke-virtual {v6, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 37
    .line 38
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_5

    .line 57
    .line 58
    :cond_1
    if-eqz v5, :cond_2

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const-string/jumbo v3, "registerPhoneStateListener"

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    const-string/jumbo v3, "phone"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 81
    .line 82
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    .line 84
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 91
    .line 92
    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    .line 96
    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "data_roaming"

    .line 111
    .line 112
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {v2, v6, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    check-cast v6, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 125
    .line 126
    invoke-virtual {v6, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-nez v6, :cond_7

    .line 134
    .line 135
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_a

    .line 140
    .line 141
    :cond_7
    if-eqz v5, :cond_8

    .line 142
    .line 143
    iget-object v6, v5, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    .line 144
    .line 145
    iget-object v6, v6, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    .line 146
    .line 147
    check-cast v6, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    .line 153
    .line 154
    .line 155
    :cond_8
    const-string/jumbo v3, "unregisterPhoneStateListener"

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    .line 162
    .line 163
    if-eqz v3, :cond_9

    .line 164
    .line 165
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 166
    .line 167
    if-eqz v4, :cond_9

    .line 168
    .line 169
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_a

    .line 177
    .line 178
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    invoke-virtual {v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    .line 187
    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    const-string p2, "no_config_mobile_networks"

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f080deb

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const v1, 0x7f130d9a

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq v0, v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v0, "data_roaming"

    .line 53
    .line 54
    invoke-static {p2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-ne p2, v4, :cond_0

    .line 59
    .line 60
    move p2, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move p2, v3

    .line 63
    :goto_0
    if-eqz p2, :cond_1

    .line 64
    .line 65
    move p2, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move p2, v3

    .line 68
    :goto_1
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_2
    const p2, 0x7f130dda

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eq p2, v4, :cond_3

    .line 99
    .line 100
    move p2, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move p2, v3

    .line 103
    :goto_2
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 104
    .line 105
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, "handleUpdateState : state "

    .line 108
    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 127
    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    const/4 p2, 0x2

    .line 131
    goto :goto_4

    .line 132
    :cond_4
    move p2, v4

    .line 133
    :goto_4
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 134
    .line 135
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 136
    .line 137
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_5

    .line 142
    .line 143
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    .line 144
    .line 145
    if-eqz p0, :cond_5

    .line 146
    .line 147
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 148
    .line 149
    :cond_5
    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 20
    .line 21
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public final isNetworkRoaming()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "getDefaultDataPhoneId "

    .line 22
    .line 23
    invoke-static {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    if-gez v2, :cond_1

    .line 33
    .line 34
    move v2, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x1

    .line 37
    if-le v2, v3, :cond_2

    .line 38
    .line 39
    move v2, v3

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :cond_3
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const-string v0, "isNetworkRoaming : Roaming state"

    .line 53
    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_4
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setMobileDataEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setMobileDataEnabled:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v4, p3

    .line 3
    .line 4
    move/from16 v6, p5

    .line 5
    .line 6
    move-object/from16 v7, p6

    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 9
    .line 10
    const v2, 0x7f140560

    .line 11
    .line 12
    .line 13
    iget-object v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenUtil:Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda4;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda4;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    new-instance v9, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;

    .line 48
    .line 49
    move-object v0, v10

    .line 50
    move-object v1, p0

    .line 51
    move-object v2, p1

    .line 52
    move-object/from16 v3, p2

    .line 53
    .line 54
    move/from16 v4, p3

    .line 55
    .line 56
    move-object/from16 v5, p4

    .line 57
    .line 58
    move/from16 v6, p5

    .line 59
    .line 60
    move-object/from16 v7, p6

    .line 61
    .line 62
    move-object/from16 v8, p7

    .line 63
    .line 64
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v0, 0xfa

    .line 68
    .line 69
    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Lcom/android/systemui/util/SystemUIDialogUtils;->createSystemUIDialogUtils(ILandroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 83
    .line 84
    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    move-object v2, p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v2, p2

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    if-eqz p7, :cond_3

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const v3, 0x7f070188

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    const/4 v11, 0x0

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    const/4 v13, 0x0

    .line 115
    move-object v8, v0

    .line 116
    move-object/from16 v9, p7

    .line 117
    .line 118
    invoke-virtual/range {v8 .. v13}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 119
    .line 120
    .line 121
    :cond_3
    if-eqz v4, :cond_4

    .line 122
    .line 123
    move-object/from16 v2, p4

    .line 124
    .line 125
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    if-eqz v6, :cond_5

    .line 129
    .line 130
    if-eqz v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 136
    .line 137
    invoke-interface {v2}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda6;

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    .line 151
    .line 152
    return-void
.end method
