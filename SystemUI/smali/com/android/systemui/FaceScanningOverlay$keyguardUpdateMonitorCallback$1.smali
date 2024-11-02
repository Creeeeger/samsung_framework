.class public final Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/FaceScanningOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/FaceScanningOverlay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 0

    .line 1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAcquired$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAcquired$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthFailed$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthFailed$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthenticated$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthenticated$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    .line 3
    if-ne p3, p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricError$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricError$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
