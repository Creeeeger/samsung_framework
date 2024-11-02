.class public final Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;
.super Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isFaceClass3:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final createIconController()Lcom/android/systemui/biometrics/AuthIconController;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final forceRequireConfirmation(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final getConfirmationPrompt()I
    .locals 0

    .line 1
    const p0, 0x7f130211

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final ignoreUnsuccessfulEventsFrom(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_3

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;->isFaceClass3:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    invoke-static {p1, v2, v1}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const/16 p1, 0x9

    .line 27
    .line 28
    invoke-static {p0, p1, v1}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move p0, v0

    .line 42
    :goto_1
    if-nez p0, :cond_3

    .line 43
    .line 44
    :cond_2
    move v1, v0

    .line 45
    :cond_3
    return v1
.end method
