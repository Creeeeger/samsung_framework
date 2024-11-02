.class public final Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;
.super Lcom/android/keyguard/KeyguardSecPinViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEntry:[B

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/android/keyguard/KeyguardSecPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 7
    .line 8
    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 10
    .line 11
    move-object/from16 v1, p14

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

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
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 24
    .line 25
    move-object v1, p4

    .line 26
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final displayDefaultSecurityMessage()V
    .locals 4

    .line 1
    const-string v0, "KeyguardKnoxDualDarInnerPinViewController"

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
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 29
    .line 30
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v2, "displayDefaultSecurityMessage( "

    .line 37
    .line 38
    const-string v3, " )"

    .line 39
    .line 40
    invoke-static {v2, p0, v3, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f130880

    .line 44
    .line 45
    .line 46
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1, v0, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "!@onPasswordChecked matched=%b timeoutMs=%d userId=%d"

    .line 37
    .line 38
    const-string v5, "KeyguardKnoxDualDarInnerPinViewController"

    .line 39
    .line 40
    invoke-static {v5, v4, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    const-string/jumbo p2, "onPasswordChecked"

    .line 46
    .line 47
    .line 48
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 52
    .line 53
    invoke-virtual {p2, v3}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2, p1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 72
    .line 73
    invoke-interface {p2, v3, p1, v3, p4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 78
    .line 79
    const/16 v1, 0x72

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 82
    .line 83
    .line 84
    if-eqz p4, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-interface {p4, p1, p2, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 91
    .line 92
    .line 93
    if-lez p2, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p4, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 99
    .line 100
    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 101
    .line 102
    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->setLockoutAttemptDeadline(II)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinViewController;->handleAttemptLockout(J)V

    .line 107
    .line 108
    .line 109
    :cond_2
    int-to-long p1, p2

    .line 110
    const-wide/16 v0, 0x0

    .line 111
    .line 112
    cmp-long p1, p1, v0

    .line 113
    .line 114
    if-nez p1, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 120
    .line 121
    const/4 p2, 0x2

    .line 122
    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 131
    .line 132
    check-cast p4, Lcom/android/keyguard/KeyguardSecPINView;

    .line 133
    .line 134
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    const p4, 0x7f130873

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-lez p1, :cond_3

    .line 145
    .line 146
    const-string p4, " ("

    .line 147
    .line 148
    invoke-static {p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p4

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const v1, 0x7f110006

    .line 165
    .line 166
    .line 167
    invoke-virtual {p4, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string p4, ")"

    .line 172
    .line 173
    invoke-static {p2, p1, p4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 178
    .line 179
    invoke-virtual {p1, p2, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 186
    .line 187
    .line 188
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 189
    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 194
    .line 195
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 196
    .line 197
    check-cast p0, Lcom/android/keyguard/KeyguardSecPINView;

    .line 198
    .line 199
    xor-int/lit8 p1, p3, 0x1

    .line 200
    .line 201
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 202
    .line 203
    .line 204
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
    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    .line 7
    .line 8
    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

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
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinViewController;->handleAttemptLockout(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->resetState()V

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
    const-string v0, "KeyguardKnoxDualDarInnerPinViewController"

    .line 26
    .line 27
    const-string v1, "DualDar at Do safe mode with custom crypto case"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

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
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->resetState()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final setOkButtonEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    :cond_1
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
    const-string p0, "KeyguardKnoxDualDarInnerPinViewController"

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
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

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
    check-cast p0, Lcom/android/keyguard/KeyguardSecPINView;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final verifyNDigitsPIN()V
    .locals 0

    .line 1
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 2
    .line 3
    const-string v1, "KeyguardKnoxDualDarInnerPinViewController"

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
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 27
    .line 28
    check-cast v0, Lcom/android/keyguard/KeyguardSecPINView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 35
    .line 36
    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 50
    .line 51
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 66
    .line 67
    move-object v5, v4

    .line 68
    check-cast v5, Lcom/android/keyguard/KeyguardSecPINView;

    .line 69
    .line 70
    const/4 v5, 0x3

    .line 71
    if-gt v3, v5, :cond_2

    .line 72
    .line 73
    check-cast v4, Lcom/android/keyguard/KeyguardSecPINView;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->onPasswordChecked(IIZZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 87
    .line 88
    invoke-virtual {v2, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 92
    .line 93
    const/4 v3, 0x4

    .line 94
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    .line 104
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;

    .line 105
    .line 106
    invoke-direct {v3, p0, v1, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 114
    .line 115
    return-void
.end method
