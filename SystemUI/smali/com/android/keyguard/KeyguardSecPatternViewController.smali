.class public final Lcom/android/keyguard/KeyguardSecPatternViewController;
.super Lcom/android/keyguard/KeyguardPatternViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBottomView:Landroid/widget/LinearLayout;

.field public mBouncerShowing:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

.field public final mContainer:Landroid/widget/LinearLayout;

.field public mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

.field public mCurrentRotation:I

.field public final mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

.field public final mEcaFlexContainer:Landroid/widget/LinearLayout;

.field public final mEcaView:Landroid/view/View;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public mGoingToSleep:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public mIsNightModeOn:Z

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public mPromptReason:I

.field public final mRotationConsumer:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public mSecondsRemaining:I

.field public final mSecurityView:Landroid/widget/LinearLayout;

.field public final mSplitTouchView:Landroid/widget/LinearLayout;

.field public final mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/android/keyguard/KeyguardPatternViewController;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 5
    .line 6
    const p2, 0x3e6147ae    # 0.22f

    .line 7
    .line 8
    .line 9
    const/high16 p3, 0x3e800000    # 0.25f

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    const/high16 p5, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mIsNightModeOn:Z

    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 31
    .line 32
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    .line 45
    .line 46
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$3;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 59
    .line 60
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$4;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    .line 66
    .line 67
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    .line 68
    .line 69
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$5;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    .line 73
    .line 74
    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 75
    .line 76
    iput-object p12, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 77
    .line 78
    iput-object p13, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 79
    .line 80
    iput-object p14, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 83
    .line 84
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 85
    .line 86
    const p3, 0x7f0a0ab6

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 98
    .line 99
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 100
    .line 101
    const p3, 0x7f0a0685

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Landroid/widget/LinearLayout;

    .line 109
    .line 110
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 113
    .line 114
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 115
    .line 116
    const p3, 0x7f0a0294

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Landroid/widget/LinearLayout;

    .line 124
    .line 125
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 128
    .line 129
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 130
    .line 131
    const p3, 0x7f0a053a

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Landroid/widget/LinearLayout;

    .line 139
    .line 140
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 143
    .line 144
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 145
    .line 146
    const p3, 0x7f0a016f

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Landroid/widget/LinearLayout;

    .line 154
    .line 155
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 158
    .line 159
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 160
    .line 161
    const p3, 0x7f0a054d

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    .line 169
    .line 170
    iget-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 171
    .line 172
    if-eqz p2, :cond_0

    .line 173
    .line 174
    const/16 p3, 0x8

    .line 175
    .line 176
    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 180
    .line 181
    check-cast p2, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 182
    .line 183
    const p3, 0x7f0a0495

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    check-cast p2, Lcom/android/keyguard/KeyguardHintTextArea;

    .line 191
    .line 192
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    if-eqz p3, :cond_1

    .line 199
    .line 200
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 212
    .line 213
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 220
    .line 221
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 222
    .line 223
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 224
    .line 225
    check-cast p1, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 226
    .line 227
    const p2, 0x7f0a03a8

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroid/widget/LinearLayout;

    .line 235
    .line 236
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    return-void
.end method


