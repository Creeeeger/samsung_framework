.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
