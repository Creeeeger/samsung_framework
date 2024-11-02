.class public Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mState:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->checkPuk()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 15
    .line 16
    const p0, 0x7f130959

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p0, 0x7f130876

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, 0x2

    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->checkPin()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 34
    .line 35
    const p0, 0x7f130806

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const p0, 0x7f130875

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    if-ne v0, v3, :cond_5

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->confirmPin()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->updateSim()V

    .line 55
    .line 56
    .line 57
    const p0, 0x7f1307c5

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 62
    .line 63
    const p0, 0x7f130874

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const/4 p0, 0x0

    .line 68
    :goto_0
    iget-object v0, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 69
    .line 70
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 73
    .line 74
    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    iget-object v0, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 11
    .line 12
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    iget v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 20
    .line 21
    if-eq p0, v2, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    iput-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 36
    .line 37
    :cond_0
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showDefaultMessage()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 45
    .line 46
    check-cast p0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 53
    .line 54
    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimInputView;->disableESimButton:Lcom/android/keyguard/KeyguardEsimArea;

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iput v3, v4, Lcom/android/keyguard/KeyguardEsimArea;->mSubscriptionId:I

    .line 65
    .line 66
    :cond_2
    const/16 v3, 0x8

    .line 67
    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-eqz v2, :cond_4

    .line 72
    .line 73
    move v5, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v5, v3

    .line 76
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimInputView;->simImageView:Landroid/widget/ImageView;

    .line 80
    .line 81
    if-nez p0, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    if-eqz v2, :cond_6

    .line 85
    .line 86
    move v1, v3

    .line 87
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 93
    .line 94
    .line 95
    return-void
.end method
