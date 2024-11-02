.class public abstract Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBlurAnimator:Landroid/animation/ValueAnimator;

.field public final mBlurView:Landroid/widget/ImageView;

.field public mBoundsAnimator:Landroid/animation/ValueAnimator;

.field public mDirection:I

.field public final mEndBounds:Landroid/graphics/Rect;

.field public mFadeOutEndPosition:I

.field public mFadeOutStartPosition:I

.field public mHasProtectedContent:Z

.field public mIsResizing:Z

.field public final mOriginBounds:Landroid/graphics/Rect;

.field public final mOriginOutlineInsets:Landroid/graphics/Rect;

.field public final mOutlineInsets:Landroid/graphics/Rect;

.field public mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field public final mOutlineProvider:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;

.field public mScaleDownEndPosition:I

.field public mScaleDownStartPosition:I

.field public mShouldPlayHaptic:Z

.field public mSplitDismissSide:I

.field public final mStageConfigPosition:I

.field public final mStageType:I

.field public mTaskId:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    .line 29
    .line 30
    new-instance v1, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    .line 50
    .line 51
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    .line 52
    .line 53
    new-instance v1, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineProvider:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;

    .line 59
    .line 60
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageType:I

    .line 61
    .line 62
    iget-object v2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 63
    .line 64
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageWinConfigPositionByType(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 69
    .line 70
    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 71
    .line 72
    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 73
    .line 74
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 80
    .line 81
    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    .line 83
    .line 84
    if-nez p5, :cond_0

    .line 85
    .line 86
    new-instance p5, Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x1

    .line 95
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 105
    .line 106
    .line 107
    sget-boolean p0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 108
    .line 109
    if-eqz p0, :cond_1

    .line 110
    .line 111
    const p0, 0x7f0a0459

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object p0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 121
    .line 122
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 123
    .line 124
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const p3, 0x7f060179

    .line 138
    .line 139
    .line 140
    const/4 p4, 0x0

    .line 141
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    const p2, 0x7f07122e

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    iput p0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 164
    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract calculateBoundsForPosition(ILandroid/graphics/Rect;)V
.end method

.method public abstract getDirection()I
.end method

.method public initDirection()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/wm/shell/util/StageUtils;->convertStagePositionToDockSide(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 8
    .line 9
    return-void
.end method

.method public initialize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageType:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskIdByStageType(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->initDirection()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 23
    .line 24
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    .line 25
    .line 26
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 27
    .line 28
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 29
    .line 30
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 31
    .line 32
    iget v1, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 33
    .line 34
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 38
    .line 39
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    .line 40
    .line 41
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 42
    .line 43
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 44
    .line 45
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 46
    .line 47
    iget v1, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 48
    .line 49
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    .line 50
    .line 51
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 52
    .line 53
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    .line 64
    .line 65
    if-ge v2, v4, :cond_1

    .line 66
    .line 67
    sub-int/2addr v4, v2

    .line 68
    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    if-ge v2, v4, :cond_2

    .line 75
    .line 76
    sub-int/2addr v4, v2

    .line 77
    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    if-le v2, v4, :cond_3

    .line 84
    .line 85
    sub-int/2addr v2, v4

    .line 86
    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 87
    .line 88
    :cond_3
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 91
    .line 92
    if-le v1, v2, :cond_4

    .line 93
    .line 94
    sub-int/2addr v1, v2

    .line 95
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 96
    .line 97
    :cond_4
    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 98
    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->access$000(Lcom/android/wm/shell/common/split/DividerResizeLayout;)Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f081102

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    const/4 v1, 0x1

    .line 128
    if-eq p0, v1, :cond_8

    .line 129
    .line 130
    const/4 v1, 0x2

    .line 131
    if-eq p0, v1, :cond_7

    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    if-eq p0, v1, :cond_6

    .line 135
    .line 136
    const/4 v1, 0x4

    .line 137
    if-eq p0, v1, :cond_5

    .line 138
    .line 139
    const/4 p0, 0x0

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 151
    .line 152
    :goto_1
    if-eqz p0, :cond_9

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    return-void
.end method

.method public final isLeftOrTopDirection()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :cond_1
    :goto_0
    return v1
.end method

.method public final startBoundsAnimation(Landroid/graphics/Rect;ZJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    const-string p2, "DividerResizeLayout"

    .line 54
    .line 55
    const-string/jumbo p3, "startBoundsAnimation: failed, invalid start bounds"

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const/4 p1, 0x2

    .line 73
    new-array p1, p1, [F

    .line 74
    .line 75
    fill-array-data p1, :array_0

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;

    .line 85
    .line 86
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;

    .line 95
    .line 96
    invoke-direct {p2, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    sget-object p2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startOutlineInsetsAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    if-gtz v1, :cond_1

    .line 6
    .line 7
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    if-gtz v1, :cond_1

    .line 10
    .line 11
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    if-gtz v1, :cond_1

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 23
    :goto_1
    if-nez v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 31
    .line 32
    .line 33
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_2
    const/4 p1, 0x2

    .line 49
    new-array p1, p1, [F

    .line 50
    .line 51
    fill-array-data p1, :array_0

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    new-instance v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;

    .line 61
    .line 62
    invoke-direct {v2, p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$4;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$4;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    sget-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    const-wide/16 v0, 0x118

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DividerResizeTarget{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageType:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 23
    .line 24
    invoke-static {v1}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", mOriginBounds="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", mInsets="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", Dir="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final updateDismissSide(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "updateDismissSide: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p1, v2, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, "SPLIT_DISMISS_SIDE_END"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v2, "SPLIT_DISMISS_SIDE_START"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v2, "SPLIT_DISMISS_SIDE_NONE"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " for="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "DividerResizeLayout"

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    .line 59
    .line 60
    return v1

    .line 61
    :cond_4
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final updateViewBounds(Landroid/graphics/Rect;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    .line 23
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 30
    .line 31
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 32
    .line 33
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 36
    .line 37
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 38
    .line 39
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 42
    .line 43
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 52
    .line 53
    const-string v3, "DividerResizeLayout"

    .line 54
    .line 55
    const/4 v4, 0x4

    .line 56
    const/4 v5, 0x3

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x2

    .line 59
    const/4 v8, 0x1

    .line 60
    if-nez v1, :cond_16

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_16

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_0

    .line 73
    .line 74
    goto/16 :goto_d

    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eq v1, v8, :cond_4

    .line 81
    .line 82
    if-eq v1, v7, :cond_3

    .line 83
    .line 84
    if-eq v1, v5, :cond_2

    .line 85
    .line 86
    if-eq v1, v4, :cond_1

    .line 87
    .line 88
    const/4 v1, -0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_5

    .line 114
    .line 115
    iget v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    .line 116
    .line 117
    if-gt v1, v9, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    iget v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    .line 121
    .line 122
    if-lt v1, v9, :cond_6

    .line 123
    .line 124
    :goto_1
    move v9, v8

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    move v9, v6

    .line 127
    :goto_2
    const/high16 v10, 0x3f800000    # 1.0f

    .line 128
    .line 129
    if-eqz v9, :cond_c

    .line 130
    .line 131
    iget v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    .line 132
    .line 133
    iget v11, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    .line 134
    .line 135
    sub-int/2addr v9, v11

    .line 136
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_8

    .line 141
    .line 142
    sget-boolean v9, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 143
    .line 144
    if-eqz v9, :cond_7

    .line 145
    .line 146
    const-string v9, "getScaleDownFraction: failed, scaleDownZoneWith is zero"

    .line 147
    .line 148
    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_7
    move v12, v10

    .line 152
    goto :goto_5

    .line 153
    :cond_8
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_9

    .line 158
    .line 159
    iget v11, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    .line 160
    .line 161
    if-gt v1, v11, :cond_a

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    iget v11, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    .line 165
    .line 166
    if-lt v1, v11, :cond_a

    .line 167
    .line 168
    :goto_3
    move v11, v8

    .line 169
    goto :goto_4

    .line 170
    :cond_a
    move v11, v6

    .line 171
    :goto_4
    const v12, 0x3f666666    # 0.9f

    .line 172
    .line 173
    .line 174
    if-eqz v11, :cond_b

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_b
    iget v11, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    .line 178
    .line 179
    sub-int/2addr v11, v1

    .line 180
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    int-to-float v11, v11

    .line 185
    int-to-float v9, v9

    .line 186
    div-float/2addr v11, v9

    .line 187
    const v9, 0x3dccccd0    # 0.100000024f

    .line 188
    .line 189
    .line 190
    mul-float/2addr v11, v9

    .line 191
    add-float/2addr v12, v11

    .line 192
    :goto_5
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 203
    .line 204
    .line 205
    :goto_6
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-eqz v9, :cond_d

    .line 210
    .line 211
    iget v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 212
    .line 213
    if-gt v1, v9, :cond_e

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_d
    iget v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 217
    .line 218
    if-lt v1, v9, :cond_e

    .line 219
    .line 220
    :goto_7
    move v9, v8

    .line 221
    goto :goto_8

    .line 222
    :cond_e
    move v9, v6

    .line 223
    :goto_8
    if-eqz v9, :cond_15

    .line 224
    .line 225
    iget-object v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 226
    .line 227
    if-nez v9, :cond_f

    .line 228
    .line 229
    goto :goto_9

    .line 230
    :cond_f
    const-string v9, "cancelBlurAnimation"

    .line 231
    .line 232
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    iget-object v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 236
    .line 237
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->end()V

    .line 238
    .line 239
    .line 240
    :goto_9
    iget v9, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 241
    .line 242
    iget v11, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 243
    .line 244
    sub-int/2addr v9, v11

    .line 245
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-nez v9, :cond_10

    .line 250
    .line 251
    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 252
    .line 253
    if-eqz v1, :cond_14

    .line 254
    .line 255
    const-string v1, "getFadeOutFraction: failed, fadeOutZoneWidth is zero"

    .line 256
    .line 257
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_10
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    if-eqz v10, :cond_11

    .line 266
    .line 267
    iget v10, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 268
    .line 269
    if-gt v1, v10, :cond_12

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_11
    iget v10, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 273
    .line 274
    if-lt v1, v10, :cond_12

    .line 275
    .line 276
    :goto_a
    move v10, v8

    .line 277
    goto :goto_b

    .line 278
    :cond_12
    move v10, v6

    .line 279
    :goto_b
    if-eqz v10, :cond_13

    .line 280
    .line 281
    const/4 v10, 0x0

    .line 282
    goto :goto_c

    .line 283
    :cond_13
    iget v10, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 284
    .line 285
    sub-int/2addr v10, v1

    .line 286
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    int-to-float v1, v1

    .line 291
    int-to-float v9, v9

    .line 292
    div-float v10, v1, v9

    .line 293
    .line 294
    :cond_14
    :goto_c
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 295
    .line 296
    .line 297
    goto :goto_d

    .line 298
    :cond_15
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 299
    .line 300
    .line 301
    :cond_16
    :goto_d
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 305
    .line 306
    .line 307
    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 308
    .line 309
    if-eqz v0, :cond_1c

    .line 310
    .line 311
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 314
    .line 315
    if-nez v1, :cond_17

    .line 316
    .line 317
    goto/16 :goto_f

    .line 318
    .line 319
    :cond_17
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 324
    .line 325
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 326
    .line 327
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 328
    .line 329
    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 330
    .line 331
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 332
    .line 333
    add-int/2addr v11, v9

    .line 334
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 335
    .line 336
    add-int/2addr v1, v10

    .line 337
    invoke-virtual {v2, v9, v10, v11, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eq v1, v8, :cond_1b

    .line 345
    .line 346
    if-eq v1, v7, :cond_1a

    .line 347
    .line 348
    if-eq v1, v5, :cond_19

    .line 349
    .line 350
    if-eq v1, v4, :cond_18

    .line 351
    .line 352
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 353
    .line 354
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 355
    .line 356
    .line 357
    goto :goto_e

    .line 358
    :cond_18
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 359
    .line 360
    iget v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 361
    .line 362
    neg-int v2, v2

    .line 363
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 367
    .line 368
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 369
    .line 370
    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 371
    .line 372
    add-int/2addr v2, v4

    .line 373
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 374
    .line 375
    goto :goto_e

    .line 376
    :cond_19
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 377
    .line 378
    iget v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 379
    .line 380
    neg-int v2, v2

    .line 381
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 385
    .line 386
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 387
    .line 388
    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 389
    .line 390
    add-int/2addr v2, v4

    .line 391
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 392
    .line 393
    goto :goto_e

    .line 394
    :cond_1a
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 395
    .line 396
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 404
    .line 405
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 406
    .line 407
    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 408
    .line 409
    add-int/2addr v2, v4

    .line 410
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 411
    .line 412
    goto :goto_e

    .line 413
    :cond_1b
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 414
    .line 415
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 423
    .line 424
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 425
    .line 426
    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    .line 427
    .line 428
    add-int/2addr v2, v4

    .line 429
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 430
    .line 431
    :goto_e
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 432
    .line 433
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 438
    .line 439
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 440
    .line 441
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 446
    .line 447
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 448
    .line 449
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 454
    .line 455
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 456
    .line 457
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 458
    .line 459
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 460
    .line 461
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 462
    .line 463
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 464
    .line 465
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 466
    .line 467
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 473
    .line 474
    .line 475
    :cond_1c
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string/jumbo v1, "updateViewBounds: "

    .line 478
    .line 479
    .line 480
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string p1, ", this="

    .line 487
    .line 488
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    return-void
.end method
