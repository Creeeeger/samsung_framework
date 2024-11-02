.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    return-void
.end method

.method public final dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 6

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    const-string v3, "KeyguardSecSecurityContainer"

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mUnlockAnimationControllerLazy:Ldagger/Lazy;

    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 7
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :cond_0
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "keyguard is already goingAway and face enabled. cancel dismiss"

    .line 9
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "dismiss failed. Permanent state."

    .line 12
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v0, "  "

    if-eqz p1, :cond_3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dismiss caller\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-static {v5, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 14
    sget-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v4, v5, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    .line 15
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unknown trigger caller\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xf

    invoke-static {v4, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardUnlockInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showNextSecurityScreenOrFinish(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 18
    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setUnlockingKeyguard(Z)V

    :cond_6
    return p0
.end method

.method public final finish(IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v1, Lcom/android/systemui/util/LogUtil;->beginTimes:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p2, v0, v1

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object p2, v0, v2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v1

    .line 28
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object p2, v0, v2

    .line 34
    .line 35
    const-string p2, "KeyguardUnlockInfo"

    .line 36
    .line 37
    const-string v2, "finish fromPrimaryAuth=%d, userId=%d, hasDismissAction=%d"

    .line 38
    .line 39
    invoke-static {p2, v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-interface {p2}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 54
    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCancelClicked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onCancelClicked()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSecurityModeChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNeedsInput:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onUserInput()V
    .locals 0

    .line 1
    return-void
.end method

.method public final reportUnlockAttempt(IIZ)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 4
    .line 5
    if-eqz p3, :cond_8

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    sget-object v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    aget p3, v2, p3

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eq p3, v1, :cond_2

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq p3, v3, :cond_1

    .line 32
    .line 33
    if-eq p3, v0, :cond_0

    .line 34
    .line 35
    move-object p3, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p3, "2"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p3, "3"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p3, "1"

    .line 44
    .line 45
    :goto_0
    if-lez p2, :cond_3

    .line 46
    .line 47
    if-eqz p3, :cond_3

    .line 48
    .line 49
    add-int/2addr p2, v1

    .line 50
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string v0, "102"

    .line 55
    .line 56
    const-string v3, "1201"

    .line 57
    .line 58
    invoke-static {v0, v3, p3, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    .line 63
    invoke-interface {p2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/content/Intent;

    .line 72
    .line 73
    const-string p3, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 74
    .line 75
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const/4 v0, 0x0

    .line 83
    const/high16 v3, 0x24000000

    .line 84
    .line 85
    invoke-static {p3, v0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    const-string p3, "KeyguardSecSecurityContainer"

    .line 92
    .line 93
    const-string v3, "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled"

    .line 94
    .line 95
    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 99
    .line 100
    invoke-virtual {p3, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 107
    .line 108
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 111
    .line 112
    iget p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    .line 113
    .line 114
    if-lez p1, :cond_5

    .line 115
    .line 116
    move p1, v1

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move p1, v0

    .line 119
    :goto_1
    const/high16 p3, 0x800000

    .line 120
    .line 121
    const/high16 v3, 0x400000

    .line 122
    .line 123
    const/high16 v4, 0x10000000

    .line 124
    .line 125
    const-string v5, "com.android.settings"

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    new-instance p1, Landroid/content/Intent;

    .line 130
    .line 131
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v6, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    .line 135
    .line 136
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 153
    .line 154
    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_c

    .line 162
    .line 163
    new-instance p1, Landroid/content/Intent;

    .line 164
    .line 165
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string p2, "com.android.settings.password.ChooseLockGeneric$RecoveryActivity"

    .line 169
    .line 170
    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    const-string p2, "hide_insecure_options"

    .line 183
    .line 184
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    const-string/jumbo p2, "recover_password"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 194
    .line 195
    if-eqz p2, :cond_7

    .line 196
    .line 197
    const-string/jumbo p3, "password"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    :cond_7
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 204
    .line 205
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsResetCredentialShowing:Z

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    const-string/jumbo p3, "reset_credential_from_previous"

    .line 216
    .line 217
    .line 218
    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 226
    .line 227
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_8
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 232
    .line 233
    invoke-interface {p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    if-eqz p3, :cond_b

    .line 238
    .line 239
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 240
    .line 241
    const/16 p3, -0x270e

    .line 242
    .line 243
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    add-int/2addr v2, v1

    .line 248
    if-ge v2, v0, :cond_a

    .line 249
    .line 250
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_9

    .line 255
    .line 256
    move p1, p3

    .line 257
    :cond_9
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->expirePreviousData()Z

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 265
    .line 266
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->reportFailedUnlockAttempt(II)V

    .line 271
    .line 272
    .line 273
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 274
    .line 275
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->notifyFailedUnlockAttemptChanged()V

    .line 276
    .line 277
    .line 278
    :cond_c
    :goto_2
    return-void
.end method

.method public final reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setPrevCredential(Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 4
    .line 5
    return-void
.end method

.method public final showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->userActivity()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final userActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
