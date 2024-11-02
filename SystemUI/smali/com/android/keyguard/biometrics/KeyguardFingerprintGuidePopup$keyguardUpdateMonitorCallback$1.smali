.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p3, v0, :cond_5

    .line 4
    .line 5
    sget p3, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne p3, v1, :cond_0

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p3, v0

    .line 26
    :goto_0
    if-eqz p3, :cond_5

    .line 27
    .line 28
    iget-boolean p3, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    .line 29
    .line 30
    if-nez p3, :cond_5

    .line 31
    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v2, "onBiometricHelp(msgId : "

    .line 35
    .line 36
    .line 37
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ", helpString : "

    .line 44
    .line 45
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p3, "KeyguardFingerprintGuidePopup"

    .line 56
    .line 57
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->guideText:Lcom/android/systemui/widget/SystemUITextView;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->helpText:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    sget p2, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintImageSize:I

    .line 81
    .line 82
    add-int/2addr p1, p2

    .line 83
    div-int/2addr p1, v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    const v2, 0x7f07048e

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    add-int/2addr p3, p1

    .line 96
    sget p1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 97
    .line 98
    sub-int/2addr p1, p2

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const v2, 0x7f07048f

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    add-int/2addr p2, p1

    .line 111
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    .line 112
    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    int-to-float p3, p3

    .line 116
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 117
    .line 118
    .line 119
    int-to-float p2, p2

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    .line 124
    .line 125
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    .line 141
    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->helpText:Ljava/lang/String;

    .line 145
    .line 146
    const-string p2, ""

    .line 147
    .line 148
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    .line 156
    .line 157
    new-array p2, v1, [F

    .line 158
    .line 159
    fill-array-data p2, :array_0

    .line 160
    .line 161
    .line 162
    const-string p3, "alpha"

    .line 163
    .line 164
    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-wide/16 p2, 0x64

    .line 169
    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    .line 172
    .line 173
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    .line 174
    .line 175
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    .line 180
    .line 181
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 182
    .line 183
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 189
    .line 190
    .line 191
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;

    .line 192
    .line 193
    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    .line 206
    .line 207
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    .line 213
    .line 214
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    .line 215
    .line 216
    const-wide/16 p2, 0xbb8

    .line 217
    .line 218
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    .line 220
    .line 221
    :cond_5
    return-void

    .line 222
    nop

    .line 223
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isRunningState:Z

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->bouncerShowing:Z

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->bouncerShowing:Z

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, "KeyguardFingerprintGuidePopup"

    .line 21
    .line 22
    const-string/jumbo v0, "set text preview - onKeyguardBouncerFullyShowingChanged"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardShowing:Z

    .line 4
    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardShowing:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$rotationConsumer$1;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$rotationConsumer$1;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final onPhoneStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSystemDialogsShowing()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
