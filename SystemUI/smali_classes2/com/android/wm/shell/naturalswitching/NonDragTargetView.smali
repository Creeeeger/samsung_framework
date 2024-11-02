.class public Lcom/android/wm/shell/naturalswitching/NonDragTargetView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContainingBounds:Landroid/graphics/Rect;

.field public mCornerRadius:I

.field public mDimView:Landroid/view/View;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public mDividerSize:I

.field public final mDragTargetBounds:Landroid/graphics/Rect;

.field public mDragTargetWindowingMode:I

.field public mDropSide:I

.field public mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public mHalfTarget:I

.field public mIsFloatingDragTarget:Z

.field public mIsInitialExpanded:Z

.field public mMainView:Landroid/view/ViewGroup;

.field public mNaturalSwitchingMode:I

.field public final mNonTargets:Landroid/util/SparseArray;

.field public mOnDrawCallback:Ljava/lang/Runnable;

.field public final mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

.field public mPushRegion:I

.field public final mPushRegions:Landroid/util/SparseArray;

.field public mPushed:Z

.field public final mPushedNonTargets:Landroid/util/ArraySet;

.field public mQuarterTarget:I

.field public mScaleDeltaSize:I

.field public mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStableRect:Landroid/graphics/Rect;

.field public mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    .line 9
    .line 10
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    .line 11
    .line 12
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance p2, Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    new-instance p2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance p2, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    new-instance p2, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 55
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 62
    .line 63
    new-instance v0, Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 71
    .line 72
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    .line 73
    .line 74
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawCallback:Ljava/lang/Runnable;

    .line 75
    .line 76
    new-instance p1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    new-instance p1, Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d025a

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final getCenterFreeformBounds()Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f070a47

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f070a46

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-instance v2, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v4, v0

    .line 41
    div-int/lit8 v4, v4, 0x2

    .line 42
    .line 43
    add-int/2addr v4, v3

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    sub-int/2addr p0, v1

    .line 51
    div-int/lit8 p0, p0, 0x2

    .line 52
    .line 53
    add-int/2addr v0, v4

    .line 54
    add-int/2addr v1, p0

    .line 55
    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    .line 58
    return-object v2
.end method

