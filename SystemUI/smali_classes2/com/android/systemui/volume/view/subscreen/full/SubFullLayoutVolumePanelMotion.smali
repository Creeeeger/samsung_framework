.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public context:Landroid/content/Context;

.field public singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 8
    .line 9
    const v1, 0x3f547ae1    # 0.83f

    .line 10
    .line 11
    .line 12
    const v2, 0x3f333333    # 0.7f

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 20
    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 22
    .line 23
    const/high16 v1, 0x3e800000    # 0.25f

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    const v4, 0x3e6147ae    # 0.22f

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v4, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 12
    .line 13
    return-void
.end method

.method public static getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    .line 3
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchDownAnimation$1$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchDownAnimation$1$1;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 19
    .line 20
    .line 21
    const/high16 v1, 0x43960000    # 300.0f

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 29
    .line 30
    .line 31
    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 32
    .line 33
    return-object v0
.end method

.method public static getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    .line 3
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchUpAnimation$1$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchUpAnimation$1$1;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 19
    .line 20
    .line 21
    const/high16 v1, 0x43480000    # 200.0f

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 29
    .line 30
    .line 31
    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 32
    .line 33
    return-object v0
.end method

.method public static getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    move v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v3

    .line 11
    :goto_0
    if-nez v1, :cond_1

    .line 12
    .line 13
    neg-float v0, p0

    .line 14
    add-float/2addr v0, p1

    .line 15
    :cond_1
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    aput p0, p1, v3

    .line 19
    .line 20
    aput v0, p1, v2

    .line 21
    .line 22
    const-string/jumbo p0, "translationX"

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    int-to-long p1, p2

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public static startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 23
    .line 24
    .line 25
    :cond_2
    if-eqz p2, :cond_3

    .line 26
    .line 27
    const p1, 0x3f866666    # 1.05f

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    const p1, 0x3f88f5c3    # 1.07f

    .line 32
    .line 33
    .line 34
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 23
    .line 24
    .line 25
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static startSplashAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6
    .line 7
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 13
    .line 14
    .line 15
    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 16
    .line 17
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startSplashAnimation$1$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startSplashAnimation$1$1;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 28
    .line 29
    .line 30
    const/high16 v2, 0x43960000    # 300.0f

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 33
    .line 34
    .line 35
    const v2, 0x3f147ae1    # 0.58f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 39
    .line 40
    .line 41
    iput-object p0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 44
    .line 45
    .line 46
    const/high16 p0, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    const/4 p6, 0x0

    .line 12
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    if-eqz p5, :cond_0

    .line 19
    .line 20
    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p6}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 30
    .line 31
    const/4 p7, 0x0

    .line 32
    if-nez p5, :cond_1

    .line 33
    .line 34
    move-object p5, p7

    .line 35
    :cond_1
    const v0, 0x7f07127c

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    move-object v0, p7

    .line 47
    :cond_2
    const v1, 0x7f071281

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    move-object v1, p7

    .line 59
    :cond_3
    const v2, 0x7f07127f

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 79
    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    move-object p1, p7

    .line 83
    :cond_5
    const v0, 0x7f0712b3

    .line 84
    .line 85
    .line 86
    invoke-static {v0, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 91
    .line 92
    if-nez p0, :cond_6

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    move-object p7, p0

    .line 96
    :goto_0
    const p0, 0x7f0712b1

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :cond_7
    const/4 p0, 0x2

    .line 104
    new-array p1, p0, [F

    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 107
    .line 108
    .line 109
    move-result p7

    .line 110
    aput p7, p1, p6

    .line 111
    .line 112
    const/4 p7, 0x1

    .line 113
    const/high16 v2, 0x3f000000    # 0.5f

    .line 114
    .line 115
    aput v2, p1, p7

    .line 116
    .line 117
    const-string v3, "alpha"

    .line 118
    .line 119
    invoke-static {p3, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-array v4, p0, [F

    .line 124
    .line 125
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    aput v5, v4, p6

    .line 130
    .line 131
    aput v2, v4, p7

    .line 132
    .line 133
    invoke-static {p4, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 138
    .line 139
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 140
    .line 141
    .line 142
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 147
    .line 148
    .line 149
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v4, 0x96

    .line 157
    .line 158
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 159
    .line 160
    .line 161
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 162
    .line 163
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    .line 168
    .line 169
    new-array p1, p0, [F

    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    aput v2, p1, p6

    .line 176
    .line 177
    aput p5, p1, p7

    .line 178
    .line 179
    const-string/jumbo p5, "x"

    .line 180
    .line 181
    .line 182
    invoke-static {p2, p5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-array p2, p0, [F

    .line 187
    .line 188
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    aput v2, p2, p6

    .line 193
    .line 194
    aput v0, p2, p7

    .line 195
    .line 196
    invoke-static {p3, p5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    new-array p0, p0, [F

    .line 201
    .line 202
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    .line 203
    .line 204
    .line 205
    move-result p3

    .line 206
    aput p3, p0, p6

    .line 207
    .line 208
    aput v1, p0, p7

    .line 209
    .line 210
    invoke-static {p4, p5, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 215
    .line 216
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 217
    .line 218
    .line 219
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 224
    .line 225
    .line 226
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 231
    .line 232
    .line 233
    filled-new-array {p0}, [Landroid/animation/Animator;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 238
    .line 239
    .line 240
    const-wide/16 p0, 0xc8

    .line 241
    .line 242
    invoke-virtual {p3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 243
    .line 244
    .line 245
    new-instance p0, Landroid/view/animation/PathInterpolator;

    .line 246
    .line 247
    const p1, 0x3e6147ae    # 0.22f

    .line 248
    .line 249
    .line 250
    const/high16 p2, 0x3e800000    # 0.25f

    .line 251
    .line 252
    const/4 p4, 0x0

    .line 253
    const/high16 p5, 0x3f800000    # 1.0f

    .line 254
    .line 255
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    .line 260
    .line 261
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 262
    .line 263
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 264
    .line 265
    .line 266
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    .line 272
    .line 273
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 281
    .line 282
    .line 283
    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    const/4 p7, 0x0

    .line 12
    invoke-virtual {p3, p7}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p7}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5, p7}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 30
    .line 31
    const/4 p8, 0x0

    .line 32
    if-nez p6, :cond_1

    .line 33
    .line 34
    move-object p6, p8

    .line 35
    :cond_1
    const v0, 0x7f07127d

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 39
    .line 40
    .line 41
    move-result p6

    .line 42
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    move-object v0, p8

    .line 47
    :cond_2
    const v1, 0x7f071282

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    move-object v1, p8

    .line 59
    :cond_3
    const v2, 0x7f071280

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    move-object v0, p8

    .line 83
    :cond_5
    const v1, 0x7f0712b4

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 91
    .line 92
    if-nez v1, :cond_6

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    move-object p8, v1

    .line 96
    :goto_0
    const v1, 0x7f0712b2

    .line 97
    .line 98
    .line 99
    invoke-static {v1, p8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :cond_7
    const/4 p8, 0x2

    .line 104
    new-array v2, p8, [F

    .line 105
    .line 106
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    aput v3, v2, p7

    .line 111
    .line 112
    const/high16 v3, 0x3f000000    # 0.5f

    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    aput v3, v2, v4

    .line 116
    .line 117
    const-string v3, "alpha"

    .line 118
    .line 119
    invoke-static {p4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-array v5, p8, [F

    .line 124
    .line 125
    invoke-virtual {p5}, Landroid/view/View;->getAlpha()F

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    aput v6, v5, p7

    .line 130
    .line 131
    const v6, 0x3dcccccd    # 0.1f

    .line 132
    .line 133
    .line 134
    aput v6, v5, v4

    .line 135
    .line 136
    invoke-static {p5, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 141
    .line 142
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 143
    .line 144
    .line 145
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 150
    .line 151
    .line 152
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v2, 0x64

    .line 160
    .line 161
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 162
    .line 163
    .line 164
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 165
    .line 166
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    .line 171
    .line 172
    new-array v2, p8, [F

    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    aput v3, v2, p7

    .line 179
    .line 180
    aput p6, v2, v4

    .line 181
    .line 182
    const-string/jumbo p6, "x"

    .line 183
    .line 184
    .line 185
    invoke-static {p3, p6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    new-array v2, p8, [F

    .line 190
    .line 191
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    aput v3, v2, p7

    .line 196
    .line 197
    aput v0, v2, v4

    .line 198
    .line 199
    invoke-static {p4, p6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    new-array p8, p8, [F

    .line 204
    .line 205
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    aput v0, p8, p7

    .line 210
    .line 211
    aput v1, p8, v4

    .line 212
    .line 213
    invoke-static {p5, p6, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object p5

    .line 217
    new-instance p6, Landroid/animation/AnimatorSet;

    .line 218
    .line 219
    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 220
    .line 221
    .line 222
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 227
    .line 228
    .line 229
    filled-new-array {p4}, [Landroid/animation/Animator;

    .line 230
    .line 231
    .line 232
    move-result-object p3

    .line 233
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 234
    .line 235
    .line 236
    filled-new-array {p5}, [Landroid/animation/Animator;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    .line 242
    .line 243
    const-wide/16 p3, 0xc8

    .line 244
    .line 245
    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 246
    .line 247
    .line 248
    new-instance p3, Landroid/view/animation/PathInterpolator;

    .line 249
    .line 250
    const p4, 0x3e6147ae    # 0.22f

    .line 251
    .line 252
    .line 253
    const/high16 p5, 0x3e800000    # 0.25f

    .line 254
    .line 255
    const/4 p7, 0x0

    .line 256
    const/high16 p8, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-direct {p3, p4, p5, p7, p8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    .line 263
    .line 264
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 265
    .line 266
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 267
    .line 268
    .line 269
    filled-new-array {p6}, [Landroid/animation/Animator;

    .line 270
    .line 271
    .line 272
    move-result-object p4

    .line 273
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 274
    .line 275
    .line 276
    filled-new-array {v5}, [Landroid/animation/Animator;

    .line 277
    .line 278
    .line 279
    move-result-object p4

    .line 280
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 281
    .line 282
    .line 283
    new-instance p4, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMidAnimation$2$1;

    .line 284
    .line 285
    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMidAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;II)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    const/4 p7, 0x0

    .line 12
    invoke-virtual {p3, p7}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p7}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5, p7}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 30
    .line 31
    const/4 p8, 0x0

    .line 32
    if-nez p6, :cond_1

    .line 33
    .line 34
    move-object p6, p8

    .line 35
    :cond_1
    const v0, 0x7f07127e

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 39
    .line 40
    .line 41
    move-result p6

    .line 42
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 59
    .line 60
    if-nez p6, :cond_4

    .line 61
    .line 62
    move-object p6, p8

    .line 63
    :cond_4
    const v0, 0x7f0712b0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 67
    .line 68
    .line 69
    move-result p6

    .line 70
    const v0, 0x3e99999a    # 0.3f

    .line 71
    .line 72
    .line 73
    :goto_1
    const/4 v2, 0x2

    .line 74
    new-array v3, v2, [F

    .line 75
    .line 76
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    aput v4, v3, p7

    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    aput v0, v3, v4

    .line 84
    .line 85
    const-string v0, "alpha"

    .line 86
    .line 87
    invoke-static {p4, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-array v5, v2, [F

    .line 92
    .line 93
    invoke-virtual {p5}, Landroid/view/View;->getAlpha()F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    aput v6, v5, p7

    .line 98
    .line 99
    aput v1, v5, v4

    .line 100
    .line 101
    invoke-static {p5, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object p5

    .line 105
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 106
    .line 107
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 108
    .line 109
    .line 110
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 115
    .line 116
    .line 117
    filled-new-array {p5}, [Landroid/animation/Animator;

    .line 118
    .line 119
    .line 120
    move-result-object p5

    .line 121
    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 122
    .line 123
    .line 124
    const-wide/16 v5, 0x64

    .line 125
    .line 126
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 127
    .line 128
    .line 129
    new-instance p5, Landroid/view/animation/LinearInterpolator;

    .line 130
    .line 131
    invoke-direct {p5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    .line 136
    .line 137
    new-array p5, v2, [F

    .line 138
    .line 139
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    aput v3, p5, p7

    .line 144
    .line 145
    aput p6, p5, v4

    .line 146
    .line 147
    const-string/jumbo p6, "x"

    .line 148
    .line 149
    .line 150
    invoke-static {p3, p6, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    new-instance p5, Landroid/animation/AnimatorSet;

    .line 155
    .line 156
    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 157
    .line 158
    .line 159
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-nez p3, :cond_5

    .line 171
    .line 172
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eqz p3, :cond_7

    .line 177
    .line 178
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 179
    .line 180
    if-nez p3, :cond_6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move-object p8, p3

    .line 184
    :goto_2
    const p3, 0x7f0712b5

    .line 185
    .line 186
    .line 187
    invoke-static {p3, p8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    new-array p8, v2, [F

    .line 192
    .line 193
    invoke-virtual {p4}, Landroid/view/View;->getX()F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    aput v2, p8, p7

    .line 198
    .line 199
    aput p3, p8, v4

    .line 200
    .line 201
    invoke-static {p4, p6, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    const-wide/16 p3, 0xc8

    .line 213
    .line 214
    invoke-virtual {p5, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 215
    .line 216
    .line 217
    new-instance p3, Landroid/view/animation/PathInterpolator;

    .line 218
    .line 219
    const/high16 p4, 0x3f800000    # 1.0f

    .line 220
    .line 221
    const p6, 0x3e6147ae    # 0.22f

    .line 222
    .line 223
    .line 224
    const/high16 p7, 0x3e800000    # 0.25f

    .line 225
    .line 226
    invoke-direct {p3, p6, p7, v1, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    .line 231
    .line 232
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 233
    .line 234
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 235
    .line 236
    .line 237
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 238
    .line 239
    .line 240
    move-result-object p4

    .line 241
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 242
    .line 243
    .line 244
    filled-new-array {p5}, [Landroid/animation/Animator;

    .line 245
    .line 246
    .line 247
    move-result-object p4

    .line 248
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 249
    .line 250
    .line 251
    new-instance p4, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMinAnimation$2$1;

    .line 252
    .line 253
    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMinAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const/4 p6, 0x4

    .line 11
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    const/16 p6, 0x8

    .line 20
    .line 21
    invoke-virtual {p5, p6}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p5, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p5, p0

    .line 43
    :goto_0
    const p0, 0x7f0712b0

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object p5, p0

    .line 57
    :goto_1
    const p0, 0x7f07127e

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :goto_2
    const/4 p1, 0x2

    .line 65
    new-array p5, p1, [F

    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 68
    .line 69
    .line 70
    move-result p6

    .line 71
    aput p6, p5, v0

    .line 72
    .line 73
    const/4 p6, 0x1

    .line 74
    const/4 v1, 0x0

    .line 75
    aput v1, p5, p6

    .line 76
    .line 77
    const-string v2, "alpha"

    .line 78
    .line 79
    invoke-static {p3, v2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    new-array p5, p1, [F

    .line 84
    .line 85
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    aput v3, p5, v0

    .line 90
    .line 91
    aput v1, p5, p6

    .line 92
    .line 93
    invoke-static {p4, v2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    new-instance p5, Landroid/animation/AnimatorSet;

    .line 98
    .line 99
    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    .line 101
    .line 102
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 107
    .line 108
    .line 109
    filled-new-array {p4}, [Landroid/animation/Animator;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    .line 115
    .line 116
    const-wide/16 p3, 0x64

    .line 117
    .line 118
    invoke-virtual {p5, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 119
    .line 120
    .line 121
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .line 122
    .line 123
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    .line 128
    .line 129
    new-array p1, p1, [F

    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    aput p3, p1, v0

    .line 136
    .line 137
    aput p0, p1, p6

    .line 138
    .line 139
    const-string/jumbo p0, "x"

    .line 140
    .line 141
    .line 142
    invoke-static {p2, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-wide/16 p1, 0xc8

    .line 147
    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    .line 151
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 152
    .line 153
    const/high16 p2, 0x3f800000    # 1.0f

    .line 154
    .line 155
    const p3, 0x3e6147ae    # 0.22f

    .line 156
    .line 157
    .line 158
    const/high16 p4, 0x3e800000    # 0.25f

    .line 159
    .line 160
    invoke-direct {p1, p3, p4, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 167
    .line 168
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    .line 170
    .line 171
    filled-new-array {p5}, [Landroid/animation/Animator;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 176
    .line 177
    .line 178
    filled-new-array {p0}, [Landroid/animation/Animator;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    .line 187
    .line 188
    invoke-static {p7}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSplashAnimation(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 27
    .line 28
    if-nez p5, :cond_0

    .line 29
    .line 30
    const/4 p5, 0x0

    .line 31
    :cond_0
    const p6, 0x7f0712b0

    .line 32
    .line 33
    .line 34
    invoke-static {p6, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 35
    .line 36
    .line 37
    move-result p5

    .line 38
    const/4 p6, 0x2

    .line 39
    new-array v1, p6, [F

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aput v2, v1, v0

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    aput v3, v1, v2

    .line 50
    .line 51
    const-string v4, "alpha"

    .line 52
    .line 53
    invoke-static {p3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    new-array v1, p6, [F

    .line 58
    .line 59
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    aput v5, v1, v0

    .line 64
    .line 65
    aput v3, v1, v2

    .line 66
    .line 67
    invoke-static {p4, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    .line 75
    .line 76
    filled-new-array {p3}, [Landroid/animation/Animator;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 81
    .line 82
    .line 83
    filled-new-array {p4}, [Landroid/animation/Animator;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 p3, 0x32

    .line 91
    .line 92
    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 93
    .line 94
    .line 95
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .line 96
    .line 97
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    .line 102
    .line 103
    new-array p3, p6, [F

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    aput p4, p3, v0

    .line 110
    .line 111
    aput p5, p3, v2

    .line 112
    .line 113
    const-string/jumbo p4, "x"

    .line 114
    .line 115
    .line 116
    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const-wide/16 p3, 0xc8

    .line 121
    .line 122
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    .line 124
    .line 125
    new-instance p3, Landroid/view/animation/PathInterpolator;

    .line 126
    .line 127
    const/high16 p4, 0x3f800000    # 1.0f

    .line 128
    .line 129
    const p5, 0x3e6147ae    # 0.22f

    .line 130
    .line 131
    .line 132
    const/high16 p6, 0x3e800000    # 0.25f

    .line 133
    .line 134
    invoke-direct {p3, p5, p6, v3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    .line 139
    .line 140
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 141
    .line 142
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 143
    .line 144
    .line 145
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 150
    .line 151
    .line 152
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startVibrationAnimation(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final startVibrationAnimation(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    :cond_0
    const v2, 0x7f0712b7

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v1, p0

    .line 20
    :goto_0
    const p0, 0x7f0712b8

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    neg-float v1, v0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/16 v3, 0x3c

    .line 30
    .line 31
    invoke-static {v2, v1, v3, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sub-float v4, v0, p0

    .line 36
    .line 37
    const/16 v5, 0x50

    .line 38
    .line 39
    invoke-static {v1, v4, v5, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v5, 0x2

    .line 44
    int-to-float v5, v5

    .line 45
    mul-float/2addr p0, v5

    .line 46
    sub-float/2addr v0, p0

    .line 47
    neg-float p0, v0

    .line 48
    const/16 v0, 0x64

    .line 49
    .line 50
    invoke-static {v4, p0, v0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v4, 0x78

    .line 55
    .line 56
    invoke-static {p0, v2, v4, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(FFILandroid/view/View;)Landroid/animation/Animator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    filled-new-array {v3, v1, v0, p0}, [Landroid/animation/Animator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 69
    .line 70
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
