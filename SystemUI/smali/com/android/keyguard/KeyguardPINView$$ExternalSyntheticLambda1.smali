.class public final synthetic Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPINView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPINView;

    .line 2
    .line 3
    sget v0, Lcom/android/keyguard/KeyguardPINView;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v1, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    check-cast v0, Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mBouncerMessageArea:Landroid/view/View;

    .line 23
    .line 24
    iget v3, p0, Lcom/android/keyguard/KeyguardPINView;->mYTrans:I

    .line 25
    .line 26
    int-to-float v3, v3

    .line 27
    mul-float v4, v3, v0

    .line 28
    .line 29
    sub-float/2addr v3, v4

    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mBouncerMessageArea:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    move v3, v2

    .line 40
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 41
    .line 42
    array-length v5, v4

    .line 43
    if-ge v3, v5, :cond_3

    .line 44
    .line 45
    aget-object v4, v4, v3

    .line 46
    .line 47
    array-length v5, v4

    .line 48
    move v6, v2

    .line 49
    :goto_1
    if-ge v6, v5, :cond_2

    .line 50
    .line 51
    aget-object v7, v4, v6

    .line 52
    .line 53
    if-nez v7, :cond_0

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    int-to-float v8, v3

    .line 57
    const v9, 0x3d99999a    # 0.075f

    .line 58
    .line 59
    .line 60
    mul-float/2addr v8, v9

    .line 61
    sub-float v8, p1, v8

    .line 62
    .line 63
    iget-object v10, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 64
    .line 65
    array-length v10, v10

    .line 66
    int-to-float v10, v10

    .line 67
    mul-float/2addr v10, v9

    .line 68
    const/high16 v9, 0x3f800000    # 1.0f

    .line 69
    .line 70
    sub-float v10, v9, v10

    .line 71
    .line 72
    div-float/2addr v8, v10

    .line 73
    const/4 v10, 0x0

    .line 74
    invoke-static {v8, v10, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    move-object v9, v1

    .line 79
    check-cast v9, Landroid/view/animation/PathInterpolator;

    .line 80
    .line 81
    invoke-virtual {v9, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 86
    .line 87
    .line 88
    iget v8, p0, Lcom/android/keyguard/KeyguardPINView;->mYTrans:I

    .line 89
    .line 90
    iget v9, p0, Lcom/android/keyguard/KeyguardPINView;->mYTransOffset:I

    .line 91
    .line 92
    mul-int/2addr v9, v3

    .line 93
    add-int/2addr v9, v8

    .line 94
    int-to-float v8, v9

    .line 95
    mul-float v9, v8, v0

    .line 96
    .line 97
    sub-float/2addr v8, v9

    .line 98
    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    .line 100
    .line 101
    instance-of v8, v7, Lcom/android/keyguard/NumPadAnimationListener;

    .line 102
    .line 103
    if-eqz v8, :cond_1

    .line 104
    .line 105
    check-cast v7, Lcom/android/keyguard/NumPadAnimationListener;

    .line 106
    .line 107
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    return-void
.end method
