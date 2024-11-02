.class public final Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAOSPWifiManager:Landroid/net/wifi/WifiManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field public mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field public final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p10

    .line 3
    move-object/from16 v2, p11

    .line 4
    .line 5
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 6
    .line 7
    .line 8
    const v3, 0x7f080ead

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 16
    .line 17
    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v4, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 31
    .line 32
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 33
    .line 34
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 38
    .line 39
    invoke-interface {p10, v4, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 46
    .line 47
    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v1, p12

    .line 51
    .line 52
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 53
    .line 54
    move-object/from16 v1, p13

    .line 55
    .line 56
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    .line 58
    move-object/from16 v1, p14

    .line 59
    .line 60
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    .line 62
    move-object v1, p8

    .line 63
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 64
    .line 65
    move-object/from16 v1, p15

    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string/jumbo v2, "wifi"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    .line 92
    move-object/from16 v1, p16

    .line 93
    .line 94
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 95
    .line 96
    return-void
.end method

.method public static isBlockedByOthers()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string/jumbo v0, "persist.sys.tether_data_wifi"

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v2, " isBlockedByOthers : SPRINT_EXTENSION = "

    .line 14
    .line 15
    const-string v3, "HotspotTile"

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    :goto_1
    return v0
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 1
    const-string p0, "HotspotTile"

    .line 2
    .line 3
    const-string v0, "HotspotTile  getDetailAdapter: null"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 5

    .line 1
    const-string v0, "HotspotTile"

    .line 2
    .line 3
    const-string v1, "getLongClickIntent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 15
    .line 16
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_7

    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 30
    .line 31
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 38
    .line 39
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "no_config_tethering"

    .line 48
    .line 49
    invoke-virtual {v1, v4, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    if-nez v1, :cond_7

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 74
    .line 75
    .line 76
    return-object v3

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    return-object v3

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_5

    .line 99
    .line 100
    return-object v3

    .line 101
    :cond_5
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_6

    .line 106
    .line 107
    return-object v3

    .line 108
    :cond_6
    const-string p0, "Launching Mobile Hotspot settings onLong click"

    .line 109
    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    new-instance p0, Landroid/content/Intent;

    .line 114
    .line 115
    const-string v0, "android.settings.WIFI_AP_SETTINGS"

    .line 116
    .line 117
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 122
    .line 123
    .line 124
    return-object v3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x78

    .line 2
    .line 3
    return p0
.end method

.method public final getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "sem_wifi"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const v0, 0x7f130ddb

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const-string v0, "HotspotTile"

    .line 2
    .line 3
    const-string v1, "handleClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 9
    .line 10
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string p0, " handleClick SemWifiManager is null"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v2, "Checking WifiAp State"

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const/16 v3, 0xb

    .line 40
    .line 41
    if-eq v2, v3, :cond_1

    .line 42
    .line 43
    const/16 v3, 0xe

    .line 44
    .line 45
    if-eq v2, v3, :cond_1

    .line 46
    .line 47
    const-string/jumbo p0, "return , wifiapstate"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const/16 v3, 0xd

    .line 57
    .line 58
    if-eq v2, v3, :cond_2

    .line 59
    .line 60
    const-string/jumbo p0, "return, wifiapstate"

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v2, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    if-nez v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 77
    .line 78
    check-cast v2, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 91
    .line 92
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_b

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_b

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_5

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_6

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 131
    .line 132
    .line 133
    const-string p0, " handleClick  : isWifiApBlocked"

    .line 134
    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_6
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    const-string p0, " handleClick  : isBlockedByOthers"

    .line 146
    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_8

    .line 156
    .line 157
    const-string p0, " handleClick  : isSatModeEnabled"

    .line 158
    .line 159
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 164
    .line 165
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 166
    .line 167
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 168
    .line 169
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 170
    .line 171
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_9

    .line 180
    .line 181
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_9

    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_9

    .line 196
    .line 197
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;

    .line 198
    .line 199
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 203
    .line 204
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v3, "isShowing() = "

    .line 211
    .line 212
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v2, ", isSecure() = "

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v2, ", canSkipBouncer() = "

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v2, ", isLockFunctionsEnabled() = "

    .line 249
    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 268
    .line 269
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 270
    .line 271
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 272
    .line 273
    invoke-virtual {p1, v2}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 274
    .line 275
    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    const/4 p1, 0x0

    .line 279
    goto :goto_0

    .line 280
    :cond_a
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 281
    .line 282
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string/jumbo v2, "setHotspotEnabled() is called in handleClick() "

    .line 288
    .line 289
    .line 290
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    xor-int/lit8 p1, v1, 0x1

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final handleDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleSecondaryClick(Z)V

    return-void
.end method

.method public final handleSecondaryClick(Z)V
    .locals 5

    const-string v0, "HotspotTile"

    const-string v1, "handleSecondaryClick"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 8
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "no_config_tethering"

    .line 9
    invoke-virtual {v0, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_8

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 22
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const-string p1, "Hotspot"

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->openQSPanelWithDetail(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    :goto_1
    return-void

    .line 24
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->handleSetListening(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    const-string v0, "HotspotTile"

    .line 4
    .line 5
    const-string v1, "handleUpdateState"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "no_wifi_tethering"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v3, "WifiEntResUtils"

    .line 35
    .line 36
    const-string v4, "Wi-Fi Tethering isn\'t available due to user restriction."

    .line 37
    .line 38
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_1
    const-string v3, "no_config_tethering"

    .line 42
    .line 43
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    instance-of v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 51
    .line 52
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    .line 53
    .line 54
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 58
    .line 59
    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->getNumConnectedDevices()I

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 71
    .line 72
    check-cast p2, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    .line 75
    .line 76
    .line 77
    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 84
    .line 85
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    :cond_4
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    :goto_3
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 105
    .line 106
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 107
    .line 108
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    .line 110
    const-string p0, ""

    .line 111
    .line 112
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 113
    .line 114
    return-void
.end method

.method public final isAirplaneModeEnabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "airplane_mode_on"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const v0, 0x7f130b62

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p0, v2}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    return v2
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
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
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

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

.method public final isDataSaverEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

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

.method public final isSatModeEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CarrierFeature_Common_Support_Satellite"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string/jumbo v0, "phone"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    return v2
.end method

.method public final isWifiApBlocked()Z
    .locals 7

    .line 1
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "isWifiTetheringEnabled"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    .line 26
    .line 27
    const-string v0, "isWifiTetheringEnabled"

    .line 28
    .line 29
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "false"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0
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

.method public final setHotspotEnabled(Z)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v4, "HotspotTile"

    .line 7
    .line 8
    if-eqz p1, :cond_1d

    .line 9
    .line 10
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 11
    .line 12
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const-string/jumbo v7, "sem_wifi"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    check-cast v7, Lcom/samsung/android/wifi/SemWifiManager;

    .line 24
    .line 25
    iput-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    const-string v5, " checkWhetherWifiApWarningNeedToLaunch mSemWifiManager is null"

    .line 31
    .line 32
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto/16 :goto_c

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v7}, Lcom/samsung/android/wifi/SemWifiManager;->isOverAllMhsDataLimitReached()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_6

    .line 42
    .line 43
    const-string/jumbo v7, "phone"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 51
    .line 52
    const-string v9, "connectivity"

    .line 53
    .line 54
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Landroid/net/ConnectivityManager;

    .line 59
    .line 60
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    if-nez v10, :cond_1

    .line 65
    .line 66
    const-string v9, "ActiveNetwork is Null"

    .line 67
    .line 68
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    if-nez v9, :cond_2

    .line 77
    .line 78
    const-string v9, "networkCapabilities is Null"

    .line 79
    .line 80
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v9, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const/16 v11, 0xc

    .line 89
    .line 90
    invoke-virtual {v9, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v10, :cond_3

    .line 95
    .line 96
    if-eqz v9, :cond_3

    .line 97
    .line 98
    move v9, v1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    move v9, v2

    .line 101
    :goto_1
    if-nez v9, :cond_5

    .line 102
    .line 103
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    .line 105
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const/4 v11, -0x1

    .line 110
    if-eqz v10, :cond_4

    .line 111
    .line 112
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eq v12, v11, :cond_4

    .line 117
    .line 118
    new-instance v12, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v13, "Wifi Frequency is "

    .line 121
    .line 122
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v10, v11

    .line 145
    :goto_2
    if-ne v10, v11, :cond_5

    .line 146
    .line 147
    if-eqz v7, :cond_5

    .line 148
    .line 149
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    const-string v7, "Wi-Fi is not connected and mobile data is enabled"

    .line 156
    .line 157
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move v9, v1

    .line 161
    :cond_5
    if-eqz v9, :cond_6

    .line 162
    .line 163
    const-string v5, "Data limit is reached"

    .line 164
    .line 165
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 171
    .line 172
    invoke-virtual {v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-eqz v7, :cond_7

    .line 177
    .line 178
    array-length v7, v7

    .line 179
    if-le v7, v1, :cond_7

    .line 180
    .line 181
    move v7, v1

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    move v7, v2

    .line 184
    :goto_3
    const/4 v9, 0x3

    .line 185
    if-eqz v7, :cond_9

    .line 186
    .line 187
    if-eq v6, v8, :cond_8

    .line 188
    .line 189
    if-ne v6, v9, :cond_9

    .line 190
    .line 191
    :cond_8
    const-string v5, "DualAP with Wi-Fi Enabled"

    .line 192
    .line 193
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    goto/16 :goto_b

    .line 197
    .line 198
    :cond_9
    const-string v7, "display"

    .line 199
    .line 200
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    check-cast v10, Landroid/hardware/display/DisplayManager;

    .line 205
    .line 206
    invoke-virtual {v10}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 211
    .line 212
    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    const-string v12, "isSmartViewEnabled:p2pstatus:"

    .line 217
    .line 218
    invoke-static {v12, v11, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    if-eqz v10, :cond_a

    .line 222
    .line 223
    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-ne v12, v8, :cond_a

    .line 228
    .line 229
    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-nez v10, :cond_a

    .line 234
    .line 235
    if-eqz v11, :cond_a

    .line 236
    .line 237
    const-string v10, "isSmartViewEnabled:true"

    .line 238
    .line 239
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move v10, v1

    .line 243
    goto :goto_4

    .line 244
    :cond_a
    const-string v10, "isSmartViewEnabled:false"

    .line 245
    .line 246
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move v10, v2

    .line 250
    :goto_4
    if-eqz v10, :cond_b

    .line 251
    .line 252
    const-string/jumbo v5, "smartView Enabled"

    .line 253
    .line 254
    .line 255
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto/16 :goto_b

    .line 259
    .line 260
    :cond_b
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 265
    .line 266
    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    if-eqz v7, :cond_c

    .line 271
    .line 272
    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    if-ne v10, v8, :cond_c

    .line 277
    .line 278
    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-ne v7, v8, :cond_c

    .line 283
    .line 284
    const-string v7, "isWirelessDexEnabled:true"

    .line 285
    .line 286
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move v7, v1

    .line 290
    goto :goto_5

    .line 291
    :cond_c
    const-string v7, "isWirelessDexEnabled:false"

    .line 292
    .line 293
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move v7, v2

    .line 297
    :goto_5
    if-eqz v7, :cond_d

    .line 298
    .line 299
    const-string v5, "WirelessDex Enabled"

    .line 300
    .line 301
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :cond_d
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    const-string v10, "android.hardware.wifi.aware"

    .line 311
    .line 312
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-eqz v7, :cond_e

    .line 317
    .line 318
    const-string/jumbo v7, "wifiaware"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Landroid/net/wifi/aware/WifiAwareManager;

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_e
    move-object v7, v0

    .line 329
    :goto_6
    if-nez v7, :cond_f

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_f
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    const-string v11, "isPreEnabled"

    .line 337
    .line 338
    new-array v12, v2, [Ljava/lang/Class;

    .line 339
    .line 340
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    new-array v11, v2, [Ljava/lang/Object;

    .line 345
    .line 346
    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    check-cast v10, Ljava/lang/Boolean;

    .line 351
    .line 352
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 353
    .line 354
    .line 355
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_7

    .line 357
    :catch_0
    move-exception v10

    .line 358
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    .line 360
    .line 361
    move v10, v2

    .line 362
    :goto_7
    invoke-virtual {v7}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-eqz v7, :cond_10

    .line 367
    .line 368
    if-nez v10, :cond_10

    .line 369
    .line 370
    move v7, v1

    .line 371
    goto :goto_9

    .line 372
    :cond_10
    :goto_8
    move v7, v2

    .line 373
    :goto_9
    if-eqz v7, :cond_11

    .line 374
    .line 375
    const-string v5, "NAN Enabled"

    .line 376
    .line 377
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 383
    .line 384
    invoke-virtual {v7}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_12

    .line 389
    .line 390
    const-string v5, "P2p Enabled"

    .line 391
    .line 392
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_12
    const-string/jumbo v7, "wifi_ap_wifi_sharing"

    .line 397
    .line 398
    .line 399
    if-eq v6, v1, :cond_15

    .line 400
    .line 401
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 402
    .line 403
    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_13

    .line 408
    .line 409
    const-string v5, "WifiSharingLite model"

    .line 410
    .line 411
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_13
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-ne v6, v1, :cond_14

    .line 424
    .line 425
    move v6, v1

    .line 426
    goto :goto_a

    .line 427
    :cond_14
    move v6, v2

    .line 428
    :goto_a
    if-nez v6, :cond_15

    .line 429
    .line 430
    const-string v5, "Wifi is not disabled and wifisharing is not enabled"

    .line 431
    .line 432
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    goto :goto_b

    .line 436
    :cond_15
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 437
    .line 438
    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-eqz v6, :cond_17

    .line 443
    .line 444
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 445
    .line 446
    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    if-nez v6, :cond_17

    .line 451
    .line 452
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    const/16 v10, 0xa

    .line 457
    .line 458
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-ne v6, v1, :cond_17

    .line 463
    .line 464
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    const-string/jumbo v7, "wifi_ap_first_time_wifi_sharing_dialog"

    .line 469
    .line 470
    .line 471
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    if-nez v6, :cond_17

    .line 476
    .line 477
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    if-eq v6, v8, :cond_16

    .line 482
    .line 483
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    if-ne v5, v9, :cond_17

    .line 488
    .line 489
    :cond_16
    const-string v5, "Wi-Fi Sharing First dialog"

    .line 490
    .line 491
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    :goto_b
    move v5, v1

    .line 495
    goto :goto_d

    .line 496
    :cond_17
    :goto_c
    move v5, v2

    .line 497
    :goto_d
    if-nez v5, :cond_1b

    .line 498
    .line 499
    sget-boolean v5, Lcom/android/systemui/CvRune;->HOTSPOT_CHECK_MHSDBG:Z

    .line 500
    .line 501
    if-eqz v5, :cond_18

    .line 502
    .line 503
    const-string/jumbo v5, "vendor.wifiap.provisioning.disable"

    .line 504
    .line 505
    .line 506
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    const-string v6, "1"

    .line 511
    .line 512
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-eqz v5, :cond_18

    .line 517
    .line 518
    const-string v5, "Skip isProvisioningCheck"

    .line 519
    .line 520
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    goto :goto_e

    .line 524
    :cond_18
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    if-nez v5, :cond_19

    .line 529
    .line 530
    const-string v5, " provisioning is not required for this operator"

    .line 531
    .line 532
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    goto :goto_e

    .line 536
    :cond_19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    const v6, 0x1070119

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    const-string v6, "Calling UTP apk"

    .line 548
    .line 549
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    array-length v5, v5

    .line 553
    if-ne v5, v8, :cond_1a

    .line 554
    .line 555
    move v5, v1

    .line 556
    goto :goto_f

    .line 557
    :cond_1a
    :goto_e
    move v5, v2

    .line 558
    :goto_f
    if-eqz v5, :cond_1d

    .line 559
    .line 560
    :cond_1b
    const-string p1, "enable hotspot for USA or SBM"

    .line 561
    .line 562
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 566
    .line 567
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApWarningActivityRunningState()I

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    const-string v0, "com.android.settings"

    .line 572
    .line 573
    if-ne p1, v1, :cond_1c

    .line 574
    .line 575
    const-string/jumbo p1, "sending WIFIAP_WARNING_STOP_DIALOG "

    .line 576
    .line 577
    .line 578
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    new-instance p1, Landroid/content/Intent;

    .line 582
    .line 583
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    .line 588
    .line 589
    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 590
    .line 591
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 595
    .line 596
    .line 597
    const-wide/16 v1, 0xc8

    .line 598
    .line 599
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 600
    .line 601
    .line 602
    goto :goto_10

    .line 603
    :catch_1
    move-exception p1

    .line 604
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 605
    .line 606
    .line 607
    :cond_1c
    :goto_10
    new-instance p1, Landroid/content/Intent;

    .line 608
    .line 609
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 610
    .line 611
    .line 612
    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 613
    .line 614
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    .line 616
    .line 617
    const/high16 v0, 0x10000000

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 620
    .line 621
    .line 622
    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 623
    .line 624
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    .line 626
    .line 627
    const-string/jumbo v0, "wifiap_warning_dialog_type"

    .line 628
    .line 629
    .line 630
    const/4 v1, 0x5

    .line 631
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 635
    .line 636
    .line 637
    const-string p1, "launchWifiApWarning start for USA or SBM"

    .line 638
    .line 639
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 643
    .line 644
    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 645
    .line 646
    .line 647
    return-void

    .line 648
    :cond_1d
    const-string/jumbo v5, "setHotspotEnabled -"

    .line 649
    .line 650
    .line 651
    invoke-static {v5, p1, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 652
    .line 653
    .line 654
    if-eqz p1, :cond_1e

    .line 655
    .line 656
    const-string v4, "LGT"

    .line 657
    .line 658
    sget-object v5, Lcom/android/systemui/CvRune;->HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 659
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-eqz v4, :cond_1e

    .line 665
    .line 666
    const v4, 0x7f13124e

    .line 667
    .line 668
    .line 669
    invoke-static {v4, v3, v2}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 674
    .line 675
    .line 676
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 677
    .line 678
    .line 679
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 680
    .line 681
    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 682
    .line 683
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 684
    .line 685
    const-string v4, "HotspotController"

    .line 686
    .line 687
    if-eqz v3, :cond_1f

    .line 688
    .line 689
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 690
    .line 691
    if-eqz p0, :cond_22

    .line 692
    .line 693
    const-string p0, "Ignoring setHotspotEnabled; waiting for terminal state."

    .line 694
    .line 695
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    goto :goto_11

    .line 699
    :cond_1f
    if-eqz p1, :cond_21

    .line 700
    .line 701
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 702
    .line 703
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 704
    .line 705
    if-eqz p1, :cond_20

    .line 706
    .line 707
    const-string p1, "Starting tethering"

    .line 708
    .line 709
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    :cond_20
    const-string p1, "Starting SemWifiManager tethering"

    .line 713
    .line 714
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 718
    .line 719
    if-eqz p0, :cond_22

    .line 720
    .line 721
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 722
    .line 723
    .line 724
    goto :goto_11

    .line 725
    :cond_21
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 726
    .line 727
    if-eqz p0, :cond_22

    .line 728
    .line 729
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 730
    .line 731
    .line 732
    :cond_22
    :goto_11
    return-void
.end method

.method public final shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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

.method public final showDataSaverToast()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo v2, "trafficmanager"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v1

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 44
    .line 45
    const v3, 0x7f140560

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 52
    .line 53
    const v2, 0x1040f87

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 60
    .line 61
    const v2, 0x1040f84

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 68
    .line 69
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 72
    .line 73
    .line 74
    const v3, 0x1040f86

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 81
    .line 82
    const v2, 0x1040f85

    .line 83
    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 90
    .line 91
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    .line 92
    .line 93
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 110
    .line 111
    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    const p0, 0x104080c

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(ILandroid/content/Context;I)Landroid/widget/Toast;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void
.end method
