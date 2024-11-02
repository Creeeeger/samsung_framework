.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static sActiveInterface:Ljava/lang/String; = null

.field public static sNetspeedSwitch:Z = false

.field public static sVpnConnected:Z = false


# instance fields
.field public mAttached:Z

.field public final mContext:Landroid/content/Context;

.field public mFixedScaleFactorForSpecificNetspeedView:F

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

.field public mNetworkStats:Z

.field public mNetworkStatsHandler:Landroid/os/Handler;

.field public final mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

.field public mRegisterReceiver:Z

.field public mScreenOn:Z

.field public final mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

.field public final mUpdateRunnable:Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;


# direct methods
.method public static -$$Nest$monNetspeedSwitchChange(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 13
    .line 14
    const-string v1, "network_speed"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "onNetspeedSwitchChange - sNetspeedSwitch = "

    .line 36
    .line 37
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "  mRegisterReceiver = "

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 51
    .line 52
    const-string v4, "NetspeedViewController"

    .line 53
    .line 54
    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    .line 60
    .line 61
    const-class v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 70
    .line 71
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 80
    .line 81
    invoke-virtual {v5, v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 82
    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 85
    .line 86
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    .line 102
    .line 103
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 104
    .line 105
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;

    .line 106
    .line 107
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    .line 29
    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUpdateRunnable:Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mFixedScaleFactorForSpecificNetspeedView:F

    .line 44
    .line 45
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 46
    .line 47
    new-instance p4, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;

    .line 48
    .line 49
    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    .line 50
    .line 51
    .line 52
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 53
    .line 54
    sget-boolean p4, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    .line 55
    .line 56
    if-nez p4, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 66
    .line 67
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 72
    .line 73
    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 74
    .line 75
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 76
    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mFixedScaleFactorForSpecificNetspeedView:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->scaleView(F)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 27
    .line 28
    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 29
    .line 30
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->scaleView(F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onViewAttached()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    .line 11
    .line 12
    const-class v1, Landroid/os/PowerManager;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/os/PowerManager;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    .line 27
    .line 28
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 37
    .line 38
    const-string v4, "network_speed"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    move v3, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v3, v4

    .line 54
    :goto_0
    sput-boolean v3, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 55
    .line 56
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 61
    .line 62
    new-instance v2, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 78
    .line 79
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    .line 92
    .line 93
    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 94
    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 99
    .line 100
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 108
    .line 109
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 110
    .line 111
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 124
    .line 125
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;->mSettingsValue:Landroid/net/Uri;

    .line 126
    .line 127
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 132
    .line 133
    .line 134
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 154
    .line 155
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;

    .line 161
    .line 162
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->onDensityOrFontScaleChanged()V

    .line 169
    .line 170
    .line 171
    :cond_2
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsReceiver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 21
    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mRegisterReceiver:Z

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 28
    .line 29
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 48
    .line 49
    .line 50
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/policy/NetspeedViewController$2;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 66
    .line 67
    check-cast v2, Ljava/util/Observer;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    .line 70
    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mAttached:Z

    .line 73
    .line 74
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 81
    .line 82
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public final setNetworkSpeed()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sNetspeedSwitch = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " mNetworkStats = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " mScreenOn = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    .line 30
    .line 31
    const-string v2, "NetspeedViewController"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sNetspeedSwitch:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mScreenOn:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 51
    .line 52
    check-cast v1, Ljava/util/Observer;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->addObserver(Ljava/util/Observer;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 58
    .line 59
    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 69
    .line 70
    check-cast v1, Ljava/util/Observer;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 76
    .line 77
    check-cast p0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 78
    .line 79
    const/16 v0, 0x8

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method
