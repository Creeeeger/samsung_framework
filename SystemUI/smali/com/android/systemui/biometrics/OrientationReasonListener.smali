.class public final Lcom/android/systemui/biometrics/OrientationReasonListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public reason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lkotlin/jvm/functions/Function1;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/display/DisplayManager;",
            "Landroid/os/Handler;",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            "Lkotlin/jvm/functions/Function1;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lcom/android/systemui/biometrics/OrientationReasonListener;->reason:I

    .line 5
    .line 6
    new-instance p6, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 7
    .line 8
    new-instance v4, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    .line 9
    .line 10
    invoke-direct {v4, p4}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 11
    .line 12
    .line 13
    new-instance v5, Lcom/android/systemui/biometrics/OrientationReasonListener$orientationListener$1;

    .line 14
    .line 15
    invoke-direct {v5, p5, p0}, Lcom/android/systemui/biometrics/OrientationReasonListener$orientationListener$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/biometrics/OrientationReasonListener;)V

    .line 16
    .line 17
    .line 18
    move-object v0, p6

    .line 19
    move-object v1, p1

    .line 20
    move-object v2, p2

    .line 21
    move-object v3, p3

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    iput-object p6, p0, Lcom/android/systemui/biometrics/OrientationReasonListener;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 26
    .line 27
    return-void
.end method
