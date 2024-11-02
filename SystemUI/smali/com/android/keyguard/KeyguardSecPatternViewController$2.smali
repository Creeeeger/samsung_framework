.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$2;
.super Lcom/android/keyguard/SecCountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

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
    const-string v0, "KeyguardSecPatternViewController"

    .line 2
    .line 3
    const-string v1, "handleAttemptLockout onFinish"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    iput v3, v1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 36
    .line 37
    check-cast v1, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    .line 76
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->resetFor2StepVerification()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 93
    .line 94
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_1

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    .line 119
    .line 120
    .line 121
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
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 24
    .line 25
    iput v0, v1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/SecCountDownTimer;->onTick(J)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
