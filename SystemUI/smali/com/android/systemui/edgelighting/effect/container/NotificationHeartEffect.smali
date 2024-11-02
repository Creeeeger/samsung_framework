.class public Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    return-void
.end method


# virtual methods
.method public final dismissToastPopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final finishToastPopupAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 17
    .line 18
    const-string v3, "**"

    .line 19
    .line 20
    filled-new-array {v3}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 28
    .line 29
    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 52
    .line 53
    .line 54
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
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 20
    .line 21
    const-string v1, "Edge_Heart.json"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f0703e1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    const/4 v2, -0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48
    .line 49
    .line 50
    const/16 v1, 0xe

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 63
    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setZ(F)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->requestHideEffectView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->setEffectColors([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 11
    .line 12
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 20
    .line 21
    const-string v1, "**"

    .line 22
    .line 23
    filled-new-array {v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 31
    .line 32
    new-instance v2, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final update()V
    .locals 1

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
