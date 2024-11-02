.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field public mFailedAttempts:I

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPasswordEntry:Landroid/widget/EditText;

.field public final mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public final mShowImeAtScreenOn:Z

.field public final mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    .line 9
    .line 10
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    .line 16
    .line 17
    new-instance p1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    .line 26
    iput-object p14, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 27
    .line 28
    iput-object p15, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const p2, 0x7f050061

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeAtScreenOn:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 50
    .line 51
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 52
    .line 53
    const p2, 0x7f0a07d0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/EditText;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 73
    .line 74
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 77
    .line 78
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 79
    .line 80
    const p2, 0x7f0a07d1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/view/ViewGroup;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    new-instance v8, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;

    .line 14
    .line 15
    sub-long v4, p1, v0

    .line 16
    .line 17
    const-wide/16 v6, 0x3e8

    .line 18
    .line 19
    move-object v2, v8

    .line 20
    move-object v3, p0

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;JJ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    move p2, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move p2, v0

    .line 16
    :goto_0
    if-eqz p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-nez p3, :cond_2

    .line 33
    .line 34
    move p3, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move p3, v0

    .line 37
    :goto_1
    if-nez p2, :cond_4

    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    return v0

    .line 43
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->verifyPasswordAndUnlock()V

    .line 44
    .line 45
    .line 46
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onResume(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onResume(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeAtScreenOn:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    .line 21
    check-cast p1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mShowImeRunnable:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;

    .line 24
    .line 25
    const-wide/16 v1, 0x64

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->reset()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 33
    .line 34
    const/16 v1, 0x81

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 45
    .line 46
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 55
    .line 56
    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->updateLayout()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->reset()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final reset()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v0, v2, v4

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 40
    .line 41
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final resetState()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f07053d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    .line 26
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    new-instance v3, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 43
    .line 44
    return-void
.end method
