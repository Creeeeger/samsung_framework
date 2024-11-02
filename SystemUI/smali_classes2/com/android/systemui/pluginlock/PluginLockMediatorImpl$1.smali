.class public final Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onViewModeChanged(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onLocaleChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onLocaleChanged()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 4

    .line 1
    const-string v0, "onStartedGoingToSleep why :"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "PluginLockMediatorImpl"

    .line 11
    .line 12
    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x4

    .line 25
    const-string v1, "action"

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    new-instance p1, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "lid_switch"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    .line 44
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    .line 55
    .line 56
    if-eq v0, p1, :cond_2

    .line 57
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    .line 59
    .line 60
    new-instance p1, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "action_lock_style_changed"

    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    .line 71
    .line 72
    const-string/jumbo v1, "value"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 86
    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "onStartedGoingToSleep enabled: true aodClockTransition : "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p1, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "PluginLockDelegateApp"

    .line 109
    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onStartedGoingToSleep(Z)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onStartedWakingUp()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "onUpdateCoverState, mViewMode: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, ", state: "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v2, "PluginLockMediatorImpl"

    .line 36
    .line 37
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 43
    .line 44
    if-ne p1, v1, :cond_0

    .line 45
    .line 46
    new-instance p1, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v0, "action"

    .line 52
    .line 53
    const-string v1, "cover_closed"

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v2, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;->onUserSwitchComplete(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onUserSwitching(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v2, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;->onUserSwitching(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onUserUnlocked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->checkSafeMode()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
