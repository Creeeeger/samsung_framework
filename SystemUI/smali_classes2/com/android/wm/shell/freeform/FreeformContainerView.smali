.class Lcom/android/wm/shell/freeform/FreeformContainerView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/freeform/FreeformContainerCallback;


# static fields
.field public static final TAIL_ICON_ALPHA_ARRAY:[F

.field public static final TAIL_ICON_SCALE_ARRAY:[F


# instance fields
.field public final mActivatedXSpringList:Ljava/util/ArrayList;

.field public final mActivatedYSpringList:Ljava/util/ArrayList;

.field public mAnimElevation:I

.field public mBackgroundDimView:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public mDefaultGapTop:I

.field public mFirstDownX:F

.field public mFirstDownY:F

.field public mFirstPointerX:F

.field public mFirstPointerY:F

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mIconItemTopMarginInFolder:I

.field public mIconLeftMarginInFolder:I

.field public final mIconViewList:Ljava/util/ArrayList;

.field public final mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

.field public mIsAppIconMoving:Z

.field public mLastIconPosition:I

.field public mLastPositionX:F

.field public mLastPositionY:F

.field public mMaximumFlingVelocity:I

.field public mMinimumFlingVelocity:I

.field public mNeedInitPosition:Z

.field public mPointerGroupView:Landroid/view/ViewGroup;

.field public final mPointerPosition:Landroid/graphics/PointF;

.field public mPointerSettleDownEffectRequested:Z

.field public mPointerSettleDownGap:I

.field public mPointerView:Landroid/widget/ImageButton;

.field public mPointerViewSize:I

.field public mSpringChainX:Lcom/facebook/rebound/SpringChain;

.field public mSpringChainY:Lcom/facebook/rebound/SpringChain;

.field public final mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

.field public final mSystemGestureExclusionRects:Ljava/util/List;

.field public mThresholdToMove:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mVelocity:Landroid/graphics/PointF;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;


# direct methods
.method public static -$$Nest$msettleDownPointerEffect(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v2, v1, -0x1

    .line 15
    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ltz v2, :cond_2

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/high16 v6, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getX()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setY(F)V

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getY()F

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 65
    .line 66
    invoke-virtual {v7}, Landroid/widget/ImageButton;->getY()F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    iget v8, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    .line 71
    .line 72
    mul-int/2addr v8, v3

    .line 73
    int-to-float v8, v8

    .line 74
    add-float/2addr v7, v8

    .line 75
    new-instance v8, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;

    .line 76
    .line 77
    invoke-direct {v8, p0, v4, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    new-instance v9, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;

    .line 81
    .line 82
    const/4 v10, 0x1

    .line 83
    invoke-direct {v9, p0, v4, v10}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    new-instance v11, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;

    .line 87
    .line 88
    const/4 v12, 0x2

    .line 89
    invoke-direct {v11, p0, v4, v12}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    sget-object v4, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    .line 93
    .line 94
    sub-int v13, v1, v2

    .line 95
    .line 96
    sub-int/2addr v13, v10

    .line 97
    aget v4, v4, v13

    .line 98
    .line 99
    sget-object v14, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_SCALE_ARRAY:[F

    .line 100
    .line 101
    aget v13, v14, v13

    .line 102
    .line 103
    new-array v14, v12, [F

    .line 104
    .line 105
    aput v6, v14, v0

    .line 106
    .line 107
    aput v4, v14, v10

    .line 108
    .line 109
    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    .line 115
    .line 116
    new-array v8, v12, [F

    .line 117
    .line 118
    aput v6, v8, v0

    .line 119
    .line 120
    aput v13, v8, v10

    .line 121
    .line 122
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    .line 128
    .line 129
    new-array v8, v12, [F

    .line 130
    .line 131
    aput v5, v8, v0

    .line 132
    .line 133
    aput v7, v8, v10

    .line 134
    .line 135
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    .line 141
    .line 142
    new-instance v7, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 157
    .line 158
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 159
    .line 160
    .line 161
    const-wide/16 v5, 0xc8

    .line 162
    .line 163
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 180
    .line 181
    .line 182
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 183
    .line 184
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getY()F

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setY(F)V

    .line 189
    .line 190
    .line 191
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_2
    :goto_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    .line 8
    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_SCALE_ARRAY:[F

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4f5c29    # 0.81f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

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
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 14
    .line 15
    new-instance p2, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance p2, Landroid/graphics/Region;

    .line 30
    .line 31
    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    .line 35
    .line 36
    new-instance p2, Landroid/graphics/Region;

    .line 37
    .line 38
    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 42
    .line 43
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    new-instance p2, Landroid/graphics/PointF;

    .line 51
    .line 52
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/PointF;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 66
    .line 67
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    .line 73
    .line 74
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 75
    .line 76
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    .line 77
    .line 78
    const/4 p2, -0x1

    .line 79
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastIconPosition:I

    .line 80
    .line 81
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 86
    .line 87
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 92
    .line 93
    new-instance p2, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 99
    .line 100
    new-instance p2, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    .line 106
    .line 107
    const-string p2, "FreeformContainer"

    .line 108
    .line 109
    const-string v0, "[ContainerView] Create FreeformContainerView"

    .line 110
    .line 111
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    return-void
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 1

    .line 1
    sub-int/2addr p3, p2

    .line 2
    if-gez p3, :cond_0

    .line 3
    .line 4
    add-int/lit8 p3, p3, 0x4

    .line 5
    .line 6
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p3, v0, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p3, v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p3, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    sub-int/2addr p0, p3

    .line 32
    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    add-int/2addr p3, p0

    .line 39
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    add-int/2addr p3, p0

    .line 48
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    sub-int/2addr p3, v0

    .line 56
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    sub-int/2addr p0, p3

    .line 63
    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    add-int/2addr p3, p0

    .line 70
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    add-int/2addr p3, p0

    .line 79
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 85
    .line 86
    sub-int/2addr p0, p3

    .line 87
    iput p0, p2, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    add-int/2addr p3, p0

    .line 98
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 99
    .line 100
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    add-int/2addr p3, p0

    .line 107
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final addMovementToVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-float/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-float/2addr v1, v2

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 30
    .line 31
    .line 32
    neg-float p0, v0

    .line 33
    neg-float v0, v1

    .line 34
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final animateBackgroundDim(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xff

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    filled-new-array {v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v0, 0x11b

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerView$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    filled-new-array {v1, v0}, [I

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-wide/16 v0, 0x14d

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerView$2;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final buildSpringChainsOfAllAppIcons()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 25
    .line 26
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v1, v0, -0x1

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    move v3, v2

    .line 40
    :goto_0
    if-ltz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/widget/ImageView;

    .line 57
    .line 58
    add-int/lit8 v5, v0, -0x3

    .line 59
    .line 60
    if-ge v1, v5, :cond_2

    .line 61
    .line 62
    const/4 v5, 0x4

    .line 63
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    sget-object v5, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    .line 71
    .line 72
    sub-int v6, v0, v1

    .line 73
    .line 74
    add-int/lit8 v6, v6, -0x1

    .line 75
    .line 76
    aget v5, v5, v6

    .line 77
    .line 78
    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 79
    .line 80
    new-instance v7, Lcom/android/wm/shell/freeform/FreeformContainerView$8;

    .line 81
    .line 82
    invoke-direct {v7, p0, v4, v5}, Lcom/android/wm/shell/freeform/FreeformContainerView$8;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;F)V

    .line 83
    .line 84
    .line 85
    iget-object v5, v6, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5, v6}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v8, v6, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 95
    .line 96
    invoke-virtual {v5, v8}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 97
    .line 98
    .line 99
    iget-object v8, v6, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object v5, v6, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    .line 106
    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 110
    .line 111
    new-instance v6, Lcom/android/wm/shell/freeform/FreeformContainerView$9;

    .line 112
    .line 113
    invoke-direct {v6, p0, v4, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView$9;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;I)V

    .line 114
    .line 115
    .line 116
    iget-object v4, v5, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    .line 123
    .line 124
    .line 125
    iget-object v7, v5, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 126
    .line 127
    invoke-virtual {v4, v7}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 128
    .line 129
    .line 130
    iget-object v7, v5, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    .line 132
    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    iget-object v4, v5, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    .line 137
    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateAllSpringsCurrentValue()V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex()V

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const-string v0, "FreeformContainer"

    .line 8
    .line 9
    const-string v1, "[ContainerView] dispatchKeyEvent(DOWN)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "[ViewController] onKeyDown("

    .line 25
    .line 26
    if-ne v3, v5, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-ne v2, v3, :cond_3

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "), close folder"

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4, v4, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-string v3, "), "

    .line 56
    .line 57
    invoke-static {v6, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 62
    .line 63
    if-eq v3, v4, :cond_2

    .line 64
    .line 65
    if-eq v3, v5, :cond_1

    .line 66
    .line 67
    const-string v3, "UNKNOWN"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "STATE_FOLDER"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string v3, "STATE_POINTER"

    .line 74
    .line 75
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, ", should not be focused! lp="

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->setFocusable(Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateTouchableRegion()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    xor-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Landroid/graphics/Region;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 49
    .line 50
    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    .line 51
    .line 52
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return v0
.end method

.method public final getIconViewListCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getPointerViewBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 16
    .line 17
    add-int v2, v0, p0

    .line 18
    .line 19
    add-int/2addr p0, v1

    .line 20
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final isTailIconViewOrder(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gt v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sub-int/2addr p0, v2

    .line 15
    add-int/lit8 v0, p0, -0x1

    .line 16
    .line 17
    add-int/lit8 p0, p0, -0x2

    .line 18
    .line 19
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-lt v0, p1, :cond_1

    .line 24
    .line 25
    if-lt p1, p0, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    :cond_1
    return v1
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewImmediately()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCloseSystemDialogs(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "FreeformContainer"

    .line 5
    .line 6
    const-string v0, "[ContainerView] onCloseSystemDialogs"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1, p1, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onItemAdded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    const/4 v2, -0x2

    .line 21
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-le p1, v1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/2addr v3, v2

    .line 72
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/ImageView;

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 84
    .line 85
    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-ne p1, v1, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 103
    .line 104
    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    const-string v2, "FreeformContainer"

    .line 109
    .line 110
    const-string v3, "[ViewController] Show Window"

    .line 111
    .line 112
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 116
    .line 117
    iget-object v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 136
    .line 137
    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    .line 138
    .line 139
    const/16 v3, 0x8

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1, v1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 145
    .line 146
    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewDescription()V

    .line 148
    .line 149
    .line 150
    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 151
    .line 152
    return-void
.end method

.method public final onItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const v1, 0x7f0101af

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerView$3;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideWindow()V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewDescription()V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 69
    .line 70
    return-void
.end method

.method public final onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-static {p3, v0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    int-to-float p2, p2

    .line 31
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewImmediately()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTrayBounds(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    float-to-int v1, v1

    .line 30
    float-to-int v2, v2

    .line 31
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "[ViewController] onTouchEvent("

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "), close folder"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "FreeformContainer"

    .line 57
    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1, v1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final onViewDestroyed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    .line 2
    .line 3
    const-string v1, "FreeformContainer"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "[ContainerView] savePositionToSharedPreferences, skip saving. Need to init position first"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, "freeform_container_pref"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 27
    .line 28
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 29
    .line 30
    const-string/jumbo v3, "position_x"

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 37
    .line 38
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    const-string/jumbo v3, "position_y"

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const-string/jumbo v3, "rotation"

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    const-string v0, "[ContainerView] removeAllSpringsListeners"

    .line 74
    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 135
    .line 136
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideWindow()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    .line 166
    .line 167
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final setPointerPosition(FFZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 4
    .line 5
    int-to-float v0, p3

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    sub-float/2addr p1, v0

    .line 10
    const/high16 v0, 0x3f000000    # 0.5f

    .line 11
    .line 12
    add-float/2addr p1, v0

    .line 13
    int-to-float v2, p3

    .line 14
    div-float/2addr v2, v1

    .line 15
    sub-float/2addr p2, v2

    .line 16
    add-float/2addr p2, v0

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    float-to-int p1, p1

    .line 20
    float-to-int p2, p2

    .line 21
    add-int v1, p1, p3

    .line 22
    .line 23
    add-int/2addr p3, p2

    .line 24
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    float-to-int p1, p1

    .line 31
    float-to-int p2, p2

    .line 32
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 33
    .line 34
    add-int v1, p1, v0

    .line 35
    .line 36
    add-int/2addr v0, p2

    .line 37
    invoke-virtual {p3, p1, p2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 43
    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-virtual {p1, p3, p3, p2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->adjustPositionInDisplay(IILandroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    int-to-float p2, p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setX(F)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    int-to-float p2, p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setY(F)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 71
    .line 72
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    int-to-float p3, p3

    .line 75
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    int-to-float p2, p2

    .line 78
    invoke-virtual {p1, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 79
    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    new-instance p1, Landroid/graphics/Point;

    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 119
    .line 120
    .line 121
    new-instance p2, Landroid/graphics/Point;

    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 124
    .line 125
    iget-object p3, p3, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    div-int/lit8 p3, p3, 0x3

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    div-int/lit8 v0, v0, 0x3

    .line 142
    .line 143
    invoke-direct {p2, p3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 144
    .line 145
    .line 146
    iget p3, p1, Landroid/graphics/Point;->y:I

    .line 147
    .line 148
    iget v0, p2, Landroid/graphics/Point;->y:I

    .line 149
    .line 150
    div-int/2addr p3, v0

    .line 151
    mul-int/lit8 p3, p3, 0x3

    .line 152
    .line 153
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 154
    .line 155
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 156
    .line 157
    div-int/2addr p1, p2

    .line 158
    add-int/2addr p1, p3

    .line 159
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastIconPosition:I

    .line 160
    .line 161
    if-eq p2, p1, :cond_2

    .line 162
    .line 163
    sget-object p2, Lcom/samsung/android/core/CoreSaConstant;->FREEFORM_DETAIL_MOVE_ICON:[Ljava/lang/String;

    .line 164
    .line 165
    aget-object p2, p2, p1

    .line 166
    .line 167
    const-string p3, "2203"

    .line 168
    .line 169
    invoke-static {p3, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastIconPosition:I

    .line 173
    .line 174
    :cond_2
    return-void
.end method

.method public final updateAllSpringsCurrentValue()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 30
    .line 31
    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 32
    .line 33
    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getX()F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    float-to-double v4, v4

    .line 42
    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 68
    .line 69
    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 70
    .line 71
    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 72
    .line 73
    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getY()F

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    float-to-double v6, v6

    .line 80
    invoke-virtual {v1, v6, v7}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method

.method public final updateIconsPosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v2, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final updatePointerViewDescription()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "activate"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x2

    .line 27
    if-lt v0, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x7f130699

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string/jumbo v2, "open"

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v1, ""

    .line 45
    .line 46
    move-object v2, v1

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 53
    .line 54
    new-instance v3, Lcom/android/wm/shell/freeform/FreeformContainerView$4;

    .line 55
    .line 56
    invoke-direct {v3, p0, v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView$4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final updatePointerViewImmediately()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateAllSpringsCurrentValue()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ltz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/ImageView;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    .line 49
    .line 50
    mul-int/2addr v4, v1

    .line 51
    int-to-float v4, v4

    .line 52
    add-float/2addr v3, v4

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final updatePointerViewVisibility(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final updateSpringChainEndValue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    float-to-double v1, v1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    float-to-double v1, p0

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final updateSpringConfig(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 4
    .line 5
    const/16 v1, 0x96

    .line 6
    .line 7
    int-to-double v1, v1

    .line 8
    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iput-wide v3, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 17
    .line 18
    int-to-double v3, p1

    .line 19
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    iput-wide v5, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 38
    .line 39
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 48
    .line 49
    const/16 v0, 0xc8

    .line 50
    .line 51
    int-to-double v0, v0

    .line 52
    invoke-static {v0, v1}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    iput-wide v2, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 61
    .line 62
    const/16 v2, 0xc

    .line 63
    .line 64
    int-to-double v2, v2

    .line 65
    invoke-static {v2, v3}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    iput-wide v4, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 84
    .line 85
    invoke-static {v2, v3}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iput-wide v0, p0, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 90
    .line 91
    return-void
.end method

.method public final updateTouchableRegion()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-le v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method
