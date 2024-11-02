.class public final Lcom/android/systemui/statusbar/connectivity/WifiSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public final mHasMobileDataFeature:Z

.field public final mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;Landroid/os/Handler;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p5

    .line 4
    .line 5
    move-object/from16 v8, p6

    .line 6
    .line 7
    const-string v1, "WifiSignalController"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    move-object/from16 v0, p0

    .line 11
    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    move-object/from16 v4, p3

    .line 15
    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 22
    .line 23
    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 24
    .line 25
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 26
    .line 27
    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 28
    .line 29
    move-object/from16 v1, p7

    .line 30
    .line 31
    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mBgHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iput-object v7, v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    .line 35
    new-instance v13, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v13, v6, v2}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 45
    .line 46
    iget-object v9, v8, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v10, v8, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    .line 50
    iget-object v11, v8, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 51
    .line 52
    iget-object v12, v8, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    iget-object v14, v8, Lcom/android/systemui/statusbar/connectivity/WifiStatusTrackerFactory;->mMainHandler:Landroid/os/Handler;

    .line 55
    .line 56
    move-object v8, v3

    .line 57
    move-object/from16 v15, p7

    .line 58
    .line 59
    invoke-direct/range {v8 .. v15}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 60
    .line 61
    .line 62
    iput-object v3, v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 63
    .line 64
    iget-object v1, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 65
    .line 66
    iget-object v4, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    invoke-virtual {v4, v5, v1, v5}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Lcom/android/settingslib/wifi/WifiStatusTracker$3;

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 78
    .line 79
    iget-object v4, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 80
    .line 81
    iget-object v5, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiStatusTracker$1;

    .line 82
    .line 83
    iget-object v8, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {v1, v4, v5, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Lcom/android/settingslib/wifi/WifiStatusTracker$2;

    .line 89
    .line 90
    invoke-virtual {v1, v3, v8}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 91
    .line 92
    .line 93
    move/from16 v1, p2

    .line 94
    .line 95
    iput-boolean v1, v6, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mHasMobileDataFeature:Z

    .line 96
    .line 97
    if-eqz v7, :cond_0

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v3, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;

    .line 104
    .line 105
    invoke-direct {v3, v6, v2}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v1, v3}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    iget-object v1, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    .line 112
    .line 113
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 114
    .line 115
    iget-object v2, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    .line 116
    .line 117
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 118
    .line 119
    iput-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 120
    .line 121
    iput-object v0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/WifiState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final copyWifiStates()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mBgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 20
    .line 21
    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    .line 22
    .line 23
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 27
    .line 28
    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    .line 29
    .line 30
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 34
    .line 35
    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    .line 36
    .line 37
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 38
    .line 39
    move-object v1, v0

    .line 40
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 41
    .line 42
    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 48
    .line 49
    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    .line 50
    .line 51
    iput v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 55
    .line 56
    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    .line 57
    .line 58
    iput v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    .line 59
    .line 60
    move-object v1, v0

    .line 61
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 62
    .line 63
    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 69
    .line 70
    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    .line 71
    .line 72
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    .line 73
    .line 74
    move-object v1, v0

    .line 75
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 76
    .line 77
    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    .line 78
    .line 79
    iput v2, v1, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    .line 80
    .line 81
    move-object v1, v0

    .line 82
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 83
    .line 84
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 85
    .line 86
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    .line 87
    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 94
    .line 95
    :goto_0
    iput-object p0, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 96
    .line 97
    return-void
.end method

