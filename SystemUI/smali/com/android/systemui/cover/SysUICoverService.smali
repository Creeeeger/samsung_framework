.class public Lcom/android/systemui/cover/SysUICoverService;
.super Lcom/samsung/android/cover/SemCoverService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/cover/SysUICoverService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cover/SemCoverService;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCoverHost()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cover/SemCoverService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    instance-of v0, p0, Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onCoverAppCovered(Z)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "onCoverAppCovered() "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "CoverScreenManager"

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 32
    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    const-string/jumbo v1, "onCoverAppCovered: covered = "

    .line 36
    .line 37
    .line 38
    const-string v2, "CoverHostImpl"

    .line 39
    .line 40
    invoke-static {v1, p1, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAppCovered(Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/16 p0, 0x10

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/16 p0, 0x20

    .line 61
    .line 62
    :goto_0
    return p0
.end method

.method public final onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "onCoverAttached() "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "CoverScreenManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->initialize(Lcom/samsung/android/cover/CoverState;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    check-cast v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo p1, "onCoverAttached: CoverHost is null"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 67
    .line 68
    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception p0

    .line 78
    const-string/jumbo p1, "onCoverAttached exception"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    return-void
.end method

.method public final onCoverDetached()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "CoverScreenManager"

    .line 7
    .line 8
    const-string/jumbo v1, "onCoverDetached()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iput-boolean v1, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 27
    .line 28
    check-cast v2, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string/jumbo v2, "onCoverDetached: CoverHost is null"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    .line 41
    .line 42
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeVirtualDisplay()V

    .line 47
    .line 48
    .line 49
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 67
    .line 68
    const/16 v1, 0x3e8

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    .line 80
    .line 81
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :cond_2
    return-void
.end method

.method public final onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 7
    .line 8
    const-string v1, "CoverScreenManager"

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string/jumbo v0, "onCoverStateUpdated need to register mScreenLifecycle.Observer"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string/jumbo v0, "onCoverStateUpdated need to register mWakefulnessLifecycle.Observer"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v2, "onCoverStateUpdated() "

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 112
    .line 113
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 120
    .line 121
    sub-int/2addr v3, v4

    .line 122
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-gt v3, v2, :cond_3

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 133
    .line 134
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 141
    .line 142
    sub-int/2addr v3, v4

    .line 143
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-gt v3, v2, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 162
    .line 163
    sub-int/2addr v3, v4

    .line 164
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-gt v3, v2, :cond_3

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 183
    .line 184
    sub-int/2addr v3, v4

    .line 185
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-le v3, v2, :cond_6

    .line 190
    .line 191
    :cond_3
    const-string/jumbo v3, "recreateVirtualDisplay() "

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    .line 198
    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 202
    .line 203
    .line 204
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeVirtualDisplay()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener()V

    .line 208
    .line 209
    .line 210
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 211
    .line 212
    if-eqz v3, :cond_5

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    .line 215
    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    iput-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 219
    .line 220
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 221
    .line 222
    const/16 v4, 0x3e8

    .line 223
    .line 224
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    .line 226
    .line 227
    const-wide/16 v5, 0x2710

    .line 228
    .line 229
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    .line 231
    .line 232
    :cond_6
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 233
    .line 234
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 235
    .line 236
    if-eqz v3, :cond_7

    .line 237
    .line 238
    check-cast v3, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    .line 239
    .line 240
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_7
    const-string/jumbo v3, "onCoverStateUpdated: CoverHost is null"

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 251
    .line 252
    if-eqz v3, :cond_8

    .line 253
    .line 254
    invoke-interface {v3, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    .line 255
    .line 256
    .line 257
    if-eqz v0, :cond_a

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverWindow()V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 264
    .line 265
    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 266
    .line 267
    if-eqz v3, :cond_a

    .line 268
    .line 269
    const-string/jumbo v3, "onCoverStateUpdated: addPluginListener"

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->addPluginListener(Lcom/samsung/android/cover/CoverState;)V

    .line 276
    .line 277
    .line 278
    if-eqz v0, :cond_a

    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 281
    .line 282
    if-eqz p1, :cond_a

    .line 283
    .line 284
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-nez p1, :cond_9

    .line 291
    .line 292
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 293
    .line 294
    invoke-virtual {p1, v2}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 298
    .line 299
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 300
    .line 301
    if-eqz p1, :cond_a

    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 304
    .line 305
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 314
    .line 315
    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, p1}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 317
    .line 318
    .line 319
    :cond_a
    :goto_1
    return-void
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onCreate()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "onCreate()"

    .line 10
    .line 11
    .line 12
    const-string v1, "CoverScreenManager"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string/jumbo p0, "onCreate() fail to get CoverHost"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Landroid/content/ComponentName;

    .line 65
    .line 66
    const-string v2, "com.android.systemui"

    .line 67
    .line 68
    const-string v3, "com.android.systemui.cover.CoverHomeActivity"

    .line 69
    .line 70
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v3, 0x1

    .line 82
    if-eq v2, v3, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "There is no component  "

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "SysUICoverService"

    .line 2
    .line 3
    const-string/jumbo v1, "onDestroy()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onDestroy()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v0, "CoverScreenManager"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
