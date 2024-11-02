.class public final Lcom/android/systemui/power/ChargerAnimationView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const-string p1, "Animation Cancel"

    .line 2
    .line 3
    const-string v0, "PowerUI.ChargerAnimationView"

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/systemui/power/ChargerAnimationView;->-$$Nest$mreleaseDisplayStateLimit(Lcom/android/systemui/power/ChargerAnimationView;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    :cond_0
    monitor-exit p1

    .line 39
    const-string/jumbo p1, "setChargerAnimation onAnimationCancel : Now the AOD plugin called true, so call chargingAnimStarted(false)"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit p1

    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    const-string p1, "Animation Ended"

    .line 2
    .line 3
    const-string v0, "PowerUI.ChargerAnimationView"

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .line 24
    .line 25
    check-cast p1, Lcom/android/systemui/power/PowerUI;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v2, "PowerUI"

    .line 31
    .line 32
    const-string v3, "onChargerAnimationEnd"

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 38
    .line 39
    .line 40
    iget v2, p1, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget v2, p1, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-eq v2, v3, :cond_0

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingNotice()V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 55
    .line 56
    iget-boolean v2, p1, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/systemui/power/ChargerAnimationView;->-$$Nest$mreleaseDisplayStateLimit(Lcom/android/systemui/power/ChargerAnimationView;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 64
    .line 65
    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v2, p1, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-object v2, p1, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    iput-object v2, p1, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :cond_1
    monitor-exit p1

    .line 85
    const-string/jumbo p1, "setChargerAnimation onAnimationEnd : Now the AOD plugin called true, so call chargingAnimStarted(false)"

    .line 86
    .line 87
    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    monitor-exit p1

    .line 103
    throw p0

    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
