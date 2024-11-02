.class public final Lcom/android/keyguard/DualDarInnerLockScreenController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBaseView:Lcom/android/keyguard/KeyguardInputView;

.field public mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

.field public final mCallback:Lcom/android/keyguard/DualDarInnerLockScreenController$4;

.field public final mContext:Landroid/content/Context;

.field public final mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsImeShown:Z

.field public mIsPassword:Z

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNavigationBarHeight:I

.field public final mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

.field public final mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static -$$Nest$mdismissInnerLockScreen(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->hide()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 40
    .line 41
    invoke-interface {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 16
    .line 17
    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$1;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 23
    .line 24
    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$4;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p7, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 38
    .line 39
    iput-object p4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    .line 41
    iput-object p5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 42
    .line 43
    iput-object p6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    .line 44
    .line 45
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    .line 52
    iput-object p8, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 53
    .line 54
    iput-object p9, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 12
    .line 13
    new-instance v1, Lcom/android/keyguard/DualDarInnerLockScreenController$3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$3;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 34
    .line 35
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v2

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    .line 44
    .line 45
    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;->onSecurityModeChanged(Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 55
    .line 56
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 63
    .line 64
    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDualDarInnerLockScreenState(IZ)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public final updateLayoutMargins(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardInputView;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    .line 20
    .line 21
    if-eqz v1, :cond_d

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 36
    .line 37
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x4

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    if-ne v2, v3, :cond_1

    .line 53
    .line 54
    move v2, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v2, v5

    .line 57
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    .line 58
    .line 59
    const v2, 0x1050255

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 67
    .line 68
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x3

    .line 73
    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    sget v1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const v7, 0x7f0704af

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    add-int/2addr v6, v1

    .line 91
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eq v0, v4, :cond_4

    .line 96
    .line 97
    const/4 v3, 0x2

    .line 98
    if-eq v0, v3, :cond_4

    .line 99
    .line 100
    if-eq v0, v2, :cond_4

    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    if-eqz v1, :cond_3

    .line 112
    .line 113
    move v9, v6

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    iget v5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget v5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 128
    .line 129
    :goto_1
    move v9, v5

    .line 130
    :goto_2
    const/4 v7, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    move-object v6, p0

    .line 133
    move-object v10, p1

    .line 134
    move-object v11, p2

    .line 135
    invoke-virtual/range {v6 .. v11}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutParams(IIILcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardInputView;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_7

    .line 147
    .line 148
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 149
    .line 150
    if-nez v1, :cond_7

    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 153
    .line 154
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    move v7, v5

    .line 161
    move v8, v7

    .line 162
    move v9, v8

    .line 163
    goto :goto_6

    .line 164
    :cond_7
    sget v1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 165
    .line 166
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eq v0, v4, :cond_c

    .line 171
    .line 172
    if-eq v0, v2, :cond_a

    .line 173
    .line 174
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    xor-int/2addr v0, v4

    .line 179
    and-int/2addr v0, v3

    .line 180
    iget-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    .line 181
    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    iget-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 185
    .line 186
    if-eqz v2, :cond_8

    .line 187
    .line 188
    move v1, v5

    .line 189
    goto :goto_3

    .line 190
    :cond_8
    if-eqz v0, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    iget v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 194
    .line 195
    :goto_3
    move v9, v1

    .line 196
    move v7, v5

    .line 197
    move v8, v7

    .line 198
    goto :goto_6

    .line 199
    :cond_a
    if-eqz v3, :cond_b

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_b
    iget v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 203
    .line 204
    :goto_4
    iget v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    iget v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 208
    .line 209
    move v0, v1

    .line 210
    :goto_5
    move v8, v0

    .line 211
    move v7, v1

    .line 212
    move v9, v5

    .line 213
    :goto_6
    move-object v6, p0

    .line 214
    move-object v10, p1

    .line 215
    move-object v11, p2

    .line 216
    invoke-virtual/range {v6 .. v11}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutParams(IIILcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardInputView;)V

    .line 217
    .line 218
    .line 219
    :cond_d
    :goto_7
    return-void
.end method

.method public final updateLayoutParams(IIILcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardInputView;)V
    .locals 4

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    const-string p0, "DualDarInnerLockScreenController"

    .line 4
    .line 5
    const-string/jumbo p1, "updateLayoutParams securityViewFlipper is null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const p0, 0x7f0704fd

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 37
    .line 38
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 39
    .line 40
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v0, v3

    .line 76
    :goto_0
    const/4 v2, -0x1

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    iget-boolean p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    .line 84
    .line 85
    invoke-static {p4, p0}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move p0, v2

    .line 91
    :goto_1
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    move p0, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move p0, v2

    .line 98
    :goto_2
    iput p0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    move v2, v3

    .line 103
    :cond_5
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 104
    .line 105
    :cond_6
    :goto_3
    invoke-virtual {v1, p1, v3, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
