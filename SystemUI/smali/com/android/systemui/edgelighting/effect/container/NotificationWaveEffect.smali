.class public Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;

    return-void
.end method


# virtual methods
.method public final dismissToastPopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final finishToastPopupAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->getRootRect()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->startLineAnimation(J)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 20
    .line 21
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->requestHideEffectView()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 9
    .line 10
    iput p0, p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mColor:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mColor:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 25
    .line 26
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mColor:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->show()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->update()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->getRootRect()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 44
    .line 45
    iget-wide v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->startLineAnimation(J)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;->mLineEffect:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
