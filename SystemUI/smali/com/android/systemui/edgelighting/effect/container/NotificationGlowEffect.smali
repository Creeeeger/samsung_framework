.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;

    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->hide()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    const-wide/16 v1, 0x3e8

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 14
    .line 15
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->hide()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const-wide/16 v1, 0x3e8

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
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v2, v0, v1

    .line 8
    .line 9
    if-lez v2, :cond_1

    .line 10
    .line 11
    iget v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 12
    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 18
    .line 19
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 25
    .line 26
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 29
    .line 30
    cmpl-float v0, p1, v1

    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 35
    .line 36
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mLightingAlpha:F

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 39
    .line 40
    iput p1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 5
    .line 6
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 14
    .line 15
    iput p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 26
    .line 27
    .line 28
    const-string p0, "GLOW"

    .line 29
    .line 30
    const-string/jumbo p1, "set Main Color"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setIsMultiResolutionSupoorted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 6
    .line 7
    return-void
.end method

.method public final show()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "show "

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "GLOW"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 33
    .line 34
    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;->setImageDrawable()V

    .line 49
    .line 50
    .line 51
    const-wide/16 v4, 0xbb8

    .line 52
    .line 53
    iput-wide v4, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 54
    .line 55
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    iget v0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 61
    .line 62
    const-wide/16 v4, 0x384

    .line 63
    .line 64
    invoke-static {v1, v0, v4, v5}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 73
    .line 74
    new-array v1, v3, [F

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mLightingAlpha:F

    .line 78
    .line 79
    aput v4, v1, v3

    .line 80
    .line 81
    const-string v3, "alpha"

    .line 82
    .line 83
    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-wide/16 v3, 0x5dc

    .line 88
    .line 89
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 105
    .line 106
    invoke-static {v0, p0, v3, v4}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;->mGlowEffectView:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mLightingAlpha:F

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iget v1, v1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
