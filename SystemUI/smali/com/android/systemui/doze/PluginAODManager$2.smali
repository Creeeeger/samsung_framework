.class public final Lcom/android/systemui/doze/PluginAODManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFinishedGoingToSleep()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    .line 16
    .line 17
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 3

    .line 1
    const-string v0, "PluginAODManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onStartedWakingUp"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 14
    .line 15
    const-string v1, "PluginAODManager"

    .line 16
    .line 17
    const-string/jumbo v2, "onStartedWakingUp why="

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    const/16 v2, 0x6e

    .line 34
    .line 35
    if-eq v0, v2, :cond_0

    .line 36
    .line 37
    const-string v0, "PluginAODManager"

    .line 38
    .line 39
    const-string v2, "clearNotiMapIfNeeded() clear"

    .line 40
    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->setNotiMap(Ljava/util/HashMap;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 59
    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    invoke-direct {v2}, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v2, 0x0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move v0, v2

    .line 92
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_2
    :goto_1
    return-void
.end method
