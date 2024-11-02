.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPostFinishedWakingUp()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "unregisterBrightnessListener"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    .line 18
    .line 19
    check-cast v0, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/DisplayTrackerImpl;->removeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v2, 0x40

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateMonitorLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateMonitorLazy:Ldagger/Lazy;

    .line 18
    .line 19
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEnabledWof()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string/jumbo v0, "registerBrightnessListener"

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    check-cast v0, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addBrightnessChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method
