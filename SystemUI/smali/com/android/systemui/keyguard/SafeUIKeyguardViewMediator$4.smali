.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final consumeCustomMessage()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 7
    .line 8
    return-object v0
.end method

.method public final getBouncerPromptReason()I
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v3, v5

    .line 37
    :goto_1
    iget-object v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 38
    .line 39
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string/jumbo p0, "sys.boot.reason.last"

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string/jumbo v0, "reboot,mainline_update"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    const/16 p0, 0x10

    .line 77
    .line 78
    return p0

    .line 79
    :cond_2
    return v5

    .line 80
    :cond_3
    if-eqz v3, :cond_4

    .line 81
    .line 82
    and-int/lit8 p0, v7, 0x10

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    const/4 p0, 0x2

    .line 87
    return p0

    .line 88
    :cond_4
    const/4 p0, 0x4

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    and-int/lit8 v5, v7, 0x20

    .line 92
    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    return p0

    .line 96
    :cond_5
    and-int/lit8 v5, v7, 0x2

    .line 97
    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    const/4 p0, 0x3

    .line 101
    return p0

    .line 102
    :cond_6
    if-eqz v1, :cond_7

    .line 103
    .line 104
    and-int/lit8 v5, v7, 0x4

    .line 105
    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    return p0

    .line 109
    :cond_7
    if-eqz v1, :cond_8

    .line 110
    .line 111
    and-int/lit16 p0, v7, 0x100

    .line 112
    .line 113
    if-eqz p0, :cond_8

    .line 114
    .line 115
    const/16 p0, 0x8

    .line 116
    .line 117
    return p0

    .line 118
    :cond_8
    if-eqz v3, :cond_a

    .line 119
    .line 120
    and-int/lit8 p0, v7, 0x8

    .line 121
    .line 122
    if-nez p0, :cond_9

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_a

    .line 129
    .line 130
    :cond_9
    const/4 p0, 0x5

    .line 131
    return p0

    .line 132
    :cond_a
    if-eqz v3, :cond_b

    .line 133
    .line 134
    and-int/lit8 p0, v7, 0x40

    .line 135
    .line 136
    if-eqz p0, :cond_b

    .line 137
    .line 138
    const/4 p0, 0x6

    .line 139
    return p0

    .line 140
    :cond_b
    const/4 p0, 0x7

    .line 141
    if-eqz v3, :cond_c

    .line 142
    .line 143
    and-int/lit16 v1, v7, 0x80

    .line 144
    .line 145
    if-eqz v1, :cond_c

    .line 146
    .line 147
    return p0

    .line 148
    :cond_c
    if-eqz v3, :cond_d

    .line 149
    .line 150
    if-nez v0, :cond_d

    .line 151
    .line 152
    return p0

    .line 153
    :cond_d
    return v4
.end method

.method public final isScreenOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDeviceInteractive:Z

    .line 4
    .line 5
    return p0
.end method

.method public final keyguardDone(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 9
    .line 10
    const-string v0, "keyguardDone"

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mtryKeyguardDone(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final keyguardDoneDrawing()V
    .locals 1

    .line 1
    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final keyguardDonePending(I)V
    .locals 2

    .line 1
    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 7
    .line 8
    const-string v1, "keyguardDonePending"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRun:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationRunning:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 33
    .line 34
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    const/16 p1, 0xd

    .line 46
    .line 47
    const-wide/16 v0, 0xbb8

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final keyguardGone()V
    .locals 4

    .line 1
    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 7
    .line 8
    const-string v1, "keyguardGone"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 16
    .line 17
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startBiometricWatchdog()V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const-string/jumbo v1, "waking from dream after unlock"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$msetUnlockAndWakeFromDream(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 51
    .line 52
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 53
    .line 54
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const-string v1, "keyguard showing after keyguardGone, dismiss"

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 64
    .line 65
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 70
    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 72
    .line 73
    xor-int/lit8 p0, p0, 0x1

    .line 74
    .line 75
    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    const-string v1, "keyguard gone, waking up from dream"

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 89
    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    const/16 v2, 0x11

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/4 v2, 0x4

    .line 96
    :goto_0
    const-string v3, "com.android.systemui:UNLOCK_DREAMING"

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 99
    .line 100
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final onCancelClicked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->onCancelClicked()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final playTrustedSound()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mplayTrustedSound(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final readyForKeyguardDone()V
    .locals 1

    .line 1
    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardDonePending:Z

    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mtryKeyguardDone(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final resetKeyguard()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCustomMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-void
.end method

.method public final setNeedsInput(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->setNeedsInput(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final userActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->userActivity()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