# virtual methods
.method public final disableDevicePermanently()V
    .locals 3

    .line 1
    const-string v0, "KeyguardSecPatternViewController"

    .line 2
    .line 3
    const-string v1, "disableDevicePermanently"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 22
    .line 23
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final displayDefaultSecurityMessage()V
    .locals 8

    .line 1
    const-string v0, "KeyguardSecPatternViewController"

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
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_6

    .line 20
    .line 21
    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 22
    .line 23
    if-nez v3, :cond_6

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPrompt()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v3, v5

    .line 45
    :goto_0
    const-string v6, " )"

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    iput v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "displayDefaultSecurityMessage - strongAuth ( "

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    .line 59
    .line 60
    invoke-static {v3, v4, v6, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->showPromptReason(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 70
    .line 71
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "displayDefaultSecurityMessage( "

    .line 78
    .line 79
    invoke-static {v4, v3, v6, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    const-wide/16 v6, 0x0

    .line 103
    .line 104
    cmp-long v3, v3, v6

    .line 105
    .line 106
    if-lez v3, :cond_4

    .line 107
    .line 108
    const-string v3, ""

    .line 109
    .line 110
    invoke-virtual {v1, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    const v0, 0x7f1307ea

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage(I)V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_2
    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final handleAttemptLockout(J)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleAttemptLockout deadline = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "KeyguardSecPatternViewController"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 54
    .line 55
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    new-instance v12, Lcom/android/keyguard/KeyguardSecPatternViewController$2;

    .line 60
    .line 61
    sub-long v4, p1, v0

    .line 62
    .line 63
    const-wide/16 v6, 0x3e8

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    iget-object v9, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 70
    .line 71
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 72
    .line 73
    const/4 v11, 0x1

    .line 74
    move-object v2, v12

    .line 75
    move-object v3, p0

    .line 76
    invoke-direct/range {v2 .. v11}, Lcom/android/keyguard/KeyguardSecPatternViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    .line 77
    .line 78
    .line 79
    iput-object v12, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 80
    .line 81
    invoke-virtual {v12}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final isHintText()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long p0, v0, v2

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final onResume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController;->onResume(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->reset()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 30
    .line 31
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 36
    .line 37
    .line 38
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPatternViewController$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 15
    .line 16
    iput-object v0, v1, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 26
    .line 27
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecPatternViewController$4;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 32
    .line 33
    .line 34
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecPatternViewController$5;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final reset()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 45
    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move-object v1, v5

    .line 51
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    cmp-long v1, v8, v6

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    cmp-long v1, v8, v3

    .line 62
    .line 63
    if-lez v1, :cond_0

    .line 64
    .line 65
    const-string/jumbo v1, "reset() switch to inner deadline. deadline = "

    .line 66
    .line 67
    .line 68
    const-string v10, ", innerDeadline = "

    .line 69
    .line 70
    invoke-static {v1, v3, v4, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v3, "KeyguardSecPatternViewController"

    .line 82
    .line 83
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-wide v3, v8

    .line 87
    :cond_0
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    const/16 v0, 0x8

    .line 113
    .line 114
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    const/4 v8, 0x0

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    .line 138
    .line 139
    .line 140
    cmp-long v1, v3, v6

    .line 141
    .line 142
    if-lez v1, :cond_4

    .line 143
    .line 144
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    cmp-long v0, v0, v6

    .line 149
    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {v2, v8}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->resetFor2StepVerification()V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently()V

    .line 163
    .line 164
    .line 165
    :goto_0
    return-void
.end method

.method public final resetFor2StepVerification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "KeyguardSecPatternViewController"

    .line 20
    .line 21
    const-string/jumbo v1, "reset() - 2 step verification"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final setSubSecurityMessage(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 14
    .line 15
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    .line 29
    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    if-eq p0, p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x3

    .line 57
    if-eq p0, p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    move v4, v5

    .line 68
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0, v3, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_1
    return-void
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardPatternViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final showPromptReason(I)V
    .locals 10

    .line 1
    const-string v0, "KeyguardSecPatternViewController"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "showPromptReason mMessageAreaController is null"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mPromptReason:I

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 37
    .line 38
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    cmp-long v2, v7, v5

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    cmp-long v2, v7, v3

    .line 49
    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    const-string/jumbo v2, "showPromptReason() switch to inner deadline. deadline = "

    .line 53
    .line 54
    .line 55
    const-string v9, ", innerDeadline = "

    .line 56
    .line 57
    invoke-static {v2, v3, v4, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-wide v3, v7

    .line 72
    :cond_1
    cmp-long v0, v3, v5

    .line 73
    .line 74
    if-lez v0, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 80
    .line 81
    invoke-virtual {v2, v0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static {v4, v0, v5, p1}, Lcom/android/keyguard/SecurityUtils;->getStrongAuthPopupString(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;I)Landroid/text/SpannableStringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 v4, 0x0

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 105
    .line 106
    .line 107
    iget-object p0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 108
    .line 109
    check-cast p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 110
    .line 111
    invoke-virtual {p0, v4, v4}, Landroid/widget/TextView;->scrollTo(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0, v0}, Lcom/android/keyguard/SecurityUtils;->isEmptyStrongAuthPopupMessage(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_5

    .line 130
    .line 131
    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    :cond_5
    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_0
    return-void
.end method

.method public final startAppearAnimation()V
    .locals 5

    .line 1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-static {v3, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 16
    .line 17
    new-array v4, v1, [F

    .line 18
    .line 19
    fill-array-data v4, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 27
    .line 28
    new-array v1, v1, [F

    .line 29
    .line 30
    fill-array-data v1, :array_2

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 38
    .line 39
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 46
    .line 47
    .line 48
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 49
    .line 50
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 51
    .line 52
    .line 53
    filled-new-array {v0, v2, v1}, [Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 61
    .line 62
    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v0, 0x15e

    .line 66
    .line 67
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .line 72
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 88
    .line 89
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v0, 0x3fa66666    # 1.3f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-wide/16 v0, 0xc8

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final updateLayout()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout(I)V

    return-void
.end method

.method public final updateLayout(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 6
    iput v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    .line 7
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    const v3, 0x7f0a03a9

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v7, -0x1

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v11, :cond_0

    .line 9
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x7f0704fd

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v10, :cond_1

    .line 12
    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x7f070510

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    invoke-virtual {v10, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v9, :cond_2

    .line 15
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 17
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 18
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v8, :cond_3

    .line 19
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-eqz v6, :cond_4

    .line 20
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x7f07050e

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x7f07050a

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x7f07050c

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 24
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v4, :cond_11

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 27
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v7, 0x7f070508

    .line 29
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 30
    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 31
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_11

    .line 33
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const v3, 0x7f070408

    .line 34
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 36
    :cond_5
    iget-object v2, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updatePortraitLayout()V

    goto/16 :goto_2

    :cond_6
    if-eqz v1, :cond_10

    const/4 v12, 0x2

    if-ne v1, v12, :cond_7

    goto/16 :goto_1

    .line 38
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 40
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 41
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    move-result v13

    const v14, 0x7f0704fb

    .line 43
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 44
    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    if-eqz v15, :cond_8

    .line 45
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 47
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, 0x0

    .line 48
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-eqz v6, :cond_9

    .line 50
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_9

    .line 51
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x7f07050b

    .line 52
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    sub-int v12, v12, v17

    const v3, 0x7f070407

    .line 53
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v12, v3

    mul-int/lit8 v3, v14, 0x2

    sub-int/2addr v12, v3

    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 54
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 55
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x11

    .line 56
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_9
    move v1, v5

    :goto_0
    if-eqz v10, :cond_a

    .line 59
    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 61
    invoke-virtual {v10, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz v9, :cond_b

    if-eqz v8, :cond_b

    .line 62
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    invoke-virtual {v9, v1, v14, v14, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    invoke-virtual {v8, v1, v14, v1, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 66
    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    .line 67
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 68
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 69
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 70
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v6, 0x11

    .line 71
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 72
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    if-eqz v11, :cond_c

    .line 75
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 77
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 78
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    if-eqz v4, :cond_d

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 81
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 82
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v7, 0x0

    .line 83
    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 84
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a03a9

    .line 86
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    :cond_d
    const/16 v1, 0x8

    .line 87
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_e

    .line 88
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :cond_e
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v2, :cond_f

    .line 90
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 91
    :cond_f
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    goto :goto_2

    .line 93
    :cond_10
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updatePortraitLayout()V

    .line 94
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    :cond_11
    :goto_3
    return-void
.end method

.method public final updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gt v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v0, v3, v5

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 27
    .line 28
    if-ltz v3, :cond_b

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-eqz v5, :cond_7

    .line 36
    .line 37
    iget-object v6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    iget v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mCurrentRotation:I

    .line 55
    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    const/4 v8, 0x2

    .line 59
    if-ne v7, v8, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v7, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    move v7, v2

    .line 65
    :goto_1
    if-eqz v7, :cond_4

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    :goto_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_5

    .line 97
    .line 98
    const v8, 0x7f070408

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    const v9, 0x7f070508

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    const v8, 0x7f070407

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    const v9, 0x7f070507

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    :goto_3
    add-int/2addr v9, v8

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const v10, 0x1050255

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .line 145
    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 146
    .line 147
    sub-int/2addr v6, v9

    .line 148
    sub-int/2addr v6, v8

    .line 149
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 150
    .line 151
    if-eqz v7, :cond_6

    .line 152
    .line 153
    const v6, 0x7f0704fb

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    :cond_6
    invoke-virtual {v5, v8, v4, v8, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 167
    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    .line 171
    .line 172
    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 189
    .line 190
    const/4 v1, -0x2

    .line 191
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 197
    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    if-eqz p0, :cond_b

    .line 206
    .line 207
    const/16 v0, 0x50

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    .line 214
    .line 215
    :cond_b
    return-void
.end method

.method public final updatePortraitLayout()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    .line 16
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 17
    .line 18
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 19
    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const v2, 0x7f0a03a9

    .line 28
    .line 29
    .line 30
    const v3, 0x7f070507

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 37
    .line 38
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaView:Landroid/view/View;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecurityView:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    if-eqz v9, :cond_3

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    const/16 v11, 0x51

    .line 54
    .line 55
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    .line 60
    .line 61
    const v9, 0x7f07050d

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 69
    .line 70
    const v9, 0x7f070509

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 78
    .line 79
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    const v11, 0x7f07050b

    .line 84
    .line 85
    .line 86
    if-eqz v9, :cond_2

    .line 87
    .line 88
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_2

    .line 93
    .line 94
    iget v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 95
    .line 96
    if-ne v9, v1, :cond_2

    .line 97
    .line 98
    sget v9, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 99
    .line 100
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    add-int/2addr v11, v9

    .line 105
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    sub-int/2addr v11, v9

    .line 110
    const v9, 0x1050255

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    sub-int/2addr v11, v9

    .line 118
    if-eqz v7, :cond_1

    .line 119
    .line 120
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-nez v9, :cond_1

    .line 129
    .line 130
    const v9, 0x7f070407

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    move v9, v8

    .line 139
    :goto_0
    sub-int/2addr v11, v9

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    :goto_1
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 146
    .line 147
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 151
    .line 152
    if-eqz v6, :cond_4

    .line 153
    .line 154
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 159
    .line 160
    const v10, 0x7f07050f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 168
    .line 169
    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 173
    .line 174
    if-eqz v6, :cond_6

    .line 175
    .line 176
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    if-eqz v9, :cond_6

    .line 179
    .line 180
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .line 186
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .line 192
    sget-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 193
    .line 194
    if-eqz v12, :cond_5

    .line 195
    .line 196
    const-class v12, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 197
    .line 198
    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    check-cast v12, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 203
    .line 204
    iget-boolean v12, v12, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 205
    .line 206
    if-eqz v12, :cond_5

    .line 207
    .line 208
    move v12, v8

    .line 209
    goto :goto_2

    .line 210
    :cond_5
    const v12, 0x7f0704fb

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    :goto_2
    invoke-virtual {v6, v12, v8, v12, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    .line 222
    .line 223
    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 224
    .line 225
    const/4 v12, -0x2

    .line 226
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 227
    .line 228
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 229
    .line 230
    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 231
    .line 232
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 233
    .line 234
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 244
    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    const/16 v6, 0x50

    .line 248
    .line 249
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 253
    .line 254
    .line 255
    :cond_7
    if-eqz v7, :cond_8

    .line 256
    .line 257
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    .line 263
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 264
    .line 265
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 266
    .line 267
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 268
    .line 269
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    invoke-virtual {v1, v5, v6, v9, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 283
    .line 284
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 289
    .line 290
    .line 291
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    .line 292
    .line 293
    if-eqz v0, :cond_9

    .line 294
    .line 295
    const/16 v1, 0x8

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    :cond_9
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_a

    .line 305
    .line 306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 307
    .line 308
    if-eqz v0, :cond_a

    .line 309
    .line 310
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_b

    .line 318
    .line 319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 320
    .line 321
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    .line 325
    .line 326
    .line 327
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 3

    .line 1
    const-string v0, "KeyguardSecPatternViewController"

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "updateStyle theme color: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1, p2}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 28
    .line 29
    instance-of v0, p0, Lcom/android/keyguard/SecLockPatternView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v0, "background"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {p3, v0, v1}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    check-cast p0, Lcom/android/keyguard/SecLockPatternView;

    .line 44
    .line 45
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/keyguard/SecLockPatternView;->updateViewStyle(IJ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string/jumbo p0, "updateStyle: colors is null."

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
