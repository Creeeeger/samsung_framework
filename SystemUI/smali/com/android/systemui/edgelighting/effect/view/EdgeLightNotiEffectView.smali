.class public Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBasicLighting:Z

.field public final mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    .line 4
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    .line 8
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    .line 12
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    .line 16
    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public static final isSupportFrameEffect()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "frame_effect"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method


# virtual methods
.method public final hide()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " hide : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const-wide/16 v2, 0x258

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    const-wide/16 v1, 0x1f4

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 14
    .line 15
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const-wide/16 v2, 0xc8

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0xbb8

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 31
    .line 32
    return-void
.end method

.method public final setImageDrawable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f080cbe

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, " Already animating "

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->setImageDrawable()V

    .line 31
    .line 32
    .line 33
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 41
    .line 42
    const-wide/16 v1, 0xc8

    .line 43
    .line 44
    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "Basic lighting is not supported."

    .line 51
    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void
.end method
