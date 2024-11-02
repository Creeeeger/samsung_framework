.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 8
    .line 9
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDualDARInnerLockscreenRequirementChanged(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 16
    .line 17
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 24
    .line 25
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_3
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 32
    .line 33
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 34
    .line 35
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 36
    .line 37
    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_4
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 42
    .line 43
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 44
    .line 45
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 46
    .line 47
    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:I

    .line 52
    .line 53
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDlsViewModeChanged(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
