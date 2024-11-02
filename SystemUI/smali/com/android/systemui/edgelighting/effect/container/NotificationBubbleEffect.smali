.class public Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBubbleScale:[F

.field public mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;

    return-void
.end method


# virtual methods
.method public final dismissToastPopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 12
    .line 13
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 21
    .line 22
    const-string v3, "**"

    .line 23
    .line 24
    filled-new-array {v3}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 34
    .line 35
    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const v2, 0x7f0702ee

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    int-to-float v1, v1

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "font_size"

    .line 84
    .line 85
    const/4 v4, 0x2

    .line 86
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mBubbleScale:[F

    .line 91
    .line 92
    aget v2, v3, v2

    .line 93
    .line 94
    mul-float/2addr v1, v2

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const v3, 0x7f0714c5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    add-int/2addr v3, v2

    .line 113
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 114
    .line 115
    iget v2, v2, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 116
    .line 117
    div-int/2addr v2, v4

    .line 118
    add-int/2addr v2, v3

    .line 119
    int-to-float v2, v2

    .line 120
    const/high16 v3, 0x40000000    # 2.0f

    .line 121
    .line 122
    div-float/2addr v1, v3

    .line 123
    sub-float/2addr v2, v1

    .line 124
    float-to-int v1, v2

    .line 125
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->init()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mBubbleScale:[F

    .line 12
    .line 13
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string v1, "frame_effect"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    .line 50
    const-string v1, "edge_lighting_dot_type.json"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 57
    .line 58
    const-string v1, "dot_bottom.json"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v1, 0x7f0702ee

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-float v0, v0

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "font_size"

    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mBubbleScale:[F

    .line 91
    .line 92
    aget v1, v2, v1

    .line 93
    .line 94
    mul-float/2addr v0, v1

    .line 95
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .line 97
    float-to-int v0, v0

    .line 98
    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    const/16 v0, 0xe

    .line 102
    .line 103
    const/4 v2, -0x1

    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 110
    .line 111
    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f8ccccd    # 1.1f
        0x3f933333    # 1.15f
        0x3f99999a    # 1.2f
        0x3fa00000    # 1.25f
    .end array-data
.end method

.method public final requestHideEffectView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->requestHideEffectView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 27
    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f0702ee

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "font_size"

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mBubbleScale:[F

    .line 50
    .line 51
    aget v1, v2, v1

    .line 52
    .line 53
    mul-float/2addr v0, v1

    .line 54
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    .line 56
    float-to-int v0, v0

    .line 57
    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0xe

    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 69
    .line 70
    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method
