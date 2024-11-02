.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BLUETOOTH_SETTINGS:Landroid/content/Intent;

.field public static final DEBUG:Z


# instance fields
.field public isHavingConvertView:Z

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAvailableItemList:Ljava/util/ArrayList;

.field public mBlueToothState:I

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallback:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

.field public final mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

.field public mDetailListening:Z

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mDoStopScan:Z

.field public final mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPairedItemList:Ljava/util/ArrayList;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SBluetoothTile"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/SBluetoothController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 14

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p11

    .line 3
    .line 4
    move-object/from16 v12, p15

    .line 5
    .line 6
    move-object/from16 v13, p16

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    move-object/from16 v3, p3

    .line 13
    .line 14
    move-object/from16 v4, p4

    .line 15
    .line 16
    move-object/from16 v5, p6

    .line 17
    .line 18
    move-object/from16 v6, p7

    .line 19
    .line 20
    move-object/from16 v7, p8

    .line 21
    .line 22
    move-object/from16 v8, p9

    .line 23
    .line 24
    move-object/from16 v9, p10

    .line 25
    .line 26
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v2, Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    .line 62
    .line 63
    new-instance v3, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 64
    .line 65
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    .line 66
    .line 67
    .line 68
    iput-object v3, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mCallback:Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    .line 69
    .line 70
    iput-object v11, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 71
    .line 72
    move-object/from16 v4, p9

    .line 73
    .line 74
    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 75
    .line 76
    move-object/from16 v4, p5

    .line 77
    .line 78
    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 79
    .line 80
    move-object/from16 v4, p12

    .line 81
    .line 82
    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 83
    .line 84
    move-object/from16 v4, p13

    .line 85
    .line 86
    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 87
    .line 88
    new-instance v4, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 89
    .line 90
    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    .line 91
    .line 92
    .line 93
    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

    .line 94
    .line 95
    iget-object v4, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 96
    .line 97
    invoke-interface {v11, v4, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "bluetooth"

    .line 101
    .line 102
    iput-object v3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 103
    .line 104
    move-object v0, v11

    .line 105
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 106
    .line 107
    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 108
    .line 109
    iput v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBlueToothState:I

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isHavingConvertView:Z

    .line 113
    .line 114
    move-object/from16 v0, p14

    .line 115
    .line 116
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 117
    .line 118
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 119
    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    iput-object v12, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 123
    .line 124
    const-class v0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 131
    .line 132
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 133
    .line 134
    invoke-virtual {v12, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    .line 139
    .line 140
    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 141
    .line 142
    if-eqz v0, :cond_1

    .line 143
    .line 144
    iput-object v13, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 145
    .line 146
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    .line 147
    .line 148
    if-nez v0, :cond_1

    .line 149
    .line 150
    if-eqz v13, :cond_1

    .line 151
    .line 152
    new-instance v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    .line 153
    .line 154
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    .line 158
    .line 159
    new-instance v1, Landroid/content/IntentFilter;

    .line 160
    .line 161
    const-string v2, "BLUETOOTH_STATE_CHANGE"

    .line 162
    .line 163
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    const-string v5, "com.samsung.systemui.permission.BLUETOOTH_STATE_CHANGE"

    .line 171
    .line 172
    move-object/from16 p0, p16

    .line 173
    .line 174
    move-object p1, v0

    .line 175
    move-object/from16 p2, v1

    .line 176
    .line 177
    move-object/from16 p3, v2

    .line 178
    .line 179
    move-object/from16 p4, v3

    .line 180
    .line 181
    move/from16 p5, v4

    .line 182
    .line 183
    move-object/from16 p6, v5

    .line 184
    .line 185
    invoke-virtual/range {p0 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    return-void
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SBluetoothTile$BluetoothDetailAdapter;

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
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "SBluetoothTile"

    .line 26
    .line 27
    const-string v0, " getLongClickIntent is called:++++ "

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x71

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
    const v0, 0x7f130d6d

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
    .locals 6

    .line 1
    const-string v0, "SBluetoothTile"

    .line 2
    .line 3
    const-string v1, " handleClick is called:++++ "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    move-object v1, v2

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 25
    .line 26
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mEnabled:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 31
    .line 32
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 39
    .line 40
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_7

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    .line 58
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 59
    .line 60
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    .line 70
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    iget-boolean v0, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 101
    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    const-class p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-string v0, "BLUETOOTH_STATE_CHANGE"

    .line 115
    .line 116
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda1;

    .line 121
    .line 122
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v4, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->canConfigBluetooth()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_4

    .line 136
    .line 137
    new-instance p0, Landroid/content/Intent;

    .line 138
    .line 139
    const-string p1, "android.settings.BLUETOOTH_SETTINGS"

    .line 140
    .line 141
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    invoke-interface {v4, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 150
    .line 151
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    goto :goto_0

    .line 162
    :cond_5
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 163
    .line 164
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const/4 p0, 0x1

    .line 168
    xor-int/lit8 p1, v0, 0x1

    .line 169
    .line 170
    invoke-virtual {v2, p1, p0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setBluetoothEnabled(ZZ)V

    .line 171
    .line 172
    .line 173
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 174
    .line 175
    if-eqz p0, :cond_6

    .line 176
    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    iget-boolean p0, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 180
    .line 181
    if-nez p0, :cond_6

    .line 182
    .line 183
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 184
    .line 185
    const-string p1, "QPBE2017"

    .line 186
    .line 187
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    return-void

    .line 191
    :cond_7
    :goto_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 192
    .line 193
    if-eqz p1, :cond_8

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 204
    .line 205
    .line 206
    :goto_2
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SBluetoothTile"

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
    new-instance v2, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

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
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->handleSecondaryClick(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final handleSecondaryClick(Ljava/lang/Boolean;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->canConfigBluetooth()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v2, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const-string p1, "Bluetooth"

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->openQSPanelWithDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    :goto_0
    return-void

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 6
    .line 7
    const-string v2, "no_bluetooth"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object/from16 v5, p2

    .line 17
    .line 18
    if-ne v5, v2, :cond_0

    .line 19
    .line 20
    move v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    :goto_0
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 24
    .line 25
    check-cast v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 26
    .line 27
    iget v6, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mConnectionState:I

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    if-ne v6, v7, :cond_1

    .line 31
    .line 32
    move v7, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v7, v4

    .line 35
    :goto_1
    if-ne v6, v3, :cond_2

    .line 36
    .line 37
    move v6, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v6, v4

    .line 40
    :goto_2
    iget-boolean v8, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mEnabled:Z

    .line 41
    .line 42
    iget v9, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 43
    .line 44
    iget-boolean v10, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 45
    .line 46
    if-eq v10, v8, :cond_3

    .line 47
    .line 48
    move v10, v3

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move v10, v4

    .line 51
    :goto_3
    iget v11, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBlueToothState:I

    .line 52
    .line 53
    if-eq v11, v9, :cond_4

    .line 54
    .line 55
    move v11, v3

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move v11, v4

    .line 58
    :goto_4
    const-string v12, " handleUpdateState enabled = "

    .line 59
    .line 60
    const-string v13, " connected = "

    .line 61
    .line 62
    const-string v14, " connecting = "

    .line 63
    .line 64
    invoke-static {v12, v8, v13, v7, v14}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    const-string v13, " changedState ="

    .line 69
    .line 70
    const-string v14, " bluetoothState = "

    .line 71
    .line 72
    invoke-static {v12, v6, v13, v11, v14}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v13, " enabledChanging = "

    .line 79
    .line 80
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v13, " state = "

    .line 87
    .line 88
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    const-string v13, "SBluetoothTile"

    .line 99
    .line 100
    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    if-nez v10, :cond_5

    .line 104
    .line 105
    if-eqz v11, :cond_6

    .line 106
    .line 107
    :cond_5
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 108
    .line 109
    if-eqz v10, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->onToggleStateChange(Z)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iput v9, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBlueToothState:I

    .line 115
    .line 116
    const/16 v9, 0xb

    .line 117
    .line 118
    if-nez v2, :cond_8

    .line 119
    .line 120
    if-nez v6, :cond_8

    .line 121
    .line 122
    iget v6, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 123
    .line 124
    if-ne v6, v9, :cond_7

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_7
    move v6, v4

    .line 128
    goto :goto_6

    .line 129
    :cond_8
    :goto_5
    move v6, v3

    .line 130
    :goto_6
    iput-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 131
    .line 132
    iput-boolean v8, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    iput-object v10, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 139
    .line 140
    sget-boolean v10, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 141
    .line 142
    iget-object v11, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 143
    .line 144
    if-eqz v10, :cond_c

    .line 145
    .line 146
    :try_start_0
    iget-object v10, v11, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    .line 147
    .line 148
    iget-object v10, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    .line 149
    .line 150
    iget-object v10, v10, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 151
    .line 152
    if-nez v10, :cond_9

    .line 153
    .line 154
    new-instance v10, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_9
    invoke-virtual {v10}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_7

    .line 165
    :catch_0
    const/4 v10, 0x0

    .line 166
    :goto_7
    if-nez v10, :cond_a

    .line 167
    .line 168
    const-string v10, "getCastDeviceConnectedList return null : count"

    .line 169
    .line 170
    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    move v12, v4

    .line 179
    :cond_b
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-eqz v14, :cond_d

    .line 184
    .line 185
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    check-cast v14, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 190
    .line 191
    invoke-virtual {v14}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    if-ne v14, v3, :cond_b

    .line 196
    .line 197
    add-int/lit8 v12, v12, 0x1

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_c
    :goto_9
    move v12, v4

    .line 201
    :cond_d
    const-string v14, ","

    .line 202
    .line 203
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    const-string v15, ""

    .line 206
    .line 207
    if-eqz v6, :cond_f

    .line 208
    .line 209
    const v3, 0x7f080a46

    .line 210
    .line 211
    .line 212
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iput-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 217
    .line 218
    const v3, 0x7f1300f4

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iput-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 226
    .line 227
    if-nez v2, :cond_e

    .line 228
    .line 229
    iget v2, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 230
    .line 231
    if-ne v2, v9, :cond_20

    .line 232
    .line 233
    :cond_e
    iput v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 234
    .line 235
    goto/16 :goto_11

    .line 236
    .line 237
    :cond_f
    const v2, 0x7f080a48

    .line 238
    .line 239
    .line 240
    if-eqz v8, :cond_1f

    .line 241
    .line 242
    if-nez v7, :cond_11

    .line 243
    .line 244
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 245
    .line 246
    if-eqz v6, :cond_10

    .line 247
    .line 248
    if-lez v12, :cond_10

    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_10
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const v3, 0x7f1300f6

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const v3, 0x7f1300db

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 290
    .line 291
    goto/16 :goto_10

    .line 292
    .line 293
    :cond_11
    :goto_a
    const v2, 0x7f080a45

    .line 294
    .line 295
    .line 296
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 301
    .line 302
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getConnectedDevicesForGroup()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    if-eqz v2, :cond_12

    .line 307
    .line 308
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    :cond_12
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 313
    .line 314
    const-string v6, "no connected device"

    .line 315
    .line 316
    const v8, 0x7f130d66

    .line 317
    .line 318
    .line 319
    if-eqz v2, :cond_1c

    .line 320
    .line 321
    sget-boolean v9, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    .line 322
    .line 323
    if-eqz v9, :cond_13

    .line 324
    .line 325
    const-string v9, "connectedDeviceCount = "

    .line 326
    .line 327
    const-string v10, ", musicShareConnectedCount = "

    .line 328
    .line 329
    invoke-static {v9, v4, v10, v12, v13}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_13
    sub-int/2addr v4, v12

    .line 333
    add-int v9, v12, v4

    .line 334
    .line 335
    if-le v9, v3, :cond_14

    .line 336
    .line 337
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    iput-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 362
    .line 363
    goto/16 :goto_f

    .line 364
    .line 365
    :cond_14
    if-ne v12, v3, :cond_1a

    .line 366
    .line 367
    if-eqz v2, :cond_18

    .line 368
    .line 369
    :try_start_1
    iget-object v2, v11, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    .line 370
    .line 371
    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    .line 372
    .line 373
    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 374
    .line 375
    if-nez v2, :cond_15

    .line 376
    .line 377
    new-instance v2, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_15
    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    goto :goto_b

    .line 388
    :catch_1
    const/4 v2, 0x0

    .line 389
    :goto_b
    if-nez v2, :cond_16

    .line 390
    .line 391
    const-string v2, "getCastDeviceConnectedList return null : label"

    .line 392
    .line 393
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    goto :goto_c

    .line 397
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_18

    .line 406
    .line 407
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    if-ne v5, v3, :cond_17

    .line 418
    .line 419
    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    goto :goto_d

    .line 424
    :cond_18
    :goto_c
    const/4 v2, 0x0

    .line 425
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    if-nez v2, :cond_19

    .line 430
    .line 431
    const-string v2, "getMusicShareLabel return null."

    .line 432
    .line 433
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    const v2, 0x7f130d6d

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    move-object v2, v3

    .line 444
    :cond_19
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    const v4, 0x7f13004f

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    iput-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 456
    .line 457
    goto :goto_f

    .line 458
    :cond_1a
    const v2, 0x7f13004f

    .line 459
    .line 460
    .line 461
    if-ne v4, v3, :cond_1b

    .line 462
    .line 463
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getLastDeviceName()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 476
    .line 477
    goto :goto_e

    .line 478
    :cond_1b
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    goto :goto_10

    .line 482
    :cond_1c
    const v2, 0x7f13004f

    .line 483
    .line 484
    .line 485
    if-ne v4, v3, :cond_1d

    .line 486
    .line 487
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getLastDeviceName()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 500
    .line 501
    :goto_e
    move-object v2, v3

    .line 502
    goto :goto_f

    .line 503
    :cond_1d
    const/4 v2, 0x2

    .line 504
    if-lt v4, v2, :cond_1e

    .line 505
    .line 506
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    iput-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 531
    .line 532
    :goto_f
    move-object v15, v2

    .line 533
    goto :goto_10

    .line 534
    :cond_1e
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    :goto_10
    const/4 v2, 0x2

    .line 538
    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 539
    .line 540
    goto :goto_11

    .line 541
    :cond_1f
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 546
    .line 547
    const v2, 0x7f1300f5

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 555
    .line 556
    iput v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 557
    .line 558
    :cond_20
    :goto_11
    iput-object v15, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 559
    .line 560
    const v2, 0x7f080de8

    .line 561
    .line 562
    .line 563
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 568
    .line 569
    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 570
    .line 571
    if-eqz v7, :cond_21

    .line 572
    .line 573
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    const v3, 0x7f13004f

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 585
    .line 586
    :cond_21
    iget-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 587
    .line 588
    if-eqz v3, :cond_22

    .line 589
    .line 590
    const v3, 0x7f13006f

    .line 591
    .line 592
    .line 593
    goto :goto_12

    .line 594
    :cond_22
    const v3, 0x7f13006e

    .line 595
    .line 596
    .line 597
    :goto_12
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    const v4, 0x7f130d6d

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 609
    .line 610
    if-eqz v7, :cond_23

    .line 611
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .line 616
    .line 617
    iget-object v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 618
    .line 619
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 639
    .line 640
    goto :goto_13

    .line 641
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 647
    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 662
    .line 663
    :goto_13
    return-void
.end method

.method public final isAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 19
    .line 20
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_1
    return v1
.end method

.method public final isBlockedByEASPolicy()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "device_policy"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
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

.method public final onToggleStateChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 6
    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v0, 0x1f4

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final setDetailListening(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const-string v3, "QP setForegroundActivity :: isForeground = "

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    const-string v4, "LocalBluetoothManager"

    .line 22
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "bluetooth_settings_foreground_qp"

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    move p1, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p1, v2

    .line 51
    :goto_0
    const/4 v5, -0x2

    .line 52
    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0

    .line 59
    throw p0

    .line 60
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 61
    .line 62
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 64
    .line 65
    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    .line 66
    .line 67
    const/16 v3, 0xc

    .line 68
    .line 69
    if-ne v0, v3, :cond_6

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v0, "SBluetoothControllerImpl"

    .line 81
    .line 82
    const-string v2, " updateListDevices "

    .line 83
    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->stopScan()V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 97
    .line 98
    .line 99
    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 105
    .line 106
    const/16 v0, 0x17

    .line 107
    .line 108
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setScanMode(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 114
    .line 115
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    .line 118
    .line 119
    .line 120
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 125
    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 127
    .line 128
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 129
    .line 130
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    const/16 v0, 0x15

    .line 135
    .line 136
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setScanMode(I)V

    .line 139
    .line 140
    .line 141
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    .line 142
    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 146
    .line 147
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    move p1, v2

    .line 159
    :goto_2
    if-nez p1, :cond_7

    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 162
    .line 163
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    .line 166
    .line 167
    .line 168
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    .line 173
    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    .line 175
    .line 176
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 177
    .line 178
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    .line 183
    .line 184
    .line 185
    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    .line 186
    .line 187
    return-void
.end method

.method public final shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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
