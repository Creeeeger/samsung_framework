.class public Lcom/android/wm/shell/freeform/FreeformThumbnailView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAirViewMargin:I

.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public mHeight:I

.field public mImageView:Landroid/widget/ImageView;

.field public mMargin:I

.field public mMaxSize:I

.field public mOrientation:I

.field public final mPivot:Landroid/graphics/Point;

.field public final mStableInsets:Landroid/graphics/Rect;

.field public mView:Landroid/widget/FrameLayout;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mPivot:Landroid/graphics/Point;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final computeInset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getStableInsets(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mAirViewMargin:I

    .line 25
    .line 26
    if-ge v1, p0, :cond_0

    .line 27
    .line 28
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    if-ge v1, p0, :cond_2

    .line 33
    .line 34
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mAirViewMargin:I

    .line 42
    .line 43
    if-ge v1, p0, :cond_2

    .line 44
    .line 45
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->computeInset()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0422

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v0, 0x7f0a0421

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x7f0703a6

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const v1, 0x7f0703a5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMargin:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v1, 0x7f0703a4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    float-to-int v0, v0

    .line 66
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mAirViewMargin:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 88
    .line 89
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->computeInset()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final scheduleAnimation(Z)V
    .locals 11

    .line 1
    const v0, 0x3f4ccccd    # 0.8f

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move v6, v0

    .line 10
    move v7, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v7, v0

    .line 13
    move v6, v2

    .line 14
    move v2, v1

    .line 15
    move v1, v6

    .line 16
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0xc8

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 32
    .line 33
    .line 34
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mPivot:Landroid/graphics/Point;

    .line 37
    .line 38
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 39
    .line 40
    int-to-float v8, v4

    .line 41
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    int-to-float v9, v3

    .line 44
    move-object v3, v10

    .line 45
    move v4, v6

    .line 46
    move v5, v7

    .line 47
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    .line 56
    .line 57
    :goto_1
    invoke-virtual {v10, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    const-wide/16 v1, 0x15e

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;

    .line 80
    .line 81
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformThumbnailView;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
