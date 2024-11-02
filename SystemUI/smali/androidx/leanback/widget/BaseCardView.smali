.class public Landroidx/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field public static final LB_PRESSED_STATE_SET:[I


# instance fields
.field public final mActivatedAnimDuration:I

.field public mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

.field public final mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

.field public final mCardType:I

.field public mDelaySelectedAnim:Z

.field public final mExtraViewList:Ljava/util/ArrayList;

.field public mInfoAlpha:F

.field public mInfoOffset:F

.field public final mInfoViewList:Ljava/util/ArrayList;

.field public mInfoVisFraction:F

.field public final mInfoVisibility:I

.field public final mMainViewList:Ljava/util/ArrayList;

.field public mMeasuredHeight:I

.field public mMeasuredWidth:I

.field public final mSelectedAnimDuration:I

.field public final mSelectedAnimationDelay:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040072

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroidx/leanback/widget/BaseCardView$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$1;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 5
    sget-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 6
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 p3, 0x2

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v2, 0x5

    .line 11
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v3, 0x4

    .line 12
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x6

    .line 14
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x7

    .line 16
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 18
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    iput-boolean v0, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p3, :cond_2

    if-ne v2, p3, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, p1

    goto :goto_0

    :cond_2
    move v3, v1

    .line 26
    :goto_0
    iput v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    if-ne p2, v0, :cond_3

    if-ne v2, p3, :cond_3

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    .line 28
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    return-void

    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    throw p0
.end method


# virtual methods
.method public final animateInfoOffset(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v3, v0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v3, v5, :cond_0

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v0, v4

    .line 55
    :cond_1
    new-instance v1, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;

    .line 56
    .line 57
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    int-to-float p1, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    :goto_1
    invoke-direct {v1, p0, v2, p1}, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 68
    .line 69
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 70
    .line 71
    int-to-long v2, p1

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 76
    .line 77
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 86
    .line 87
    new-instance v0, Landroidx/leanback/widget/BaseCardView$2;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$2;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final cancelAnimations()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3
    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroidx/leanback/widget/BaseCardView$LayoutParams;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p1, p0

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v0, p1, :cond_2

    .line 10
    .line 11
    aget v3, p0, v0

    .line 12
    .line 13
    const v4, 0x10100a7

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    move v1, v5

    .line 20
    :cond_0
    const v4, 0x101009e

    .line 21
    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    move v2, v5

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-eqz v1, :cond_3

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    sget-object p0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    if-eqz v1, :cond_4

    .line 37
    .line 38
    sget-object p0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_4
    if-eqz v2, :cond_5

    .line 42
    .line 43
    sget-object p0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_5
    sget-object p0, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 47
    .line 48
    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    int-to-float v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/16 v5, 0x8

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eq v6, v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    float-to-int v6, v1

    .line 38
    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    add-int/2addr v8, v7

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    int-to-float v7, v7

    .line 50
    add-float/2addr v7, v1

    .line 51
    float-to-int v7, v7

    .line 52
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    add-float/2addr v1, v4

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    move v3, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v3, v2

    .line 72
    :goto_1
    if-eqz v3, :cond_c

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    move v6, v2

    .line 76
    move v7, v3

    .line 77
    :goto_2
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-ge v6, v8, :cond_3

    .line 84
    .line 85
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    int-to-float v8, v8

    .line 98
    add-float/2addr v7, v8

    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 103
    .line 104
    if-ne v6, v4, :cond_4

    .line 105
    .line 106
    sub-float/2addr v1, v7

    .line 107
    cmpg-float v6, v1, v3

    .line 108
    .line 109
    if-gez v6, :cond_6

    .line 110
    .line 111
    move v1, v3

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    const/4 v8, 0x2

    .line 114
    if-ne v6, v8, :cond_5

    .line 115
    .line 116
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 117
    .line 118
    if-ne v6, v8, :cond_6

    .line 119
    .line 120
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 121
    .line 122
    mul-float/2addr v7, v6

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 125
    .line 126
    sub-float/2addr v1, v6

    .line 127
    :cond_6
    :goto_3
    move v6, v2

    .line 128
    :goto_4
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-ge v6, v8, :cond_9

    .line 135
    .line 136
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    check-cast v8, Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eq v9, v5, :cond_8

    .line 149
    .line 150
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    int-to-float v10, v9

    .line 155
    cmpl-float v10, v10, v7

    .line 156
    .line 157
    if-lez v10, :cond_7

    .line 158
    .line 159
    float-to-int v9, v7

    .line 160
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    float-to-int v11, v1

    .line 165
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    add-int/2addr v13, v12

    .line 172
    int-to-float v9, v9

    .line 173
    add-float/2addr v1, v9

    .line 174
    float-to-int v12, v1

    .line 175
    invoke-virtual {v8, v10, v11, v13, v12}, Landroid/view/View;->layout(IIII)V

    .line 176
    .line 177
    .line 178
    sub-float/2addr v7, v9

    .line 179
    cmpg-float v8, v7, v3

    .line 180
    .line 181
    if-gtz v8, :cond_8

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_9
    :goto_5
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 188
    .line 189
    const/4 v6, 0x3

    .line 190
    if-ne v3, v6, :cond_a

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_a
    move v4, v2

    .line 194
    :goto_6
    if-eqz v4, :cond_c

    .line 195
    .line 196
    move v3, v2

    .line 197
    :goto_7
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-ge v3, v4, :cond_c

    .line 204
    .line 205
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Landroid/view/View;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-eq v6, v5, :cond_b

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    float-to-int v7, v1

    .line 224
    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    add-int/2addr v9, v8

    .line 231
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    int-to-float v8, v8

    .line 236
    add-float/2addr v8, v1

    .line 237
    float-to-int v8, v8

    .line 238
    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    int-to-float v4, v4

    .line 246
    add-float/2addr v1, v4

    .line 247
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_c
    sub-int v1, p4, p2

    .line 251
    .line 252
    sub-int v3, p5, p3

    .line 253
    .line 254
    invoke-virtual {p0, v2, v2, v1, v3}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method public final onMeasure(II)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 4
    .line 5
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    move v5, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v5, v1

    .line 34
    :goto_0
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v5, :cond_6

    .line 37
    .line 38
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 39
    .line 40
    if-eqz v5, :cond_5

    .line 41
    .line 42
    if-eq v5, v4, :cond_4

    .line 43
    .line 44
    if-eq v5, v6, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-ne v3, v6, :cond_3

    .line 48
    .line 49
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 50
    .line 51
    cmpl-float v3, v3, v7

    .line 52
    .line 53
    if-lez v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    move v3, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    :goto_2
    move v3, v4

    .line 69
    :goto_3
    if-eqz v3, :cond_6

    .line 70
    .line 71
    move v3, v4

    .line 72
    goto :goto_4

    .line 73
    :cond_6
    move v3, v1

    .line 74
    :goto_4
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 75
    .line 76
    const/4 v8, 0x3

    .line 77
    if-ne v5, v8, :cond_7

    .line 78
    .line 79
    move v5, v4

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    move v5, v1

    .line 82
    :goto_5
    if-eqz v5, :cond_8

    .line 83
    .line 84
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 85
    .line 86
    cmpl-float v5, v5, v7

    .line 87
    .line 88
    if-lez v5, :cond_8

    .line 89
    .line 90
    move v5, v4

    .line 91
    goto :goto_6

    .line 92
    :cond_8
    move v5, v1

    .line 93
    :goto_6
    move v9, v1

    .line 94
    :goto_7
    const/16 v10, 0x8

    .line 95
    .line 96
    if-ge v9, v2, :cond_e

    .line 97
    .line 98
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    if-nez v11, :cond_9

    .line 103
    .line 104
    goto :goto_8

    .line 105
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    check-cast v12, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 110
    .line 111
    iget v12, v12, Landroidx/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 112
    .line 113
    if-ne v12, v4, :cond_b

    .line 114
    .line 115
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 118
    .line 119
    .line 120
    iget-object v12, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    if-eqz v3, :cond_a

    .line 126
    .line 127
    move v10, v1

    .line 128
    :cond_a
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_b
    if-ne v12, v6, :cond_d

    .line 133
    .line 134
    iget-object v12, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    if-eqz v5, :cond_c

    .line 140
    .line 141
    move v10, v1

    .line 142
    :cond_c
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_d
    iget-object v10, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_e
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    move v3, v1

    .line 162
    move v5, v3

    .line 163
    move v9, v5

    .line 164
    :goto_9
    iget-object v11, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-ge v3, v11, :cond_10

    .line 171
    .line 172
    iget-object v11, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    check-cast v11, Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    if-eq v12, v10, :cond_f

    .line 185
    .line 186
    invoke-virtual {p0, v11, v2, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 187
    .line 188
    .line 189
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 190
    .line 191
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    iput v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 200
    .line 201
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    add-int/2addr v5, v12

    .line 206
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    invoke-static {v9, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_10
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 218
    .line 219
    div-int/2addr v3, v6

    .line 220
    int-to-float v3, v3

    .line 221
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 222
    .line 223
    .line 224
    div-int/lit8 v3, v5, 0x2

    .line 225
    .line 226
    int-to-float v3, v3

    .line 227
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 228
    .line 229
    .line 230
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 231
    .line 232
    const/high16 v11, 0x40000000    # 2.0f

    .line 233
    .line 234
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 239
    .line 240
    if-eqz v11, :cond_11

    .line 241
    .line 242
    move v11, v4

    .line 243
    goto :goto_a

    .line 244
    :cond_11
    move v11, v1

    .line 245
    :goto_a
    if-eqz v11, :cond_18

    .line 246
    .line 247
    move v11, v1

    .line 248
    move v12, v11

    .line 249
    :goto_b
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-ge v11, v13, :cond_14

    .line 256
    .line 257
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    check-cast v13, Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 266
    .line 267
    .line 268
    move-result v14

    .line 269
    if-eq v14, v10, :cond_13

    .line 270
    .line 271
    invoke-virtual {p0, v13, v3, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 272
    .line 273
    .line 274
    iget v14, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 275
    .line 276
    if-eq v14, v4, :cond_12

    .line 277
    .line 278
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    add-int/2addr v14, v12

    .line 283
    move v12, v14

    .line 284
    :cond_12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    invoke-static {v9, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    :cond_13
    add-int/lit8 v11, v11, 0x1

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_14
    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 296
    .line 297
    if-ne v11, v8, :cond_15

    .line 298
    .line 299
    move v8, v4

    .line 300
    goto :goto_c

    .line 301
    :cond_15
    move v8, v1

    .line 302
    :goto_c
    if-eqz v8, :cond_17

    .line 303
    .line 304
    move v8, v1

    .line 305
    move v11, v8

    .line 306
    :goto_d
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 309
    .line 310
    .line 311
    move-result v13

    .line 312
    if-ge v8, v13, :cond_19

    .line 313
    .line 314
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    check-cast v13, Landroid/view/View;

    .line 321
    .line 322
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 323
    .line 324
    .line 325
    move-result v14

    .line 326
    if-eq v14, v10, :cond_16

    .line 327
    .line 328
    invoke-virtual {p0, v13, v3, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    add-int/2addr v11, v14

    .line 336
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    invoke-static {v9, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    :cond_16
    add-int/lit8 v8, v8, 0x1

    .line 345
    .line 346
    goto :goto_d

    .line 347
    :cond_17
    move v11, v1

    .line 348
    goto :goto_e

    .line 349
    :cond_18
    move v11, v1

    .line 350
    move v12, v11

    .line 351
    :cond_19
    :goto_e
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 352
    .line 353
    if-eqz v2, :cond_1a

    .line 354
    .line 355
    move v2, v4

    .line 356
    goto :goto_f

    .line 357
    :cond_1a
    move v2, v1

    .line 358
    :goto_f
    if-eqz v2, :cond_1b

    .line 359
    .line 360
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 361
    .line 362
    if-ne v2, v6, :cond_1b

    .line 363
    .line 364
    move v1, v4

    .line 365
    :cond_1b
    int-to-float v2, v5

    .line 366
    int-to-float v3, v12

    .line 367
    if-eqz v1, :cond_1c

    .line 368
    .line 369
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 370
    .line 371
    mul-float/2addr v3, v4

    .line 372
    :cond_1c
    add-float/2addr v2, v3

    .line 373
    int-to-float v3, v11

    .line 374
    add-float/2addr v2, v3

    .line 375
    if-eqz v1, :cond_1d

    .line 376
    .line 377
    goto :goto_10

    .line 378
    :cond_1d
    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 379
    .line 380
    :goto_10
    sub-float/2addr v2, v7

    .line 381
    float-to-int v1, v2

    .line 382
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 383
    .line 384
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 385
    .line 386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    add-int/2addr v2, v1

    .line 391
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    add-int/2addr v1, v2

    .line 396
    move/from16 v2, p1

    .line 397
    .line 398
    invoke-static {v1, v2, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 403
    .line 404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    add-int/2addr v3, v2

    .line 409
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    add-int/2addr v2, v3

    .line 414
    shl-int/lit8 v3, v9, 0x10

    .line 415
    .line 416
    move/from16 v4, p2

    .line 417
    .line 418
    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 423
    .line 424
    .line 425
    return-void
.end method

.method public final setActivated(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v1

    .line 19
    :goto_0
    if-eqz p1, :cond_4

    .line 20
    .line 21
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_4

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 44
    .line 45
    .line 46
    :cond_4
    return-void
.end method

.method public final setInfoViewVisibility(Z)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v4

    .line 13
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_e

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v4

    .line 36
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ge p1, v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ge v4, p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iput v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    if-ne v0, v5, :cond_9

    .line 88
    .line 89
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 90
    .line 91
    if-ne v0, v5, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 94
    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    move v0, v4

    .line 99
    :goto_3
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-ge v0, v2, :cond_4

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    if-eqz p1, :cond_5

    .line 122
    .line 123
    move v3, v1

    .line 124
    :cond_5
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 125
    .line 126
    cmpl-float p1, p1, v3

    .line 127
    .line 128
    if-nez p1, :cond_6

    .line 129
    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_6
    new-instance p1, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;

    .line 133
    .line 134
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 135
    .line 136
    invoke-direct {p1, p0, v0, v3}, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 140
    .line 141
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 142
    .line 143
    int-to-long v0, v0

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 148
    .line 149
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 150
    .line 151
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 158
    .line 159
    new-instance v0, Landroidx/leanback/widget/BaseCardView$3;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$3;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_8

    .line 173
    .line 174
    :cond_7
    move v0, v4

    .line 175
    :goto_4
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ge v0, v1, :cond_e

    .line 182
    .line 183
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Landroid/view/View;

    .line 190
    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    move v3, v4

    .line 194
    goto :goto_5

    .line 195
    :cond_8
    move v3, v2

    .line 196
    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_9
    const/4 v2, 0x1

    .line 203
    if-ne v0, v2, :cond_e

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 206
    .line 207
    .line 208
    if-eqz p1, :cond_a

    .line 209
    .line 210
    move v0, v4

    .line 211
    :goto_6
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-ge v0, v2, :cond_a

    .line 218
    .line 219
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Landroid/view/View;

    .line 226
    .line 227
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v0, v0, 0x1

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_a
    if-eqz p1, :cond_b

    .line 234
    .line 235
    move v0, v1

    .line 236
    goto :goto_7

    .line 237
    :cond_b
    move v0, v3

    .line 238
    :goto_7
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 239
    .line 240
    cmpl-float v0, v0, v2

    .line 241
    .line 242
    if-nez v0, :cond_c

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_c
    new-instance v0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 246
    .line 247
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 248
    .line 249
    if-eqz p1, :cond_d

    .line 250
    .line 251
    move v3, v1

    .line 252
    :cond_d
    invoke-direct {v0, p0, v2, v3}, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    .line 253
    .line 254
    .line 255
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 256
    .line 257
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    .line 258
    .line 259
    int-to-long v1, p1

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 264
    .line 265
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 266
    .line 267
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 274
    .line 275
    new-instance v0, Landroidx/leanback/widget/BaseCardView$4;

    .line 276
    .line 277
    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$4;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    .line 287
    .line 288
    :cond_e
    :goto_8
    return-void
.end method

.method public final setSelected(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 40
    .line 41
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 42
    .line 43
    int-to-long v0, v0

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