.method public final getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    if-ne v0, v5, :cond_4

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    div-int/2addr v6, v5

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    div-int/2addr p0, v5

    .line 37
    new-instance v5, Landroid/graphics/PointF;

    .line 38
    .line 39
    int-to-float v6, v6

    .line 40
    int-to-float p0, p0

    .line 41
    invoke-direct {v5, v6, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 42
    .line 43
    .line 44
    if-ne p1, v4, :cond_0

    .line 45
    .line 46
    new-instance p0, Landroid/graphics/PointF;

    .line 47
    .line 48
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    int-to-float p1, p1

    .line 51
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    int-to-float v1, v1

    .line 54
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance p0, Landroid/graphics/PointF;

    .line 61
    .line 62
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    int-to-float p1, p1

    .line 65
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    int-to-float p2, p2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    if-ne p1, v3, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance p0, Landroid/graphics/PointF;

    .line 87
    .line 88
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    int-to-float p1, p1

    .line 91
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    int-to-float v1, v1

    .line 94
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance p0, Landroid/graphics/PointF;

    .line 101
    .line 102
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 103
    .line 104
    int-to-float p1, p1

    .line 105
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    int-to-float p2, p2

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    if-ne p1, v2, :cond_2

    .line 119
    .line 120
    new-instance p0, Landroid/graphics/PointF;

    .line 121
    .line 122
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 123
    .line 124
    int-to-float p1, p1

    .line 125
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance p0, Landroid/graphics/PointF;

    .line 141
    .line 142
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    int-to-float p1, p1

    .line 145
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 146
    .line 147
    int-to-float p2, p2

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    if-ne p1, v1, :cond_3

    .line 156
    .line 157
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance p0, Landroid/graphics/PointF;

    .line 164
    .line 165
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 166
    .line 167
    int-to-float p1, p1

    .line 168
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    int-to-float v1, v1

    .line 171
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance p0, Landroid/graphics/PointF;

    .line 178
    .line 179
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    int-to-float p1, p1

    .line 182
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 183
    .line 184
    int-to-float p2, p2

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_3
    :goto_0
    return-object v0

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getCenterFreeformBounds()Landroid/graphics/Rect;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    if-ne p1, v4, :cond_5

    .line 202
    .line 203
    new-instance p1, Landroid/graphics/PointF;

    .line 204
    .line 205
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 206
    .line 207
    int-to-float v1, v1

    .line 208
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 209
    .line 210
    int-to-float v2, v2

    .line 211
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    new-instance p1, Landroid/graphics/PointF;

    .line 218
    .line 219
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 220
    .line 221
    int-to-float v1, v1

    .line 222
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 223
    .line 224
    int-to-float p2, p2

    .line 225
    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    new-instance p1, Landroid/graphics/PointF;

    .line 232
    .line 233
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 234
    .line 235
    int-to-float p2, p2

    .line 236
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 237
    .line 238
    int-to-float v1, v1

    .line 239
    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    new-instance p1, Landroid/graphics/PointF;

    .line 246
    .line 247
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 248
    .line 249
    int-to-float p2, p2

    .line 250
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 251
    .line 252
    int-to-float p0, p0

    .line 253
    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_5
    if-ne p1, v3, :cond_6

    .line 262
    .line 263
    new-instance p1, Landroid/graphics/PointF;

    .line 264
    .line 265
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 266
    .line 267
    int-to-float v1, v1

    .line 268
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 269
    .line 270
    int-to-float v2, v2

    .line 271
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance p1, Landroid/graphics/PointF;

    .line 278
    .line 279
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 280
    .line 281
    int-to-float v1, v1

    .line 282
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 283
    .line 284
    int-to-float v2, v2

    .line 285
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    new-instance p1, Landroid/graphics/PointF;

    .line 292
    .line 293
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 294
    .line 295
    int-to-float v1, v1

    .line 296
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 297
    .line 298
    int-to-float p2, p2

    .line 299
    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    new-instance p1, Landroid/graphics/PointF;

    .line 306
    .line 307
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 308
    .line 309
    int-to-float p2, p2

    .line 310
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 311
    .line 312
    int-to-float p0, p0

    .line 313
    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_6
    if-ne p1, v2, :cond_7

    .line 321
    .line 322
    new-instance p1, Landroid/graphics/PointF;

    .line 323
    .line 324
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 325
    .line 326
    int-to-float v1, v1

    .line 327
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 328
    .line 329
    int-to-float v2, v2

    .line 330
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    new-instance p1, Landroid/graphics/PointF;

    .line 337
    .line 338
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 339
    .line 340
    int-to-float v1, v1

    .line 341
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 342
    .line 343
    int-to-float v2, v2

    .line 344
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    new-instance p1, Landroid/graphics/PointF;

    .line 351
    .line 352
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 353
    .line 354
    int-to-float v1, v1

    .line 355
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 356
    .line 357
    int-to-float p0, p0

    .line 358
    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    new-instance p0, Landroid/graphics/PointF;

    .line 365
    .line 366
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 367
    .line 368
    int-to-float p1, p1

    .line 369
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 370
    .line 371
    int-to-float p2, p2

    .line 372
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_1

    .line 379
    :cond_7
    if-ne p1, v1, :cond_8

    .line 380
    .line 381
    new-instance p1, Landroid/graphics/PointF;

    .line 382
    .line 383
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 384
    .line 385
    int-to-float v1, v1

    .line 386
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 387
    .line 388
    int-to-float v2, v2

    .line 389
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    new-instance p1, Landroid/graphics/PointF;

    .line 396
    .line 397
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 398
    .line 399
    int-to-float p0, p0

    .line 400
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 401
    .line 402
    int-to-float v1, v1

    .line 403
    invoke-direct {p1, p0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    new-instance p0, Landroid/graphics/PointF;

    .line 410
    .line 411
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 412
    .line 413
    int-to-float p1, p1

    .line 414
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 415
    .line 416
    int-to-float v1, v1

    .line 417
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    new-instance p0, Landroid/graphics/PointF;

    .line 424
    .line 425
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 426
    .line 427
    int-to-float p1, p1

    .line 428
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 429
    .line 430
    int-to-float p2, p2

    .line 431
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    :cond_8
    :goto_1
    return-object v0
.end method

.method public final getReverseWindowingMode(IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x4

    .line 10
    const/4 p2, 0x3

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    if-ne p1, p0, :cond_3

    .line 15
    .line 16
    return p2

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 37
    .line 38
    :goto_0
    return p0

    .line 39
    :cond_3
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-nez p1, :cond_4

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    xor-int/2addr p1, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 68
    .line 69
    if-eq p1, v1, :cond_3

    .line 70
    .line 71
    if-eq p1, v2, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 75
    .line 76
    if-eq p1, v1, :cond_4

    .line 77
    .line 78
    if-ne p1, v2, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v3, 0x0

    .line 82
    :cond_4
    :goto_1
    move p1, v3

    .line 83
    :goto_2
    const/4 v3, 0x2

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 93
    .line 94
    invoke-static {p1, v4, v3, v4}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 105
    .line 106
    sub-int/2addr v4, v5

    .line 107
    div-int/2addr v4, v3

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 116
    .line 117
    add-int/2addr p1, v4

    .line 118
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 125
    .line 126
    :goto_3
    add-int/2addr v4, v5

    .line 127
    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 128
    .line 129
    if-eq v5, v3, :cond_9

    .line 130
    .line 131
    if-eq v5, v1, :cond_8

    .line 132
    .line 133
    const/16 v1, 0x8

    .line 134
    .line 135
    if-eq v5, v1, :cond_7

    .line 136
    .line 137
    if-eq v5, v2, :cond_6

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 141
    .line 142
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 143
    .line 144
    sub-int/2addr p0, v4

    .line 145
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 149
    .line 150
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 151
    .line 152
    sub-int/2addr p0, p1

    .line 153
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 157
    .line 158
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 159
    .line 160
    add-int/2addr p0, v4

    .line 161
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 165
    .line 166
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 167
    .line 168
    add-int/2addr p0, p1

    .line 169
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 170
    .line 171
    :goto_4
    return-object v0
.end method

.method public final getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    if-ltz v0, :cond_c

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_3
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x1

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lt v2, v3, :cond_4

    .line 61
    .line 62
    move v2, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v2, v4

    .line 65
    :goto_1
    if-eqz v2, :cond_b

    .line 66
    .line 67
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-lt v2, v3, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    move v5, v4

    .line 79
    :goto_2
    if-eqz v5, :cond_a

    .line 80
    .line 81
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    add-int/lit8 v3, v2, -0x1

    .line 88
    .line 89
    move v5, v4

    .line 90
    :goto_3
    if-ge v4, v2, :cond_9

    .line 91
    .line 92
    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Landroid/graphics/PointF;

    .line 99
    .line 100
    iget-object v7, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/graphics/PointF;

    .line 107
    .line 108
    iget v7, v6, Landroid/graphics/PointF;->y:F

    .line 109
    .line 110
    int-to-float v8, p2

    .line 111
    cmpg-float v9, v7, v8

    .line 112
    .line 113
    if-gez v9, :cond_6

    .line 114
    .line 115
    iget v9, v3, Landroid/graphics/PointF;->y:F

    .line 116
    .line 117
    cmpl-float v9, v9, v8

    .line 118
    .line 119
    if-gez v9, :cond_7

    .line 120
    .line 121
    :cond_6
    iget v9, v3, Landroid/graphics/PointF;->y:F

    .line 122
    .line 123
    cmpg-float v9, v9, v8

    .line 124
    .line 125
    if-gez v9, :cond_8

    .line 126
    .line 127
    cmpl-float v9, v7, v8

    .line 128
    .line 129
    if-ltz v9, :cond_8

    .line 130
    .line 131
    :cond_7
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 132
    .line 133
    sub-float/2addr v8, v7

    .line 134
    iget v9, v3, Landroid/graphics/PointF;->y:F

    .line 135
    .line 136
    sub-float/2addr v9, v7

    .line 137
    div-float/2addr v8, v9

    .line 138
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 139
    .line 140
    invoke-static {v3, v6, v8, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    int-to-float v6, p1

    .line 145
    cmpg-float v3, v3, v6

    .line 146
    .line 147
    if-gtz v3, :cond_8

    .line 148
    .line 149
    xor-int/lit8 v5, v5, 0x1

    .line 150
    .line 151
    :cond_8
    add-int/lit8 v3, v4, 0x1

    .line 152
    .line 153
    move v10, v4

    .line 154
    move v4, v3

    .line 155
    move v3, v10

    .line 156
    goto :goto_3

    .line 157
    :cond_9
    move v4, v5

    .line 158
    :cond_a
    if-eqz v4, :cond_1

    .line 159
    .line 160
    return-object v1

    .line 161
    :cond_b
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    .line 167
    .line 168
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    return-object v1

    .line 175
    :cond_c
    const/4 p0, 0x0

    .line 176
    return-object p0
.end method

.method public final init(IILcom/android/wm/shell/naturalswitching/TaskVisibility;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 11

    .line 1
    const v0, 0x7f0a0601

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "window"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/WindowManager;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object p3, p3, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p3, v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget-object p3, p3, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 42
    .line 43
    iget v2, p3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 44
    .line 45
    iget p3, p3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v3, v3, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    .line 50
    .line 51
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    .line 52
    .line 53
    if-eqz p3, :cond_0

    .line 54
    .line 55
    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 71
    .line 72
    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    .line 77
    .line 78
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    .line 79
    .line 80
    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 81
    .line 82
    new-instance p1, Landroid/view/View;

    .line 83
    .line 84
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const p2, 0x1060425

    .line 103
    .line 104
    .line 105
    const/4 p3, 0x0

    .line 106
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    int-to-float p2, p2

    .line 115
    const p3, 0x3f666666    # 0.9f

    .line 116
    .line 117
    .line 118
    mul-float/2addr p2, p3

    .line 119
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-static {p2, p3, p4, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    .line 145
    .line 146
    const/4 p2, 0x4

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const/4 p3, 0x3

    .line 157
    if-nez p1, :cond_1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_1
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_2

    .line 167
    .line 168
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 169
    .line 170
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 174
    .line 175
    const/16 p4, 0xc

    .line 176
    .line 177
    if-ne p1, p4, :cond_4

    .line 178
    .line 179
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_3

    .line 186
    .line 187
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    .line 188
    .line 189
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_3
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    .line 193
    .line 194
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    .line 198
    .line 199
    if-ne p1, p3, :cond_5

    .line 200
    .line 201
    move p1, p2

    .line 202
    goto :goto_1

    .line 203
    :cond_5
    move p1, p3

    .line 204
    :goto_1
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 205
    .line 206
    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 207
    .line 208
    if-eqz p1, :cond_7

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const p4, 0x1050252

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    .line 222
    .line 223
    if-eqz p4, :cond_6

    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object p4

    .line 229
    const v0, 0x1050251

    .line 230
    .line 231
    .line 232
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 233
    .line 234
    .line 235
    move-result p4

    .line 236
    goto :goto_3

    .line 237
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object p4

    .line 241
    const v0, 0x1050250

    .line 242
    .line 243
    .line 244
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 245
    .line 246
    .line 247
    move-result p4

    .line 248
    goto :goto_3

    .line 249
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    const p4, 0x1050158

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    const v0, 0x1050157

    .line 265
    .line 266
    .line 267
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 268
    .line 269
    .line 270
    move-result p4

    .line 271
    :goto_3
    mul-int/lit8 p4, p4, 0x2

    .line 272
    .line 273
    sub-int/2addr p1, p4

    .line 274
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    const p4, 0x7f07095c

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mScaleDeltaSize:I

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    const p4, 0x1050321

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mCornerRadius:I

    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 303
    .line 304
    const/16 p4, 0xd

    .line 305
    .line 306
    invoke-virtual {p1, p4}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    const/16 p4, 0x10

    .line 311
    .line 312
    if-nez p1, :cond_d

    .line 313
    .line 314
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    .line 315
    .line 316
    if-eqz p1, :cond_9

    .line 317
    .line 318
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 319
    .line 320
    if-ne p1, v1, :cond_8

    .line 321
    .line 322
    move p1, v1

    .line 323
    goto :goto_4

    .line 324
    :cond_8
    move p1, v3

    .line 325
    :goto_4
    if-eqz p1, :cond_9

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 329
    .line 330
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    sub-int/2addr p2, v1

    .line 337
    :goto_5
    if-ltz p2, :cond_c

    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 344
    .line 345
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    invoke-virtual {p3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_b

    .line 354
    .line 355
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 356
    .line 357
    if-eq v0, v2, :cond_b

    .line 358
    .line 359
    invoke-static {v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-nez v2, :cond_b

    .line 364
    .line 365
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget v6, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 370
    .line 371
    iget-object v4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 372
    .line 373
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 374
    .line 375
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 380
    .line 381
    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 382
    .line 383
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    move-object v4, v2

    .line 388
    move-object v5, p0

    .line 389
    move v7, v0

    .line 390
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    .line 391
    .line 392
    .line 393
    iget p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    .line 394
    .line 395
    if-ne p3, v1, :cond_a

    .line 396
    .line 397
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setThumbnail()V

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_a
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 402
    .line 403
    .line 404
    :goto_6
    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 405
    .line 406
    invoke-virtual {p3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    :cond_b
    add-int/lit8 p2, p2, -0x1

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 413
    .line 414
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 415
    .line 416
    iget p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 417
    .line 418
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 419
    .line 420
    .line 421
    move-result-object p2

    .line 422
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_a

    .line 426
    .line 427
    :cond_d
    :goto_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    .line 428
    .line 429
    if-eqz p1, :cond_10

    .line 430
    .line 431
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 432
    .line 433
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-eqz p1, :cond_e

    .line 438
    .line 439
    goto/16 :goto_8

    .line 440
    .line 441
    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 450
    .line 451
    .line 452
    move-result-object p3

    .line 453
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 458
    .line 459
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 464
    .line 465
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 470
    .line 471
    iget-object v5, v5, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 472
    .line 473
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 478
    .line 479
    sub-int v6, v2, v6

    .line 480
    .line 481
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 482
    .line 483
    const/4 v8, 0x2

    .line 484
    invoke-static {v6, v7, v8, v7}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 489
    .line 490
    invoke-virtual {v7, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-eqz v1, :cond_f

    .line 495
    .line 496
    new-instance v1, Landroid/graphics/Rect;

    .line 497
    .line 498
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 499
    .line 500
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 501
    .line 502
    sub-int v8, v2, v8

    .line 503
    .line 504
    div-int/lit8 v9, v4, 0x2

    .line 505
    .line 506
    invoke-direct {v1, v7, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p0, p4, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-virtual {p1, p0, v1, v7, p4}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 517
    .line 518
    .line 519
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 520
    .line 521
    const/4 v7, 0x6

    .line 522
    invoke-virtual {v1, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    new-instance p1, Landroid/graphics/Rect;

    .line 526
    .line 527
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 528
    .line 529
    iget v7, v5, Landroid/graphics/Rect;->right:I

    .line 530
    .line 531
    sub-int v7, v2, v7

    .line 532
    .line 533
    invoke-direct {p1, v1, v9, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 534
    .line 535
    .line 536
    const/16 v1, 0x40

    .line 537
    .line 538
    invoke-virtual {p0, v1, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    invoke-virtual {p2, p0, p1, v7, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 546
    .line 547
    .line 548
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 549
    .line 550
    const/4 v1, 0x7

    .line 551
    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 555
    .line 556
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    if-eqz p1, :cond_12

    .line 561
    .line 562
    new-instance p1, Landroid/graphics/Rect;

    .line 563
    .line 564
    iget p2, v5, Landroid/graphics/Rect;->left:I

    .line 565
    .line 566
    invoke-direct {p1, p2, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 567
    .line 568
    .line 569
    const/16 p2, 0x8

    .line 570
    .line 571
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {p3, p0, p1, v1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p3}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 579
    .line 580
    .line 581
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 582
    .line 583
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    new-instance p1, Landroid/graphics/Rect;

    .line 587
    .line 588
    iget p2, v5, Landroid/graphics/Rect;->right:I

    .line 589
    .line 590
    sub-int/2addr v2, p2

    .line 591
    invoke-direct {p1, v6, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 592
    .line 593
    .line 594
    const/16 p2, 0x20

    .line 595
    .line 596
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/ArrayList;

    .line 597
    .line 598
    .line 599
    move-result-object p3

    .line 600
    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 604
    .line 605
    .line 606
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 607
    .line 608
    const/16 p2, 0x9

    .line 609
    .line 610
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_a

    .line 614
    .line 615
    :cond_10
    :goto_8
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    new-instance v8, Landroid/graphics/Rect;

    .line 624
    .line 625
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 626
    .line 627
    .line 628
    new-instance v1, Landroid/graphics/Rect;

    .line 629
    .line 630
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 631
    .line 632
    .line 633
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 634
    .line 635
    invoke-virtual {v2, v8, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 636
    .line 637
    .line 638
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 639
    .line 640
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    if-eqz v2, :cond_11

    .line 645
    .line 646
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 647
    .line 648
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 649
    .line 650
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 651
    .line 652
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 653
    .line 654
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 655
    .line 656
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 657
    .line 658
    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 659
    .line 660
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 661
    .line 662
    iput v4, v8, Landroid/graphics/Rect;->left:I

    .line 663
    .line 664
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 665
    .line 666
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 667
    .line 668
    goto :goto_9

    .line 669
    :cond_11
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 670
    .line 671
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 672
    .line 673
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 674
    .line 675
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 676
    .line 677
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 678
    .line 679
    :goto_9
    const/4 v2, 0x0

    .line 680
    const/16 v10, 0xd

    .line 681
    .line 682
    const/4 v9, 0x0

    .line 683
    const/4 v6, 0x0

    .line 684
    const/16 v7, 0xd

    .line 685
    .line 686
    move-object v4, p1

    .line 687
    move-object v5, p0

    .line 688
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 692
    .line 693
    .line 694
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 695
    .line 696
    invoke-virtual {v4, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    const/4 v9, 0x1

    .line 700
    move-object v4, v0

    .line 701
    move v6, v2

    .line 702
    move v7, v10

    .line 703
    move-object v8, v1

    .line 704
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 708
    .line 709
    .line 710
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 711
    .line 712
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 716
    .line 717
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 718
    .line 719
    iget p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 720
    .line 721
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 722
    .line 723
    .line 724
    move-result-object p2

    .line 725
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 726
    .line 727
    .line 728
    :cond_12
    :goto_a
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 729
    .line 730
    const/16 p2, 0x7e0

    .line 731
    .line 732
    const p3, 0x100318

    .line 733
    .line 734
    .line 735
    const/4 v0, -0x2

    .line 736
    invoke-direct {p1, p2, p3, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 737
    .line 738
    .line 739
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 740
    .line 741
    or-int/2addr p2, p4

    .line 742
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 743
    .line 744
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 745
    .line 746
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 747
    .line 748
    .line 749
    move-result p2

    .line 750
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 751
    .line 752
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 753
    .line 754
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 755
    .line 756
    .line 757
    move-result p2

    .line 758
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 759
    .line 760
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 761
    .line 762
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 763
    .line 764
    const p2, 0x800033

    .line 765
    .line 766
    .line 767
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 768
    .line 769
    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 770
    .line 771
    .line 772
    const-string p2, "NS:NonDragTargetView"

    .line 773
    .line 774
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 775
    .line 776
    .line 777
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    .line 778
    .line 779
    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    .line 781
    .line 782
    return-void
.end method

.method public final initPushRegion(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    const/high16 v1, 0x42340000    # 45.0f

    .line 14
    .line 15
    mul-float/2addr v0, v1

    .line 16
    const/high16 v1, 0x3f000000    # 0.5f

    .line 17
    .line 18
    add-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellDividerBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getDividerBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isNonTargetsHorizontal()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v2, v4, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    div-int/2addr p1, v3

    .line 72
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    sub-int/2addr v2, v0

    .line 75
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    add-int/2addr v1, v0

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 79
    .line 80
    new-instance v3, Landroid/graphics/Rect;

    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 87
    .line 88
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    add-int/2addr v5, p1

    .line 91
    invoke-direct {v3, v4, v2, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 99
    .line 100
    new-instance v3, Landroid/graphics/Rect;

    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    sub-int/2addr v4, p1

    .line 107
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 108
    .line 109
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    invoke-direct {v3, v4, v2, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x3

    .line 115
    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-ge v2, v4, :cond_4

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 138
    .line 139
    sub-int/2addr v2, v0

    .line 140
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    add-int/2addr v1, v0

    .line 143
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 144
    .line 145
    new-instance v4, Landroid/graphics/Rect;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 148
    .line 149
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 150
    .line 151
    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 152
    .line 153
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    add-int/lit8 v6, v6, 0x78

    .line 156
    .line 157
    invoke-direct {v4, v2, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 164
    .line 165
    new-instance v3, Landroid/graphics/Rect;

    .line 166
    .line 167
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 168
    .line 169
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 170
    .line 171
    sub-int/2addr v4, p1

    .line 172
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 173
    .line 174
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 175
    .line 176
    invoke-direct {v3, v2, v4, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    .line 178
    .line 179
    const/4 p0, 0x4

    .line 180
    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    return-void
.end method

.method public final isNonTargetsHorizontal()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    xor-int/2addr p0, v1

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 39
    .line 40
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 41
    .line 42
    if-ne v0, p0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_0
    return v1

    .line 47
    :cond_3
    return v2
.end method

.method public final isQuarter(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/16 v0, 0xc

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    const/4 v0, 0x3

    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :cond_2
    const/4 v0, 0x4

    .line 25
    if-ne p1, v0, :cond_4

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-ne p0, v2, :cond_4

    .line 34
    .line 35
    :cond_3
    return v2

    .line 36
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

.method public final startTransition(Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_4

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 28
    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput-boolean v1, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimatingExit:Z

    .line 37
    .line 38
    :goto_1
    const/4 v3, 0x2

    .line 39
    new-array v3, v3, [F

    .line 40
    .line 41
    fill-array-data v3, :array_0

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iput-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleX()F

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleY()F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    .line 67
    .line 68
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 69
    .line 70
    move v6, v4

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v6, v3

    .line 73
    :goto_2
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    .line 76
    .line 77
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    :cond_3
    move v8, v3

    .line 80
    iget-object v9, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    new-instance v10, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;

    .line 83
    .line 84
    move-object v3, v10

    .line 85
    move-object v4, v2

    .line 86
    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;FFFF)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    new-instance v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget$9;

    .line 95
    .line 96
    invoke-direct {v4, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$9;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    const-wide/16 v4, 0x96

    .line 112
    .line 113
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    .line 115
    .line 116
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    return-void

    .line 125
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final swapOrShrinkNonTarget(III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->undoNonTarget()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_7

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_6

    .line 33
    .line 34
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_5

    .line 41
    .line 42
    iget p2, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_2

    .line 68
    .line 69
    const/4 p2, 0x2

    .line 70
    if-eq p3, p2, :cond_3

    .line 71
    .line 72
    const/16 p2, 0x8

    .line 73
    .line 74
    if-eq p3, p2, :cond_3

    .line 75
    .line 76
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    const/4 p2, 0x4

    .line 85
    if-eq p3, p2, :cond_3

    .line 86
    .line 87
    const/16 p2, 0x10

    .line 88
    .line 89
    if-ne p3, p2, :cond_4

    .line 90
    .line 91
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 112
    .line 113
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 114
    .line 115
    const/4 p3, 0x1

    .line 116
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getReverseWindowingMode(IZ)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 129
    .line 130
    iget p3, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_7

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    const/16 p2, 0x20

    .line 154
    .line 155
    if-eq p3, p2, :cond_7

    .line 156
    .line 157
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)Landroid/graphics/Rect;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_0
    return-void
.end method

.method public final undoNonTarget()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 20
    .line 21
    iget v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 22
    .line 23
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 28
    .line 29
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getReverseWindowingMode(IZ)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method
