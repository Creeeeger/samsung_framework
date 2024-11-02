.class public Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    }
.end annotation


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static mToastIconFrom:F = 1.28f


# instance fields
.field public final mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mAssetName:Ljava/lang/String;

.field public mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

.field public mBodyAnimator:Landroid/animation/ValueAnimator;

.field public mCurrentToastViewWidth:I

.field public mIsAnimating:Z

.field public mIsBackgroundAuth:Z

.field public mIsShowing:Z

.field public mToastBodyView:Landroid/widget/LinearLayout;

.field public mToastGuideText:Landroid/widget/TextView;

.field public mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mToastLockIconWidth:I

.field public mToastRoot:Landroid/widget/FrameLayout;

.field public mToastViewMinWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const v3, 0x3e6147ae    # 0.22f

    .line 7
    .line 8
    .line 9
    const/high16 v4, 0x3e800000    # 0.25f

    .line 10
    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    .line 4
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    .line 5
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mCurrentToastViewWidth:I

    .line 6
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    return-void
.end method


# virtual methods
.method public final changeTextAnim(FFLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mCurrentToastViewWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput p1, v1, v2

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    aput p2, v1, p1

    .line 14
    .line 15
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    const-wide/16 v1, 0x15e

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    sget-object p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;

    .line 53
    .line 54
    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final dismiss(Z)V
    .locals 5

    .line 1
    const-string v0, "dismiss() , force = "

    .line 2
    .line 3
    const-string v1, "KeyguardBiometricToastView"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    .line 35
    .line 36
    .line 37
    const/16 p1, 0x8

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->shouldDisappearLockIcon()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    .line 62
    .line 63
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    .line 65
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->scaleIconAnim(FF)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 69
    .line 70
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsBackgroundAuth:Z

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    new-array v1, v0, [F

    .line 79
    .line 80
    fill-array-data v1, :array_0

    .line 81
    .line 82
    .line 83
    const-string v2, "alpha"

    .line 84
    .line 85
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-wide/16 v3, 0xc8

    .line 90
    .line 91
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    .line 94
    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 100
    .line 101
    new-array v0, v0, [F

    .line 102
    .line 103
    fill-array-data v0, :array_1

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-wide/16 v1, 0x64

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    .line 114
    .line 115
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 116
    .line 117
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 121
    .line 122
    const-wide/16 v2, 0x0

    .line 123
    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 128
    .line 129
    filled-new-array {p1, v0}, [Landroid/animation/Animator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    nop

    .line 143
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final hasGuideText()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-lez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0be8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    const v0, 0x7f0a0be5

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    const v0, 0x7f0a0157

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f0a0156

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v2, 0x7f1307e1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const v1, 0x7f070494

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const v3, 0x7f070495

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    mul-int/lit8 v3, v3, 0x2

    .line 83
    .line 84
    add-int/2addr v3, v2

    .line 85
    iput v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    .line 86
    .line 87
    const v2, 0x7f070498

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    mul-int/lit8 v2, v2, 0x2

    .line 95
    .line 96
    add-int/2addr v2, v3

    .line 97
    iput v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    .line 98
    .line 99
    const v2, 0x7f0704a0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    int-to-float v2, v2

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    int-to-float v0, v0

    .line 112
    div-float/2addr v2, v0

    .line 113
    sput v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    .line 120
    .line 121
    .line 122
    const/16 v0, 0x8

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    .line 71
    .line 72
    return-void
.end method

.method public final scaleIconAnim(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [F

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput p1, v3, v4

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    aput p2, v3, v5

    .line 13
    .line 14
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 21
    .line 22
    new-array v2, v2, [F

    .line 23
    .line 24
    aput p1, v2, v4

    .line 25
    .line 26
    aput p2, v2, v5

    .line 27
    .line 28
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->shouldDisappearLockIcon()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const-wide/16 v1, 0xc8

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-wide/16 v1, 0x15e

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    .line 55
    .line 56
    filled-new-array {v0, p1}, [Landroid/animation/Animator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final setViewAttribution(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x2

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    const-class v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 49
    .line 50
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 55
    .line 56
    iget-boolean v6, v6, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 57
    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const v6, 0x7f070499

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    mul-int/2addr v6, v7

    .line 69
    sub-int/2addr v5, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    int-to-double v5, v5

    .line 72
    const-wide v8, 0x3fe6666666666666L    # 0.7

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    mul-double/2addr v5, v8

    .line 78
    double-to-int v5, v5

    .line 79
    :goto_1
    iget v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    .line 80
    .line 81
    sub-int/2addr v5, v6

    .line 82
    const v6, 0x7f070498

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    sub-int/2addr v5, v8

    .line 90
    const v8, 0x7f070497

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    sub-int/2addr v5, v4

    .line 98
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    .line 103
    .line 104
    add-int/2addr v4, v2

    .line 105
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    add-int/2addr v5, v4

    .line 110
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    add-int/2addr v4, v5

    .line 115
    iput v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mCurrentToastViewWidth:I

    .line 116
    .line 117
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 118
    .line 119
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 122
    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/4 v5, 0x1

    .line 131
    if-le v4, v2, :cond_2

    .line 132
    .line 133
    div-int/2addr v4, v2

    .line 134
    add-int/2addr v4, v5

    .line 135
    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/widget/TextView;->getMaxLines()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-le v4, v6, :cond_3

    .line 142
    .line 143
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    move v4, v5

    .line 151
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    const v8, 0x7f07049c

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    mul-int/2addr v6, v4

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const v8, 0x7f07049d

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    mul-int/2addr v4, v7

    .line 175
    add-int/2addr v4, v6

    .line 176
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 177
    .line 178
    const v4, 0x7f070494

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    int-to-float v4, v4

    .line 186
    const/high16 v6, 0x40000000    # 2.0f

    .line 187
    .line 188
    div-float/2addr v4, v6

    .line 189
    const v8, 0x7f070496

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    int-to-float v8, v8

    .line 197
    add-float/2addr v4, v8

    .line 198
    const v8, 0x7f0704a0

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    int-to-float v8, v8

    .line 206
    div-float/2addr v8, v6

    .line 207
    sub-float/2addr v4, v8

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 217
    .line 218
    if-ne v6, v7, :cond_4

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    move v5, v3

    .line 222
    :goto_3
    if-eqz v5, :cond_5

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_5
    const v3, 0x7f0704f7

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    :goto_4
    float-to-int v4, v4

    .line 233
    sub-int/2addr v3, v4

    .line 234
    const v4, 0x7f07124b

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    add-int/2addr v4, v3

    .line 242
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 243
    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    const p1, 0x7f0704b7

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    add-int/2addr p1, v4

    .line 254
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 255
    .line 256
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method public final shouldDisappearLockIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsBackgroundAuth:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 34
    :goto_1
    return p0
.end method

.method public final update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Update toast contents = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " , already showing = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " , text = "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " , backgroundAuth = "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "KeyguardBiometricToastView"

    .line 35
    .line 36
    invoke-static {v0, p5, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$4;->$SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType:[I

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aget v0, v0, v2

    .line 46
    .line 47
    const-string/jumbo v2, "unlock_icon.json"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v3, "unlock_fail_icon.json"

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    packed-switch v0, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_0
    const v0, 0x7f130819

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_1
    move-object v2, v3

    .line 63
    goto :goto_2

    .line 64
    :pswitch_2
    const v0, 0x7f13084c

    .line 65
    .line 66
    .line 67
    :goto_0
    move-object v2, v3

    .line 68
    goto :goto_3

    .line 69
    :pswitch_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const v0, 0x7f1307dd

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_0
    const v0, 0x7f1307dc

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :pswitch_4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    const v0, 0x7f1307df

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    const v0, 0x7f1307e2

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_1
    const-string v0, ""

    .line 98
    .line 99
    move-object v2, v0

    .line 100
    :goto_2
    move v0, v4

    .line 101
    :goto_3
    if-eqz p4, :cond_2

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    if-eqz p4, :cond_2

    .line 108
    .line 109
    const-string/jumbo v2, "unlock_fail_icon_lock_stay.json"

    .line 110
    .line 111
    .line 112
    :cond_2
    iput-boolean p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsBackgroundAuth:Z

    .line 113
    .line 114
    sget-object p4, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 115
    .line 116
    if-eq p1, p4, :cond_b

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    .line 129
    .line 130
    .line 131
    const/4 p4, 0x1

    .line 132
    iput-boolean p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 133
    .line 134
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    if-nez p5, :cond_4

    .line 141
    .line 142
    const-string p5, "Root view is null"

    .line 143
    .line 144
    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_4
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object p5

    .line 152
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const v6, 0x7f06005b

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 166
    .line 167
    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p5, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    .line 172
    .line 173
    :goto_4
    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 174
    .line 175
    const/4 v3, 0x2

    .line 176
    if-nez p5, :cond_5

    .line 177
    .line 178
    const-string p2, "Text view is null"

    .line 179
    .line 180
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_5
    sget-boolean p5, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 185
    .line 186
    if-eqz p5, :cond_7

    .line 187
    .line 188
    const-class p4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 189
    .line 190
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    check-cast p4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 195
    .line 196
    iget-boolean p4, p4, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 197
    .line 198
    if-eqz p4, :cond_6

    .line 199
    .line 200
    iget-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_6
    iget-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 207
    .line 208
    const/4 p5, 0x4

    .line 209
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object p5

    .line 217
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 218
    .line 219
    .line 220
    move-result-object p5

    .line 221
    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    .line 222
    .line 223
    if-ne p5, v3, :cond_8

    .line 224
    .line 225
    move v4, p4

    .line 226
    :cond_8
    if-eqz v4, :cond_9

    .line 227
    .line 228
    iget-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 231
    .line 232
    .line 233
    :cond_9
    :goto_5
    iget-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object p5

    .line 239
    const v1, 0x7f06005c

    .line 240
    .line 241
    .line 242
    invoke-virtual {p5, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 243
    .line 244
    .line 245
    move-result p5

    .line 246
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    .line 248
    .line 249
    iget-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    :goto_6
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_a

    .line 259
    .line 260
    invoke-virtual {p0, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution(Z)V

    .line 261
    .line 262
    .line 263
    :cond_a
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 264
    .line 265
    new-array p3, v3, [F

    .line 266
    .line 267
    fill-array-data p3, :array_0

    .line 268
    .line 269
    .line 270
    const-string p4, "alpha"

    .line 271
    .line 272
    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    const-wide/16 v0, 0xc8

    .line 277
    .line 278
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    .line 280
    .line 281
    sget-object p3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 282
    .line 283
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    .line 285
    .line 286
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 287
    .line 288
    new-array p5, v3, [F

    .line 289
    .line 290
    fill-array-data p5, :array_1

    .line 291
    .line 292
    .line 293
    invoke-static {p3, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 294
    .line 295
    .line 296
    move-result-object p3

    .line 297
    const-wide/16 p4, 0x64

    .line 298
    .line 299
    invoke-virtual {p3, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    .line 301
    .line 302
    new-instance p4, Landroid/animation/AnimatorSet;

    .line 303
    .line 304
    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 308
    .line 309
    filled-new-array {p2, p3}, [Landroid/animation/Animator;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 314
    .line 315
    .line 316
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 317
    .line 318
    new-instance p3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;

    .line 319
    .line 320
    invoke-direct {p3, p0, v2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Ljava/lang/String;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    .line 325
    .line 326
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 329
    .line 330
    .line 331
    :cond_b
    return-void

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
