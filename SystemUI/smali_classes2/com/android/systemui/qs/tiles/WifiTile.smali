.class public final Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field public mDetailListening:Z

.field public final mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public mExpectDisabled:Z

.field public final mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$1;

.field public final mHandler:Landroid/os/Handler;

.field public mIsHavingConvertView:Z

.field public mIsTransientEnabled:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

.field public mWifiConnected:Z

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p10

    .line 3
    .line 4
    move-object/from16 v2, p16

    .line 5
    .line 6
    move-object/from16 v3, p17

    .line 7
    .line 8
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 12
    .line 13
    const v5, 0x7f080e9e

    .line 14
    .line 15
    .line 16
    const v6, 0x7f080eac

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 23
    .line 24
    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 25
    .line 26
    const v5, 0x7f080e93

    .line 27
    .line 28
    .line 29
    const v6, 0x7f080ea8

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 36
    .line 37
    new-instance v4, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 38
    .line 39
    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 40
    .line 41
    .line 42
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 43
    .line 44
    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 45
    .line 46
    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    iput-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    iput-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    .line 56
    .line 57
    iput-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    .line 58
    .line 59
    new-instance v8, Lcom/android/systemui/qs/tiles/WifiTile$1;

    .line 60
    .line 61
    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 62
    .line 63
    .line 64
    iput-object v8, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$1;

    .line 65
    .line 66
    move-object v9, p4

    .line 67
    iput-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 70
    .line 71
    move-object/from16 v9, p11

    .line 72
    .line 73
    iput-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 74
    .line 75
    new-instance v9, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 76
    .line 77
    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 78
    .line 79
    .line 80
    iput-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 81
    .line 82
    iget-object v9, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 83
    .line 84
    invoke-interface {v1, v9, v4}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v1, "wifi"

    .line 88
    .line 89
    .line 90
    iput-object v1, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 91
    .line 92
    move-object/from16 v4, p12

    .line 93
    .line 94
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 95
    .line 96
    move-object/from16 v4, p13

    .line 97
    .line 98
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 99
    .line 100
    const-string v4, "device_policy"

    .line 101
    .line 102
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 111
    .line 112
    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 119
    .line 120
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    .line 122
    move-object/from16 v1, p14

    .line 123
    .line 124
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 125
    .line 126
    iput-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsHavingConvertView:Z

    .line 127
    .line 128
    move-object/from16 v1, p15

    .line 129
    .line 130
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 131
    .line 132
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 133
    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 137
    .line 138
    const-class v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 145
    .line 146
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 147
    .line 148
    if-eqz v2, :cond_1

    .line 149
    .line 150
    invoke-virtual {v2, v8}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    iput-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$1;

    .line 155
    .line 156
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 157
    .line 158
    if-eqz v1, :cond_2

    .line 159
    .line 160
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 163
    .line 164
    if-nez v1, :cond_2

    .line 165
    .line 166
    if-eqz v3, :cond_2

    .line 167
    .line 168
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 169
    .line 170
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 171
    .line 172
    .line 173
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 174
    .line 175
    new-instance v2, Landroid/content/IntentFilter;

    .line 176
    .line 177
    const-string v4, "WIFI_STATE_CHANGE"

    .line 178
    .line 179
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 v4, 0x0

    .line 183
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 184
    .line 185
    const/4 v6, 0x2

    .line 186
    const-string v7, "com.samsung.systemui.permission.WIFI_STATE_CHANGE"

    .line 187
    .line 188
    move-object/from16 p1, p17

    .line 189
    .line 190
    move-object p2, v1

    .line 191
    move-object p3, v2

    .line 192
    move-object p4, v4

    .line 193
    move-object p5, v5

    .line 194
    move/from16 p6, v6

    .line 195
    .line 196
    move-object/from16 p7, v7

    .line 197
    .line 198
    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_2
    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 202
    .line 203
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 204
    .line 205
    .line 206
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 207
    .line 208
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 215
    .line 216
    new-instance v2, Landroid/content/IntentFilter;

    .line 217
    .line 218
    const-string v3, "com.samsung.android.server.wifi.softap.smarttethering.collapseQuickPanel"

    .line 219
    .line 220
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-le v1, v2, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x22

    .line 18
    .line 19
    if-ne v3, v4, :cond_2

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v3, v4, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "\\s+$"

    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-gtz v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v0, p0

    .line 48
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-object p0, v0

    .line 50
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7e

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
    const v0, 0x7f130dfc

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 34
    .line 35
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 36
    .line 37
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 45
    .line 46
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 73
    .line 74
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 75
    .line 76
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 77
    .line 78
    if-ne v1, v2, :cond_3

    .line 79
    .line 80
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    iget-boolean v0, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    const-class p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string v0, "WIFI_STATE_CHANGE"

    .line 101
    .line 102
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v4, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "isShowing() = "

    .line 118
    .line 119
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, ", isSecure() = "

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, ", canSkipBouncer() = "

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    xor-int/2addr v0, v2

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, ", isLockFunctionsEnabled() = "

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 178
    .line 179
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    const/4 v1, 0x0

    .line 186
    if-nez p1, :cond_4

    .line 187
    .line 188
    new-instance p0, Landroid/content/Intent;

    .line 189
    .line 190
    const-string p1, "android.settings.WIFI_SETTINGS"

    .line 191
    .line 192
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v4, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 200
    .line 201
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 202
    .line 203
    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 204
    .line 205
    if-nez v2, :cond_5

    .line 206
    .line 207
    const-string p0, "handleClick pass enabling or disabling "

    .line 208
    .line 209
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 219
    .line 220
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 221
    .line 222
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 223
    .line 224
    if-nez v2, :cond_6

    .line 225
    .line 226
    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 227
    .line 228
    const/4 v4, 0x2

    .line 229
    if-ne v2, v4, :cond_6

    .line 230
    .line 231
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 232
    .line 233
    iget-object v2, v2, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 234
    .line 235
    iget-boolean v2, v2, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 236
    .line 237
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 238
    .line 239
    const-string p1, "handleClick refresh value "

    .line 240
    .line 241
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 245
    .line 246
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 247
    .line 248
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 249
    .line 250
    const-string v2, "handleClick "

    .line 251
    .line 252
    invoke-static {v2, p1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    if-eqz p1, :cond_7

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    goto :goto_1

    .line 259
    :cond_7
    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 260
    .line 261
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    xor-int/lit8 v0, p1, 0x1

    .line 265
    .line 266
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 267
    .line 268
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    new-instance v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;

    .line 274
    .line 275
    invoke-direct {v4, v2, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V

    .line 276
    .line 277
    .line 278
    new-array v0, v1, [Ljava/lang/Void;

    .line 279
    .line 280
    invoke-virtual {v4, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    .line 282
    .line 283
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 284
    .line 285
    if-eqz p1, :cond_8

    .line 286
    .line 287
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda1;

    .line 288
    .line 289
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 290
    .line 291
    .line 292
    const-wide/16 v0, 0x15e

    .line 293
    .line 294
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHandler:Landroid/os/Handler;

    .line 295
    .line 296
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    .line 298
    .line 299
    :cond_8
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 300
    .line 301
    if-eqz p0, :cond_9

    .line 302
    .line 303
    if-eqz v3, :cond_9

    .line 304
    .line 305
    iget-boolean p0, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 306
    .line 307
    if-nez p0, :cond_9

    .line 308
    .line 309
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 310
    .line 311
    const-string p1, "QPBE2015"

    .line 312
    .line 313
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_9
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 18
    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v1, "removing wififoreground"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$2;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "destroy exception:"

    .line 54
    .line 55
    invoke-static {v2, v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 15
    .line 16
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 20
    .line 21
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    new-instance p0, Landroid/os/Message;

    .line 34
    .line 35
    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x4a

    .line 39
    .line 40
    iput v1, p0, Landroid/os/Message;->what:I

    .line 41
    .line 42
    new-instance v1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "enable"

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const-string v0, "lock"

    .line 53
    .line 54
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "handleUpdateState arg="

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 29
    .line 30
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_c

    .line 45
    .line 46
    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 47
    .line 48
    :cond_2
    sget-object v4, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    if-ne p2, v4, :cond_3

    .line 52
    .line 53
    move p2, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move p2, v5

    .line 56
    :goto_0
    if-eqz v2, :cond_4

    .line 57
    .line 58
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 59
    .line 60
    if-lez v4, :cond_4

    .line 61
    .line 62
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    move v4, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v4, v5

    .line 69
    :goto_1
    iget v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 70
    .line 71
    if-lez v7, :cond_5

    .line 72
    .line 73
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v7, :cond_5

    .line 76
    .line 77
    move v7, v6

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    move v7, v5

    .line 80
    :goto_2
    iget-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 81
    .line 82
    if-eq v8, v2, :cond_6

    .line 83
    .line 84
    move v8, v6

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    move v8, v5

    .line 87
    :goto_3
    if-eqz v8, :cond_7

    .line 88
    .line 89
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 90
    .line 91
    invoke-virtual {v8, v2}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 95
    .line 96
    .line 97
    :cond_7
    if-nez p2, :cond_9

    .line 98
    .line 99
    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 100
    .line 101
    if-eqz v8, :cond_8

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_8
    move v8, v5

    .line 105
    goto :goto_5

    .line 106
    :cond_9
    :goto_4
    move v8, v6

    .line 107
    :goto_5
    const-string v9, "handleUpdateState isTransient="

    .line 108
    .line 109
    const-string v10, " transientEnabling ="

    .line 110
    .line 111
    const-string v11, " cb.isTransient="

    .line 112
    .line 113
    invoke-static {v9, v8, v10, p2, v11}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 118
    .line 119
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v9, " state.state = "

    .line 123
    .line 124
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 128
    .line 129
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v9, " mStateBeforeClick.value ="

    .line 133
    .line 134
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 138
    .line 139
    iget-boolean v9, v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 140
    .line 141
    const-string v10, " enabled ="

    .line 142
    .line 143
    invoke-static {p2, v9, v10, v2, v1}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 147
    .line 148
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 149
    .line 150
    if-eqz v2, :cond_a

    .line 151
    .line 152
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 153
    .line 154
    if-eqz p2, :cond_a

    .line 155
    .line 156
    move p2, v6

    .line 157
    goto :goto_6

    .line 158
    :cond_a
    move p2, v5

    .line 159
    :goto_6
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 160
    .line 161
    if-eqz v2, :cond_b

    .line 162
    .line 163
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 164
    .line 165
    if-eqz p2, :cond_b

    .line 166
    .line 167
    move p2, v6

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    move p2, v5

    .line 170
    :goto_7
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 173
    .line 174
    if-eqz v8, :cond_c

    .line 175
    .line 176
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    .line 177
    .line 178
    if-nez v1, :cond_c

    .line 179
    .line 180
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 181
    .line 182
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 189
    .line 190
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_c
    if-nez v2, :cond_d

    .line 194
    .line 195
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 196
    .line 197
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 204
    .line 205
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_d
    const/4 p2, 0x2

    .line 209
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 210
    .line 211
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    .line 212
    .line 213
    if-eqz v4, :cond_e

    .line 214
    .line 215
    const p2, 0x7f080eac

    .line 216
    .line 217
    .line 218
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 223
    .line 224
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 225
    .line 226
    check-cast p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_10

    .line 233
    .line 234
    iget-object p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    goto :goto_9

    .line 241
    :cond_e
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 242
    .line 243
    if-eqz v7, :cond_f

    .line 244
    .line 245
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_f
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 261
    .line 262
    :cond_10
    :goto_8
    const-string p2, ""

    .line 263
    .line 264
    :goto_9
    new-instance v1, Ljava/lang/StringBuffer;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .line 268
    .line 269
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 270
    .line 271
    if-eqz v2, :cond_11

    .line 272
    .line 273
    const v2, 0x7f13006f

    .line 274
    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_11
    const v2, 0x7f13006e

    .line 278
    .line 279
    .line 280
    :goto_a
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const-string v3, ","

    .line 285
    .line 286
    if-eqz v4, :cond_12

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    .line 303
    .line 304
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    .line 312
    .line 313
    goto :goto_b

    .line 314
    :cond_12
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 315
    .line 316
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    .line 327
    .line 328
    :goto_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 333
    .line 334
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 335
    .line 336
    :goto_c
    return-void
.end method

.method public final isAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final setDetailListening(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailListening:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailListening:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->addAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

    .line 42
    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->removeAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public final shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
