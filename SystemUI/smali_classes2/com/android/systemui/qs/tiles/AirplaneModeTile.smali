.class public final Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAirplaneTileModeChanged:Z

.field public mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

.field public mIsWiFiOnlyDevice:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

.field public final mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

.field public final mSubscreenContext:Landroid/content/Context;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/systemui/qs/QsEventLogger;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/connectivity/NetworkController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p10

    .line 3
    .line 4
    move-object/from16 v2, p19

    .line 5
    .line 6
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 22
    .line 23
    const v4, 0x7f080dd5

    .line 24
    .line 25
    .line 26
    const v5, 0x7f080de5

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 33
    .line 34
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 35
    .line 36
    const v4, 0x7f080dd4

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 40
    .line 41
    .line 42
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAirplaneTileModeChanged:Z

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 49
    .line 50
    new-instance v4, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    .line 51
    .line 52
    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    .line 56
    .line 57
    new-instance v5, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    .line 58
    .line 59
    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 60
    .line 61
    .line 62
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    .line 63
    .line 64
    move-object/from16 v5, p13

    .line 65
    .line 66
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    .line 68
    move-object/from16 v5, p16

    .line 69
    .line 70
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 71
    .line 72
    move-object/from16 v5, p11

    .line 73
    .line 74
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 75
    .line 76
    move-object/from16 v5, p12

    .line 77
    .line 78
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 79
    .line 80
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iput-boolean v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    .line 85
    .line 86
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 87
    .line 88
    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 89
    .line 90
    if-eqz v5, :cond_0

    .line 91
    .line 92
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 93
    .line 94
    const-class v3, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 101
    .line 102
    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 103
    .line 104
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v3, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    .line 122
    .line 123
    :goto_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 124
    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    .line 128
    .line 129
    if-nez v2, :cond_1

    .line 130
    .line 131
    if-eqz v1, :cond_1

    .line 132
    .line 133
    new-instance v2, Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    .line 134
    .line 135
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 136
    .line 137
    .line 138
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    .line 139
    .line 140
    new-instance v3, Landroid/content/IntentFilter;

    .line 141
    .line 142
    const-string v4, "AIRPLANE_MODE_CHANGE"

    .line 143
    .line 144
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 149
    .line 150
    const/4 v6, 0x2

    .line 151
    const-string v7, "com.samsung.systemui.permission.AIRPLANE_STATE_CHANGE"

    .line 152
    .line 153
    move-object/from16 p1, p10

    .line 154
    .line 155
    move-object p2, v2

    .line 156
    move-object p3, v3

    .line 157
    move-object p4, v4

    .line 158
    move-object p5, v5

    .line 159
    move p6, v6

    .line 160
    move-object p7, v7

    .line 161
    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 165
    .line 166
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 167
    .line 168
    const-string v3, "airplane_mode_on"

    .line 169
    .line 170
    move-object/from16 v4, p17

    .line 171
    .line 172
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 173
    .line 174
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    move-object p1, v1

    .line 179
    move-object p2, p0

    .line 180
    move-object/from16 p3, p15

    .line 181
    .line 182
    move-object p4, v2

    .line 183
    move-object p5, v3

    .line 184
    move p6, v4

    .line 185
    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 189
    .line 190
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    const-string/jumbo v2, "user"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Landroid/os/UserManager;

    .line 200
    .line 201
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUserManager:Landroid/os/UserManager;

    .line 202
    .line 203
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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenContext:Landroid/content/Context;

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
    .locals 1

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
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAirplaneModeTileBlocked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v0, "android.settings.AIRPLANE_MODE_SETTINGS"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x70

    .line 2
    .line 3
    return p0
.end method

