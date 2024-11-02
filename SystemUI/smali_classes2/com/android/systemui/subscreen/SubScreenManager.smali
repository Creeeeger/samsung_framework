.class public final Lcom/android/systemui/subscreen/SubScreenManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public mDeviceInteractive:Z

.field public mDeviceState:I

.field public final mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDeviceStateRequestCallback:Lcom/android/systemui/subscreen/SubScreenManager$3;

.field public final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFaceWidgetManagerLazy:Ldagger/Lazy;

.field public mFallback:Lcom/android/systemui/subscreen/SubScreenFallback;

.field public final mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsFolderOpened:Z

.field public mIsPluginConnected:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mMainDisplayState:I

.field public final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mOccludedApps:Ljava/util/List;

.field public mPendingPluginConnect:Z

.field public mPendingPluginConnectRunnable:Ljava/lang/Runnable;

.field public mPendingRequestDualState:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginConnectionRunnable:Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

.field public mPluginContext:Landroid/content/Context;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mRequestBouncerForLauncherTask:Z

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mSettingsHelperLazy:Ldagger/Lazy;

.field public mSubDisplay:Landroid/view/Display;

.field public final mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field public mSubScreenWindow:Landroid/view/Window;

.field public final mTaskStack:Ljava/util/Stack;

.field public final mToken:Landroid/os/IBinder;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/hardware/display/DisplayManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/app/ActivityManager;Landroid/app/KeyguardManager;Landroid/os/PowerManager;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/app/ActivityManager;",
            "Landroid/app/KeyguardManager;",
            "Landroid/os/PowerManager;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    new-instance v1, Ljava/util/Stack;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 28
    .line 29
    new-instance v1, Landroid/os/Binder;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mToken:Landroid/os/IBinder;

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    iput v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    .line 43
    .line 44
    new-instance v2, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    iput-boolean v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    .line 52
    .line 53
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$1;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 59
    .line 60
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$2;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$2;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

    .line 66
    .line 67
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$3;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$3;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateRequestCallback:Lcom/android/systemui/subscreen/SubScreenManager$3;

    .line 73
    .line 74
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$4;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$4;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

    .line 80
    .line 81
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$7;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$7;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

    .line 87
    .line 88
    move-object v1, p1

    .line 89
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    move-object v1, p2

    .line 92
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 93
    .line 94
    move-object v1, p3

    .line 95
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 96
    .line 97
    move-object v1, p4

    .line 98
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 99
    .line 100
    move-object v1, p5

    .line 101
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 102
    .line 103
    move-object v1, p6

    .line 104
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 105
    .line 106
    move-object v1, p7

    .line 107
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 108
    .line 109
    move-object v1, p8

    .line 110
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 111
    .line 112
    move-object v1, p9

    .line 113
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 114
    .line 115
    move-object v1, p10

    .line 116
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 117
    .line 118
    move-object v1, p11

    .line 119
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 120
    .line 121
    move-object v1, p12

    .line 122
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    .line 123
    .line 124
    move-object/from16 v1, p13

    .line 125
    .line 126
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 127
    .line 128
    move-object/from16 v1, p14

    .line 129
    .line 130
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 131
    .line 132
    move-object/from16 v1, p15

    .line 133
    .line 134
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 135
    .line 136
    move-object/from16 v1, p17

    .line 137
    .line 138
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 139
    .line 140
    move-object/from16 v1, p18

    .line 141
    .line 142
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 143
    .line 144
    move-object/from16 v1, p19

    .line 145
    .line 146
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 147
    .line 148
    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$5;

    .line 149
    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/subscreen/SubScreenManager$5;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;Landroid/os/Looper;)V

    .line 155
    .line 156
    .line 157
    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    .line 158
    .line 159
    return-void
.end method

.method public static getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/subscreen/SubScreenManager$8;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/16 p0, 0x3ea

    .line 18
    .line 19
    return p0

    .line 20
    :cond_1
    const/16 p0, 0x3e9

    .line 21
    .line 22
    return p0
