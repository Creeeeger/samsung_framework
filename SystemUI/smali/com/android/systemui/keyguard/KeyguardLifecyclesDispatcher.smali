.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

.field public mLastWakeReason:I

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;-><init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mLastWakeReason:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final dispatch(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_SCREEN_ON:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatchLowPriorityStartedWakingUp(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_3
    return-void
.end method

.method public final dispatch(II)V
    .locals 2

    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_SCREEN_ON:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatchLowPriorityStartedWakingUp(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v0, :cond_3

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_3
    return-void
.end method

.method public final dispatch(Ljava/lang/Object;)V
    .locals 3

    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_SCREEN_ON:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatchLowPriorityStartedWakingUp(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_3
    return-void
.end method

.method public final dispatchLowPriorityStartedWakingUp(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mLastWakeReason:I

    .line 19
    .line 20
    const-wide/16 v2, 0x64

    .line 21
    .line 22
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/4 v4, 0x5

    .line 36
    if-eq v0, v4, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x6

    .line 39
    if-eq v0, v4, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x7

    .line 42
    if-eq v0, v4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mLastWakeReason:I

    .line 49
    .line 50
    invoke-virtual {v1, v2, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 v3, 0x1

    .line 61
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return v3
.end method

.method public final generateWakefulnessOrScreenStateByLastMsg(II)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->setLifecycle(II)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->setLifecycle(II)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
