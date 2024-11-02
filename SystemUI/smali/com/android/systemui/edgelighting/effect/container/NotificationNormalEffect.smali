.class public Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

.field public mLightingDuration:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0xce4

    .line 2
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0xce4

    .line 4
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->hide()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    const-wide/16 v1, 0x1f4

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final hideLightingEffect(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string p0, "NotificationNormalEffect"

    .line 20
    .line 21
    const-string p1, "hideLightingEffect infinite Noti Type "

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 28
    .line 29
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 20
    .line 21
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 22
    .line 23
    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 24
    .line 25
    iput v2, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->setImageDrawable()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 41
    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->hide()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    cmpl-float v2, v0, v1

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    iget v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 22
    .line 23
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 27
    .line 28
    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-wide v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-lez v0, :cond_2

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    .line 39
    .line 40
    :cond_2
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 41
    .line 42
    cmpl-float v0, p1, v1

    .line 43
    .line 44
    if-lez v0, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 47
    .line 48
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public setEffectColors([I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 5
    .line 6
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 7
    .line 8
    iput p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aget v0, p0, v0

    .line 19
    .line 20
    const v1, 0x3e19999a    # 0.15f

    .line 21
    .line 22
    .line 23
    cmpg-float v2, v0, v1

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-gtz v2, :cond_0

    .line 27
    .line 28
    aget v2, p0, v3

    .line 29
    .line 30
    const v4, 0x3f59999a    # 0.85f

    .line 31
    .line 32
    .line 33
    cmpl-float v2, v2, v4

    .line 34
    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    const v0, -0x190503

    .line 38
    .line 39
    .line 40
    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    cmpg-float v2, v2, v0

    .line 45
    .line 46
    if-gtz v2, :cond_1

    .line 47
    .line 48
    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    .line 50
    cmpg-float v0, v0, v2

    .line 51
    .line 52
    if-gtz v0, :cond_1

    .line 53
    .line 54
    aget v0, p0, v3

    .line 55
    .line 56
    cmpg-float v0, v0, v1

    .line 57
    .line 58
    if-gtz v0, :cond_1

    .line 59
    .line 60
    const v0, -0xc1bcb5

    .line 61
    .line 62
    .line 63
    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 64
    .line 65
    :cond_1
    :goto_0
    aget v0, p0, v3

    .line 66
    .line 67
    const v1, 0x3e4ccccd    # 0.2f

    .line 68
    .line 69
    .line 70
    mul-float/2addr v1, v0

    .line 71
    add-float/2addr v1, v0

    .line 72
    aput v1, p0, v3

    .line 73
    .line 74
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 81
    .line 82
    .line 83
    iget p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 84
    .line 85
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 86
    .line 87
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    .line 91
    .line 92
    aget v0, p0, v3

    .line 93
    .line 94
    const/high16 v1, 0x3f000000    # 0.5f

    .line 95
    .line 96
    mul-float/2addr v1, v0

    .line 97
    sub-float/2addr v0, v1

    .line 98
    aput v0, p0, v3

    .line 99
    .line 100
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 110
    .line 111
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final setIsMultiResolutionSupoorted(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 4
    .line 5
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->hideLightingEffect(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->show()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->show()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iget v0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->hideLightingEffect(J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final updateText(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->updateText(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->show()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->hideLightingEffect(J)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method
