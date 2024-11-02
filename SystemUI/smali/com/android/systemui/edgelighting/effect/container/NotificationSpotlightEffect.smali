.class public Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const-wide/16 v1, 0x2bc

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dismissToastPopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 25
    .line 26
    const/16 v0, 0xa8b

    .line 27
    .line 28
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 20
    .line 21
    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimListener:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

    .line 27
    .line 28
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    .line 30
    const/16 v1, 0x9d9

    .line 31
    .line 32
    const/16 v2, 0xa8b

    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 38
    .line 39
    sub-int/2addr v1, v2

    .line 40
    div-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 43
    .line 44
    .line 45
    const/16 v1, -0x778

    .line 46
    .line 47
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 50
    .line 51
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 55
    .line 56
    const/high16 v0, -0x40800000    # -1.0f

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->setZ(F)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onFlickUpAnimation()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 26
    .line 27
    const/16 v1, 0xa8b

    .line 28
    .line 29
    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 10
    .line 11
    const/16 v0, 0xa8b

    .line 12
    .line 13
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