.end method


# virtual methods
.method public final addPluginListener()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 2
    .line 3
    const-string v1, "SubScreenManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "addPluginListener() already connected"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "addPluginListener() "

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 19
    .line 20
    const-string v3, "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"

    .line 21
    .line 22
    const-class v5, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x1

    .line 27
    move-object v4, p0

    .line 28
    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 33
    .line 34
    return-void
.end method

.method public final adjustSubHomeActivityOrder(Z)V
    .locals 7

    .line 1
    const-string v0, " adjustSubHomeActivityOrder Current Top Task : "

    .line 2
    .line 3
    const-string v1, "adjustSubHomeActivityOrder lastWakeReason"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    :try_start_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v5, 0x64

    .line 24
    .line 25
    invoke-interface {p1, v5, v6, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    .line 29
    .line 30
    if-ne p1, v3, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, v4, :cond_0

    .line 41
    .line 42
    const-string p1, "101_S_R"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p1, "101_S"

    .line 46
    .line 47
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 48
    .line 49
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 50
    .line 51
    if-eq p0, v4, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    if-eq p0, v0, :cond_2

    .line 55
    .line 56
    const/16 v0, 0x17

    .line 57
    .line 58
    if-eq p0, v0, :cond_1

    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string p0, "double tap"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string/jumbo p0, "side key"

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string/jumbo p0, "screen timeout"

    .line 70
    .line 71
    .line 72
    :goto_1
    if-eqz p0, :cond_7

    .line 73
    .line 74
    const-string v0, "CVSE1004"

    .line 75
    .line 76
    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 85
    .line 86
    iget p1, p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 87
    .line 88
    const-string v5, "SubScreenManager"

    .line 89
    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    if-ne p1, v4, :cond_6

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/util/Stack;->clear()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-lez v1, :cond_7

    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 133
    .line 134
    const-string v1, "SubScreenManager"

    .line 135
    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 142
    .line 143
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->moveToFrontCoverLauncherTask(Landroid/content/ComponentName;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    iput-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestCoverBouncer()V

    .line 164
    .line 165
    .line 166
    :cond_7
    :goto_2
    monitor-exit v2

    .line 167
    return-void

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  mSubDisplay = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "  mIsPluginConnected = "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 28
    .line 29
    const-string v2, "  mIsFolderOpened = "

    .line 30
    .line 31
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 36
    .line 37
    const-string v2, "  mSubScreenPlugin = "

    .line 38
    .line 39
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "  getWindow() = "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "  mSubScreenWindow = "

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "  mSubRoomMap = "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 119
    .line 120
    if-eqz p0, :cond_0

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_0
    const-string p0, " ----------------------------------------------- "

    .line 127
    .line 128
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final getRoomName(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, "INVALID TYPE ["

    .line 5
    .line 6
    const-string v0, "]"

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_1
    const-string p0, "SUB_ROOM_MUSIC_WIDGET"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    const-string p0, "SUB_ROOM_NETWORK"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string p0, "SUB_ROOM_NOTIFICATION"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    const-string p0, "SUB_ROOM_QUICKPANEL"

    .line 23
    .line 24
    return-object p0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string p0, "SubScreenManager"

    .line 28
    .line 29
    const-string v0, "getWindow() no window"

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final initWindow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 2
    .line 3
    const-string v1, "SubScreenManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "initWindow() mSubDisplay is not initialized"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity(Landroid/view/Display;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    new-instance v2, Lcom/android/systemui/subscreen/SubScreenPresentation;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v2, v3, v0}, Lcom/android/systemui/subscreen/SubScreenPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v2, "Invalid display: "

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method public final isShowWhenCoverLocked(Landroid/content/ComponentName;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.android.systemui.subscreen.SubHomeActivity"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "SubScreenManager"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, "ignore isShowWhenCoverLocked cause already display"

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    const-string v0, "com.samsung.android.spay"

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string p0, "ignore isShowWhenCoverLocked by samsung pay"

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    const-string v0, "com.skt.prod.dialer"

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const-string p0, "ignore isShowWhenCoverLocked by T-CALL"

    .line 53
    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    const-string v0, "com.samsung.android.incallui"

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const-string p0, "ignore isShowWhenCoverLocked by Samsung-CALL"

    .line 71
    .line 72
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_3
    const-string v0, "com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity"

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    const-string p0, "ignore isShowWhenCoverLocked by Flashlight Activity"

    .line 89
    .line 90
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return v1

    .line 94
    :cond_4
    const-string v0, "com.sec.android.app.clockpackage.timer.activity.TimerSubScreenB2AlertActivity"

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    const-string p0, "ignore isShowWhenCoverLocked by Timer Activity"

    .line 107
    .line 108
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :cond_5
    const-string v0, "com.sec.android.app.clockpackage.alarm.activity.AlarmAlertSubScreenB2Activity"

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    const-string p0, "ignore isShowWhenCoverLocked by Calendar Activity"

    .line 125
    .line 126
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return v1

    .line 130
    :cond_6
    const-string v0, "com.samsung.android.dialtacts.common.picker.ContactSelectionActivity"

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    const-string p0, "ignore isShowWhenCoverLocked by Direct Call Activity"

    .line 143
    .line 144
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    return v1

    .line 148
    :cond_7
    const-string v0, "com.samsung.android.app.calendarnotification.view.SubScreenActivity"

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    const-string p0, "ignore isShowWhenCoverLocked by Calendar Notification Activity"

    .line 161
    .line 162
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    return v1

    .line 166
    :cond_8
    const-string v0, "com.sec.android.app.camera"

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    const-string p0, "ignore isShowWhenCoverLocked by Camera Activity"

    .line 179
    .line 180
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return v1

    .line 184
    :cond_9
    const-string v0, "com.sec.android.app.clockpackage.alarm.activity.AlarmAlertActivity"

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    const-string p0, "ignore isShowWhenCoverLocked by Calendar Activity MAIN"

    .line 197
    .line 198
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    return v1

    .line 202
    :cond_a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    .line 207
    .line 208
    check-cast p0, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    if-eqz p0, :cond_b

    .line 215
    .line 216
    const-string p0, "ignore isShowWhenCoverLocked: "

    .line 217
    .line 218
    invoke-static {p0, p1, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return v1

    .line 222
    :cond_b
    const/4 p0, 0x0

    .line 223
    return p0
.end method

.method public final isTurnOnWhenUnFolding()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 7
    .line 8
    const-string v2, "SubScreenManager"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "isTurnOnWhenUnFolding() no plugin"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "isTurnOnWhenUnFolding() "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->isTurnOnSmartCase()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 42
    .line 43
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->isTurnOnSmartCase()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_1
    return v1
.end method

.method public final moveToFrontCoverLauncherTask(Landroid/content/ComponentName;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "com.android.systemui.subscreen.SubHomeActivity"

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, " Move to Front task : "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "SubScreenManager"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    .line 56
    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return v0
.end method

.method public final onFinishedGoingToSleep()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    const-string v1, "SubScreenManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "onFinishedGoingToSleep() no plugin"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->isTurnOnWhenUnFolding()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "onFinishedGoingToSleep() getLastWakeReason "

    .line 31
    .line 32
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 36
    .line 37
    iget v3, v3, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 38
    .line 39
    invoke-static {v0, v3, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    .line 43
    .line 44
    const/16 v3, 0x3e8

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    const-string v4, "onFinishedGoingToSleep() remove MSG_FINISH_SUB_HOME_ACTIVITY "

    .line 53
    .line 54
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 66
    .line 67
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFinishedGoingToSleep()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "SubScreenManager"

    .line 6
    .line 7
    const-string v0, "onFinishedWakingUp() no plugin"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFinishedWakingUp()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onFolderStateChanged(Z)V
    .locals 6

    .line 1
    const-string v0, "onFolderStateChanged() opened = "

    .line 2
    .line 3
    const-string v1, "SubScreenManager"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 9
    .line 10
    if-eq v0, p1, :cond_6

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p1, "onFolderStateChanged() no window"

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->initWindow()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p0, "onFolderStateChanged() no plugin"

    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFolderStateChanged(Z)V

    .line 42
    .line 43
    .line 44
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 45
    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    const/4 v2, 0x0

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 53
    .line 54
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    move v2, v1

    .line 70
    :cond_2
    if-eqz v2, :cond_6

    .line 71
    .line 72
    new-instance p1, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    const-wide/16 v0, 0x64

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 80
    .line 81
    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 86
    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    .line 90
    .line 91
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const-string/jumbo v5, "show_navigation_for_subscreen"

    .line 101
    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    iget-object v4, v4, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    move v1, v2

    .line 119
    :goto_0
    if-eqz v1, :cond_5

    .line 120
    .line 121
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    iget-object v0, v1, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 133
    .line 134
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    .line 136
    .line 137
    :cond_5
    if-eqz p1, :cond_6

    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/util/Stack;->clear()V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING:Z

    .line 9
    .line 10
    const-string v1, "SubScreenManager"

    .line 11
    .line 12
    const-string v2, "]"

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "onPluginConnected() mPendingPluginConnect="

    .line 19
    .line 20
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " mDeviceInteractive="

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " ["

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo p1, "setPendingPluginConnectRunnable"

    .line 70
    .line 71
    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnectRunnable:Ljava/lang/Runnable;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "clearPendingPluginConnectRunnable"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnectRunnable:Ljava/lang/Runnable;

    .line 88
    .line 89
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreen(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v3, "onPluginConnected() ["

    .line 96
    .line 97
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreen(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "onPluginDisconnected() ["

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "]"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "SubScreenManager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->stopSubScreen()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "SubScreenManager"

    .line 6
    .line 7
    const-string v0, "onScreenTurnedOff() no plugin"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onScreenTurnedOff()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onScreenTurnedOn()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "SubScreenManager"

    .line 6
    .line 7
    const-string v0, "onScreenTurnedOn() no plugin"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onScreenTurnedOn()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "SubScreenManager"

    .line 9
    .line 10
    const-string v0, "onStartedGoingToSleep() no plugin"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onStartedGoingToSleep()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "SubScreenManager"

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "onStartedWakingUp() no plugin mIsFolderOpened="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "clearPendingPluginConnectRunnable"

    .line 39
    .line 40
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnectRunnable:Ljava/lang/Runnable;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 61
    .line 62
    iget v1, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    if-ne v1, v4, :cond_2

    .line 66
    .line 67
    const-string v0, " onStartedWakingUp wake up reason  "

    .line 68
    .line 69
    invoke-static {v0, v1, v3}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-lez v4, :cond_3

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, " onStartedWakingUp Current Top Task : "

    .line 96
    .line 97
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, " , "

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 111
    .line 112
    invoke-static {v2, v4, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 116
    .line 117
    if-ne v2, v0, :cond_3

    .line 118
    .line 119
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 120
    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->isShowWhenCoverLocked(Landroid/content/ComponentName;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestCoverBouncer()V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 133
    .line 134
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onStartedWakingUp()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final requestCoverBouncer()V
    .locals 3

    .line 1
    const-string v0, "SubScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "requestCoverBouncer"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string/jumbo v1, "runOnCover"

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string v1, "bouncerTimeout"

    .line 30
    .line 31
    const/16 v2, 0x2710

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v1, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final requestDualState(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "requestDualState "

    .line 2
    .line 3
    .line 4
    const-string v1, "SubScreenManager"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, " updateRefreshRate token "

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "display"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 26
    .line 27
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mToken:Landroid/os/IBinder;

    .line 57
    .line 58
    const-string/jumbo v3, "subhome"

    .line 59
    .line 60
    .line 61
    const/16 v4, 0x78

    .line 62
    .line 63
    invoke-interface {v0, v2, v4, v3}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v3, "updateRefreshRate exception "

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2, v1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    const/4 p1, 0x4

    .line 98
    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/16 v1, 0x10

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->setFlags(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateRequestCallback:Lcom/android/systemui/subscreen/SubScreenManager$3;

    .line 119
    .line 120
    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void
.end method

.method public final setSubHomeActivityResumed(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    const-string v1, "SubScreenManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "setSubHomeActivityResumed() no plugin"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string/jumbo v0, "setSubHomeActivityResumed() "

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setSubHomeActivityResumed(Z)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    .line 28
    .line 29
    move-object p1, p0

    .line 30
    check-cast p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    const-string v0, "com.android.systemui.subscreen.SubHomeActivity"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    check-cast p0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setSubRoom() "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getRoomName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SubScreenManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final startSubHomeActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    const-string v0, "SubScreenManager"

    const-string/jumbo v1, "startSubHomeActivity() "

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public final startSubHomeActivity(Landroid/view/Display;)V
    .locals 5

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startSubHomeActivity() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubScreenManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.SECONDARY_HOME"

    .line 9
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.subscreen.SubHomeActivity"

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 12
    sget-boolean v4, Lcom/android/systemui/LsRune;->SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

    if-nez v4, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_0
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final startSubScreen(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V
    .locals 4

    .line 1
    const-string v0, "SubScreenManager"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "startSubScreen() plugin is null"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 13
    .line 14
    if-ne v1, p2, :cond_1

    .line 15
    .line 16
    const-string/jumbo p0, "startSubScreen() already started"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const-string/jumbo v1, "startSubScreen: plugin is changed, stop old plugin"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->stopSubScreen()V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    const-string/jumbo p0, "startSubScreen() no window"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v3, "startSubScreen() "

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 97
    .line 98
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    .line 99
    .line 100
    new-instance v0, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStarted(Landroid/view/Window;Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 109
    .line 110
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 119
    .line 120
    .line 121
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 126
    .line 127
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/app/Activity;->semIsResumed()Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setSubHomeActivityResumed(Z)V

    .line 134
    .line 135
    .line 136
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 137
    .line 138
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 144
    .line 145
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 153
    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

    .line 161
    .line 162
    invoke-virtual {p2, p0, p1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    return-void
.end method

.method public final startSubScreenFallback(Landroid/view/Display;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SubScreenManager"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "startSubScreenFallback. Already unlocked "

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v2, "startSubScreenFallback() "

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .line 44
    .line 45
    const/high16 v3, 0x10000000

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string v3, "android.intent.action.MAIN"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const-string v3, "android.intent.category.SECONDARY_HOME"

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string v3, "com.android.systemui"

    .line 61
    .line 62
    const-string v4, "com.android.systemui.subscreen.SubScreenFallback"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method public final stopSubScreen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 2
    .line 3
    const-string v1, "SubScreenManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "stopSubScreen() no plugin"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string/jumbo v0, "stopSubScreen()"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 21
    .line 22
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStopped()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 45
    .line 46
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 65
    .line 66
    return-void
.end method

.method public final updatePluginListener()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updatePluginListener() mIsPluginConnected = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 10
    .line 11
    const-string v2, "SubScreenManager"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string/jumbo v0, "removePluginListener() already disconnected"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v0, "removePluginListener() "

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 37
    .line 38
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string/jumbo p0, "requestPluginConnection() no activity and no presentation"

    .line 52
    .line 53
    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 59
    .line 60
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :cond_3
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->addPluginListener()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const-string/jumbo v0, "requestPluginConnection() PluginFaceWidget is not connected, wait connection"

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 84
    .line 85
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionRunnable(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method
