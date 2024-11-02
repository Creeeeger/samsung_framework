.class public Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;
.super Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final actsAsConfirmButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;->actsAsConfirmButton:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getActsAsConfirmButton()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;->actsAsConfirmButton:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getAnimationForTransition(II)Ljava/lang/Integer;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eq p2, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x6

    .line 5
    if-eq p2, v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getAnimationForTransition(II)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const p0, 0x7f120023

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getAnimationForTransition(II)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 p0, 0x3

    .line 28
    if-eq p1, p0, :cond_3

    .line 29
    .line 30
    const/4 p0, 0x4

    .line 31
    if-eq p1, p0, :cond_3

    .line 32
    .line 33
    const p0, 0x7f120022

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const p0, 0x7f12001f

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_1
    return-object p0
.end method

.method public final shouldAnimateIconViewForTransition(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->shouldAnimateIconViewForTransition(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    :goto_0
    return p0
.end method
