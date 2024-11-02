.class public final Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;
.super Lcom/android/keyguard/KeyguardSecPasswordViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEntry:[B

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p17}, Lcom/android/keyguard/KeyguardSecPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mEntry:[B

    .line 7
    .line 8
    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 10
    .line 11
    move-object/from16 v1, p16

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 14
    .line 15
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final displayDefaultSecurityMessage()V
    .locals 4

    .line 1
    const-string v0, "KeyguardKnoxDualDarInnerPasswordViewController"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p0, "displayDefaultSecurityMessage mMessageAreaController is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 14
    .line 15
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v2, "displayDefaultSecurityMessage( "

    .line 22
    .line 23
    const-string v3, " )"

    .line 24
    .line 25
    invoke-static {v2, p0, v3, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f130880

    .line 29
    .line 30
    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, v0, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    move v0, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    filled-new-array {v2, v5, v6}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v5, "!@onPasswordChecked matched=%b timeoutMs=%d userId=%d"

    .line 37
    .line 38
    const-string v6, "KeyguardKnoxDualDarInnerPasswordViewController"

    .line 39
    .line 40
    invoke-static {v6, v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    const-string/jumbo p2, "onPasswordChecked"

    .line 48
    .line 49
    .line 50
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2, p1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 77
    .line 78
    invoke-interface {p2, v4, p1, v4, p4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/16 v0, 0x72

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 85
    .line 86
    .line 87
    if-eqz p4, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-interface {p4, p1, p2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 94
    .line 95
    .line 96
    if-lez p2, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->setLockoutAttemptDeadline(II)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 106
    .line 107
    .line 108
    :cond_2
    int-to-long p1, p2

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    .line 111
    cmp-long p1, p1, v0

    .line 112
    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 119
    .line 120
    const/4 p2, 0x2

    .line 121
    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 130
    .line 131
    check-cast p4, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 132
    .line 133
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const p4, 0x7f130871

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-lez p1, :cond_3

    .line 144
    .line 145
    const-string p4, " ("

    .line 146
    .line 147
    invoke-static {p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const v1, 0x7f110006

    .line 164
    .line 165
    .line 166
    invoke-virtual {p4, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string p4, ")"

    .line 171
    .line 172
    invoke-static {p2, p1, p4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 177
    .line 178
    invoke-virtual {p1, p2, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mEntry:[B

    .line 188
    .line 189
    if-eqz p1, :cond_5

    .line 190
    .line 191
    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mEntry:[B

    .line 193
    .line 194
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 195
    .line 196
    check-cast p0, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 197
    .line 198
    xor-int/lit8 p1, p3, 0x1

    .line 199
    .line 200
    invoke-virtual {p0, v4, p1}, Lcom/android/keyguard/KeyguardSecPasswordView;->resetPasswordText(ZZ)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 7
    .line 8
    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->resetPasswordText(ZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 12
    .line 13
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->resetState()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final resetState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARCustomCrypto(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "KeyguardKnoxDualDarInnerPasswordViewController"

    .line 26
    .line 27
    const-string v1, "DualDar at Do safe mode with custom crypto case"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->resetState()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final showPromptReason(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "KeyguardKnoxDualDarInnerPasswordViewController"

    .line 6
    .line 7
    const-string/jumbo p1, "showPromptReason mMessageAreaController is null"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 19
    .line 20
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 34
    .line 35
    check-cast p0, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 2
    .line 3
    const-string v1, "KeyguardKnoxDualDarInnerPasswordViewController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "verifyPasswordAndUnlock! already verified but haven\'t been dismissed. don\'t do it again."

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string/jumbo v0, "verifyPasswordAndUnlock"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mEntry:[B

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 33
    .line 34
    check-cast v0, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 41
    .line 42
    check-cast v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 60
    .line 61
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 72
    .line 73
    check-cast v4, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 74
    .line 75
    const/4 v5, 0x3

    .line 76
    if-gt v3, v5, :cond_2

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->onPasswordChecked(IIZZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 92
    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$1;

    .line 104
    .line 105
    invoke-direct {v2, p0, v1, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    .line 110
    invoke-static {v3, v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 115
    .line 116
    return-void
.end method
