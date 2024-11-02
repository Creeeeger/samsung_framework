.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $endRect:Landroid/graphics/Rect;

.field public final synthetic $fadeInInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $fadeOutInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $initialAlpha:F

.field public final synthetic $positionInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $startRect:Landroid/graphics/Rect;

.field public final synthetic $totalTranslation:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;Lkotlin/jvm/internal/Ref$IntRef;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Interpolator;Landroid/view/View;FLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$positionInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$totalTranslation:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 12
    .line 13
    iput p7, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$initialAlpha:F

    .line 14
    .line 15
    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x3e4ccccd    # 0.2f

    .line 6
    .line 7
    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$positionInterpolator:Landroid/view/animation/Interpolator;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$totalTranslation:Lkotlin/jvm/internal/Ref$IntRef;

    .line 28
    .line 29
    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 30
    .line 31
    int-to-float v6, v5

    .line 32
    mul-float/2addr v4, v6

    .line 33
    float-to-int v4, v4

    .line 34
    sub-int/2addr v5, v4

    .line 35
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    if-ge v6, v7, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v2, v3

    .line 47
    :goto_1
    if-eqz v2, :cond_2

    .line 48
    .line 49
    neg-int v4, v4

    .line 50
    neg-int v5, v5

    .line 51
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {v2, v3, v3, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 65
    .line 66
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 75
    .line 76
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$initialAlpha:F

    .line 77
    .line 78
    mul-float/2addr p1, v1

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 83
    .line 84
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    add-int/2addr v0, v4

    .line 93
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    add-int/2addr v2, v4

    .line 98
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 99
    .line 100
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 105
    .line 106
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-static {v3, v2, v1, v2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 127
    .line 128
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    .line 133
    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 142
    .line 143
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 148
    .line 149
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    sub-int/2addr v0, v5

    .line 152
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 153
    .line 154
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 155
    .line 156
    sub-int/2addr v2, v5

    .line 157
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 164
    .line 165
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 166
    .line 167
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 170
    .line 171
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 174
    .line 175
    .line 176
    :goto_2
    return-void
.end method
