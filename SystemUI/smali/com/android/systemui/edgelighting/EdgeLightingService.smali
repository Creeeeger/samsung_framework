.class public Lcom/android/systemui/edgelighting/EdgeLightingService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sConfigured:Z

.field public static sFlipFont:I


# instance fields
.field public mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCondition:I

.field public mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

.field public final mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

.field public mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

.field public final mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

.field public final mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

.field public mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field public mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

.field public final mForegroundToken:Landroid/os/IBinder;

.field public final mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

.field public mIsColorThemeEnabled:Z

.field public mIsStarted:Z

.field public final mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

.field public final mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

.field public mShouldKillMyself:Z

.field public mShouldShowAppIcon:Z

.field public mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mForegroundToken:Landroid/os/IBinder;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    .line 16
    .line 17
    iput v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 18
    .line 19
    new-instance v2, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;I)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 29
    .line 30
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$2;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    .line 43
    .line 44
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$3;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    .line 50
    .line 51
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$8;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    .line 57
    .line 58
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 59
    .line 60
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$9;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Landroid/os/Handler;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 64
    .line 65
    return-void
.end method

.method public static checkEdgeLightingAvailable()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "isCurrentUser current = "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", ownerId = 0"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "Utils"

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string/jumbo v0, "not Owner"

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string/jumbo v0, "not Support"

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    const-string v0, ""

    .line 59
    .line 60
    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "Enable pkg ( "

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string v2, "ALL"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    const-string v2, " )  : "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "EdgeLightingService"

    .line 5
    .line 6
    const-string/jumbo v1, "onCreate"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->checkEdgeLightingAvailable()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const-string v1, "OnCreate : edgelighting is not availabe now : "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->run()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string v2, "connectToSystemUI"

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    new-instance v2, Landroid/content/Intent;

    .line 52
    .line 53
    const-class v3, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    .line 54
    .line 55
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    const-class v3, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    .line 68
    .line 69
    invoke-virtual {p0, v2, v3, v1}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    sget-boolean v2, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->initEdgeLightingAnalyticsStates(Landroid/app/Application;)V

    .line 81
    .line 82
    .line 83
    sput-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 84
    .line 85
    :cond_2
    const-string v2, "edge"

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/samsung/android/edge/SemEdgeManager;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    const-string v2, "OnCreate : mEdgeManager is null."

    .line 98
    .line 99
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_3
    const-string/jumbo v0, "power"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/os/PowerManager;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/android/systemui/edgelighting/utils/AppIconCache;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/utils/AppIconCache;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    .line 133
    .line 134
    const-wide/16 v2, 0x3e8

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .line 138
    .line 139
    const-string v0, "device_policy"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 148
    .line 149
    return-void
.end method

