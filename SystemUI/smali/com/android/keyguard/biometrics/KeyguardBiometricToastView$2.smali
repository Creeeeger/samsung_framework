.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public final synthetic val$assetName:Ljava/lang/String;

.field public final synthetic val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Ljava/lang/String;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$assetName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$assetName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 20
    .line 21
    const-string v2, "Icon view is null"

    .line 22
    .line 23
    const-string v3, "KeyguardBiometricToastView"

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAssetName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iput-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAssetName:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    .line 48
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 49
    .line 50
    const-string v4, "**"

    .line 51
    .line 52
    filled-new-array {v4}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v1, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 60
    .line 61
    new-instance v5, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 62
    .line 63
    new-instance v6, Lcom/airbnb/lottie/SimpleColorFilter;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const v7, 0x7f06005c

    .line 70
    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-direct {v6, p1}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 87
    .line 88
    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    .line 89
    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->scaleIconAnim(FF)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 108
    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 116
    .line 117
    .line 118
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    return-void
.end method
