.class public Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static sVerboseLogging:Z


# instance fields
.field public final mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

.field public final mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

.field public final mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$3;

.field public final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$9;

.field public final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field public mIsInitialized:Z

.field public final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMaxScanAgeMillis:J

.field public final mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public mNetworkScoringUiEnabled:Z

.field public final mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

.field public final mScanIntervalMillis:J

.field public final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field public final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

.field public final mTag:Ljava/lang/String;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiScanner:Landroid/net/wifi/WifiScanner;

.field public mWifiState:I

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    move-wide/from16 v3, p9

    .line 6
    .line 7
    move-wide/from16 v5, p11

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    iput v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iput-boolean v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    .line 17
    .line 18
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    .line 19
    .line 20
    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 21
    .line 22
    .line 23
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    .line 24
    .line 25
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    .line 26
    .line 27
    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const/16 v9, 0xf

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const/4 v9, 0x1

    .line 41
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v8, v7}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 54
    .line 55
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 56
    .line 57
    invoke-direct {v8, p0, v9}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 58
    .line 59
    .line 60
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 61
    .line 62
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    .line 63
    .line 64
    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 65
    .line 66
    .line 67
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    .line 68
    .line 69
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    .line 70
    .line 71
    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$4;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 72
    .line 73
    .line 74
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    .line 75
    .line 76
    move-object v8, p1

    .line 77
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 78
    .line 79
    const-class v8, Landroid/app/ActivityManager;

    .line 80
    .line 81
    invoke-virtual {p3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Landroid/app/ActivityManager;

    .line 86
    .line 87
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$6;

    .line 88
    .line 89
    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$6;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 90
    .line 91
    .line 92
    move-object v10, p2

    .line 93
    invoke-virtual {p2, v8}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    move-object v8, p4

    .line 99
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    .line 101
    const-class v10, Lcom/samsung/android/wifi/SemWifiManager;

    .line 102
    .line 103
    invoke-virtual {p3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    check-cast v10, Lcom/samsung/android/wifi/SemWifiManager;

    .line 108
    .line 109
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 110
    .line 111
    move-object/from16 v10, p5

    .line 112
    .line 113
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 114
    .line 115
    const-class v10, Landroid/net/ConnectivityDiagnosticsManager;

    .line 116
    .line 117
    invoke-virtual {p3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Landroid/net/ConnectivityDiagnosticsManager;

    .line 122
    .line 123
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 124
    .line 125
    move-object/from16 v10, p6

    .line 126
    .line 127
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 128
    .line 129
    iput-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 130
    .line 131
    iput-wide v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 132
    .line 133
    iput-wide v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    .line 134
    .line 135
    move-object/from16 v10, p13

    .line 136
    .line 137
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    .line 138
    .line 139
    move-object/from16 v10, p14

    .line 140
    .line 141
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v10, Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 144
    .line 145
    add-long/2addr v3, v5

    .line 146
    move-object/from16 v5, p8

    .line 147
    .line 148
    invoke-direct {v10, v5, v3, v4, p3}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;JLandroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    iput-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 152
    .line 153
    new-instance v3, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    .line 154
    .line 155
    new-instance v4, Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    .line 156
    .line 157
    invoke-direct {v4, p0, v2}, Lcom/android/wifitrackerlib/BaseWifiTracker$7;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, p3, v4}, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;-><init>(Landroid/content/Context;Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V

    .line 161
    .line 162
    .line 163
    iput-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;

    .line 164
    .line 165
    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$8;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 168
    .line 169
    .line 170
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    .line 171
    .line 172
    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$9;

    .line 173
    .line 174
    invoke-direct {v1, p0, v9}, Lcom/android/wifitrackerlib/BaseWifiTracker$9;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 175
    .line 176
    .line 177
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$9;

    .line 178
    .line 179
    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 180
    .line 181
    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {v1, p0, v2, v7}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;I)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 189
    .line 190
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    sput-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 195
    .line 196
    return-void
.end method


# virtual methods
.method public handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleDefaultNetworkLost()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleDefaultSubscriptionChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleNetworkLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleOnStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleQosScoreCacheUpdated()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleWifiStateChangedAction()V
    .locals 0

    .line 1
    return-void
.end method

.method public semNotifyScanStateChanged()V
    .locals 0

    .line 1
    return-void
.end method
