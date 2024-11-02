.class public final Lcom/android/systemui/cover/CoverScreenManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public final mCoverHost:Lcom/android/systemui/cover/CoverHost;

.field public mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

.field public final mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFaceWidgetManagerLazy:Ldagger/Lazy;

.field public final mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsAttached:Z

.field public mIsPluginListenerAdded:Z

.field public mIsStarted:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginConnectionRunnable:Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

.field public mPluginContext:Landroid/content/Context;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRefreshRateToken:Landroid/os/IBinder;

.field public mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mVisibleRect:Landroid/graphics/Rect;

.field public mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/cover/CoverHost;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/PowerManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/dump/DumpManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/cover/CoverHost;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v1, Landroid/os/Binder;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mRefreshRateToken:Landroid/os/IBinder;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager;I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/android/systemui/cover/CoverScreenManager$1;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 39
    .line 40
    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/cover/CoverScreenManager$2;-><init>(Lcom/android/systemui/cover/CoverScreenManager;Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 56
    .line 57
    iput-object p4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 58
    .line 59
    iput-object p5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 60
    .line 61
    iput-object p6, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 62
    .line 63
    iput-object p7, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 64
    .line 65
    iput-object p8, p0, Lcom/android/systemui/cover/CoverScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 66
    .line 67
    iput-object p9, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPowerManager:Landroid/os/PowerManager;

    .line 68
    .line 69
    iput-object p10, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 70
    .line 71
    iput-object p11, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 72
    .line 73
    new-instance p2, Landroid/content/res/Configuration;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 87
    .line 88
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;-><init>(Lcom/android/systemui/cover/CoverScreenManager;I)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 92
    .line 93
    return-void
.end method

.method public static isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xf

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    if-eq p0, v3, :cond_1

    .line 21
    .line 22
    const/16 v3, 0xb

    .line 23
    .line 24
    if-eq p0, v3, :cond_1

    .line 25
    .line 26
    if-eq p0, v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x10

    .line 29
    .line 30
    if-eq p0, v2, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    return v0
.end method

.method public static isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xf

    .line 7
    .line 8
    iget v2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 14
    .line 15
    const/16 v0, 0x11

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    return v1
.end method


# virtual methods
.method public final addPluginListener(Lcom/samsung/android/cover/CoverState;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string v0, "CoverScreenManager"

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 27
    .line 28
    const-string v2, "com.samsung.systemui.action.PLUGIN_VIEW_COVER"

    .line 29
    .line 30
    const-class v4, Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v3, p0

    .line 36
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    const-string p0, "addPluginListener fail. wait virtual display"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    const-string p0, "addPluginListener fail. wait activity created"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 61
    .line 62
    const-string v2, "com.samsung.systemui.action.PLUGIN_DISPLAY_COVER"

    .line 63
    .line 64
    const-class v4, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    move-object v3, p0

    .line 77
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    .line 78
    .line 79
    .line 80
    :goto_0
    const-string p1, "addPluginListener()"

    .line 81
    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 87
    .line 88
    :cond_5
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  mCoverState = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 9
    .line 10
    const-string/jumbo v2, "null"

    .line 11
    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v2

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "  mIsPluginConnected = "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 35
    .line 36
    const-string v3, "  mCoverPlugin = "

    .line 37
    .line 38
    invoke-static {v0, v1, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v1, v2

    .line 48
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "  mVirtualDisplay = "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move-object v1, v2

    .line 71
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, "  mActivity = "

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    move-object v2, v1

    .line 93
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "  mRoomMap = "

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 127
    .line 128
    if-eqz p0, :cond_4

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    return-void
.end method

.method public final initialize(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/cover/CoverWindowDelegate;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareVirtualDisplay()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 46
    .line 47
    const-string v0, "CoverScreenManager"

    .line 48
    .line 49
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/16 p1, 0x3e8

    .line 54
    .line 55
    const-wide/16 v0, 0x12c

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 58
    .line 59
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 7
    .line 8
    const-string v1, "CoverScreenManager"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v2, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    check-cast v2, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 26
    .line 27
    :goto_0
    const-string/jumbo v2, "onPluginConnected() "

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    instance-of p1, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    return-void

    .line 53
    :cond_4
    const-string/jumbo p0, "onPluginConnected fail by wrong instance "

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_2
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "onPluginDisconnected() "

    .line 2
    .line 3
    .line 4
    const-string v0, "CoverScreenManager"

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 10
    .line 11
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo p1, "stopCover:"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverDetached()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 40
    .line 41
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->minimize()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final onScreenInternalTurningOff()V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onScreenInternalTurningOff() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenInternalTurningOff()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onScreenInternalTurningOn()V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onScreenInternalTurningOn() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenInternalTurningOn()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onScreenTurnedOff() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenTurnedOff()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onScreenTurningOn() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenTurningOn()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onScreenTurningOn() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final prepareCoverHomeActivity()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/app/ActivityManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/TaskInfo;

    .line 28
    .line 29
    iget-object v2, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const-string v4, "com.android.systemui.cover.CoverHomeActivity"

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v4, "CoverScreenManager"

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    const-string p0, "ignore startCoverHomeActivity cause already display"

    .line 48
    .line 49
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_0
    iget-object v2, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v5, "com.samsung.android.spay"

    .line 60
    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    const-string p0, "ignore startCoverHomeActivity cause samsung pay"

    .line 68
    .line 69
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return v3

    .line 73
    :cond_1
    iget-object v0, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v2, "com.skt.prod.dialer"

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    const-string p0, "ignore startCoverHomeActivity by T-CALL"

    .line 88
    .line 89
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :cond_2
    new-instance v0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager;I)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v2, 0x64

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 101
    .line 102
    invoke-interface {p0, v2, v3, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 103
    .line 104
    .line 105
    return v1
.end method

.method public final prepareCoverWindow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x7d0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v0, v4}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-wide/16 v5, 0x64

    .line 40
    .line 41
    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-wide/16 v5, 0x12c

    .line 46
    .line 47
    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 51
    .line 52
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    if-ne v0, v2, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->minimize()V

    .line 92
    .line 93
    .line 94
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    return-void
.end method

.method public final prepareVirtualDisplay()V
    .locals 11

    .line 1
    const-string v0, " prepareVirtualDisplay mVirtualDisplay="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 4
    .line 5
    if-nez v1, :cond_8

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Point;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 17
    .line 18
    .line 19
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 20
    .line 21
    const/16 v2, 0x438

    .line 22
    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x140

    .line 26
    .line 27
    :goto_0
    move v6, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/16 v2, 0x5a0

    .line 30
    .line 31
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x1e0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v1, 0x280

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 68
    .line 69
    const-string v1, "CoverScreenManager"

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "cover mVisibleRect="

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, " density="

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    :goto_2
    new-instance v1, Landroid/graphics/Point;

    .line 100
    .line 101
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2, v1}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 109
    .line 110
    .line 111
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 112
    .line 113
    int-to-double v2, v2

    .line 114
    const-wide v4, 0x3fe09374bc6a7efaL    # 0.518

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    mul-double/2addr v2, v4

    .line 120
    double-to-int v2, v2

    .line 121
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 122
    .line 123
    int-to-double v3, v3

    .line 124
    const-wide v7, 0x3f80624dd2f1a9fcL    # 0.008

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    mul-double/2addr v3, v7

    .line 130
    double-to-int v3, v3

    .line 131
    new-instance v4, Landroid/graphics/Rect;

    .line 132
    .line 133
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 134
    .line 135
    int-to-double v7, v5

    .line 136
    const-wide v9, 0x3fdd70a3d70a3d71L    # 0.46

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    mul-double/2addr v7, v9

    .line 142
    double-to-int v5, v7

    .line 143
    add-int/2addr v5, v2

    .line 144
    iget v7, v1, Landroid/graphics/Point;->y:I

    .line 145
    .line 146
    int-to-double v7, v7

    .line 147
    const-wide v9, 0x3fd3f7ced916872bL    # 0.312

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    mul-double/2addr v7, v9

    .line 153
    double-to-int v7, v7

    .line 154
    add-int/2addr v7, v3

    .line 155
    invoke-direct {v4, v2, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 156
    .line 157
    .line 158
    iput-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 159
    .line 160
    const-string v2, "CoverScreenManager"

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string/jumbo v4, "point="

    .line 165
    .line 166
    .line 167
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, "  cover mVisibleRect="

    .line 174
    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 179
    .line 180
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, " density="

    .line 184
    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 199
    .line 200
    if-nez v1, :cond_4

    .line 201
    .line 202
    new-instance v1, Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 207
    .line 208
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/cover/CoverWindowDelegate;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 212
    .line 213
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-eqz v1, :cond_6

    .line 230
    .line 231
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_6

    .line 236
    .line 237
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 238
    .line 239
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->resize(II)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_5
    const/4 v1, 0x0

    .line 254
    :cond_6
    :goto_4
    monitor-enter p0

    .line 255
    if-eqz v1, :cond_7

    .line 256
    .line 257
    :try_start_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_7

    .line 262
    .line 263
    new-instance v7, Landroid/view/Surface;

    .line 264
    .line 265
    invoke-direct {v7, v1}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 269
    .line 270
    const-string v3, "Cover-Virtual-Display"

    .line 271
    .line 272
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    const v8, 0x4000060b    # 2.0003688f

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 292
    .line 293
    const-string v1, "CoverScreenManager"

    .line 294
    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 317
    .line 318
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iput-object v1, v0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    .line 325
    .line 326
    :cond_7
    monitor-exit p0

    .line 327
    goto :goto_5

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    throw v0

    .line 331
    :cond_8
    :goto_5
    return-void
.end method

.method public final removePluginListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "CoverScreenManager"

    .line 7
    .line 8
    const-string/jumbo v1, "removePluginListener() "

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    .line 21
    .line 22
    return-void
.end method

.method public final removeVirtualDisplay()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "CoverScreenManager"

    .line 7
    .line 8
    const-string/jumbo v1, "removeVirtualDisplay() "

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 23
    .line 24
    iput-object v0, v1, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    .line 25
    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0
.end method

.method public final requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "requestPluginListener()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 10
    .line 11
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->addPluginListener(Lcom/samsung/android/cover/CoverState;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string p1, "addPluginListener() PluginFaceWidget is not connected, wait connection"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 36
    .line 37
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionRunnable(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public final startCover()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 7
    .line 8
    const-string v1, "CoverScreenManager"

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string/jumbo p0, "startCover fail.  plugin is null."

    .line 13
    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const-string/jumbo p0, "startCover fail. cover window is null."

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 31
    .line 32
    if-eqz v0, :cond_a

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 35
    .line 36
    if-eqz v0, :cond_a

    .line 37
    .line 38
    const-string/jumbo v0, "startCover:"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/16 v5, 0x10

    .line 69
    .line 70
    if-ne v4, v5, :cond_3

    .line 71
    .line 72
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    or-int/2addr v3, v4

    .line 77
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo v5, "startCover() hide systemBars - "

    .line 80
    .line 81
    .line 82
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 99
    .line 100
    instance-of v2, v1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 105
    .line 106
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    instance-of v0, v1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 148
    .line 149
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAttached(Landroid/view/Window;Lcom/samsung/android/cover/CoverState;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 153
    .line 154
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 170
    .line 171
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    .line 172
    .line 173
    .line 174
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_9

    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 190
    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 198
    .line 199
    if-eqz v0, :cond_8

    .line 200
    .line 201
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 202
    .line 203
    if-eq v2, v1, :cond_7

    .line 204
    .line 205
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    .line 207
    if-ne v0, v1, :cond_8

    .line 208
    .line 209
    :cond_7
    move v0, v1

    .line 210
    goto :goto_1

    .line 211
    :cond_8
    const/4 v0, 0x0

    .line 212
    :goto_1
    if-eqz v0, :cond_9

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverWindow()V

    .line 215
    .line 216
    .line 217
    :cond_9
    iput-boolean v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    .line 218
    .line 219
    :cond_a
    return-void
.end method

.method public final startCoverHomeActivity(Landroid/view/Display;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startCoverHomeActivity() "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "CoverScreenManager"

    .line 17
    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    .line 25
    .line 26
    const/high16 v3, 0x10010000

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string v3, "android.intent.action.MAIN"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v3, "android.intent.category.SECONDARY_HOME"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v3, "com.android.systemui"

    .line 42
    .line 43
    const-string v4, "com.android.systemui.cover.CoverHomeActivity"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public final updatePluginListener()V
    .locals 2

    .line 1
    const-string v0, "CoverScreenManager"

    .line 2
    .line 3
    const-string/jumbo v1, "updatePluginListener() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final updateRefreshRate(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getRefreshRateMode(Z)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "CoverScreenManager"

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p1, "display"

    .line 27
    .line 28
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mRefreshRateToken:Landroid/os/IBinder;

    .line 43
    .line 44
    const/16 v1, 0x3c

    .line 45
    .line 46
    invoke-interface {p1, v0, v1, v2}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 51
    .line 52
    const-string/jumbo p1, "updateRefreshRate enabled"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 64
    .line 65
    if-nez p0, :cond_4

    .line 66
    .line 67
    const-string/jumbo p0, "updateRefreshRate failed"

    .line 68
    .line 69
    .line 70
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 79
    .line 80
    .line 81
    const-string/jumbo p1, "updateRefreshRate disabled"

    .line 82
    .line 83
    .line 84
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception p1

    .line 89
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_1
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 94
    .line 95
    :cond_4
    :goto_2
    return-void
.end method