.method public final getStringID(I)I
    .locals 1

    .line 1
    const v0, 0x7f13017b

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const v0, 0x7f130dc2

    .line 7
    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p0, 0x7f13017e

    .line 13
    .line 14
    .line 15
    if-ne p1, p0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_7

    .line 22
    .line 23
    const p1, 0x7f13017f

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const p0, 0x7f130c57

    .line 28
    .line 29
    .line 30
    if-ne p1, p0, :cond_7

    .line 31
    .line 32
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 33
    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    .line 37
    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    .line 41
    .line 42
    if-eqz p0, :cond_7

    .line 43
    .line 44
    :cond_2
    const p1, 0x7f130db3

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    const p1, 0x7f130179

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_5

    .line 77
    .line 78
    const p1, 0x7f130177

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    const p1, 0x7f130176

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_7

    .line 95
    .line 96
    const p1, 0x7f130175

    .line 97
    .line 98
    .line 99
    :cond_7
    :goto_1
    return p1
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f130d5e

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    iget-object v0, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 19
    .line 20
    const-string v5, "emergency_message_working_state"

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object p0, v4

    .line 42
    :goto_0
    const p1, 0x7f130181

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    sget-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 58
    .line 59
    const-string/jumbo v0, "telecom"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    xor-int/2addr v0, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v0, v1

    .line 77
    :goto_1
    const-string v5, "isTelephonyIdle() - "

    .line 78
    .line 79
    const-string v6, "DeviceState"

    .line 80
    .line 81
    invoke-static {v5, v0, v6}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 87
    .line 88
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 89
    .line 90
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move-object p0, v4

    .line 104
    :goto_2
    const p1, 0x7f130182

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 126
    .line 127
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAirplaneModeTileBlocked()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 148
    .line 149
    .line 150
    :goto_3
    return-void

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 152
    .line 153
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 154
    .line 155
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 156
    .line 157
    xor-int/lit8 v5, v0, 0x1

    .line 158
    .line 159
    const/16 v6, 0x70

    .line 160
    .line 161
    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 165
    .line 166
    if-nez v0, :cond_8

    .line 167
    .line 168
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_8

    .line 185
    .line 186
    new-instance p0, Landroid/content/Intent;

    .line 187
    .line 188
    const-string p1, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    .line 189
    .line 190
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v6, p0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_8
    const-string v7, "AirplaneModeTile"

    .line 198
    .line 199
    const-string v8, "handleClick"

    .line 200
    .line 201
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    sget-boolean v8, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    .line 205
    .line 206
    if-eqz v8, :cond_e

    .line 207
    .line 208
    const-string v8, "keyguard"

    .line 209
    .line 210
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    check-cast v8, Landroid/app/KeyguardManager;

    .line 215
    .line 216
    if-eqz v8, :cond_c

    .line 217
    .line 218
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-eqz v9, :cond_c

    .line 223
    .line 224
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_c

    .line 229
    .line 230
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    if-eqz v8, :cond_a

    .line 235
    .line 236
    const-string v9, "com.skt.t_smart_charge"

    .line 237
    .line 238
    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    if-eqz v8, :cond_9

    .line 243
    .line 244
    move v8, v1

    .line 245
    goto :goto_4

    .line 246
    :cond_9
    move v8, v3

    .line 247
    :goto_4
    if-eqz v8, :cond_b

    .line 248
    .line 249
    const-string/jumbo v9, "supportTLockPackage()"

    .line 250
    .line 251
    .line 252
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catch_0
    :cond_a
    move v8, v3

    .line 257
    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    .line 258
    .line 259
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    const-string v9, "off_menu_setting"

    .line 264
    .line 265
    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-ne v8, v1, :cond_c

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_c
    move v1, v3

    .line 273
    :goto_6
    if-eqz v1, :cond_e

    .line 274
    .line 275
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 276
    .line 277
    if-eqz p1, :cond_d

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    goto :goto_7

    .line 284
    :cond_d
    move-object p0, v4

    .line 285
    :goto_7
    const p1, 0x7f13017a

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 301
    .line 302
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 303
    .line 304
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 305
    .line 306
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 307
    .line 308
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 309
    .line 310
    if-eqz v8, :cond_10

    .line 311
    .line 312
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-eqz v8, :cond_10

    .line 317
    .line 318
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    invoke-virtual {v10, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    if-nez v8, :cond_10

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    if-eqz v8, :cond_10

    .line 333
    .line 334
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 335
    .line 336
    if-eqz v0, :cond_f

    .line 337
    .line 338
    if-eqz v9, :cond_f

    .line 339
    .line 340
    iget-boolean v0, v9, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 341
    .line 342
    if-nez v0, :cond_f

    .line 343
    .line 344
    const-class p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 345
    .line 346
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    check-cast p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 351
    .line 352
    const-string p1, "AIRPLANE_MODE_CHANGE"

    .line 353
    .line 354
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_f
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$$ExternalSyntheticLambda0;

    .line 359
    .line 360
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/view/View;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v6, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v6, "isShowing() = "

    .line 370
    .line 371
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 375
    .line 376
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v1, ", isSecure() = "

    .line 380
    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-interface {v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v1, ", isLockFunctionsEnabled() = "

    .line 392
    .line 393
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_OJT_BRANDING:Z

    .line 411
    .line 412
    if-eqz p1, :cond_12

    .line 413
    .line 414
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 415
    .line 416
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 417
    .line 418
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 419
    .line 420
    if-nez p1, :cond_12

    .line 421
    .line 422
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-nez p1, :cond_12

    .line 427
    .line 428
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 429
    .line 430
    if-eqz p1, :cond_11

    .line 431
    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getContext()Landroid/content/Context;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    goto :goto_8

    .line 437
    :cond_11
    move-object p1, v4

    .line 438
    :goto_8
    const v1, 0x7f130180

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 450
    .line 451
    .line 452
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 453
    .line 454
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 455
    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 457
    .line 458
    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 459
    .line 460
    .line 461
    if-eqz v0, :cond_13

    .line 462
    .line 463
    const/4 p1, 0x0

    .line 464
    goto :goto_9

    .line 465
    :cond_13
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 466
    .line 467
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_ONE_UI_6_1:Z

    .line 471
    .line 472
    if-nez p1, :cond_15

    .line 473
    .line 474
    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 475
    .line 476
    if-eqz p1, :cond_15

    .line 477
    .line 478
    const-string p1, "DoNotshowAgainAirplaneModeOn"

    .line 479
    .line 480
    invoke-virtual {v4, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    if-eqz v0, :cond_14

    .line 485
    .line 486
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    const-string p1, "doNotShowAgain :"

    .line 491
    .line 492
    invoke-static {p1, v3, v7}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_14
    if-nez v3, :cond_15

    .line 496
    .line 497
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 498
    .line 499
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 500
    .line 501
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 502
    .line 503
    if-nez p1, :cond_15

    .line 504
    .line 505
    new-instance p1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    .line 506
    .line 507
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 508
    .line 509
    .line 510
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 511
    .line 512
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_15
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    .line 517
    .line 518
    .line 519
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 520
    .line 521
    if-eqz p0, :cond_16

    .line 522
    .line 523
    if-eqz v9, :cond_16

    .line 524
    .line 525
    iget-boolean p0, v9, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 526
    .line 527
    if-nez p0, :cond_16

    .line 528
    .line 529
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 530
    .line 531
    const-string p1, "QPBE2018"

    .line 532
    .line 533
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    :cond_16
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AirplaneModeTile"

    .line 5
    .line 6
    const-string v1, "handleDestroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "destroy exception:"

    .line 28
    .line 29
    invoke-static {v2, v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->handleSetListening(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    new-instance v2, Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    const-string v0, "no_airplane_mode"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    .line 14
    move p2, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p2, v1

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isNoSimState(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 30
    .line 31
    check-cast v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isPowerOffServiceState()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v6, " handleUpdateState mIsWiFiOnlyDevice "

    .line 40
    .line 41
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    .line 45
    .line 46
    const-string v7, " isNoSimState "

    .line 47
    .line 48
    const-string v8, " isNoSimState  isPowerOffServiceState "

    .line 49
    .line 50
    invoke-static {v5, v6, v7, v3, v8}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, " mSetting.getValue() "

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v7, "AirplaneModeTile"

    .line 75
    .line 76
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    const v5, 0x7f080dd3

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_1

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 85
    .line 86
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 87
    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 89
    .line 90
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 91
    .line 92
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 97
    .line 98
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 99
    .line 100
    const-string p0, " handleUpdateState:  isTransient  "

    .line 101
    .line 102
    const-string v1, " state.value "

    .line 103
    .line 104
    invoke-static {p0, p2, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p2, " state.state "

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 119
    .line 120
    invoke-static {p0, p2, v7}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-ne p2, v2, :cond_3

    .line 129
    .line 130
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    .line 131
    .line 132
    if-nez p2, :cond_2

    .line 133
    .line 134
    if-nez v3, :cond_2

    .line 135
    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    :cond_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 141
    .line 142
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 143
    .line 144
    const/4 p0, 0x2

    .line 145
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {v6}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_5

    .line 153
    .line 154
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    .line 155
    .line 156
    if-nez p2, :cond_4

    .line 157
    .line 158
    if-nez v3, :cond_4

    .line 159
    .line 160
    if-nez v4, :cond_5

    .line 161
    .line 162
    :cond_4
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 165
    .line 166
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 167
    .line 168
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    const-string p2, "Tile.STATE_UNAVAILABLE"

    .line 172
    .line 173
    invoke-static {v7, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 177
    .line 178
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 179
    .line 180
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 181
    .line 182
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 183
    .line 184
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 189
    .line 190
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 191
    .line 192
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string p2, " handleUpdateState:  value = "

    .line 195
    .line 196
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 200
    .line 201
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p2, ", state = "

    .line 205
    .line 206
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 210
    .line 211
    invoke-static {p0, p2, v7}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 215
    .line 216
    const p0, 0x7f130d5e

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 224
    .line 225
    return-void
.end method

.method public final isAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

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
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0
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

.method public final setEnabled(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v0, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    const/high16 v0, 0x10000000

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string/jumbo v0, "setEnabled :"

    .line 40
    .line 41
    .line 42
    const-string v1, "AirplaneModeTile"

    .line 43
    .line 44
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAirplaneTileModeChanged:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setAirplaneMode(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/content/Intent;

    .line 56
    .line 57
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "state"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 71
    .line 72
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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
