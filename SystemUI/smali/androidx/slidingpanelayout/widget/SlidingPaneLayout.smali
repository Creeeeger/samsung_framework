.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    }
.end annotation


# instance fields
.field public mCanSlide:Z

.field public mDoubleCheckState:I

.field public final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field public final mDrawRoundedCorner:Z

.field public mDrawerPanel:Landroid/view/View;

.field public mFirstLayout:Z

.field public mFixedPaneStartX:I

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mIsAnimate:Z

.field public mIsLock:Z

.field public mIsNeedClose:Z

.field public mIsNeedOpen:Z

.field public final mIsSinglePanel:Z

.field public mIsSlideableViewTouched:Z

.field public mIsUnableToDrag:Z

.field public mLastValidVelocity:I

.field public final mMarginBottom:I

.field public final mMarginTop:I

.field public final mOverhangSize:I

.field public mPendingAction:I

.field public final mPostedRunnables:Ljava/util/ArrayList;

.field public final mPrefContentWidth:Landroid/util/TypedValue;

.field public final mPrefDrawerWidth:Landroid/util/TypedValue;

.field public mPreservedOpenState:Z

.field public mPrevMotionX:F

.field public mPrevOrientation:I

.field public mPrevWindowVisibility:I

.field public mResizeChild:Landroid/view/View;

.field public final mResizeOff:Z

.field public final mRoundedColor:I

.field public mSlideOffset:F

.field public mSlideRange:I

.field public mSlideableView:Landroid/view/View;

.field public final mSliderFadeColor:I

.field public final mSlidingPaneDragArea:I

.field public final mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

.field public final mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

.field public mSmoothWidth:I

.field public mStartMargin:I

.field public mStartOffset:F

.field public mStartSlideX:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mUserPreferredContentSize:I

