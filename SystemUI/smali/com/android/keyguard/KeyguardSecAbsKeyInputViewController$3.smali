.class public final Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;
.super Lcom/android/keyguard/SecCountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 4
    .line 5
    move-wide v1, p2

    .line 6
    move-wide v3, p4

    .line 7
    move-object v5, p6

    .line 8
    move-object/from16 v6, p7

    .line 9
    .line 10
    move-object/from16 v7, p8

    .line 11
    .line 12
    move/from16 v8, p9

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/SecCountDownTimer;-><init>(JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 32
    .line 33
    check-cast v1, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 56
    .line 57
    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    .line 70
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isForgotPasswordAvailable()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    .line 116
    .line 117
    .line 118
    :cond_1
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 1
    long-to-double v0, p1

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    div-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-int v0, v0

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 24
    .line 25
    iput v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 26
    .line 27
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/SecCountDownTimer;->onTick(J)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p2, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
