.class public abstract Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.super Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAnimationSet:Landroid/animation/AnimatorSet;

.field public mBottomLayer:Landroid/widget/ImageView;

.field public mContainer:Landroid/widget/FrameLayout;

.field public final mHsvColors:[F

.field public mIsAnimating:Z

.field public mMainColor:I

.field public mMainLayer:Landroid/view/View;

.field public mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

.field public mRotateDuration:J

.field public mStrokeAlpha:F

.field public mSubColor:I

.field public mTopLayer:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 v0, 0x1388

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 10
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 p1, 0x1388

    .line 12
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 17
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 p1, 0x1388

    .line 19
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 24
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 p1, 0x1388

    .line 26
    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public static changeRingImageAlpha(Landroid/view/View;FJ)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    const-string p1, "alpha"

    .line 8
    .line 9
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final expandViewSize(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 4
    .line 5
    if-le p0, v0, :cond_0

    .line 6
    .line 7
    move v0, p0

    .line 8
    :cond_0
    int-to-float p0, v0

    .line 9
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 10
    .line 11
    mul-float/2addr p0, v0

    .line 12
    float-to-int p0, p0

    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 20
    .line 21
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "layout_inflater"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/LayoutInflater;

    .line 12
    .line 13
    const v1, 0x7f0d01d6

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a03a4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const v0, 0x7f0a0c00

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 40
    .line 41
    const v0, 0x7f0a0175

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 51
    .line 52
    const v0, 0x7f0a0608

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v1, 0x7f0714b6

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-float v0, v0

    .line 73
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final isRotateAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "Rotation animation running"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    .line 9
    .line 10
    new-instance v1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;-><init>(Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "any_screen_running"

    .line 29
    .line 30
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final resetImageDrawable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public startRotation(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

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
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    new-array v3, v2, [F

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 34
    .line 35
    aput v5, v3, v4

    .line 36
    .line 37
    const-string v4, "alpha"

    .line 38
    .line 39
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-wide/16 v3, 0x12c

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    new-array v5, v4, [F

    .line 52
    .line 53
    fill-array-data v5, :array_0

    .line 54
    .line 55
    .line 56
    const-string/jumbo v6, "rotation"

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 64
    .line 65
    new-array v4, v4, [F

    .line 66
    .line 67
    fill-array-data v4, :array_1

    .line 68
    .line 69
    .line 70
    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    const/4 p1, -0x1

    .line 81
    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 91
    .line 92
    .line 93
    const-wide/16 p1, 0x1f4

    .line 94
    .line 95
    invoke-virtual {v4, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 99
    .line 100
    const/high16 p2, 0x3f800000    # 1.0f

    .line 101
    .line 102
    invoke-direct {p1, v1, v1, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 109
    .line 110
    invoke-direct {p1, v1, v1, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 117
    .line 118
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 122
    .line 123
    filled-new-array {v3, v4, v0}, [Landroid/animation/Animator;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
