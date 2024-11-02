.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mLastSuccessiveErrorMessage:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 4
    .line 5
    if-ne p2, p1, :cond_2

    .line 6
    .line 7
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    const/4 p3, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    move p1, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, p3

    .line 34
    :goto_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move p2, p3

    .line 42
    :goto_1
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->-$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_2
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 12

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
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne p3, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->shouldSuppressFingerprintError(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 22
    .line 23
    if-ne p3, v1, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    xor-int/2addr v1, v3

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0x9

    .line 37
    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    :cond_1
    const/4 v1, 0x5

    .line 41
    if-eq p1, v1, :cond_2

    .line 42
    .line 43
    if-ne p1, v2, :cond_3

    .line 44
    .line 45
    :cond_2
    move v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move v1, v4

    .line 48
    :goto_0
    if-eqz v1, :cond_4

    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 52
    .line 53
    iget-object v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 54
    .line 55
    if-eqz v5, :cond_5

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    goto :goto_1

    .line 62
    :cond_5
    move v5, v4

    .line 63
    :goto_1
    if-eqz v5, :cond_6

    .line 64
    .line 65
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 66
    .line 67
    if-ne p3, v0, :cond_c

    .line 68
    .line 69
    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 70
    .line 71
    if-eq p3, p1, :cond_c

    .line 72
    .line 73
    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 76
    .line 77
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_6
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 83
    .line 84
    if-eqz v0, :cond_c

    .line 85
    .line 86
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;

    .line 87
    .line 88
    const v0, 0x1010543

    .line 89
    .line 90
    .line 91
    iget-object v5, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v0, v5}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 98
    .line 99
    if-eq p3, v0, :cond_c

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 116
    .line 117
    if-ne p3, v5, :cond_7

    .line 118
    .line 119
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_7

    .line 124
    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 128
    .line 129
    sget-object v7, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    .line 130
    .line 131
    sget-object p3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    move-object v8, p3

    .line 135
    move-object v9, p2

    .line 136
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 144
    .line 145
    if-ne p3, v0, :cond_a

    .line 146
    .line 147
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 148
    .line 149
    const/4 v5, -0x1

    .line 150
    if-ne v0, v5, :cond_8

    .line 151
    .line 152
    sput v3, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 153
    .line 154
    :cond_8
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 155
    .line 156
    if-ne v0, v3, :cond_9

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_9
    move v3, v4

    .line 160
    :goto_2
    if-nez v3, :cond_a

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 164
    .line 165
    sget-object v3, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$11;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    aget p3, v3, p3

    .line 172
    .line 173
    if-eq p3, v2, :cond_b

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_b
    const-string p2, ""

    .line 177
    .line 178
    :goto_3
    invoke-virtual {v1, v0, p2, v10, v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 179
    .line 180
    .line 181
    :goto_4
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 182
    .line 183
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 184
    .line 185
    .line 186
    :cond_c
    :goto_5
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 187
    .line 188
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 10

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-eq p3, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-class p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v2, v3

    .line 35
    :goto_0
    const/4 v8, -0x1

    .line 36
    iget-object v9, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 37
    .line 38
    if-eqz v2, :cond_5

    .line 39
    .line 40
    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    cmp-long v2, v4, v6

    .line 47
    .line 48
    if-lez v2, :cond_3

    .line 49
    .line 50
    move v2, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 61
    .line 62
    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    move v2, v3

    .line 68
    :goto_1
    if-nez v2, :cond_5

    .line 69
    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    iget-object p1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 79
    .line 80
    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_5
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 86
    .line 87
    iget v2, v2, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 88
    .line 89
    const/4 v4, 0x2

    .line 90
    if-ne v2, v4, :cond_13

    .line 91
    .line 92
    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 93
    .line 94
    if-nez p3, :cond_13

    .line 95
    .line 96
    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    if-eq p1, v0, :cond_c

    .line 99
    .line 100
    if-eq p1, v4, :cond_b

    .line 101
    .line 102
    const/4 v2, 0x3

    .line 103
    if-eq p1, v2, :cond_a

    .line 104
    .line 105
    const/4 v2, 0x5

    .line 106
    if-eq p1, v2, :cond_9

    .line 107
    .line 108
    const/16 v2, 0x3e9

    .line 109
    .line 110
    if-eq p1, v2, :cond_8

    .line 111
    .line 112
    const/16 v2, 0x3eb

    .line 113
    .line 114
    if-eq p1, v2, :cond_7

    .line 115
    .line 116
    const/16 v2, 0x3ec

    .line 117
    .line 118
    if-eq p1, v2, :cond_6

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    const p2, 0x7f130848

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    const p2, 0x7f130844

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    const p2, 0x7f130847

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    goto :goto_2

    .line 145
    :cond_9
    const p2, 0x7f130846

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    goto :goto_2

    .line 153
    :cond_a
    const p2, 0x7f130842

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    goto :goto_2

    .line 161
    :cond_b
    const p2, 0x7f130843

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    goto :goto_2

    .line 169
    :cond_c
    const p2, 0x7f130845

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    :goto_2
    move-object v5, p2

    .line 177
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 186
    .line 187
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    sget-object p3, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 192
    .line 193
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_d

    .line 198
    .line 199
    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 200
    .line 201
    if-eqz p3, :cond_d

    .line 202
    .line 203
    if-eq p2, v4, :cond_12

    .line 204
    .line 205
    :cond_d
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 206
    .line 207
    .line 208
    move-result p3

    .line 209
    if-eqz p3, :cond_e

    .line 210
    .line 211
    if-nez p2, :cond_e

    .line 212
    .line 213
    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    .line 214
    .line 215
    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 216
    .line 217
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    .line 218
    .line 219
    const/4 v7, 0x0

    .line 220
    move-object v2, v1

    .line 221
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 222
    .line 223
    .line 224
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 225
    .line 226
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_e
    sget p2, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 231
    .line 232
    if-ne p2, v8, :cond_f

    .line 233
    .line 234
    sput v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 235
    .line 236
    :cond_f
    sget p2, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 237
    .line 238
    if-ne p2, v0, :cond_10

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_10
    move v0, v3

    .line 242
    :goto_3
    if-nez v0, :cond_11

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_11
    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 246
    .line 247
    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    .line 248
    .line 249
    invoke-virtual {v1, p2, v5, p3, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 250
    .line 251
    .line 252
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 253
    .line 254
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 255
    .line 256
    .line 257
    :cond_12
    :goto_4
    if-ne p1, v8, :cond_13

    .line 258
    .line 259
    iget-object p1, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_13

    .line 266
    .line 267
    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isMaxFailedBiometricUnlockAttemptsShort()Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_13

    .line 272
    .line 273
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 274
    .line 275
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 276
    .line 277
    .line 278
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 279
    .line 280
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    const-wide/16 v0, 0x3e8

    .line 285
    .line 286
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;

    .line 291
    .line 292
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    .line 296
    .line 297
    .line 298
    :cond_13
    :goto_5
    iput v8, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 299
    .line 300
    return-void
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    if-nez v2, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->-$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 33
    .line 34
    iget-object p2, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-wide/16 v0, 0x64

    .line 60
    .line 61
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 4
    .line 5
    iget-object v0, v10, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v11, v10, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 14
    .line 15
    .line 16
    move-result-wide v12

    .line 17
    const-string v2, "onLockModeChanged - "

    .line 18
    .line 19
    const-string v3, " | "

    .line 20
    .line 21
    invoke-static {v2, v0, v1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v14, "KeyguardSecIndicationController"

    .line 33
    .line 34
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long v4, v0, v2

    .line 40
    .line 41
    const/4 v15, 0x0

    .line 42
    if-lez v4, :cond_2

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v5, "startCountdownTimer - "

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPerformingWipeOut()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget-object v2, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 74
    .line 75
    .line 76
    iput-object v15, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 77
    .line 78
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    new-instance v9, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;

    .line 83
    .line 84
    sub-long v2, v0, v2

    .line 85
    .line 86
    const-wide/16 v4, 0x3e8

    .line 87
    .line 88
    iget-object v6, v10, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v7, v10, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    move-object v0, v9

    .line 96
    move-object v1, v10

    .line 97
    move-object v15, v9

    .line 98
    move/from16 v9, v16

    .line 99
    .line 100
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    .line 101
    .line 102
    .line 103
    iput-object v15, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 104
    .line 105
    invoke-virtual {v15}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    iput-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 118
    .line 119
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 120
    .line 121
    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    const-wide/16 v2, 0x0

    .line 125
    .line 126
    :goto_1
    cmp-long v0, v12, v2

    .line 127
    .line 128
    if-lez v0, :cond_7

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string/jumbo v1, "startBiometricCountdownTimer - "

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPerformingWipeOut()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    iget-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    iput-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 164
    .line 165
    :cond_5
    iget-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    iget-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 180
    .line 181
    const-string v1, ""

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;

    .line 191
    .line 192
    sub-long v2, v12, v0

    .line 193
    .line 194
    const-wide/16 v4, 0x3e8

    .line 195
    .line 196
    move-object v0, v6

    .line 197
    move-object v1, v10

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iput-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    iget-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 213
    .line 214
    .line 215
    const/4 v0, 0x0

    .line 216
    iput-object v0, v10, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 217
    .line 218
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 219
    .line 220
    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 221
    .line 222
    .line 223
    :cond_8
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 224
    .line 225
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method public final onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    .line 4
    .line 5
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v0, 0x1f4

    .line 11
    .line 12
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    and-int/lit8 v0, p1, 0x1

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    and-int/lit8 v0, p1, 0x2

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    and-int/lit8 v0, p1, 0x4

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    and-int/lit8 v0, p1, 0x8

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    and-int/lit8 v0, p1, 0x10

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    and-int/lit8 p1, p1, 0x20

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 46
    :goto_1
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 57
    .line 58
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public final onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    .line 8
    .line 9
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 3

    .line 1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x64

    .line 8
    .line 9
    invoke-static {v1, v2, p1, v0}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
