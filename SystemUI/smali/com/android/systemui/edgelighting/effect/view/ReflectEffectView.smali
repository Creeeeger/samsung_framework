.class public Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimationSet:Landroid/animation/AnimatorSet;

.field public mImageFrame:Landroid/widget/ImageView;

.field public mLightingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v1, 0x7f080782

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 19
    .line 20
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string/jumbo v1, "window"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/WindowManager;

    .line 37
    .line 38
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    .line 49
    .line 50
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 51
    .line 52
    int-to-double v2, v0

    .line 53
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 54
    .line 55
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 60
    .line 61
    int-to-double v6, v0

    .line 62
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    add-double/2addr v4, v2

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    long-to-int v0, v2

    .line 76
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 82
    .line 83
    sub-int/2addr v3, v0

    .line 84
    div-int/lit8 v3, v3, 0x2

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 87
    .line 88
    .line 89
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    .line 91
    sub-int/2addr v1, v0

    .line 92
    div-int/lit8 v1, v1, 0x2

    .line 93
    .line 94
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final startAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    const-string/jumbo v3, "rotation"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-wide/16 v2, 0x1770

    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 43
    .line 44
    .line 45
    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-static {v1, v1, v3, v3, v0}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 56
    .line 57
    new-array v2, v2, [F

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    .line 61
    .line 62
    aput v4, v2, v3

    .line 63
    .line 64
    const-string v3, "alpha"

    .line 65
    .line 66
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-wide/16 v2, 0x15e

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 81
    .line 82
    filled-new-array {v0, v1}, [Landroid/animation/Animator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final stopAnimation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [F

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    aput v3, v1, v2

    .line 16
    .line 17
    const-string v2, "alpha"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x1f4

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
