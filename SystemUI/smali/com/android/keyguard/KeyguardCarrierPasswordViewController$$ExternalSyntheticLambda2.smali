.class public final synthetic Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 5
    .line 6
    const-string p2, "check result : "

    .line 7
    .line 8
    const-string v0, "KeyguardCarrierPasswordView"

    .line 9
    .line 10
    invoke-static {p2, p1, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 19
    .line 20
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/content/Intent;

    .line 30
    .line 31
    const-string p2, "com.sec.android.FindingLostPhonePlus.RELEASE"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const p2, 0x1000020

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string p2, "android.permission.MASTER_CLEAR"

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v0, 0x7f1307f3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 62
    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 67
    .line 68
    const-string p2, ""

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    .line 78
    .line 79
    const/4 p2, 0x4

    .line 80
    if-le p1, p2, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget-object p2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    return-void
.end method