.method public final onDestroy()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-class v5, Landroid/provider/Settings$System;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    .line 18
    .line 19
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v4, v3, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 33
    .line 34
    invoke-virtual {v3, v4, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 38
    .line 39
    iput-object v2, v3, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    .line 40
    .line 41
    iput-object v2, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 42
    .line 43
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 84
    .line 85
    iget-object v4, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    iget-object v4, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_4

    .line 99
    .line 100
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 101
    .line 102
    iget-object v4, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :goto_0
    iput-object v2, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 113
    .line 114
    iput-object v2, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    iput v3, v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    .line 118
    .line 119
    :cond_4
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 120
    .line 121
    :cond_5
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-class v4, Landroid/provider/Settings$System;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    .line 132
    .line 133
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Lcom/samsung/android/edge/SemEdgeManager;->unbindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string/jumbo v3, "onDestroy : mEdgeManager = "

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v3, "EdgeLightingService"

    .line 173
    .line 174
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 178
    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->unRegisterEdgeWindowCallback()V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 185
    .line 186
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 187
    .line 188
    if-nez v3, :cond_7

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_7
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    iget-object v4, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 198
    .line 199
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 200
    .line 201
    .line 202
    iput-object v2, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 203
    .line 204
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 205
    .line 206
    const-string v4, "EdgeLightingDispatcher"

    .line 207
    .line 208
    if-eqz v3, :cond_8

    .line 209
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v5, " mDialog showing : "

    .line 213
    .line 214
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 218
    .line 219
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->stopEdgeEffect()V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_8
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 240
    .line 241
    if-eqz v3, :cond_9

    .line 242
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v5, " mEffectServiceConrtroller showing : "

    .line 246
    .line 247
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 251
    .line 252
    iget-boolean v5, v5, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    .line 253
    .line 254
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    .line 267
    .line 268
    .line 269
    :cond_9
    :goto_3
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 270
    .line 271
    :cond_a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 272
    .line 273
    .line 274
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    .line 275
    .line 276
    iput v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 277
    .line 278
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 279
    .line 280
    if-eqz v0, :cond_b

    .line 281
    .line 282
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Lcom/android/systemui/edgelighting/EdgeLightingService$8;

    .line 283
    .line 284
    invoke-virtual {p0, v0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 285
    .line 286
    .line 287
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 288
    .line 289
    :cond_b
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 290
    .line 291
    .line 292
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->checkEdgeLightingAvailable()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string p3, ""

    .line 6
    .line 7
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x2

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    const-string p1, "EdgeLightingService"

    .line 15
    .line 16
    const-string/jumbo p3, "onStartCommand : edgelighting is not availabe now : "

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->run()V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    const-string p2, "edge"

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lcom/samsung/android/edge/SemEdgeManager;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 45
    .line 46
    const-string p2, "EdgeLightingService"

    .line 47
    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v1, "onStartCommand : mEdgeManager = "

    .line 51
    .line 52
    .line 53
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 57
    .line 58
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    .line 89
    .line 90
    .line 91
    return v0

    .line 92
    :cond_3
    const/4 p2, 0x1

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 94
    .line 95
    .line 96
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    if-nez p3, :cond_9

    .line 100
    .line 101
    new-instance p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 104
    .line 105
    invoke-direct {p3, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;-><init>(Lcom/samsung/android/edge/SemEdgeManager;)V

    .line 106
    .line 107
    .line 108
    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 109
    .line 110
    iput-object p0, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    .line 113
    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    .line 117
    .line 118
    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    .line 122
    .line 123
    :cond_4
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 124
    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 128
    .line 129
    invoke-direct {v2}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 133
    .line 134
    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 135
    .line 136
    invoke-direct {v3, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, v2, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    monitor-enter v4

    .line 142
    :try_start_0
    iput-object v3, v2, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    .line 143
    .line 144
    monitor-exit v4

    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0

    .line 149
    :cond_5
    :goto_0
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 150
    .line 151
    if-nez v2, :cond_6

    .line 152
    .line 153
    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 154
    .line 155
    invoke-direct {v2}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 159
    .line 160
    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    .line 161
    .line 162
    invoke-direct {v3, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 163
    .line 164
    .line 165
    iput-object v3, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    .line 166
    .line 167
    :cond_6
    const-string/jumbo v2, "power"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Landroid/os/PowerManager;

    .line 175
    .line 176
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mPm:Landroid/os/PowerManager;

    .line 177
    .line 178
    const-string v3, "EdgeLighting:edge"

    .line 179
    .line 180
    invoke-virtual {v2, p2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    .line 186
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 187
    .line 188
    if-nez v2, :cond_7

    .line 189
    .line 190
    new-instance v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 196
    .line 197
    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 198
    .line 199
    invoke-direct {v2, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 200
    .line 201
    .line 202
    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    .line 203
    .line 204
    invoke-direct {v3, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 205
    .line 206
    .line 207
    iget-object p3, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 208
    .line 209
    iput-object v2, p3, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 210
    .line 211
    iput-object v3, p3, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mRequestor:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->setEnable()V

    .line 214
    .line 215
    .line 216
    :cond_7
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 217
    .line 218
    new-instance v2, Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 219
    .line 220
    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 221
    .line 222
    .line 223
    iput-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    iput-boolean v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 230
    .line 231
    iget-object v2, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    .line 232
    .line 233
    iget-object p3, p3, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 234
    .line 235
    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    if-eqz p3, :cond_8

    .line 243
    .line 244
    const-string p3, "EdgeLightingScreenStatus"

    .line 245
    .line 246
    const-string/jumbo v2, "reset"

    .line 247
    .line 248
    .line 249
    invoke-static {p3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 253
    .line 254
    .line 255
    :cond_8
    move p3, p2

    .line 256
    goto :goto_1

    .line 257
    :cond_9
    move p3, v1

    .line 258
    :goto_1
    if-eqz p3, :cond_12

    .line 259
    .line 260
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 261
    .line 262
    const/4 v2, 0x0

    .line 263
    if-nez p3, :cond_a

    .line 264
    .line 265
    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 266
    .line 267
    invoke-direct {p3, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$6;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 268
    .line 269
    .line 270
    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 271
    .line 272
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mFoldStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    .line 277
    .line 278
    invoke-virtual {p3, v3, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 279
    .line 280
    .line 281
    :cond_a
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 282
    .line 283
    if-nez p3, :cond_b

    .line 284
    .line 285
    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 286
    .line 287
    invoke-direct {p3, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;I)V

    .line 288
    .line 289
    .line 290
    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 291
    .line 292
    new-instance p3, Landroid/content/IntentFilter;

    .line 293
    .line 294
    const-string v3, "com.samsung.systemui.statusbar.ANIMATING"

    .line 295
    .line 296
    invoke-direct {p3, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v3, "com.samsung.systemui.statusbar.EXPANDED"

    .line 300
    .line 301
    invoke-virtual {p3, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 305
    .line 306
    invoke-virtual {p0, v3, p3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    .line 308
    .line 309
    :cond_b
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 310
    .line 311
    if-nez p3, :cond_d

    .line 312
    .line 313
    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 314
    .line 315
    invoke-direct {p3, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$7;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    .line 316
    .line 317
    .line 318
    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 319
    .line 320
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 321
    .line 322
    .line 323
    move-result-object p3

    .line 324
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    .line 325
    .line 326
    iget-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 327
    .line 328
    iget-object v5, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    .line 329
    .line 330
    if-nez v4, :cond_c

    .line 331
    .line 332
    new-instance v4, Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 333
    .line 334
    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    iput-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 338
    .line 339
    new-instance v4, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 340
    .line 341
    invoke-direct {v4, p3}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;-><init>(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)V

    .line 342
    .line 343
    .line 344
    iput-object v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 345
    .line 346
    :try_start_1
    iget-object v6, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 347
    .line 348
    invoke-virtual {v6, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :catch_0
    move-exception v4

    .line 353
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    .line 355
    .line 356
    :goto_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    iget-object v3, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 360
    .line 361
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    if-eqz v3, :cond_d

    .line 366
    .line 367
    iget-boolean v4, v3, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 368
    .line 369
    iput-boolean v4, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    .line 370
    .line 371
    iget v3, v3, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 372
    .line 373
    iput v3, p3, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_c
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result p3

    .line 380
    if-nez p3, :cond_d

    .line 381
    .line 382
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    const-class v4, Landroid/provider/Settings$System;

    .line 394
    .line 395
    iget-object v5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    .line 396
    .line 397
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    const-class v6, Landroid/provider/Settings$System;

    .line 401
    .line 402
    const-string v7, "edge_lighting"

    .line 403
    .line 404
    if-ne v4, v6, :cond_e

    .line 405
    .line 406
    iget-object p3, p3, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    .line 407
    .line 408
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    goto :goto_4

    .line 413
    :cond_e
    const-class v6, Landroid/provider/Settings$Global;

    .line 414
    .line 415
    if-ne v4, v6, :cond_10

    .line 416
    .line 417
    iget-object p3, p3, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    .line 418
    .line 419
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    :goto_4
    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    check-cast v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    .line 428
    .line 429
    if-nez v6, :cond_f

    .line 430
    .line 431
    new-instance v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    .line 432
    .line 433
    invoke-direct {v6, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;-><init>(Landroid/os/Handler;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    iget-object p3, v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3, v4, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 445
    .line 446
    .line 447
    goto :goto_5

    .line 448
    :cond_f
    iget-object p3, v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result p3

    .line 454
    if-nez p3, :cond_11

    .line 455
    .line 456
    iget-object p3, v6, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    goto :goto_5

    .line 462
    :cond_10
    const-string p3, "EdgeLightingSettingsObserver"

    .line 463
    .line 464
    const-string/jumbo v2, "registerContentObserver : wrong table"

    .line 465
    .line 466
    .line 467
    invoke-static {p3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    :cond_11
    :goto_5
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 471
    .line 472
    .line 473
    move-result-object p3

    .line 474
    const-string v2, "colortheme_app_icon"

    .line 475
    .line 476
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    iget-object v4, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 481
    .line 482
    invoke-virtual {p3, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 486
    .line 487
    .line 488
    move-result-object p3

    .line 489
    const-string/jumbo v3, "show_notification_app_icon"

    .line 490
    .line 491
    .line 492
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    iget-object v5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 497
    .line 498
    invoke-virtual {p3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    .line 500
    .line 501
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 502
    .line 503
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {p3, p2, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->onChange(ZLandroid/net/Uri;)V

    .line 508
    .line 509
    .line 510
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDBObserver:Lcom/android/systemui/edgelighting/EdgeLightingService$9;

    .line 511
    .line 512
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {p3, p2, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$9;->onChange(ZLandroid/net/Uri;)V

    .line 517
    .line 518
    .line 519
    :cond_12
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAudioManager:Landroid/media/AudioManager;

    .line 520
    .line 521
    if-nez p3, :cond_13

    .line 522
    .line 523
    const-string p3, "audio"

    .line 524
    .line 525
    invoke-virtual {p0, p3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object p3

    .line 529
    check-cast p3, Landroid/media/AudioManager;

    .line 530
    .line 531
    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAudioManager:Landroid/media/AudioManager;

    .line 532
    .line 533
    :cond_13
    iget-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 534
    .line 535
    if-eqz p3, :cond_16

    .line 536
    .line 537
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 538
    .line 539
    .line 540
    move-result-object p3

    .line 541
    sget-boolean v2, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    .line 542
    .line 543
    xor-int/2addr v2, p2

    .line 544
    const/4 v3, -0x2

    .line 545
    const-string v4, "edge_lighting_show_condition"

    .line 546
    .line 547
    invoke-static {p3, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 548
    .line 549
    .line 550
    move-result p3

    .line 551
    if-ne p3, p2, :cond_14

    .line 552
    .line 553
    move p3, p2

    .line 554
    goto :goto_6

    .line 555
    :cond_14
    if-ne p3, v0, :cond_15

    .line 556
    .line 557
    move p3, v0

    .line 558
    goto :goto_6

    .line 559
    :cond_15
    const/4 p3, 0x3

    .line 560
    :goto_6
    iget v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 561
    .line 562
    if-eq v2, p3, :cond_16

    .line 563
    .line 564
    iput p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 565
    .line 566
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 567
    .line 568
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    .line 569
    .line 570
    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/edge/SemEdgeManager;->bindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;I)V

    .line 571
    .line 572
    .line 573
    :cond_16
    if-eqz p1, :cond_1e

    .line 574
    .line 575
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    if-eqz p1, :cond_1d

    .line 580
    .line 581
    const-string p3, "forUpdatePolicy"

    .line 582
    .line 583
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 584
    .line 585
    .line 586
    move-result p3

    .line 587
    if-eqz p3, :cond_1c

    .line 588
    .line 589
    iget-boolean p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    .line 590
    .line 591
    if-nez p3, :cond_1c

    .line 592
    .line 593
    const-string p1, "EdgeLightingService"

    .line 594
    .line 595
    const-string/jumbo p3, "start service for policy update"

    .line 596
    .line 597
    .line 598
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .line 600
    .line 601
    invoke-static {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 606
    .line 607
    .line 608
    move-result-object p3

    .line 609
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    const-string v2, "edge_lighting_settings"

    .line 613
    .line 614
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    new-instance v3, Ljava/util/HashSet;

    .line 619
    .line 620
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 621
    .line 622
    .line 623
    const-string/jumbo v4, "silent_add_list"

    .line 624
    .line 625
    .line 626
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    iget-object v6, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    .line 635
    .line 636
    if-lez v5, :cond_18

    .line 637
    .line 638
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    if-eqz v5, :cond_17

    .line 647
    .line 648
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    check-cast v5, Ljava/lang/String;

    .line 653
    .line 654
    new-instance v7, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    .line 655
    .line 656
    const v8, -0xb37941

    .line 657
    .line 658
    .line 659
    invoke-direct {v7, v5, v8}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    goto :goto_7

    .line 666
    :cond_17
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 671
    .line 672
    .line 673
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 674
    .line 675
    .line 676
    move v3, p2

    .line 677
    goto :goto_8

    .line 678
    :cond_18
    move v3, v1

    .line 679
    :goto_8
    new-instance v4, Ljava/util/HashSet;

    .line 680
    .line 681
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 682
    .line 683
    .line 684
    const-string/jumbo v5, "silent_remove_list"

    .line 685
    .line 686
    .line 687
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 692
    .line 693
    .line 694
    move-result v7

    .line 695
    if-lez v7, :cond_1a

    .line 696
    .line 697
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    if-eqz v4, :cond_19

    .line 706
    .line 707
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    check-cast v4, Ljava/lang/String;

    .line 712
    .line 713
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    goto :goto_9

    .line 717
    :cond_19
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 722
    .line 723
    .line 724
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    .line 726
    .line 727
    move v3, p2

    .line 728
    :cond_1a
    if-eqz v3, :cond_1b

    .line 729
    .line 730
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    const-string/jumbo v3, "version"

    .line 735
    .line 736
    .line 737
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 738
    .line 739
    .line 740
    const-string p2, "all_application"

    .line 741
    .line 742
    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 746
    .line 747
    .line 748
    move-result-object p2

    .line 749
    const-string v1, "enable_list"

    .line 750
    .line 751
    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 752
    .line 753
    .line 754
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 755
    .line 756
    .line 757
    :cond_1b
    iget-object p2, p3, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 758
    .line 759
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object p2

    .line 763
    check-cast p2, Ljava/util/HashMap;

    .line 764
    .line 765
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 766
    .line 767
    .line 768
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    .line 769
    .line 770
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    .line 774
    .line 775
    .line 776
    return v0

    .line 777
    :cond_1c
    const-string/jumbo p3, "packagename"

    .line 778
    .line 779
    .line 780
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    const-string p3, "info"

    .line 785
    .line 786
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 787
    .line 788
    .line 789
    move-result-object p3

    .line 790
    move-object v5, p3

    .line 791
    check-cast v5, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 792
    .line 793
    const-string/jumbo p3, "reason"

    .line 794
    .line 795
    .line 796
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    const-string p1, "EdgeLightingService"

    .line 801
    .line 802
    new-instance p3, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    const-string/jumbo v0, "onStartCommand pkg="

    .line 805
    .line 806
    .line 807
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    const-string v0, ",info="

    .line 814
    .line 815
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    const-string v0, ",reason="

    .line 822
    .line 823
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object p3

    .line 833
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .line 835
    .line 836
    if-eqz v4, :cond_1e

    .line 837
    .line 838
    if-eqz v5, :cond_1e

    .line 839
    .line 840
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 841
    .line 842
    new-instance p3, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;

    .line 843
    .line 844
    const/4 v7, 0x0

    .line 845
    move-object v2, p3

    .line 846
    move-object v3, p0

    .line 847
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;II)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 851
    .line 852
    .line 853
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    .line 854
    .line 855
    goto :goto_a

    .line 856
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    .line 857
    .line 858
    .line 859
    return v0

    .line 860
    :cond_1e
    :goto_a
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    .line 861
    .line 862
    return p2
.end method

.method public final setProcessForeground(Z)V
    .locals 3

    .line 1
    const-string v0, "EdgeLightingService"

    .line 2
    .line 3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mForegroundToken:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {v1, p0, v2, p1, v0}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "cant set to foreground"

    .line 21
    .line 22
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v3, p1

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    move/from16 v7, p3

    .line 7
    .line 8
    const/4 v10, 0x1

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 12
    .line 13
    const-string/jumbo v1, "packageName null"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 31
    .line 32
    const-string/jumbo v1, "reason is not notification"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const-class v0, Landroid/app/SemStatusBarManager;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 50
    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    if-eq v7, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->getDisableFlags()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/high16 v4, 0x40000

    .line 60
    .line 61
    and-int/2addr v0, v4

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 65
    .line 66
    const-string v1, "disable_alert"

    .line 67
    .line 68
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v11, 0x0

    .line 81
    const/4 v12, -0x2

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v4, "cover_screen_show_notification"

    .line 89
    .line 90
    invoke-static {v0, v4, v10, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ne v0, v10, :cond_3

    .line 95
    .line 96
    move v0, v10

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move v0, v11

    .line 99
    :goto_0
    if-nez v0, :cond_4

    .line 100
    .line 101
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 102
    .line 103
    const-string/jumbo v1, "reason is turn off subscreen notification"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string/jumbo v4, "turn_on_cover_screen_for_notification"

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v4, v10, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    move v0, v10

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move v0, v11

    .line 130
    :goto_1
    if-nez v0, :cond_6

    .line 131
    .line 132
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 141
    .line 142
    const-string/jumbo v1, "reason is turn off \"Turn on screen for notifications\""

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 154
    .line 155
    const-string/jumbo v13, "noti_key"

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :try_start_0
    iget-object v4, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 169
    .line 170
    invoke-interface {v4, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isInterrupted(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_8

    .line 175
    .line 176
    const-string v4, "flag"

    .line 177
    .line 178
    invoke-static {v9, v4}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    and-int/2addr v2, v4

    .line 183
    if-eqz v2, :cond_7

    .line 184
    .line 185
    move v2, v10

    .line 186
    goto :goto_2

    .line 187
    :cond_7
    move v2, v11

    .line 188
    :goto_2
    if-eqz v2, :cond_8

    .line 189
    .line 190
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 191
    .line 192
    const-string v2, "interrupted"

    .line 193
    .line 194
    invoke-virtual {v0, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_8
    iget-object v2, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 203
    .line 204
    invoke-interface {v2, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isAlertingHeadsUp(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 211
    .line 212
    const-string v2, "isAlertingHeadsUp"

    .line 213
    .line 214
    invoke-virtual {v0, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_9
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 223
    .line 224
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isPanelsEnabled()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_a

    .line 229
    .line 230
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 231
    .line 232
    const-string v2, "isPanelsEnabled"

    .line 233
    .line 234
    invoke-virtual {v0, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :catch_0
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v2, "channel_id"

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, "com.android.systemui"

    .line 253
    .line 254
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    const-string v4, "EdgeLightingService"

    .line 259
    .line 260
    if-nez v2, :cond_b

    .line 261
    .line 262
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_c

    .line 269
    .line 270
    :cond_b
    if-eqz v0, :cond_c

    .line 271
    .line 272
    const-string v2, "edge_lighting_chnnel_id"

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    const-string v0, "disable edge_lighting channel"

    .line 281
    .line 282
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_c
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    .line 287
    .line 288
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    const-string v2, "keyguard"

    .line 293
    .line 294
    if-eqz v0, :cond_d

    .line 295
    .line 296
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/app/KeyguardManager;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_d

    .line 307
    .line 308
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_d

    .line 313
    .line 314
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 315
    .line 316
    const-string v1, "keyguard && screenOn"

    .line 317
    .line 318
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :cond_d
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/app/KeyguardManager;

    .line 331
    .line 332
    if-eqz v0, :cond_e

    .line 333
    .line 334
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_e

    .line 339
    .line 340
    move v0, v10

    .line 341
    goto :goto_3

    .line 342
    :cond_e
    move v0, v11

    .line 343
    :goto_3
    const/4 v2, 0x0

    .line 344
    if-eqz v0, :cond_16

    .line 345
    .line 346
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 347
    .line 348
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    and-int/lit8 v0, v0, 0x4

    .line 357
    .line 358
    if-nez v0, :cond_f

    .line 359
    .line 360
    move v0, v10

    .line 361
    goto :goto_4

    .line 362
    :cond_f
    move v0, v11

    .line 363
    :goto_4
    if-nez v0, :cond_10

    .line 364
    .line 365
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 366
    .line 367
    const-string v1, "blockByDPM"

    .line 368
    .line 369
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_10
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v5, "lock_screen_show_notifications"

    .line 382
    .line 383
    invoke-static {v0, v5, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-ne v0, v10, :cond_11

    .line 388
    .line 389
    move v0, v10

    .line 390
    goto :goto_5

    .line 391
    :cond_11
    move v0, v11

    .line 392
    :goto_5
    if-nez v0, :cond_12

    .line 393
    .line 394
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 395
    .line 396
    const-string v1, "keygaurdNotiOff"

    .line 397
    .line 398
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :cond_12
    const-string/jumbo v0, "noti_visiblity"

    .line 407
    .line 408
    .line 409
    invoke-static {v9, v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    const/4 v5, -0x1

    .line 414
    if-ne v0, v5, :cond_13

    .line 415
    .line 416
    move v0, v10

    .line 417
    goto :goto_6

    .line 418
    :cond_13
    move v0, v11

    .line 419
    :goto_6
    if-eqz v0, :cond_14

    .line 420
    .line 421
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 422
    .line 423
    const-string/jumbo v1, "secret && keyguard"

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_15

    .line 439
    .line 440
    const-string/jumbo v6, "package_visiblity"

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    if-eqz v0, :cond_15

    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-ne v0, v5, :cond_15

    .line 458
    .line 459
    move v0, v10

    .line 460
    goto :goto_7

    .line 461
    :cond_15
    move v0, v11

    .line 462
    :goto_7
    if-eqz v0, :cond_16

    .line 463
    .line 464
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 465
    .line 466
    const-string/jumbo v1, "secret package && keyguard"

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :cond_16
    sget-boolean v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    .line 478
    .line 479
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    const-string v5, "bubble"

    .line 484
    .line 485
    if-eqz v0, :cond_17

    .line 486
    .line 487
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    goto :goto_8

    .line 492
    :cond_17
    move v0, v11

    .line 493
    :goto_8
    if-eqz v0, :cond_18

    .line 494
    .line 495
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    .line 496
    .line 497
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-eqz v0, :cond_18

    .line 502
    .line 503
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    .line 504
    .line 505
    invoke-virtual {v0, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_18
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    if-eqz v0, :cond_19

    .line 522
    .line 523
    iget v5, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 524
    .line 525
    if-lez v5, :cond_19

    .line 526
    .line 527
    sget v6, Lcom/android/systemui/edgelighting/EdgeLightingService;->sFlipFont:I

    .line 528
    .line 529
    if-eq v6, v5, :cond_19

    .line 530
    .line 531
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 532
    .line 533
    .line 534
    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 535
    .line 536
    sput v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sFlipFont:I

    .line 537
    .line 538
    :cond_19
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 539
    .line 540
    if-eqz v0, :cond_29

    .line 541
    .line 542
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    iget-object v6, v0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    .line 552
    .line 553
    if-eqz v5, :cond_1a

    .line 554
    .line 555
    iget-object v8, v0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->KEY_SMALL_ICON:Ljava/lang/String;

    .line 556
    .line 557
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    instance-of v8, v5, Landroid/graphics/drawable/Icon;

    .line 562
    .line 563
    if-eqz v8, :cond_1a

    .line 564
    .line 565
    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 566
    .line 567
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    goto :goto_9

    .line 572
    :cond_1a
    move-object v5, v2

    .line 573
    :goto_9
    iget-object v8, v0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    .line 574
    .line 575
    if-eqz v5, :cond_1b

    .line 576
    .line 577
    invoke-virtual {v8, v3, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-object v6, v5

    .line 581
    goto :goto_b

    .line 582
    :cond_1b
    invoke-virtual {v8, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 587
    .line 588
    if-eqz v0, :cond_1c

    .line 589
    .line 590
    move-object v6, v0

    .line 591
    goto :goto_b

    .line 592
    :cond_1c
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-virtual {v8, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 601
    .line 602
    .line 603
    goto :goto_a

    .line 604
    :catch_1
    move-exception v0

    .line 605
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 606
    .line 607
    .line 608
    :goto_a
    if-eqz v2, :cond_1d

    .line 609
    .line 610
    invoke-virtual {v8, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    :cond_1d
    move-object v6, v2

    .line 614
    :goto_b
    if-eqz v7, :cond_24

    .line 615
    .line 616
    sget-boolean v0, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->DEBUG:Z

    .line 617
    .line 618
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    if-eqz v0, :cond_1e

    .line 623
    .line 624
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    sget-object v2, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->EXTRA_KEY_SMALL_ICON:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    if-eqz v0, :cond_1e

    .line 635
    .line 636
    move v0, v10

    .line 637
    goto :goto_c

    .line 638
    :cond_1e
    move v0, v11

    .line 639
    :goto_c
    if-eqz v0, :cond_1f

    .line 640
    .line 641
    const-string/jumbo v0, "notification_color"

    .line 642
    .line 643
    .line 644
    invoke-static {v9, v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    goto :goto_d

    .line 649
    :cond_1f
    move v0, v11

    .line 650
    :goto_d
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    const-string v5, "edge_lighting_color_type"

    .line 655
    .line 656
    invoke-static {v2, v5, v10, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-nez v2, :cond_20

    .line 661
    .line 662
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    invoke-static {v4, v2, v11}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    goto :goto_e

    .line 679
    :cond_20
    const v5, -0xb37941

    .line 680
    .line 681
    .line 682
    if-ne v2, v10, :cond_21

    .line 683
    .line 684
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-static {v2, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    if-nez v2, :cond_23

    .line 693
    .line 694
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-static {v2, v11}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    .line 703
    .line 704
    .line 705
    move-result-object v8

    .line 706
    invoke-virtual {v2, v8, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    if-ne v2, v5, :cond_23

    .line 711
    .line 712
    if-eqz v0, :cond_23

    .line 713
    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    const-string v5, "Not exist color in white list.So using notification color  : "

    .line 717
    .line 718
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    move v2, v0

    .line 736
    goto :goto_e

    .line 737
    :cond_21
    const/4 v4, 0x3

    .line 738
    if-ne v2, v4, :cond_22

    .line 739
    .line 740
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    goto :goto_e

    .line 749
    :cond_22
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    const-string v4, "edgelighting_custom_color"

    .line 758
    .line 759
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    :cond_23
    :goto_e
    filled-new-array {v2, v0}, [I

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-virtual {v9, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setEffectColors([I)V

    .line 768
    .line 769
    .line 770
    :cond_24
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-static {v0, v11}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 779
    .line 780
    const/16 v2, 0xa

    .line 781
    .line 782
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    check-cast v0, Ljava/util/HashMap;

    .line 787
    .line 788
    if-eqz v0, :cond_25

    .line 789
    .line 790
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 795
    .line 796
    if-eqz v0, :cond_25

    .line 797
    .line 798
    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    .line 799
    .line 800
    move v8, v0

    .line 801
    goto :goto_f

    .line 802
    :cond_25
    move v8, v11

    .line 803
    :goto_f
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    .line 804
    .line 805
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string/jumbo v4, "startEdgeLighting: "

    .line 811
    .line 812
    .line 813
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v4, " "

    .line 820
    .line 821
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    const-string v4, " onGo="

    .line 828
    .line 829
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    .line 833
    .line 834
    .line 835
    move-result v4

    .line 836
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    const-string v4, "EdgeLightingScheduler"

    .line 844
    .line 845
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    new-instance v14, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 849
    .line 850
    const/4 v4, 0x0

    .line 851
    move-object v2, v14

    .line 852
    move-object/from16 v3, p1

    .line 853
    .line 854
    move-object/from16 v5, p2

    .line 855
    .line 856
    move/from16 v7, p3

    .line 857
    .line 858
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V

    .line 859
    .line 860
    .line 861
    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 862
    .line 863
    iget-object v2, v2, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 864
    .line 865
    invoke-virtual {v2}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    sget-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    .line 870
    .line 871
    xor-int/2addr v3, v10

    .line 872
    const-string v4, "edge_lighting_show_condition"

    .line 873
    .line 874
    invoke-static {v2, v4, v3, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    .line 879
    .line 880
    invoke-direct {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    .line 881
    .line 882
    .line 883
    iput-object v3, v14, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    .line 884
    .line 885
    if-eqz v2, :cond_28

    .line 886
    .line 887
    if-eq v2, v10, :cond_27

    .line 888
    .line 889
    const/4 v4, 0x2

    .line 890
    if-eq v2, v4, :cond_26

    .line 891
    .line 892
    goto :goto_10

    .line 893
    :cond_26
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 894
    .line 895
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    .line 896
    .line 897
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    .line 898
    .line 899
    goto :goto_10

    .line 900
    :cond_27
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 901
    .line 902
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    .line 903
    .line 904
    goto :goto_10

    .line 905
    :cond_28
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 906
    .line 907
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    .line 908
    .line 909
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 910
    .line 911
    iput-boolean v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    .line 912
    .line 913
    :goto_10
    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 914
    .line 915
    iget-object v2, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 916
    .line 917
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 922
    .line 923
    .line 924
    move-result v2

    .line 925
    invoke-virtual {v14, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    .line 926
    .line 927
    .line 928
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    .line 929
    .line 930
    invoke-static {v0, v11, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    .line 936
    .line 937
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->updateStatusLoggingItem(Landroid/content/Context;)V

    .line 942
    .line 943
    .line 944
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 945
    .line 946
    if-eqz v0, :cond_29

    .line 947
    .line 948
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    :try_start_2
    iget-object v1, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 957
    .line 958
    invoke-interface {v1, v0}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->setInterruption(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 959
    .line 960
    .line 961
    :catch_2
    :cond_29
    return-void
.end method

.method public final stopEdgeLightingService()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