.method public final doInBackground(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mBgHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v1, "  - WiFi Network History ------"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 17
    .line 18
    const/16 v4, 0x20

    .line 19
    .line 20
    if-ge v1, v4, :cond_1

    .line 21
    .line 22
    aget-object v3, v3, v1

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 32
    .line 33
    add-int/2addr v1, v4

    .line 34
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    iget v5, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 37
    .line 38
    add-int/2addr v5, v4

    .line 39
    sub-int/2addr v5, v2

    .line 40
    if-lt v1, v5, :cond_2

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "  Previous WiFiNetwork("

    .line 45
    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v6, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 50
    .line 51
    add-int/2addr v6, v4

    .line 52
    sub-int/2addr v6, v1

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, "): "

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    and-int/lit8 v6, v1, 0x1f

    .line 62
    .line 63
    aget-object v6, v3, v6

    .line 64
    .line 65
    invoke-static {v5, v6, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dumpTableData(Ljava/io/PrintWriter;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final getCurrentIconIdForCarrierWifi()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->$r8$clinit:I

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    :cond_0
    shl-int/lit8 v0, v4, 0x10

    .line 30
    .line 31
    shl-int/lit8 p0, p0, 0x8

    .line 32
    .line 33
    or-int/2addr p0, v0

    .line 34
    or-int/2addr p0, v1

    .line 35
    return p0

    .line 36
    :cond_1
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->$r8$clinit:I

    .line 41
    .line 42
    shl-int/lit8 p0, p0, 0x8

    .line 43
    .line 44
    const/high16 v0, 0x20000

    .line 45
    .line 46
    or-int/2addr p0, v0

    .line 47
    or-int/2addr p0, v4

    .line 48
    return p0

    .line 49
    :cond_2
    return v4
.end method

.method public final notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    .line 6
    .line 7
    move-object v3, v2

    .line 8
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 9
    .line 10
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    .line 11
    .line 12
    const v4, 0x7f130453

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    iget-object v7, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-eqz v3, :cond_6

    .line 21
    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 24
    .line 25
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    .line 26
    .line 27
    iget-object v9, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    iget-boolean v3, v9, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mAirplaneMode:Z

    .line 32
    .line 33
    xor-int/2addr v3, v8

    .line 34
    if-nez v3, :cond_12

    .line 35
    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v10, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 49
    .line 50
    iget v11, v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    .line 51
    .line 52
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v20

    .line 56
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-static {v11, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 69
    .line 70
    iget v12, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    .line 71
    .line 72
    if-nez v12, :cond_1

    .line 73
    .line 74
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    move-object/from16 v19, v4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move-object/from16 v19, v11

    .line 82
    .line 83
    :goto_0
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 88
    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    .line 92
    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move v8, v6

    .line 97
    :goto_1
    new-instance v13, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-direct {v13, v8, v4, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v4, v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    .line 107
    .line 108
    if-eqz v8, :cond_3

    .line 109
    .line 110
    move v15, v4

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v15, v6

    .line 113
    :goto_2
    if-eqz v8, :cond_4

    .line 114
    .line 115
    new-instance v5, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 116
    .line 117
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-direct {v5, v6, v0, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move/from16 v16, v4

    .line 127
    .line 128
    move-object v14, v5

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    move-object v14, v5

    .line 131
    move/from16 v16, v6

    .line 132
    .line 133
    :goto_3
    iget v0, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    .line 134
    .line 135
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getControllerWithSubId(I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const-string v0, ""

    .line 149
    .line 150
    :goto_4
    move-object/from16 v21, v0

    .line 151
    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    .line 153
    .line 154
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    .line 155
    .line 156
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    .line 157
    .line 158
    iget v2, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    .line 159
    .line 160
    const/16 v23, 0x0

    .line 161
    .line 162
    const/16 v24, 0x1

    .line 163
    .line 164
    move-object v12, v0

    .line 165
    move/from16 v17, v3

    .line 166
    .line 167
    move/from16 v18, v4

    .line 168
    .line 169
    move/from16 v22, v2

    .line 170
    .line 171
    invoke-direct/range {v12 .. v24}, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_a

    .line 178
    .line 179
    :cond_6
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const v9, 0x7f05003b

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    move-object v9, v2

    .line 191
    check-cast v9, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 192
    .line 193
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    .line 194
    .line 195
    if-eqz v10, :cond_9

    .line 196
    .line 197
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 198
    .line 199
    if-eqz v10, :cond_7

    .line 200
    .line 201
    iget v10, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    .line 202
    .line 203
    if-eq v10, v8, :cond_8

    .line 204
    .line 205
    :cond_7
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mHasMobileDataFeature:Z

    .line 206
    .line 207
    if-eqz v10, :cond_8

    .line 208
    .line 209
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    .line 210
    .line 211
    if-nez v10, :cond_8

    .line 212
    .line 213
    if-eqz v3, :cond_9

    .line 214
    .line 215
    :cond_8
    move v3, v8

    .line 216
    goto :goto_5

    .line 217
    :cond_9
    move v3, v6

    .line 218
    :goto_5
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 219
    .line 220
    if-eqz v10, :cond_a

    .line 221
    .line 222
    iget-object v5, v9, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    .line 223
    .line 224
    :cond_a
    move-object/from16 v16, v5

    .line 225
    .line 226
    if-eqz v3, :cond_b

    .line 227
    .line 228
    iget-object v5, v9, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v5, :cond_b

    .line 231
    .line 232
    move v5, v8

    .line 233
    goto :goto_6

    .line 234
    :cond_b
    move v5, v6

    .line 235
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    iget v11, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    .line 248
    .line 249
    if-nez v11, :cond_c

    .line 250
    .line 251
    const-string v11, ","

    .line 252
    .line 253
    invoke-static {v10, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v7, v4, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    :cond_c
    new-instance v12, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getCurrentIconId()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-direct {v12, v3, v4, v10}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v13, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 271
    .line 272
    iget-boolean v3, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 273
    .line 274
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 275
    .line 276
    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    .line 277
    .line 278
    if-eqz v0, :cond_d

    .line 279
    .line 280
    const v0, 0x7f080a5b

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_d
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    .line 285
    .line 286
    if-eqz v0, :cond_e

    .line 287
    .line 288
    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->qsIcons:[[I

    .line 291
    .line 292
    iget v4, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    .line 293
    .line 294
    aget-object v0, v0, v4

    .line 295
    .line 296
    iget v2, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    .line 297
    .line 298
    aget v0, v0, v2

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_e
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    .line 302
    .line 303
    if-eqz v0, :cond_f

    .line 304
    .line 305
    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 306
    .line 307
    iget v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->qsDiscState:I

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_f
    iget-object v0, v2, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 311
    .line 312
    iget v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->qsNullState:I

    .line 313
    .line 314
    :goto_7
    invoke-direct {v13, v3, v0, v10}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    .line 318
    .line 319
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    .line 320
    .line 321
    if-eqz v5, :cond_10

    .line 322
    .line 323
    iget-boolean v2, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    .line 324
    .line 325
    if-eqz v2, :cond_10

    .line 326
    .line 327
    move v14, v8

    .line 328
    goto :goto_8

    .line 329
    :cond_10
    move v14, v6

    .line 330
    :goto_8
    if-eqz v5, :cond_11

    .line 331
    .line 332
    iget-boolean v2, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    .line 333
    .line 334
    if-eqz v2, :cond_11

    .line 335
    .line 336
    move v15, v8

    .line 337
    goto :goto_9

    .line 338
    :cond_11
    move v15, v6

    .line 339
    :goto_9
    iget-boolean v2, v9, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    .line 340
    .line 341
    iget-object v3, v9, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    .line 342
    .line 343
    iget v4, v9, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    .line 344
    .line 345
    move-object v10, v0

    .line 346
    move/from16 v17, v2

    .line 347
    .line 348
    move-object/from16 v18, v3

    .line 349
    .line 350
    move/from16 v19, v4

    .line 351
    .line 352
    invoke-direct/range {v10 .. v19}, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;ZZLjava/lang/String;ZLjava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V

    .line 356
    .line 357
    .line 358
    :cond_12
    :goto_a
    return-void
.end method

.method public setActivity(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x3

    .line 9
    if-eq p1, v4, :cond_1

    .line 10
    .line 11
    if-ne p1, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v5, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v5, v3

    .line 17
    :goto_1
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    .line 18
    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/WifiState;

    .line 20
    .line 21
    if-eq p1, v4, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne p1, v1, :cond_3

    .line 25
    .line 26
    :cond_2
    move v2, v3

    .line 27
    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
