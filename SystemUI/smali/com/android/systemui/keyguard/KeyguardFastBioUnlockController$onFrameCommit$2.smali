.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimUpdater:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimVisibility:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->runPendingRunnable()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-wide v5, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->atTime:J

    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    sub-long/2addr v5, v7

    .line 49
    const-wide/16 v7, 0xa

    .line 50
    .line 51
    cmp-long v1, v5, v7

    .line 52
    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v1, v4

    .line 58
    :goto_0
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->start(Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    .line 87
    .line 88
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2$2;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method
