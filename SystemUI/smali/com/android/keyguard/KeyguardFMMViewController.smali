.class public final Lcom/android/keyguard/KeyguardFMMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsVoiceCapacity:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public mOrientation:I

.field public final mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

.field public final mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardFMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    .line 17
    .line 18
    new-instance p3, Lcom/android/keyguard/KeyguardFMMViewController$1;

    .line 19
    .line 20
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardFMMViewController$1;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 24
    .line 25
    new-instance p3, Lcom/android/keyguard/KeyguardFMMViewController$2;

    .line 26
    .line 27
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardFMMViewController$2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 33
    .line 34
    iput-object p15, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const p3, 0x1110247

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 50
    .line 51
    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    .line 52
    .line 53
    const p3, 0x7f0a051f

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    .line 61
    .line 62
    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 65
    .line 66
    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    .line 67
    .line 68
    const p3, 0x7f0a0520

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 80
    .line 81
    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    .line 82
    .line 83
    const p3, 0x7f0a051e

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Lcom/android/systemui/widget/SystemUIButton;

    .line 91
    .line 92
    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 95
    .line 96
    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    .line 97
    .line 98
    const p3, 0x7f0a0685

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object p2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 110
    .line 111
    check-cast p2, Lcom/android/keyguard/KeyguardFMMView;

    .line 112
    .line 113
    const p3, 0x7f0a0521

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    .line 121
    .line 122
    if-eqz p2, :cond_0

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 125
    .line 126
    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 131
    .line 132
    check-cast p1, Lcom/android/keyguard/KeyguardFMMView;

    .line 133
    .line 134
    const p2, 0x7f0a04f6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_1

    .line 142
    .line 143
    new-instance p2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    const/4 p3, 0x0

    .line 146
    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateDrawableTint()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    .line 156
    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public final getSecurityViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a0522

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onPasswordChecked "

    .line 2
    .line 3
    .line 4
    const-string v1, " / "

    .line 5
    .line 6
    invoke-static {v0, p3, v1, p2, v1}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "KeyguardFMMView"

    .line 24
    .line 25
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p4, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 36
    .line 37
    .line 38
    new-instance p4, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v2, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    .line 41
    .line 42
    invoke-direct {p4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const v2, 0x1000020

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "com.samsung.android.permission.LOCK_SECURITY_MONITOR"

    .line 56
    .line 57
    invoke-virtual {v2, p4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo p4, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    .line 68
    invoke-interface {p4, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateFMMLock(IZ)Z

    .line 69
    .line 70
    .line 71
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 72
    .line 73
    invoke-interface {p4, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-eqz p4, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 95
    .line 96
    invoke-interface {p4, p1, v0, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-wide/16 v2, 0x0

    .line 101
    .line 102
    if-eqz p4, :cond_3

    .line 103
    .line 104
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 105
    .line 106
    invoke-interface {p4, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->addFailedFMMUnlockAttempt(I)V

    .line 107
    .line 108
    .line 109
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 110
    .line 111
    invoke-interface {p4, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    .line 112
    .line 113
    .line 114
    move-result p4

    .line 115
    const/4 v0, 0x5

    .line 116
    if-eq p4, v0, :cond_2

    .line 117
    .line 118
    const/16 v0, 0x9

    .line 119
    .line 120
    if-le p4, v0, :cond_3

    .line 121
    .line 122
    :cond_2
    const-class p4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 123
    .line 124
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 129
    .line 130
    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 131
    .line 132
    invoke-virtual {p4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    if-nez p4, :cond_3

    .line 137
    .line 138
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 139
    .line 140
    const/16 v0, 0x7530

    .line 141
    .line 142
    invoke-interface {p4, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    move-wide v4, v2

    .line 151
    :goto_0
    cmp-long p1, v4, v2

    .line 152
    .line 153
    if-nez p1, :cond_4

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 156
    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 164
    .line 165
    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    const v0, 0x7f130873

    .line 171
    .line 172
    .line 173
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p4

    .line 177
    invoke-virtual {p1, p4, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 184
    .line 185
    check-cast p0, Lcom/android/keyguard/KeyguardFMMView;

    .line 186
    .line 187
    xor-int/lit8 p1, p3, 0x1

    .line 188
    .line 189
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardFMMViewController$2;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final resetState()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    .line 8
    .line 9
    .line 10
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 17
    .line 18
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    cmp-long v2, v0, v2

    .line 43
    .line 44
    if-lez v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const v2, 0x7f130904

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 67
    .line 68
    .line 69
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_VZW_INSTRUCTION:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    const v0, 0x7f13091e

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const v0, 0x7f13091d

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public final setFMMInfo()V
    .locals 7

    .line 1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 10
    .line 11
    const-string v2, "lock_fmm_Message"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 28
    .line 29
    const-string v2, "lock_fmm_phone"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const-string v2, "\\r\\n|\\r|\\n"

    .line 49
    .line 50
    const-string v5, " "

    .line 51
    .line 52
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const v6, 0x7f0b0052

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-le v2, v5, :cond_2

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 95
    .line 96
    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    .line 97
    .line 98
    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 105
    .line 106
    const/high16 v5, 0x1000000

    .line 107
    .line 108
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setScrollBarStyle(I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScrollbarFadingEnabled(Z)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/widget/Button;->setSingleLine()V

    .line 145
    .line 146
    .line 147
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mIsVoiceCapacity:Z

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 152
    .line 153
    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;

    .line 154
    .line 155
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 163
    .line 164
    new-instance v1, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 179
    .line 180
    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    .line 185
    .line 186
    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 190
    .line 191
    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    :goto_2
    return-void
.end method

.method public final updateDrawableTint()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "background"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_3

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const v6, 0x7f06019b

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x7f06019a

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :goto_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public final updateFMMLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x64

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateDrawableTint()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    .line 11
    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    array-length v2, v0

    .line 28
    const/4 v4, 0x3

    .line 29
    if-gt v2, v4, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 32
    .line 33
    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/keyguard/KeyguardFMMViewController;->onPasswordChecked(IIZZ)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance v2, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1, v0}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardFMMViewController;I[B)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 52
    .line 53
    invoke-static {v4, v3, v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 58
    .line 59
    return-void
.end method
