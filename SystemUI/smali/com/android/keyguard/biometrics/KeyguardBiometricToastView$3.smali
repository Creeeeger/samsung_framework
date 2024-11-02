.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public final synthetic val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 2
    .line 3
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    .line 28
    .line 29
    const-wide/16 v1, 0xbb8

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p1, "KeyguardBiometricToastView"

    .line 36
    .line 37
    const-string v0, "disappearAnimation end"

    .line 38
    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 43
    .line 44
    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 50
    .line 51
    const/16 p1, 0x8

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
