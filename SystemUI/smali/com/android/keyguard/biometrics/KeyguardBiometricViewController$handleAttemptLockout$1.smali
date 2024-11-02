.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;
.super Landroid/os/CountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
