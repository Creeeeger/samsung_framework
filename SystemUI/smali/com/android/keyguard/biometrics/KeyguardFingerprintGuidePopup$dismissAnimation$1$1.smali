.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$reset(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$reset(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
