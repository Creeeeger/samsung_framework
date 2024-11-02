.class public final Lcom/android/keyguard/SecLockIconViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricLockoutChanged(Z)V
    .locals 0

    .line 1
    sget p1, Lcom/android/keyguard/SecLockIconViewController;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isTimerRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    and-int/lit8 v0, p1, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    and-int/lit8 v0, p1, 0x2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    and-int/lit8 v0, p1, 0x4

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    and-int/lit8 v0, p1, 0x8

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    and-int/lit8 v0, p1, 0x10

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    and-int/lit8 p1, p1, 0x20

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 0

    .line 1
    sget p1, Lcom/android/keyguard/SecLockIconViewController;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
