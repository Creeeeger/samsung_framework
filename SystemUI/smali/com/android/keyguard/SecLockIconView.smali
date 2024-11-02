.class public Lcom/android/keyguard/SecLockIconView;
.super Lcom/android/keyguard/LockIconView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimTranslationX:Landroid/animation/ObjectAnimator;

.field public final mDrawableCache:Landroid/util/SparseArray;

.field public mIsLockStarEnabled:Z

.field public mIsOneHandModeEnabled:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/LockIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    return-object p0
.end method

.method public final initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v0, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    move v0, v2

    .line 18
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-boolean v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 34
    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-boolean v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 45
    .line 46
    if-eqz v4, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 49
    .line 50
    .line 51
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 64
    .line 65
    .line 66
    :cond_6
    const/4 v0, 0x0

    .line 67
    if-eqz p2, :cond_7

    .line 68
    .line 69
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 70
    .line 71
    new-array v2, v2, [F

    .line 72
    .line 73
    aput v0, v2, v1

    .line 74
    .line 75
    invoke-static {p1, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    const v1, 0x3ecccccd    # 0.4f

    .line 82
    .line 83
    .line 84
    const/high16 v2, 0x3f000000    # 0.5f

    .line 85
    .line 86
    invoke-static {v1, v2, v0, v3, p2}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 90
    .line 91
    const-wide/16 v0, 0x190

    .line 92
    .line 93
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 99
    .line 100
    .line 101
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    .line 103
    invoke-direct {p2, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 104
    .line 105
    .line 106
    const/high16 v0, 0x43160000    # 150.0f

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 109
    .line 110
    .line 111
    const v0, 0x3ef5c28f    # 0.48f

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 118
    .line 119
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 120
    .line 121
    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 122
    .line 123
    .line 124
    iput-object p2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 127
    .line 128
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 129
    .line 130
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 131
    .line 132
    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 133
    .line 134
    .line 135
    iput-object p2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 157
    .line 158
    .line 159
    :goto_2
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/LockIconView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0993

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 14
    .line 15
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final updateLockIconViewLayoutParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f0704b6

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const v3, 0x7f0704b7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    .line 70
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const v2, 0x7f0704a0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :goto_0
    const v2, 0x7f07049f

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x0

    .line 89
    :goto_2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 90
    .line 91
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 94
    .line 95
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const v0, 0x7f0101d3

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method
