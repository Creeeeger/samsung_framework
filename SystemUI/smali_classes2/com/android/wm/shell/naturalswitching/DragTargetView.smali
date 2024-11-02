.class public Lcom/android/wm/shell/naturalswitching/DragTargetView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public mAnimatingExit:Z

.field public mBoundsAnimator:Landroid/animation/ValueAnimator;

.field public mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mCornerRadius:I

.field public final mCurrentDragTargetRect:Landroid/graphics/Rect;

.field public final mCurrentOutlineInsets:Landroid/graphics/Rect;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public mDividerSize:I

.field public final mDownScale:Landroid/graphics/PointF;

.field public mDragTarget:Landroid/widget/FrameLayout;

.field public mDragTargetBounds:Landroid/graphics/Rect;

.field public mDragTargetImage:Landroid/widget/ImageView;

.field public mDragTargetWindowingMode:I

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mHandlerPosition:Landroid/graphics/Point;

.field public mHasProtectedContent:Z

.field public mIsDragEndCalled:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

.field public mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field public final mOutlineProvider:Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

.field public mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mStableRect:Landroid/graphics/Rect;

.field public final mTargetOutlineInsets:Landroid/graphics/Rect;

.field public mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public final mTmpFloats:[F

.field public final mUpScale:Landroid/graphics/PointF;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/RectEvaluator;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance p2, Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    new-instance p2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance p2, Landroid/graphics/PointF;

    .line 36
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    .line 43
    .line 44
    new-instance p2, Landroid/graphics/PointF;

    .line 45
    .line 46
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    .line 52
    .line 53
    const/16 p1, 0x9

    .line 54
    .line 55
    new-array p1, p1, [F

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTmpFloats:[F

    .line 58
    .line 59
    new-instance p1, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    new-instance p1, Landroid/graphics/Point;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    .line 72
    .line 73
    new-instance p1, Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 79
    .line 80
    new-instance p1, Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 86
    .line 87
    new-instance p1, Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$1;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final adjustDragTargetViewBoundsIfNeeded()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    .line 21
    new-instance v4, Landroid/graphics/Rect;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-le v1, v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sub-int/2addr v1, v2

    .line 55
    div-int/lit8 v1, v1, 0x2

    .line 56
    .line 57
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    add-int/2addr v2, v1

    .line 60
    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v2

    .line 67
    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-le v1, v2, :cond_2

    .line 78
    .line 79
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/2addr v0, v1

    .line 86
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 87
    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    .line 114
    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-ge v2, v1, :cond_4

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    sub-int/2addr v2, v1

    .line 139
    int-to-float v1, v2

    .line 140
    const/high16 v2, 0x40000000    # 2.0f

    .line 141
    .line 142
    div-float/2addr v1, v2

    .line 143
    goto :goto_1

    .line 144
    :cond_4
    const/4 v1, 0x0

    .line 145
    :goto_1
    move v7, v1

    .line 146
    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    .line 147
    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    const-wide/16 v0, 0x96

    .line 151
    .line 152
    :goto_2
    move-wide v5, v0

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    if-eqz v0, :cond_6

    .line 155
    .line 156
    const-wide/16 v0, 0x15e

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    const-wide/16 v0, 0xaf

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v8, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    move-object v1, v8

    .line 179
    move-object v2, p0

    .line 180
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    :cond_7
    return-void
.end method

.method public final getCurrentDragTargetRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    float-to-int v1, v1

    .line 39
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    float-to-int v2, v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    return-object p0
.end method

.method public final getDropSide()I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x78

    .line 20
    .line 21
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 24
    .line 25
    iget-boolean v4, v3, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    const/16 v6, 0x10

    .line 29
    .line 30
    const/16 v7, 0x8

    .line 31
    .line 32
    const/4 v8, 0x4

    .line 33
    const/4 v9, 0x2

    .line 34
    if-eqz v4, :cond_5

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 37
    .line 38
    iget v4, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 39
    .line 40
    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 41
    .line 42
    if-le v4, v3, :cond_0

    .line 43
    .line 44
    move v3, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    if-nez v3, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    if-gt v3, v2, :cond_1

    .line 54
    .line 55
    return v8

    .line 56
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    if-lt v0, v1, :cond_4

    .line 61
    .line 62
    return v6

    .line 63
    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 64
    .line 65
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    if-gt v2, v3, :cond_3

    .line 70
    .line 71
    return v9

    .line 72
    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    if-lt v0, v1, :cond_4

    .line 77
    .line 78
    return v7

    .line 79
    :cond_4
    return v5

    .line 80
    :cond_5
    invoke-virtual {v3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_a

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_a

    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_7

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 101
    .line 102
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 103
    .line 104
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    if-gt v2, v3, :cond_6

    .line 107
    .line 108
    return v9

    .line 109
    :cond_6
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 112
    .line 113
    if-lt v0, v1, :cond_9

    .line 114
    .line 115
    return v7

    .line 116
    :cond_7
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 117
    .line 118
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    if-gt v2, v3, :cond_8

    .line 123
    .line 124
    return v8

    .line 125
    :cond_8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 126
    .line 127
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    if-lt v0, v1, :cond_9

    .line 130
    .line 131
    return v6

    .line 132
    :cond_9
    return v5

    .line 133
    :cond_a
    new-instance v2, Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 141
    .line 142
    .line 143
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 144
    .line 145
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 146
    .line 147
    sub-int/2addr v3, v4

    .line 148
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    iget v10, v2, Landroid/graphics/Rect;->top:I

    .line 151
    .line 152
    sub-int/2addr v4, v10

    .line 153
    iget v10, v2, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    iget v11, v1, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    sub-int/2addr v10, v11

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    div-int/2addr v11, v9

    .line 167
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 170
    .line 171
    sub-int/2addr v2, v12

    .line 172
    if-le v2, v11, :cond_b

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_b
    move v11, v2

    .line 176
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 177
    .line 178
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 179
    .line 180
    iget v14, v1, Landroid/graphics/Rect;->left:I

    .line 181
    .line 182
    if-gt v13, v14, :cond_d

    .line 183
    .line 184
    iget v10, v2, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 187
    .line 188
    if-gt v10, v1, :cond_c

    .line 189
    .line 190
    if-lt v3, v4, :cond_10

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_c
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 194
    .line 195
    if-lt v1, v12, :cond_13

    .line 196
    .line 197
    if-lt v3, v11, :cond_18

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_d
    iget v15, v2, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    if-gt v15, v7, :cond_f

    .line 205
    .line 206
    if-gt v13, v14, :cond_e

    .line 207
    .line 208
    if-lt v3, v4, :cond_10

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_e
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 212
    .line 213
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 214
    .line 215
    if-lt v2, v1, :cond_10

    .line 216
    .line 217
    if-lt v10, v4, :cond_10

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_f
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 221
    .line 222
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 223
    .line 224
    if-lt v6, v1, :cond_12

    .line 225
    .line 226
    if-gt v15, v7, :cond_11

    .line 227
    .line 228
    if-lt v10, v4, :cond_10

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_10
    move v6, v8

    .line 232
    goto :goto_4

    .line 233
    :cond_11
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 234
    .line 235
    if-lt v1, v12, :cond_15

    .line 236
    .line 237
    if-lt v10, v11, :cond_16

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_12
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    .line 242
    if-lt v2, v12, :cond_17

    .line 243
    .line 244
    if-gt v13, v14, :cond_14

    .line 245
    .line 246
    if-lt v3, v11, :cond_16

    .line 247
    .line 248
    :cond_13
    :goto_2
    move v6, v9

    .line 249
    goto :goto_4

    .line 250
    :cond_14
    if-ne v6, v1, :cond_16

    .line 251
    .line 252
    if-lt v10, v11, :cond_16

    .line 253
    .line 254
    :cond_15
    :goto_3
    const/16 v6, 0x8

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_16
    const/16 v6, 0x10

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_17
    move v6, v5

    .line 261
    :cond_18
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    const/16 v2, 0x20

    .line 268
    .line 269
    if-eqz v1, :cond_1e

    .line 270
    .line 271
    if-ne v6, v5, :cond_1e

    .line 272
    .line 273
    iget v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isQuarter(I)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_1e

    .line 280
    .line 281
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 282
    .line 283
    iget v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 290
    .line 291
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitCreateMode()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eq v3, v9, :cond_1c

    .line 296
    .line 297
    const/4 v4, 0x3

    .line 298
    if-eq v3, v4, :cond_1b

    .line 299
    .line 300
    if-eq v3, v8, :cond_1a

    .line 301
    .line 302
    const/4 v4, 0x5

    .line 303
    if-eq v3, v4, :cond_19

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_19
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 307
    .line 308
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 309
    .line 310
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 311
    .line 312
    if-le v0, v1, :cond_1d

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_1a
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 316
    .line 317
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 318
    .line 319
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 320
    .line 321
    if-le v0, v1, :cond_1d

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_1b
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 325
    .line 326
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 327
    .line 328
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 329
    .line 330
    iget v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    .line 331
    .line 332
    sub-int/2addr v1, v0

    .line 333
    if-ge v3, v1, :cond_1d

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_1c
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 337
    .line 338
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 339
    .line 340
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 341
    .line 342
    iget v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    .line 343
    .line 344
    sub-int/2addr v1, v0

    .line 345
    if-ge v3, v1, :cond_1d

    .line 346
    .line 347
    :goto_5
    move v6, v2

    .line 348
    :cond_1d
    :goto_6
    return v6

    .line 349
    :cond_1e
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_23

    .line 356
    .line 357
    iget v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isQuarter(I)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-nez v1, :cond_1f

    .line 364
    .line 365
    goto/16 :goto_7

    .line 366
    .line 367
    :cond_1f
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isNonTargetsHorizontal()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_21

    .line 380
    .line 381
    if-ne v6, v8, :cond_20

    .line 382
    .line 383
    and-int/lit8 v0, v1, 0x10

    .line 384
    .line 385
    if-nez v0, :cond_27

    .line 386
    .line 387
    :cond_20
    const/16 v0, 0x10

    .line 388
    .line 389
    if-ne v6, v0, :cond_26

    .line 390
    .line 391
    and-int/lit8 v0, v1, 0x40

    .line 392
    .line 393
    if-eqz v0, :cond_26

    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_21
    if-ne v6, v9, :cond_22

    .line 397
    .line 398
    and-int/lit8 v0, v1, 0x8

    .line 399
    .line 400
    if-nez v0, :cond_27

    .line 401
    .line 402
    :cond_22
    const/16 v0, 0x8

    .line 403
    .line 404
    if-ne v6, v0, :cond_26

    .line 405
    .line 406
    and-int/lit8 v0, v1, 0x20

    .line 407
    .line 408
    if-eqz v0, :cond_26

    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_25

    .line 416
    .line 417
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 418
    .line 419
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_25

    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isNonTargetsHorizontal()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_24

    .line 432
    .line 433
    if-eq v6, v9, :cond_26

    .line 434
    .line 435
    const/16 v0, 0x8

    .line 436
    .line 437
    if-ne v6, v0, :cond_27

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :cond_24
    if-eq v6, v8, :cond_26

    .line 441
    .line 442
    const/16 v0, 0x10

    .line 443
    .line 444
    if-ne v6, v0, :cond_27

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_25
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 448
    .line 449
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-nez v1, :cond_26

    .line 454
    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    if-eqz v1, :cond_26

    .line 460
    .line 461
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 462
    .line 463
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 464
    .line 465
    .line 466
    :cond_26
    :goto_7
    move v5, v6

    .line 467
    :cond_27
    :goto_8
    return v5
.end method

.method public final getMinimumDragTargetViewBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 46
    .line 47
    iget-boolean v4, v4, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 48
    .line 49
    const/high16 v5, 0x3f000000    # 0.5f

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    if-le v2, v3, :cond_1

    .line 54
    .line 55
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    int-to-float v2, v2

    .line 58
    mul-float/2addr v2, v5

    .line 59
    add-float/2addr v2, v5

    .line 60
    float-to-int v2, v2

    .line 61
    add-int/2addr v3, v2

    .line 62
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    mul-float/2addr v3, v5

    .line 69
    add-float/2addr v3, v5

    .line 70
    float-to-int v3, v3

    .line 71
    add-int/2addr v4, v3

    .line 72
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    .line 74
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 75
    .line 76
    int-to-float v2, v2

    .line 77
    const v4, 0x3f59999a    # 0.85f

    .line 78
    .line 79
    .line 80
    mul-float/2addr v2, v4

    .line 81
    add-float/2addr v2, v5

    .line 82
    float-to-int v2, v2

    .line 83
    add-int/2addr v3, v2

    .line 84
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    .line 93
    .line 94
    sub-int/2addr v2, p0

    .line 95
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 98
    .line 99
    sub-int/2addr v2, p0

    .line 100
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method

.method public final isFloatingDragTarget()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    :goto_1
    return p0
.end method

.method public final isPipNaturalSwitching()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final isQuarter(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/16 v0, 0xc

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x4

    .line 27
    if-ne p1, v0, :cond_4

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ne p0, v2, :cond_4

    .line 36
    .line 37
    :cond_3
    return v2

    .line 38
    :cond_4
    return v1
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final startSpringAnimation(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 25
    .line 26
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 27
    .line 28
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-le v1, v0, :cond_1

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v0, v3

    .line 37
    :goto_0
    xor-int/2addr v0, v2

    .line 38
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    if-ge v4, v6, :cond_2

    .line 47
    .line 48
    sub-int/2addr v6, v4

    .line 49
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    if-ge v4, v6, :cond_3

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sub-int/2addr v6, v4

    .line 60
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    iget v4, v5, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    if-le v0, v4, :cond_4

    .line 67
    .line 68
    sub-int/2addr v0, v4

    .line 69
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    if-le v0, v1, :cond_5

    .line 76
    .line 77
    sub-int/2addr v0, v1

    .line 78
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    move v2, v3

    .line 95
    :goto_1
    if-nez v2, :cond_7

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 103
    .line 104
    .line 105
    :cond_8
    new-instance p1, Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v0, Landroid/graphics/Rect;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x2

    .line 118
    new-array v1, v1, [F

    .line 119
    .line 120
    fill-array-data v1, :array_0

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    new-instance v2, Lcom/android/wm/shell/naturalswitching/DragTargetView$3;

    .line 130
    .line 131
    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$3;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    new-instance v0, Lcom/android/wm/shell/naturalswitching/DragTargetView$4;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$4;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 155
    .line 156
    const-wide/16 v0, 0x15e

    .line 157
    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 164
    .line 165
    .line 166
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    .line 169
    .line 170
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    .line 178
    .line 179
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 182
    .line 183
    .line 184
    new-instance p1, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;

    .line 185
    .line 186
    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    .line 187
    .line 188
    .line 189
    const-wide/16 v0, 0xfa

    .line 190
    .line 191
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 196
    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 205
    .line 206
    .line 207
    :goto_3
    return-void

    .line 208
    nop

    .line 209
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
