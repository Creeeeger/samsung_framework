.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->needsToChangeRetryButton()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLandscape()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 40
    .line 41
    iget v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->enableSecurityDebug()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    .line 60
    .line 61
    :cond_2
    return-void
.end method