.field public final mUserPreferredDrawerSize:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x33333334

    .line 4
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 11
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 12
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    const/4 v3, 0x0

    .line 13
    iput v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 14
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 17
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    .line 18
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    .line 19
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    .line 20
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 21
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartSlideX:I

    .line 22
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 23
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    .line 24
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 25
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 26
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    .line 27
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredContentSize:I

    .line 28
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredDrawerSize:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 30
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 31
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 32
    new-instance v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v4, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 33
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 34
    sget-object v4, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout:[I

    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x4

    .line 35
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSinglePanel:Z

    .line 36
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawRoundedCorner:Z

    .line 37
    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0606fe

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0606fd

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 40
    :goto_0
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    const/4 v3, 0x7

    .line 41
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    const/4 v4, 0x3

    .line 42
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    const/4 v5, 0x2

    .line 43
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    const/4 v7, 0x6

    .line 44
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefDrawerWidth:Landroid/util/TypedValue;

    .line 46
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    const/4 v7, 0x5

    .line 47
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 48
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefContentWidth:Landroid/util/TypedValue;

    .line 49
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 50
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->seslCreate(Landroid/view/ViewGroup;Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/high16 v7, 0x43c80000    # 400.0f

    mul-float/2addr v1, v7

    .line 52
    iput v1, p2, Landroidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 53
    iput-boolean v3, p2, Landroidx/customview/widget/ViewDragHelper;->mIsUpdateOffsetLR:Z

    if-eqz p3, :cond_5

    .line 54
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    invoke-direct {p2, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    .line 55
    iput v2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    .line 56
    iget-object p1, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object p1, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object p1, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object p1, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    .line 57
    :cond_3
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->initRoundedCorner()V

    .line 58
    :cond_4
    iput v4, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginTop:I

    .line 59
    iput v6, p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginBottom:I

    .line 60
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0710fb

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const p3, 0x7f0710fc

    .line 62
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v5

    .line 63
    :goto_1
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 65
    new-instance p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    invoke-direct {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final closePane(Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_4

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(F)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v2

    .line 32
    :cond_3
    :goto_0
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 33
    .line 34
    return v1

    .line 35
    :cond_4
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 50
    .line 51
    if-eqz p1, :cond_8

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 69
    .line 70
    sub-int/2addr v0, v3

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    sub-int/2addr v0, v3

    .line 85
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 86
    .line 87
    add-int/2addr v0, v3

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 104
    .line 105
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 110
    .line 111
    .line 112
    :goto_3
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 113
    .line 114
    return v1

    .line 115
    :cond_9
    :goto_4
    return v2
.end method

.method public final computeScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final dimChildView(FILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v1, p1, v1

    .line 9
    .line 10
    if-lez v1, :cond_2

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    const/high16 p0, -0x1000000

    .line 15
    .line 16
    and-int/2addr p0, p2

    .line 17
    ushr-int/lit8 p0, p0, 0x18

    .line 18
    .line 19
    int-to-float p0, p0

    .line 20
    mul-float/2addr p0, p1

    .line 21
    float-to-int p0, p0

    .line 22
    shl-int/lit8 p0, p0, 0x18

    .line 23
    .line 24
    const p1, 0xffffff

    .line 25
    .line 26
    .line 27
    and-int/2addr p1, p2

    .line 28
    or-int/2addr p0, p1

    .line 29
    iget-object p1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    :cond_0
    iget-object p1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 43
    .line 44
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-direct {p2, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/view/View;->getLayerType()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const/4 p1, 0x2

    .line 57
    if-eq p0, p1, :cond_1

    .line 58
    .line 59
    iget-object p0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {p3, p1, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 73
    .line 74
    invoke-static {p3, p0}, Landroidx/core/view/ViewCompat$Api17Impl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getLayerType()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    iget-object p1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 90
    .line 91
    .line 92
    :cond_3
    new-instance p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 93
    .line 94
    invoke-direct {p1, p0, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_0
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawRoundedCorner:Z

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    .line 13
    .line 14
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->initRoundedCorner()V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 36
    .line 37
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 38
    .line 39
    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-ne v1, v3, :cond_2

    .line 78
    .line 79
    move v1, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v1, v2

    .line 82
    :goto_0
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iput v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iput v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x0

    .line 94
    cmpl-float v1, v1, v2

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_2
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginTop:I

    .line 124
    .line 125
    add-int/2addr v3, v2

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-int/2addr v4, v1

    .line 131
    iget v5, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    .line 132
    .line 133
    add-int/2addr v4, v5

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    add-int/2addr v5, v2

    .line 139
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginBottom:I

    .line 140
    .line 141
    sub-int/2addr v5, v2

    .line 142
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mTmpRect:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 145
    .line 146
    .line 147
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    iget v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    .line 154
    .line 155
    add-int/2addr p0, v7

    .line 156
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 163
    .line 164
    .line 165
    iget-object p0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    .line 169
    .line 170
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 173
    .line 174
    iget v3, p0, Landroid/graphics/Rect;->top:I

    .line 175
    .line 176
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    iget v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    .line 179
    .line 180
    if-nez v4, :cond_5

    .line 181
    .line 182
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    iget v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    .line 185
    .line 186
    sub-int v5, v1, v4

    .line 187
    .line 188
    add-int/2addr v4, v3

    .line 189
    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    .line 196
    .line 197
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    .line 200
    .line 201
    sub-int v4, v1, v3

    .line 202
    .line 203
    sub-int v3, p0, v3

    .line 204
    .line 205
    invoke-virtual {v2, v4, v3, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    .line 207
    .line 208
    iget-object p0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_5
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    .line 216
    iget v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    .line 217
    .line 218
    sub-int v5, v2, v4

    .line 219
    .line 220
    add-int/2addr v4, v3

    .line 221
    invoke-virtual {v1, v5, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    .line 226
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    .line 232
    .line 233
    sub-int v4, v2, v3

    .line 234
    .line 235
    sub-int v3, p0, v3

    .line 236
    .line 237
    invoke-virtual {v1, v4, v3, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    .line 239
    .line 240
    iget-object p0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    .line 244
    .line 245
    :cond_6
    :goto_3
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 77
    .line 78
    .line 79
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final getWindowWidth()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    return p0
.end method

.method public final isDimmed(Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    cmpl-float p0, p0, p1

    .line 23
    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_1
    return v0
.end method

.method public final isLayoutRtlSupport()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float p0, p0, v0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 25
    .line 26
    :goto_1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 40
    .line 41
    :cond_3
    :goto_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 42
    .line 43
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    .line 46
    .line 47
    if-nez p1, :cond_4

    .line 48
    .line 49
    const-string p0, "SeslSlidingPaneLayout"

    .line 50
    .line 51
    const-string p1, "mDrawerPanel is null"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_4
    new-instance p1, Landroid/util/TypedValue;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const v1, 0x7f0710fe

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 70
    .line 71
    .line 72
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 73
    .line 74
    const/4 v1, 0x4

    .line 75
    const/4 v2, -0x1

    .line 76
    if-ne v0, v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v0, v0

    .line 83
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    mul-float/2addr p1, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    const/4 v1, 0x5

    .line 90
    if-ne v0, v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    :goto_3
    float-to-int p1, p1

    .line 105
    goto :goto_4

    .line 106
    :cond_6
    move p1, v2

    .line 107
    :goto_4
    if-eq p1, v2, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    .line 117
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    :goto_5
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 6
    .line 7
    if-eqz v1, :cond_14

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 10
    .line 11
    if-nez v1, :cond_14

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x3

    .line 24
    if-eqz v0, :cond_8

    .line 25
    .line 26
    if-eq v0, v1, :cond_5

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-eq v0, v4, :cond_1

    .line 30
    .line 31
    if-eq v0, v3, :cond_5

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 44
    .line 45
    sub-float v6, v4, v6

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 52
    .line 53
    sub-float/2addr v5, v7

    .line 54
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 58
    .line 59
    iget v5, v5, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 60
    .line 61
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 62
    .line 63
    sub-float v8, v4, v7

    .line 64
    .line 65
    cmpl-float v7, v7, v4

    .line 66
    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 70
    .line 71
    :cond_2
    iget-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 72
    .line 73
    if-nez v4, :cond_e

    .line 74
    .line 75
    int-to-float v4, v5

    .line 76
    cmpl-float v4, v6, v4

    .line 77
    .line 78
    if-lez v4, :cond_e

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    sub-int/2addr p1, v0

    .line 101
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 102
    .line 103
    add-int/2addr p1, v0

    .line 104
    int-to-float v8, p1

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    int-to-float p1, p1

    .line 113
    add-float/2addr p1, v8

    .line 114
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 115
    .line 116
    int-to-float v0, v0

    .line 117
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    :cond_4
    :goto_0
    float-to-int p1, v8

    .line 122
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 123
    .line 124
    .line 125
    return v1

    .line 126
    :cond_5
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 127
    .line 128
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 129
    .line 130
    sub-float/2addr v4, v5

    .line 131
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const v5, 0x3dcccccd    # 0.1f

    .line 136
    .line 137
    .line 138
    cmpg-float v4, v4, v5

    .line 139
    .line 140
    if-gez v4, :cond_6

    .line 141
    .line 142
    return v2

    .line 143
    :cond_6
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 150
    .line 151
    const/4 v4, -0x1

    .line 152
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 153
    .line 154
    iget-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    .line 155
    .line 156
    if-nez v4, :cond_e

    .line 157
    .line 158
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    cmpl-float v5, v4, v5

    .line 162
    .line 163
    if-eqz v5, :cond_e

    .line 164
    .line 165
    const/high16 v5, 0x3f800000    # 1.0f

    .line 166
    .line 167
    cmpl-float v5, v4, v5

    .line 168
    .line 169
    if-eqz v5, :cond_e

    .line 170
    .line 171
    const/high16 p1, 0x3f000000    # 0.5f

    .line 172
    .line 173
    cmpl-float p1, v4, p1

    .line 174
    .line 175
    if-ltz p1, :cond_7

    .line 176
    .line 177
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 178
    .line 179
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 180
    .line 181
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 182
    .line 183
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Z)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_7
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 190
    .line 191
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 192
    .line 193
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 194
    .line 195
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 198
    .line 199
    .line 200
    :goto_1
    return v1

    .line 201
    :cond_8
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 202
    .line 203
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 204
    .line 205
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 206
    .line 207
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 208
    .line 209
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 220
    .line 221
    iput v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 222
    .line 223
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 224
    .line 225
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 226
    .line 227
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-eqz v6, :cond_9

    .line 232
    .line 233
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 234
    .line 235
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    goto :goto_2

    .line 240
    :cond_9
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 241
    .line 242
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    :goto_2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-eqz v7, :cond_b

    .line 251
    .line 252
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    .line 253
    .line 254
    sub-int/2addr v6, v7

    .line 255
    int-to-float v6, v6

    .line 256
    cmpg-float v6, v4, v6

    .line 257
    .line 258
    if-ltz v6, :cond_a

    .line 259
    .line 260
    iget-boolean v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 261
    .line 262
    if-eqz v6, :cond_d

    .line 263
    .line 264
    :cond_a
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 265
    .line 266
    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 267
    .line 268
    .line 269
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_b
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    .line 273
    .line 274
    add-int/2addr v6, v7

    .line 275
    int-to-float v6, v6

    .line 276
    cmpl-float v6, v4, v6

    .line 277
    .line 278
    if-gtz v6, :cond_c

    .line 279
    .line 280
    iget-boolean v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 281
    .line 282
    if-eqz v6, :cond_d

    .line 283
    .line 284
    :cond_c
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 287
    .line 288
    .line 289
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 290
    .line 291
    :cond_d
    :goto_3
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 292
    .line 293
    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 294
    .line 295
    float-to-int v4, v4

    .line 296
    float-to-int v5, v5

    .line 297
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-static {v7, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    iput-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSlideableViewTouched:Z

    .line 305
    .line 306
    if-eqz v4, :cond_e

    .line 307
    .line 308
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 309
    .line 310
    invoke-virtual {p0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_e

    .line 315
    .line 316
    move v4, v1

    .line 317
    goto :goto_5

    .line 318
    :cond_e
    :goto_4
    move v4, v2

    .line 319
    :goto_5
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 320
    .line 321
    if-nez v5, :cond_f

    .line 322
    .line 323
    if-nez v0, :cond_f

    .line 324
    .line 325
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-le v5, v1, :cond_f

    .line 330
    .line 331
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    if-eqz v5, :cond_f

    .line 336
    .line 337
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 338
    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    float-to-int v7, v7

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    float-to-int v8, v8

    .line 349
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-static {v5, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    xor-int/2addr v5, v1

    .line 357
    iput-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 358
    .line 359
    :cond_f
    if-eq v0, v3, :cond_13

    .line 360
    .line 361
    if-ne v0, v1, :cond_10

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_10
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 365
    .line 366
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-nez p0, :cond_12

    .line 371
    .line 372
    if-eqz v4, :cond_11

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_11
    move v1, v2

    .line 376
    :cond_12
    :goto_6
    return v1

    .line 377
    :cond_13
    :goto_7
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 378
    .line 379
    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 380
    .line 381
    .line 382
    return v2

    .line 383
    :cond_14
    :goto_8
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 384
    .line 385
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 386
    .line 387
    .line 388
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 389
    .line 390
    .line 391
    move-result p0

    .line 392
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 12
    .line 13
    iput v2, v4, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 17
    .line 18
    iput v3, v4, Landroidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    .line 19
    .line 20
    :goto_0
    sub-int v4, p4, p2

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    :goto_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 53
    .line 54
    if-eqz v9, :cond_5

    .line 55
    .line 56
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 57
    .line 58
    if-eqz v9, :cond_4

    .line 59
    .line 60
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 61
    .line 62
    if-nez v9, :cond_3

    .line 63
    .line 64
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 65
    .line 66
    if-ne v9, v3, :cond_4

    .line 67
    .line 68
    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 v9, 0x0

    .line 72
    :goto_3
    iput v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 73
    .line 74
    :cond_5
    move v12, v5

    .line 75
    const/4 v13, 0x0

    .line 76
    :goto_4
    if-ge v13, v8, :cond_11

    .line 77
    .line 78
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    if-ne v15, v2, :cond_6

    .line 89
    .line 90
    goto/16 :goto_d

    .line 91
    .line 92
    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 97
    .line 98
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    iget-boolean v10, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 103
    .line 104
    if-eqz v10, :cond_9

    .line 105
    .line 106
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 107
    .line 108
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 109
    .line 110
    add-int/2addr v10, v3

    .line 111
    sub-int v3, v4, v6

    .line 112
    .line 113
    iget v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 114
    .line 115
    sub-int v11, v3, v11

    .line 116
    .line 117
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    sub-int/2addr v11, v12

    .line 122
    sub-int/2addr v11, v10

    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_7
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 129
    .line 130
    :goto_5
    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 131
    .line 132
    iput v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 133
    .line 134
    add-int v16, v12, v10

    .line 135
    .line 136
    add-int v16, v16, v11

    .line 137
    .line 138
    div-int/lit8 v17, v15, 0x2

    .line 139
    .line 140
    add-int v9, v17, v16

    .line 141
    .line 142
    if-le v9, v3, :cond_8

    .line 143
    .line 144
    const/4 v3, 0x1

    .line 145
    goto :goto_6

    .line 146
    :cond_8
    const/4 v3, 0x0

    .line 147
    :goto_6
    iput-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 148
    .line 149
    int-to-float v3, v11

    .line 150
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 151
    .line 152
    mul-float/2addr v9, v3

    .line 153
    float-to-int v9, v9

    .line 154
    add-int/2addr v10, v9

    .line 155
    add-int/2addr v10, v12

    .line 156
    int-to-float v9, v9

    .line 157
    div-float/2addr v9, v3

    .line 158
    iput v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_9
    move v10, v5

    .line 162
    :goto_7
    if-eqz v1, :cond_c

    .line 163
    .line 164
    sub-int v3, v4, v10

    .line 165
    .line 166
    const/4 v9, 0x0

    .line 167
    add-int/2addr v3, v9

    .line 168
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 169
    .line 170
    if-eqz v9, :cond_a

    .line 171
    .line 172
    iget-boolean v9, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 173
    .line 174
    if-eqz v9, :cond_b

    .line 175
    .line 176
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 177
    .line 178
    sub-int v9, v4, v9

    .line 179
    .line 180
    sub-int v9, v3, v9

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_a
    iget-boolean v9, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 184
    .line 185
    if-eqz v9, :cond_b

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLeft()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    neg-int v9, v9

    .line 192
    goto :goto_8

    .line 193
    :cond_b
    sub-int v9, v3, v15

    .line 194
    .line 195
    :goto_8
    const/4 v11, 0x0

    .line 196
    iput v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_c
    add-int/lit8 v9, v10, 0x0

    .line 200
    .line 201
    iget-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 202
    .line 203
    if-eqz v3, :cond_d

    .line 204
    .line 205
    iget-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 206
    .line 207
    if-eqz v3, :cond_e

    .line 208
    .line 209
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 210
    .line 211
    sub-int v3, v4, v3

    .line 212
    .line 213
    add-int/2addr v3, v9

    .line 214
    goto :goto_9

    .line 215
    :cond_d
    iget-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 216
    .line 217
    if-eqz v3, :cond_e

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    goto :goto_9

    .line 224
    :cond_e
    add-int/2addr v15, v9

    .line 225
    move v3, v15

    .line 226
    :goto_9
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 227
    .line 228
    iput v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    .line 229
    .line 230
    :goto_a
    if-eqz v1, :cond_f

    .line 231
    .line 232
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_f
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 236
    .line 237
    :goto_b
    iput v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartSlideX:I

    .line 238
    .line 239
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    add-int/2addr v11, v7

    .line 244
    iget-boolean v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 245
    .line 246
    if-eqz v2, :cond_10

    .line 247
    .line 248
    invoke-virtual {v14, v9, v7, v3, v11}, Landroid/view/View;->layout(IIII)V

    .line 249
    .line 250
    .line 251
    goto :goto_c

    .line 252
    :cond_10
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 253
    .line 254
    add-int v12, v7, v2

    .line 255
    .line 256
    add-int/2addr v11, v2

    .line 257
    invoke-virtual {v14, v9, v12, v3, v11}, Landroid/view/View;->layout(IIII)V

    .line 258
    .line 259
    .line 260
    :goto_c
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    add-int/2addr v2, v5

    .line 265
    move v5, v2

    .line 266
    move v12, v10

    .line 267
    :goto_d
    add-int/lit8 v13, v13, 0x1

    .line 268
    .line 269
    const/4 v2, 0x2

    .line 270
    const/4 v3, 0x1

    .line 271
    goto/16 :goto_4

    .line 272
    .line 273
    :cond_11
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 274
    .line 275
    if-eqz v1, :cond_14

    .line 276
    .line 277
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 278
    .line 279
    if-eqz v1, :cond_12

    .line 280
    .line 281
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 288
    .line 289
    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 290
    .line 291
    if-eqz v1, :cond_13

    .line 292
    .line 293
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 294
    .line 295
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 296
    .line 297
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 298
    .line 299
    invoke-virtual {v0, v2, v3, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(FILandroid/view/View;)V

    .line 300
    .line 301
    .line 302
    goto :goto_f

    .line 303
    :cond_12
    const/4 v9, 0x0

    .line 304
    :goto_e
    if-ge v9, v8, :cond_13

    .line 305
    .line 306
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 311
    .line 312
    const/4 v3, 0x0

    .line 313
    invoke-virtual {v0, v3, v2, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(FILandroid/view/View;)V

    .line 314
    .line 315
    .line 316
    add-int/lit8 v9, v9, 0x1

    .line 317
    .line 318
    goto :goto_e

    .line 319
    :cond_13
    :goto_f
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    :cond_14
    const/4 v1, 0x0

    .line 325
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 326
    .line 327
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    if-ne v2, v3, :cond_16

    .line 331
    .line 332
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 333
    .line 334
    if-eqz v2, :cond_15

    .line 335
    .line 336
    const/high16 v2, 0x3f800000    # 1.0f

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 339
    .line 340
    .line 341
    :cond_15
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Z)Z

    .line 342
    .line 343
    .line 344
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 345
    .line 346
    goto :goto_10

    .line 347
    :cond_16
    const/4 v3, 0x2

    .line 348
    if-ne v2, v3, :cond_18

    .line 349
    .line 350
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 351
    .line 352
    if-eqz v2, :cond_17

    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 356
    .line 357
    .line 358
    :cond_17
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 359
    .line 360
    .line 361
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 362
    .line 363
    :goto_10
    const/4 v3, 0x1

    .line 364
    goto :goto_11

    .line 365
    :cond_18
    const/16 v3, 0x101

    .line 366
    .line 367
    if-ne v2, v3, :cond_19

    .line 368
    .line 369
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Z)Z

    .line 372
    .line 373
    .line 374
    const/4 v3, 0x1

    .line 375
    iput-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 376
    .line 377
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 378
    .line 379
    goto :goto_11

    .line 380
    :cond_19
    const/4 v3, 0x1

    .line 381
    const/16 v4, 0x102

    .line 382
    .line 383
    if-ne v2, v4, :cond_1a

    .line 384
    .line 385
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 388
    .line 389
    .line 390
    iput-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 391
    .line 392
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 393
    .line 394
    :cond_1a
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateSlidingState()V

    .line 395
    .line 396
    .line 397
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 398
    .line 399
    const/4 v2, -0x1

    .line 400
    if-eq v1, v2, :cond_1d

    .line 401
    .line 402
    if-ne v1, v3, :cond_1b

    .line 403
    .line 404
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Z)Z

    .line 405
    .line 406
    .line 407
    goto :goto_12

    .line 408
    :cond_1b
    if-nez v1, :cond_1c

    .line 409
    .line 410
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 411
    .line 412
    .line 413
    :cond_1c
    :goto_12
    iput v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 414
    .line 415
    :cond_1d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x12c

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    const/high16 v7, 0x40000000    # 2.0f

    .line 24
    .line 25
    if-eq v1, v7, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    if-ne v1, v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-nez v1, :cond_4

    .line 37
    .line 38
    move v2, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "Width must have an exact value or MATCH_PARENT"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    if-nez v3, :cond_4

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    move v4, v5

    .line 57
    move v3, v6

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "Height must not be UNSPECIFIED"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 68
    if-eq v3, v6, :cond_6

    .line 69
    .line 70
    if-eq v3, v7, :cond_5

    .line 71
    .line 72
    move v4, v1

    .line 73
    :goto_1
    move v5, v4

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    sub-int/2addr v4, v5

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sub-int/2addr v4, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    sub-int/2addr v4, v5

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    sub-int/2addr v4, v5

    .line 96
    move v5, v4

    .line 97
    move v4, v1

    .line 98
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    sub-int v8, v2, v8

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    sub-int/2addr v8, v9

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    const/4 v10, 0x2

    .line 114
    if-le v9, v10, :cond_7

    .line 115
    .line 116
    const-string v10, "SeslSlidingPaneLayout"

    .line 117
    .line 118
    const-string/jumbo v11, "onMeasure: More than two child views are not supported."

    .line 119
    .line 120
    .line 121
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_7
    const/4 v10, 0x0

    .line 125
    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 126
    .line 127
    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    .line 128
    .line 129
    move v11, v1

    .line 130
    move v12, v11

    .line 131
    move v14, v8

    .line 132
    const/4 v13, 0x0

    .line 133
    :goto_3
    const/16 v15, 0x8

    .line 134
    .line 135
    if-ge v11, v9, :cond_19

    .line 136
    .line 137
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v16

    .line 145
    move-object/from16 v7, v16

    .line 146
    .line 147
    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-ne v10, v15, :cond_8

    .line 154
    .line 155
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 156
    .line 157
    :goto_4
    move/from16 v18, v9

    .line 158
    .line 159
    goto/16 :goto_d

    .line 160
    .line 161
    :cond_8
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    cmpl-float v17, v10, v15

    .line 165
    .line 166
    if-lez v17, :cond_9

    .line 167
    .line 168
    add-float/2addr v13, v10

    .line 169
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 170
    .line 171
    if-nez v10, :cond_9

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_9
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 175
    .line 176
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 177
    .line 178
    add-int/2addr v10, v15

    .line 179
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 180
    .line 181
    const/4 v1, -0x2

    .line 182
    if-ne v15, v1, :cond_10

    .line 183
    .line 184
    iget-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 185
    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    sub-int v1, v8, v10

    .line 189
    .line 190
    const/high16 v10, -0x80000000

    .line 191
    .line 192
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    move/from16 v18, v9

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_a
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredDrawerSize:I

    .line 200
    .line 201
    const/4 v10, -0x1

    .line 202
    if-eq v1, v10, :cond_b

    .line 203
    .line 204
    move/from16 v18, v9

    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    goto :goto_7

    .line 208
    :cond_b
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefDrawerWidth:Landroid/util/TypedValue;

    .line 209
    .line 210
    if-eqz v1, :cond_c

    .line 211
    .line 212
    move/from16 v18, v9

    .line 213
    .line 214
    const/4 v9, 0x1

    .line 215
    goto :goto_5

    .line 216
    :cond_c
    new-instance v1, Landroid/util/TypedValue;

    .line 217
    .line 218
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    const v15, 0x7f0710fe

    .line 226
    .line 227
    .line 228
    move/from16 v18, v9

    .line 229
    .line 230
    const/4 v9, 0x1

    .line 231
    invoke-virtual {v10, v15, v1, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 232
    .line 233
    .line 234
    :goto_5
    iget v10, v1, Landroid/util/TypedValue;->type:I

    .line 235
    .line 236
    const/4 v15, 0x4

    .line 237
    if-ne v10, v15, :cond_d

    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    int-to-float v10, v10

    .line 244
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    mul-float/2addr v1, v10

    .line 249
    :goto_6
    float-to-int v1, v1

    .line 250
    goto :goto_7

    .line 251
    :cond_d
    const/4 v15, 0x5

    .line 252
    if-ne v10, v15, :cond_e

    .line 253
    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-virtual {v1, v10}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    goto :goto_6

    .line 267
    :cond_e
    move v1, v2

    .line 268
    :goto_7
    if-le v1, v2, :cond_f

    .line 269
    .line 270
    move v1, v2

    .line 271
    :cond_f
    const/high16 v10, 0x40000000    # 2.0f

    .line 272
    .line 273
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    goto :goto_8

    .line 278
    :cond_10
    move/from16 v18, v9

    .line 279
    .line 280
    const/4 v1, -0x1

    .line 281
    const/high16 v9, 0x40000000    # 2.0f

    .line 282
    .line 283
    if-ne v15, v1, :cond_11

    .line 284
    .line 285
    sub-int v1, v8, v10

    .line 286
    .line 287
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    goto :goto_8

    .line 292
    :cond_11
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    :goto_8
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 297
    .line 298
    const/4 v10, -0x2

    .line 299
    if-ne v9, v10, :cond_13

    .line 300
    .line 301
    iget-boolean v9, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 302
    .line 303
    if-eqz v9, :cond_12

    .line 304
    .line 305
    move v9, v5

    .line 306
    goto :goto_9

    .line 307
    :cond_12
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 308
    .line 309
    sub-int v9, v5, v9

    .line 310
    .line 311
    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    .line 312
    .line 313
    sub-int/2addr v9, v10

    .line 314
    :goto_9
    const/high16 v10, -0x80000000

    .line 315
    .line 316
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    goto :goto_b

    .line 321
    :cond_13
    const/4 v10, -0x1

    .line 322
    if-ne v9, v10, :cond_15

    .line 323
    .line 324
    iget-boolean v9, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 325
    .line 326
    if-eqz v9, :cond_14

    .line 327
    .line 328
    move v9, v5

    .line 329
    goto :goto_a

    .line 330
    :cond_14
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 331
    .line 332
    sub-int v9, v5, v9

    .line 333
    .line 334
    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    .line 335
    .line 336
    sub-int/2addr v9, v10

    .line 337
    :goto_a
    const/high16 v10, 0x40000000    # 2.0f

    .line 338
    .line 339
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    goto :goto_b

    .line 344
    :cond_15
    const/high16 v10, 0x40000000    # 2.0f

    .line 345
    .line 346
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    :goto_b
    invoke-virtual {v6, v1, v9}, Landroid/view/View;->measure(II)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    const/high16 v10, -0x80000000

    .line 362
    .line 363
    if-ne v3, v10, :cond_16

    .line 364
    .line 365
    if-le v9, v4, :cond_16

    .line 366
    .line 367
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    :cond_16
    sub-int/2addr v14, v1

    .line 372
    if-gez v14, :cond_17

    .line 373
    .line 374
    const/4 v1, 0x1

    .line 375
    goto :goto_c

    .line 376
    :cond_17
    const/4 v1, 0x0

    .line 377
    :goto_c
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 378
    .line 379
    or-int/2addr v12, v1

    .line 380
    if-eqz v1, :cond_18

    .line 381
    .line 382
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_18
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    .line 386
    .line 387
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 388
    .line 389
    move/from16 v9, v18

    .line 390
    .line 391
    const/4 v1, 0x0

    .line 392
    const/high16 v6, -0x80000000

    .line 393
    .line 394
    const/high16 v7, 0x40000000    # 2.0f

    .line 395
    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :cond_19
    move/from16 v18, v9

    .line 399
    .line 400
    if-nez v12, :cond_1a

    .line 401
    .line 402
    const/4 v1, 0x0

    .line 403
    cmpl-float v3, v13, v1

    .line 404
    .line 405
    if-lez v3, :cond_2a

    .line 406
    .line 407
    :cond_1a
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 408
    .line 409
    sub-int v1, v8, v1

    .line 410
    .line 411
    move/from16 v6, v18

    .line 412
    .line 413
    const/4 v3, 0x0

    .line 414
    :goto_e
    if-ge v3, v6, :cond_2a

    .line 415
    .line 416
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-ne v9, v15, :cond_1d

    .line 425
    .line 426
    :cond_1b
    :goto_f
    move/from16 v19, v1

    .line 427
    .line 428
    :cond_1c
    :goto_10
    const/4 v1, 0x0

    .line 429
    const/high16 v9, 0x40000000    # 2.0f

    .line 430
    .line 431
    goto/16 :goto_15

    .line 432
    .line 433
    :cond_1d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    check-cast v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 438
    .line 439
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    if-ne v10, v15, :cond_1e

    .line 444
    .line 445
    goto :goto_f

    .line 446
    :cond_1e
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 447
    .line 448
    if-nez v10, :cond_1f

    .line 449
    .line 450
    iget v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 451
    .line 452
    const/4 v11, 0x0

    .line 453
    cmpl-float v10, v10, v11

    .line 454
    .line 455
    if-lez v10, :cond_1f

    .line 456
    .line 457
    const/4 v10, 0x1

    .line 458
    goto :goto_11

    .line 459
    :cond_1f
    const/4 v10, 0x0

    .line 460
    :goto_11
    if-eqz v10, :cond_20

    .line 461
    .line 462
    const/4 v11, 0x0

    .line 463
    goto :goto_12

    .line 464
    :cond_20
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    :goto_12
    if-eqz v12, :cond_25

    .line 469
    .line 470
    iget-object v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 471
    .line 472
    if-eq v7, v15, :cond_25

    .line 473
    .line 474
    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 475
    .line 476
    if-gez v15, :cond_1b

    .line 477
    .line 478
    if-gt v11, v1, :cond_21

    .line 479
    .line 480
    iget v11, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 481
    .line 482
    const/4 v15, 0x0

    .line 483
    cmpl-float v11, v11, v15

    .line 484
    .line 485
    if-lez v11, :cond_1b

    .line 486
    .line 487
    :cond_21
    if-eqz v10, :cond_24

    .line 488
    .line 489
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 490
    .line 491
    const/4 v10, -0x2

    .line 492
    if-ne v9, v10, :cond_22

    .line 493
    .line 494
    const/high16 v10, -0x80000000

    .line 495
    .line 496
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    const/high16 v10, 0x40000000    # 2.0f

    .line 501
    .line 502
    goto :goto_13

    .line 503
    :cond_22
    const/4 v10, -0x1

    .line 504
    if-ne v9, v10, :cond_23

    .line 505
    .line 506
    const/high16 v10, 0x40000000    # 2.0f

    .line 507
    .line 508
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    goto :goto_13

    .line 513
    :cond_23
    const/high16 v10, 0x40000000    # 2.0f

    .line 514
    .line 515
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 516
    .line 517
    .line 518
    move-result v9

    .line 519
    goto :goto_13

    .line 520
    :cond_24
    const/high16 v10, 0x40000000    # 2.0f

    .line 521
    .line 522
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 523
    .line 524
    .line 525
    move-result v9

    .line 526
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 527
    .line 528
    .line 529
    move-result v9

    .line 530
    :goto_13
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 531
    .line 532
    .line 533
    move-result v11

    .line 534
    invoke-virtual {v7, v11, v9}, Landroid/view/View;->measure(II)V

    .line 535
    .line 536
    .line 537
    goto :goto_f

    .line 538
    :cond_25
    iget v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 539
    .line 540
    const/4 v15, 0x0

    .line 541
    cmpl-float v10, v10, v15

    .line 542
    .line 543
    if-lez v10, :cond_1b

    .line 544
    .line 545
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 546
    .line 547
    if-nez v10, :cond_28

    .line 548
    .line 549
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 550
    .line 551
    const/4 v15, -0x2

    .line 552
    if-ne v10, v15, :cond_26

    .line 553
    .line 554
    const/high16 v15, -0x80000000

    .line 555
    .line 556
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 557
    .line 558
    .line 559
    move-result v10

    .line 560
    const/high16 v15, 0x40000000    # 2.0f

    .line 561
    .line 562
    goto :goto_14

    .line 563
    :cond_26
    const/4 v15, -0x1

    .line 564
    if-ne v10, v15, :cond_27

    .line 565
    .line 566
    const/high16 v15, 0x40000000    # 2.0f

    .line 567
    .line 568
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 569
    .line 570
    .line 571
    move-result v10

    .line 572
    goto :goto_14

    .line 573
    :cond_27
    const/high16 v15, 0x40000000    # 2.0f

    .line 574
    .line 575
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 576
    .line 577
    .line 578
    move-result v10

    .line 579
    goto :goto_14

    .line 580
    :cond_28
    const/high16 v15, 0x40000000    # 2.0f

    .line 581
    .line 582
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 583
    .line 584
    .line 585
    move-result v10

    .line 586
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 587
    .line 588
    .line 589
    move-result v10

    .line 590
    :goto_14
    if-eqz v12, :cond_29

    .line 591
    .line 592
    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 593
    .line 594
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 595
    .line 596
    add-int/2addr v15, v9

    .line 597
    sub-int v9, v8, v15

    .line 598
    .line 599
    move/from16 v19, v1

    .line 600
    .line 601
    const/high16 v15, 0x40000000    # 2.0f

    .line 602
    .line 603
    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eq v11, v9, :cond_1c

    .line 608
    .line 609
    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_10

    .line 613
    .line 614
    :cond_29
    move/from16 v19, v1

    .line 615
    .line 616
    const/4 v1, 0x0

    .line 617
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 622
    .line 623
    int-to-float v15, v15

    .line 624
    mul-float/2addr v9, v15

    .line 625
    div-float/2addr v9, v13

    .line 626
    float-to-int v9, v9

    .line 627
    add-int/2addr v11, v9

    .line 628
    const/high16 v9, 0x40000000    # 2.0f

    .line 629
    .line 630
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 631
    .line 632
    .line 633
    move-result v11

    .line 634
    invoke-virtual {v7, v11, v10}, Landroid/view/View;->measure(II)V

    .line 635
    .line 636
    .line 637
    :goto_15
    add-int/lit8 v3, v3, 0x1

    .line 638
    .line 639
    move/from16 v1, v19

    .line 640
    .line 641
    const/16 v15, 0x8

    .line 642
    .line 643
    goto/16 :goto_e

    .line 644
    .line 645
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-lez v1, :cond_2b

    .line 650
    .line 651
    move v2, v1

    .line 652
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    add-int/2addr v1, v4

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    add-int/2addr v3, v1

    .line 662
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 663
    .line 664
    .line 665
    iput-boolean v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 666
    .line 667
    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 668
    .line 669
    iget v1, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 670
    .line 671
    if-eqz v1, :cond_2c

    .line 672
    .line 673
    if-nez v12, :cond_2c

    .line 674
    .line 675
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 676
    .line 677
    .line 678
    :cond_2c
    return-void
.end method

.method public final onPanelDragged(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :goto_0
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    .line 44
    :goto_1
    add-int/2addr v3, v4

    .line 45
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 54
    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    sub-int/2addr v4, v3

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 64
    .line 65
    if-eqz v5, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 72
    .line 73
    sub-int/2addr v4, v5

    .line 74
    sub-int/2addr v4, v3

    .line 75
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 83
    .line 84
    if-eqz v5, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    sub-int/2addr v4, v3

    .line 91
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 92
    .line 93
    if-eqz v5, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    sub-int/2addr v5, v3

    .line 101
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sub-int/2addr v0, p1

    .line 112
    sub-int p1, v0, v4

    .line 113
    .line 114
    :cond_8
    sub-int/2addr p1, v3

    .line 115
    int-to-float p1, p1

    .line 116
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 117
    .line 118
    if-nez v0, :cond_9

    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    :cond_9
    int-to-float v0, v0

    .line 122
    div-float/2addr p1, v0

    .line 123
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 124
    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    .line 126
    .line 127
    cmpl-float v3, p1, v0

    .line 128
    .line 129
    if-lez v3, :cond_a

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    :goto_4
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 137
    .line 138
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 139
    .line 140
    if-eqz p1, :cond_b

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    cmpl-float p1, p1, v1

    .line 147
    .line 148
    if-eqz p1, :cond_b

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    float-to-int p1, p1

    .line 157
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 158
    .line 159
    :cond_b
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateSlidingState()V

    .line 160
    .line 161
    .line 162
    iget-boolean p1, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 163
    .line 164
    if-eqz p1, :cond_c

    .line 165
    .line 166
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 167
    .line 168
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 169
    .line 170
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 171
    .line 172
    invoke-virtual {p0, v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(FILandroid/view/View;)V

    .line 173
    .line 174
    .line 175
    :cond_c
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 176
    .line 177
    if-nez p1, :cond_d

    .line 178
    .line 179
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 182
    .line 183
    .line 184
    :cond_d
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 17
    .line 18
    const-string/jumbo v1, "remove_animations"

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 26
    .line 27
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v3, :cond_1

    .line 42
    .line 43
    move v2, v3

    .line 44
    :cond_1
    xor-int/lit8 v0, v2, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Z)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 51
    .line 52
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ne v0, v3, :cond_3

    .line 67
    .line 68
    move v2, v3

    .line 69
    :cond_3
    xor-int/lit8 v0, v2, 0x1

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 75
    .line 76
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 77
    .line 78
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 20
    .line 21
    :goto_0
    iput-boolean p0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 22
    .line 23
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 2
    .line 3
    if-eqz v0, :cond_15

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v0, :cond_13

    .line 42
    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    if-eq v0, v1, :cond_f

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    if-eq v0, v5, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    if-eq v0, v5, :cond_f

    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 61
    .line 62
    sub-float v0, p1, v0

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 69
    .line 70
    sub-float v5, p1, v2

    .line 71
    .line 72
    cmpl-float v2, v2, p1

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 77
    .line 78
    :cond_3
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 79
    .line 80
    iget p1, p1, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 81
    .line 82
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 83
    .line 84
    if-nez v2, :cond_14

    .line 85
    .line 86
    int-to-float p1, p1

    .line 87
    cmpl-float p1, v0, p1

    .line 88
    .line 89
    if-lez p1, :cond_14

    .line 90
    .line 91
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSlideableViewTouched:Z

    .line 92
    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 102
    .line 103
    if-eqz p1, :cond_e

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    sub-int/2addr p1, v0

    .line 116
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_4
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    :goto_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez p1, :cond_6

    .line 146
    .line 147
    move p1, v1

    .line 148
    :cond_6
    div-int/2addr v0, p1

    .line 149
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    int-to-float p1, p1

    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    move v0, v1

    .line 159
    :cond_7
    int-to-float v0, v0

    .line 160
    div-float/2addr v5, v0

    .line 161
    add-float/2addr v5, p1

    .line 162
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 163
    .line 164
    int-to-float p1, p1

    .line 165
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 170
    .line 171
    if-eqz p1, :cond_e

    .line 172
    .line 173
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 174
    .line 175
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 176
    .line 177
    int-to-float v0, v0

    .line 178
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    float-to-int v0, v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    add-int/2addr v0, p1

    .line 197
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 198
    .line 199
    sub-int/2addr v0, p1

    .line 200
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :cond_8
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_9

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 218
    .line 219
    sub-int/2addr p1, v0

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 225
    .line 226
    sub-int/2addr v0, v2

    .line 227
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 228
    .line 229
    sub-int/2addr v0, v2

    .line 230
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    int-to-float v2, v2

    .line 237
    add-float/2addr v2, v5

    .line 238
    int-to-float p1, p1

    .line 239
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    int-to-float v0, v0

    .line 244
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 249
    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 253
    .line 254
    float-to-int p1, p1

    .line 255
    invoke-virtual {v0, p1}, Landroid/view/View;->setRight(I)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    sub-int/2addr p1, v0

    .line 269
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 270
    .line 271
    add-int/2addr p1, v0

    .line 272
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 273
    .line 274
    invoke-virtual {v0, p1}, Landroid/view/View;->setLeft(I)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    sub-int/2addr p1, v0

    .line 288
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 289
    .line 290
    :goto_2
    add-int/2addr p1, v0

    .line 291
    int-to-float v5, p1

    .line 292
    goto :goto_5

    .line 293
    :cond_9
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 294
    .line 295
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 296
    .line 297
    add-int/2addr p1, v0

    .line 298
    int-to-float p1, p1

    .line 299
    if-nez v0, :cond_a

    .line 300
    .line 301
    move v0, v3

    .line 302
    goto :goto_3

    .line 303
    :cond_a
    int-to-float v0, v0

    .line 304
    :goto_3
    div-float/2addr p1, v0

    .line 305
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 306
    .line 307
    const/16 v2, 0x3e8

    .line 308
    .line 309
    const/high16 v6, 0x40000000    # 2.0f

    .line 310
    .line 311
    invoke-virtual {v0, v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 315
    .line 316
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    cmpl-float v0, v0, v4

    .line 321
    .line 322
    if-lez v0, :cond_b

    .line 323
    .line 324
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    mul-float/2addr p1, v0

    .line 331
    :cond_b
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    int-to-float v0, v0

    .line 338
    cmpl-float v2, p1, v4

    .line 339
    .line 340
    if-nez v2, :cond_c

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_c
    move v3, p1

    .line 344
    :goto_4
    div-float/2addr v5, v3

    .line 345
    add-float/2addr v5, v0

    .line 346
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 347
    .line 348
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 349
    .line 350
    add-int/2addr p1, v0

    .line 351
    int-to-float p1, p1

    .line 352
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 357
    .line 358
    if-eqz p1, :cond_d

    .line 359
    .line 360
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    add-int/2addr v0, p1

    .line 371
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 372
    .line 373
    sub-int/2addr v0, p1

    .line 374
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 375
    .line 376
    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 377
    .line 378
    .line 379
    :cond_d
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 380
    .line 381
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 382
    .line 383
    int-to-float v0, v0

    .line 384
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    float-to-int v0, v0

    .line 389
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 390
    .line 391
    .line 392
    :cond_e
    :goto_5
    float-to-int p1, v5

    .line 393
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_6

    .line 397
    .line 398
    :cond_f
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 399
    .line 400
    if-eqz v0, :cond_10

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 403
    .line 404
    .line 405
    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 407
    .line 408
    :cond_10
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 409
    .line 410
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_11

    .line 415
    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 425
    .line 426
    sub-float v5, v0, v5

    .line 427
    .line 428
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 429
    .line 430
    sub-float v6, p1, v6

    .line 431
    .line 432
    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 433
    .line 434
    iget v7, v7, Landroidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 435
    .line 436
    mul-float/2addr v5, v5

    .line 437
    mul-float/2addr v6, v6

    .line 438
    add-float/2addr v6, v5

    .line 439
    mul-int/2addr v7, v7

    .line 440
    int-to-float v5, v7

    .line 441
    cmpg-float v5, v6, v5

    .line 442
    .line 443
    if-gez v5, :cond_11

    .line 444
    .line 445
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 446
    .line 447
    float-to-int v0, v0

    .line 448
    float-to-int p1, p1

    .line 449
    invoke-static {v5, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-eqz p1, :cond_11

    .line 454
    .line 455
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 456
    .line 457
    .line 458
    goto :goto_6

    .line 459
    :cond_11
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 460
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 466
    .line 467
    const/4 p1, -0x1

    .line 468
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 469
    .line 470
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 471
    .line 472
    cmpl-float v0, p1, v4

    .line 473
    .line 474
    if-eqz v0, :cond_14

    .line 475
    .line 476
    cmpl-float v0, p1, v3

    .line 477
    .line 478
    if-eqz v0, :cond_14

    .line 479
    .line 480
    const/high16 v0, 0x3f000000    # 0.5f

    .line 481
    .line 482
    cmpl-float p1, p1, v0

    .line 483
    .line 484
    if-ltz p1, :cond_12

    .line 485
    .line 486
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 487
    .line 488
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 489
    .line 490
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 491
    .line 492
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 493
    .line 494
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Z)Z

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_12
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 499
    .line 500
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 501
    .line 502
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 503
    .line 504
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 505
    .line 506
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Z)Z

    .line 507
    .line 508
    .line 509
    goto :goto_6

    .line 510
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 519
    .line 520
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 521
    .line 522
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 523
    .line 524
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 525
    .line 526
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 527
    .line 528
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 529
    .line 530
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 531
    .line 532
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 533
    .line 534
    :cond_14
    :goto_6
    return v1

    .line 535
    :cond_15
    :goto_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 536
    .line 537
    .line 538
    move-result p0

    .line 539
    return p0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 27
    .line 28
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_3

    .line 31
    .line 32
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public final openPane(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(F)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v2

    .line 34
    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 35
    .line 36
    return v1

    .line 37
    :cond_4
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_5

    .line 44
    .line 45
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 46
    .line 47
    neg-int v2, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 50
    .line 51
    :goto_1
    add-int/2addr p1, v2

    .line 52
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 53
    .line 54
    .line 55
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 56
    .line 57
    if-eqz v2, :cond_7

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 76
    .line 77
    sub-int/2addr v0, v2

    .line 78
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 79
    .line 80
    sub-int/2addr v0, v2

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 95
    .line 96
    sub-int/2addr v0, v2

    .line 97
    sub-int/2addr p1, v0

    .line 98
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Landroid/view/View;->setLeft(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/view/View;->setLeft(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    add-int/2addr v2, p1

    .line 116
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 117
    .line 118
    sub-int/2addr v2, p1

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setRight(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 124
    .line 125
    .line 126
    :goto_2
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 127
    .line 128
    return v1

    .line 129
    :cond_8
    :goto_3
    return v2
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final resizeSlideableView(F)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 16
    .line 17
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v2, :cond_b

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v1

    .line 32
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 33
    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    move v5, v4

    .line 42
    :goto_0
    if-ge v5, v3, :cond_b

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-eqz v6, :cond_a

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_a

    .line 55
    .line 56
    iget v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartSlideX:I

    .line 57
    .line 58
    sub-int v8, v0, v8

    .line 59
    .line 60
    iget v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 61
    .line 62
    int-to-float v9, v9

    .line 63
    mul-float/2addr v9, p1

    .line 64
    float-to-int v9, v9

    .line 65
    sub-int/2addr v8, v9

    .line 66
    sub-int/2addr v8, v2

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    add-int/2addr v10, v9

    .line 76
    sub-int/2addr v8, v10

    .line 77
    iget-object v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefContentWidth:Landroid/util/TypedValue;

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    if-eqz v9, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    new-instance v9, Landroid/util/TypedValue;

    .line 84
    .line 85
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const v12, 0x7f0710fd

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v12, v9, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget v11, v9, Landroid/util/TypedValue;->type:I

    .line 99
    .line 100
    const/4 v12, 0x4

    .line 101
    if-ne v11, v12, :cond_1

    .line 102
    .line 103
    int-to-float v11, v0

    .line 104
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    mul-float/2addr v9, v11

    .line 109
    :goto_2
    float-to-int v9, v9

    .line 110
    goto :goto_3

    .line 111
    :cond_1
    const/4 v12, 0x5

    .line 112
    if-ne v11, v12, :cond_2

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v9, v11}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    move v9, v8

    .line 128
    :goto_3
    iget v11, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredContentSize:I

    .line 129
    .line 130
    const/4 v12, -0x1

    .line 131
    if-eq v11, v12, :cond_3

    .line 132
    .line 133
    move v9, v11

    .line 134
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    iget-boolean v11, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSinglePanel:Z

    .line 139
    .line 140
    if-eqz v11, :cond_9

    .line 141
    .line 142
    instance-of v11, v6, Landroidx/appcompat/widget/Toolbar;

    .line 143
    .line 144
    if-nez v11, :cond_5

    .line 145
    .line 146
    instance-of v11, v6, Landroid/widget/Toolbar;

    .line 147
    .line 148
    if-nez v11, :cond_5

    .line 149
    .line 150
    instance-of v11, v6, Landroidx/slidingpanelayout/widget/SPLToolbarContainer;

    .line 151
    .line 152
    if-eqz v11, :cond_4

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move v11, v4

    .line 156
    goto :goto_5

    .line 157
    :cond_5
    :goto_4
    move v11, v10

    .line 158
    :goto_5
    if-nez v11, :cond_9

    .line 159
    .line 160
    instance-of v11, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 161
    .line 162
    if-eqz v11, :cond_8

    .line 163
    .line 164
    instance-of v11, v6, Landroid/view/ViewGroup;

    .line 165
    .line 166
    if-eqz v11, :cond_6

    .line 167
    .line 168
    move-object v11, v6

    .line 169
    check-cast v11, Landroid/view/ViewGroup;

    .line 170
    .line 171
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    const/4 v13, 0x2

    .line 176
    if-ne v12, v13, :cond_6

    .line 177
    .line 178
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    iput-object v10, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    .line 183
    .line 184
    :cond_6
    iget-object v10, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    .line 185
    .line 186
    if-nez v10, :cond_7

    .line 187
    .line 188
    const/4 v10, 0x0

    .line 189
    goto :goto_6

    .line 190
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    :goto_6
    if-eqz v10, :cond_9

    .line 195
    .line 196
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_8
    move v8, v9

    .line 200
    :cond_9
    :goto_7
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    .line 202
    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 203
    .line 204
    .line 205
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_b
    return-void
.end method

.method public final smoothSlideTo(F)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 28
    .line 29
    add-int/2addr v1, v2

    .line 30
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 54
    .line 55
    sub-int/2addr v2, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :goto_0
    sub-int/2addr v2, v1

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    int-to-float v3, v3

    .line 71
    int-to-float v1, v1

    .line 72
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 73
    .line 74
    int-to-float v4, v4

    .line 75
    mul-float/2addr p1, v4

    .line 76
    add-float/2addr p1, v1

    .line 77
    int-to-float v1, v2

    .line 78
    add-float/2addr p1, v1

    .line 79
    sub-float/2addr v3, p1

    .line 80
    float-to-int p1, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    .line 88
    add-int/2addr v1, v2

    .line 89
    int-to-float v1, v1

    .line 90
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 91
    .line 92
    int-to-float v2, v2

    .line 93
    mul-float/2addr p1, v2

    .line 94
    add-float/2addr p1, v1

    .line 95
    float-to-int p1, p1

    .line 96
    :goto_1
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {v1, v2, p1, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    move v1, v0

    .line 115
    :goto_2
    if-ge v1, p1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x4

    .line 126
    if-ne v3, v4, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 135
    .line 136
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    .line 141
    .line 142
    return p1

    .line 143
    :cond_7
    return v0
.end method

.method public final updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-int/2addr v5, v6

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x0

    .line 81
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    const/4 v12, 0x0

    .line 86
    :goto_3
    if-ge v12, v11, :cond_8

    .line 87
    .line 88
    move-object/from16 v13, p0

    .line 89
    .line 90
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    if-ne v14, v0, :cond_3

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    const/16 v6, 0x8

    .line 102
    .line 103
    if-ne v15, v6, :cond_4

    .line 104
    .line 105
    move/from16 v16, v1

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_4
    if-eqz v1, :cond_5

    .line 109
    .line 110
    move v6, v3

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move v6, v2

    .line 113
    :goto_4
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    move/from16 v16, v1

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    move v0, v2

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    move v0, v3

    .line 136
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-lt v6, v7, :cond_7

    .line 153
    .line 154
    if-lt v15, v9, :cond_7

    .line 155
    .line 156
    if-gt v0, v8, :cond_7

    .line 157
    .line 158
    if-gt v1, v10, :cond_7

    .line 159
    .line 160
    const/4 v0, 0x4

    .line 161
    goto :goto_6

    .line 162
    :cond_7
    const/4 v0, 0x0

    .line 163
    :goto_6
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 167
    .line 168
    move-object/from16 v0, p1

    .line 169
    .line 170
    move/from16 v1, v16

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    :goto_8
    return-void
.end method

.method public final updateSlidingState()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    cmpl-float v2, v1, v2

    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    .line 25
    .line 26
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    cmpl-float v2, v1, v2

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-eq v2, v4, :cond_3

    .line 42
    .line 43
    iput v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    .line 44
    .line 45
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget p0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    if-eq p0, v1, :cond_3

    .line 55
    .line 56
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    .line 57
    .line 58
    :cond_3
    :goto_0
    return-void
.end method
