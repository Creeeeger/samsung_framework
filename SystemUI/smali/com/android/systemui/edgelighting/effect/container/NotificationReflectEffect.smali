.class public Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->stopAnimation()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    const-wide/16 v1, 0x2bc

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 26
    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onFlickUpAnimation()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->stopAnimation()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->stopAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const-wide/16 v1, 0x2bc

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v2, v0, v1

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 12
    .line 13
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 21
    .line 22
    cmpl-float v1, v0, v1

    .line 23
    .line 24
    if-lez v1, :cond_2

    .line 25
    .line 26
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 31
    .line 32
    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 36
    .line 37
    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 38
    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setIsMultiResolutionSupoorted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 4
    .line 5
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->startAnimation()V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string/jumbo v2, "window"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/view/WindowManager;

    .line 29
    .line 30
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    .line 41
    .line 42
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    .line 44
    int-to-double v3, v1

    .line 45
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 46
    .line 47
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    .line 53
    int-to-double v7, v1

    .line 54
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    add-double/2addr v5, v3

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    long-to-int v1, v3

    .line 68
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    .line 75
    sub-int/2addr v4, v1

    .line 76
    div-int/lit8 v4, v4, 0x2

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 79
    .line 80
    .line 81
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 82
    .line 83
    sub-int/2addr v2, v1

    .line 84
    div-int/lit8 v2, v2, 0x2

    .line 85
    .line 86
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->startAnimation()V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method
