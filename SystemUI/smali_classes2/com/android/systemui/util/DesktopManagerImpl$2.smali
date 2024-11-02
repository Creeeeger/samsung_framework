.class public final Lcom/android/systemui/util/DesktopManagerImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsFaceAuth:Z

.field public mTrustEnabled:Z

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mIsFaceAuth:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mIsFaceAuth:Z

    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mTrustEnabled:Z

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget p2, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyTrustChanged(IZ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-boolean v3, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mTrustEnabled:Z

    .line 16
    .line 17
    if-ne v3, v1, :cond_0

    .line 18
    .line 19
    iget v3, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    .line 20
    .line 21
    if-ne v3, p1, :cond_0

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mIsFaceAuth:Z

    .line 24
    .line 25
    if-eq v3, v2, :cond_3

    .line 26
    .line 27
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mTrustEnabled:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mIsFaceAuth:Z

    .line 30
    .line 31
    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 41
    :goto_1
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyTrustChanged(IZ)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 45
    .line 46
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method
