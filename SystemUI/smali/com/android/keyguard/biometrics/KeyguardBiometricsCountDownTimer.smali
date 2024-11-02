.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

.field public final mBiometricType:I

.field public final mContext:Landroid/content/Context;

.field public final mFailedAttempts:I

.field public mIsTalkbackUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/android/systemui/widget/SystemUITextView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 7
    .line 8
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 17
    .line 18
    .line 19
    move-result p6

    .line 20
    invoke-interface {p1, p6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    .line 21
    .line 22
    .line 23
    move-result p6

    .line 24
    iput p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 25
    .line 26
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getBiometricType(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    .line 35
    .line 36
    const-string p0, "KeyguardBiometricsCountDownTimer( millisInFuture = "

    .line 37
    .line 38
    const-string v0, " , countDownInterval = "

    .line 39
    .line 40
    invoke-static {p0, p2, p3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " , mFailedAttempts = "

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " , mBiometricType = "

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, " )"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "KeyguardBiometricsCountDownTimer"

    .line 73
    .line 74
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    const-string v0, "KeyguardBiometricsCountDownTimer"

    .line 2
    .line 3
    const-string/jumbo v1, "onFinish()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    .line 27
    .line 28
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 35
    .line 36
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 1
    long-to-double p1, p1

    .line 2
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    div-double/2addr p1, v0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    long-to-int p1, p1

    .line 13
    iget p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x100

    .line 19
    .line 20
    if-eq p2, v1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f11000b

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v3, 0x7f11000c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const v3, 0x7f11000d

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :goto_0
    const-string v1, " "

    .line 94
    .line 95
    invoke-static {p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const v3, 0x7f110016

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 128
    .line 129
    if-eqz p2, :cond_2

    .line 130
    .line 131
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    .line 135
    .line 136
    if-nez p2, :cond_3

    .line 137
    .line 138
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    const-string p0, "KeyguardBiometricsCountDownTimer"

    .line 147
    .line 148
    const-string/jumbo p1, "onTick ( mBiometricMessageArea is null )"

    .line 149
    .line 150
    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    const-string v0, "KeyguardBiometricsCountDownTimer"

    .line 2
    .line 3
    const-string/jumbo v1, "stop()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mIsTalkbackUpdated:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
