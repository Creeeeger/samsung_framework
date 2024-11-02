.class public final Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field public mActionState:I

.field public mActivePointerId:I

.field public final mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field public mDistances:Ljava/util/List;

.field public mDragScrollStartTimeInMs:J

.field public mDx:F

.field public mDy:F

.field public mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field public mMaxSwipeVelocity:F

.field public final mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

.field public mOverdrawChild:Landroid/view/View;

.field public mOverdrawChildPosition:I

.field public final mPendingCleanup:Ljava/util/List;

.field public final mRecoverAnimations:Ljava/util/List;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mScrollRunnable:Landroidx/recyclerview/widget/ItemTouchHelper$1;

.field public mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public mSelectedFlags:I

.field public mSelectedStartX:F

.field public mSelectedStartY:F

.field public mSlop:I

.field public mSwapTargets:Ljava/util/List;

.field public mSwipeEscapeVelocity:F

.field public final mTmpPosition:[F

.field public mTmpRect:Landroid/graphics/Rect;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 31
    .line 32
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 40
    .line 41
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 42
    .line 43
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 51
    .line 52
    return-void
.end method

.method public static hitTest(Landroid/view/View;FFFF)Z
    .locals 1

    .line 1
    cmpl-float v0, p1, p3

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    cmpl-float p1, p2, p4

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 26
    .line 27
    if-gtz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 40
    .line 41
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, -0x1

    .line 48
    add-int/2addr v2, v4

    .line 49
    :goto_1
    const/4 v5, 0x0

    .line 50
    if-ltz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 57
    .line 58
    iget-object v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 66
    .line 67
    iget-object v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 68
    .line 69
    invoke-virtual {v7, v6, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, -0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 79
    .line 80
    iput v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 87
    .line 88
    .line 89
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iput-boolean v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 96
    .line 97
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 98
    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 104
    .line 105
    :cond_6
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const v0, 0x7f0703f0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 121
    .line 122
    const v0, 0x7f0703ef

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 130
    .line 131
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 168
    .line 169
    if-nez v0, :cond_7

    .line 170
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 177
    .line 178
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 179
    .line 180
    check-cast p1, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 186
    .line 187
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 188
    .line 189
    .line 190
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 191
    .line 192
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    .line 193
    .line 194
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 201
    .line 202
    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 203
    .line 204
    .line 205
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 206
    .line 207
    :cond_8
    return-void
.end method

.method public final checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 7

    .line 1
    and-int/lit8 p1, p2, 0xc

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float p1, p1, v0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    move p1, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v2

    .line 18
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 25
    .line 26
    const/4 v6, -0x1

    .line 27
    if-le v5, v6, :cond_2

    .line 28
    .line 29
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/16 v6, 0x3e8

    .line 35
    .line 36
    invoke-virtual {v3, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 40
    .line 41
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    .line 49
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    cmpl-float v0, v3, v0

    .line 56
    .line 57
    if-lez v0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v1, v2

    .line 61
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    and-int v2, v1, p2

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    if-ne p1, v1, :cond_2

    .line 70
    .line 71
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    cmpl-float v2, v0, v2

    .line 78
    .line 79
    if-ltz v2, :cond_2

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    cmpl-float v0, v0, v2

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    return v1

    .line 90
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-float v0, v0

    .line 97
    invoke-virtual {v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold()F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    mul-float/2addr v1, v0

    .line 102
    and-int/2addr p2, p1

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    iget p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 106
    .line 107
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    cmpl-float p0, p0, v1

    .line 112
    .line 113
    if-lez p0, :cond_3

    .line 114
    .line 115
    return p1

    .line 116
    :cond_3
    const/4 p0, 0x0

    .line 117
    return p0
.end method

.method public final checkSelectForSwipe(IILandroid/view/MotionEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_10

    .line 7
    .line 8
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 9
    .line 10
    if-eq p1, v0, :cond_10

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 31
    .line 32
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 47
    .line 48
    sub-float/2addr v4, v5

    .line 49
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 54
    .line 55
    sub-float/2addr v2, v5

    .line 56
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 65
    .line 66
    int-to-float v5, v5

    .line 67
    cmpg-float v6, v4, v5

    .line 68
    .line 69
    if-gez v6, :cond_3

    .line 70
    .line 71
    cmpg-float v5, v2, v5

    .line 72
    .line 73
    if-gez v5, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    cmpl-float v5, v4, v2

    .line 77
    .line 78
    if-lez v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    cmpl-float v2, v2, v4

    .line 88
    .line 89
    if-lez v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    :goto_0
    const/4 v1, 0x0

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_1
    if-nez v1, :cond_7

    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 122
    .line 123
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const v4, 0x303030

    .line 128
    .line 129
    .line 130
    and-int v5, p1, v4

    .line 131
    .line 132
    if-nez v5, :cond_8

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    not-int v6, v5

    .line 136
    and-int/2addr p1, v6

    .line 137
    if-nez v2, :cond_9

    .line 138
    .line 139
    shr-int/lit8 v2, v5, 0x2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_9
    shr-int/lit8 v2, v5, 0x1

    .line 143
    .line 144
    const v5, -0x303031

    .line 145
    .line 146
    .line 147
    and-int/2addr v5, v2

    .line 148
    or-int/2addr p1, v5

    .line 149
    and-int/2addr v2, v4

    .line 150
    shr-int/2addr v2, v0

    .line 151
    :goto_2
    or-int/2addr p1, v2

    .line 152
    :goto_3
    const v2, 0xff00

    .line 153
    .line 154
    .line 155
    and-int/2addr p1, v2

    .line 156
    shr-int/lit8 p1, p1, 0x8

    .line 157
    .line 158
    if-nez p1, :cond_a

    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 170
    .line 171
    sub-float/2addr v2, v4

    .line 172
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 173
    .line 174
    sub-float/2addr p2, v4

    .line 175
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 184
    .line 185
    int-to-float v6, v6

    .line 186
    cmpg-float v7, v4, v6

    .line 187
    .line 188
    if-gez v7, :cond_b

    .line 189
    .line 190
    cmpg-float v6, v5, v6

    .line 191
    .line 192
    if-gez v6, :cond_b

    .line 193
    .line 194
    return-void

    .line 195
    :cond_b
    cmpl-float v4, v4, v5

    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    if-lez v4, :cond_d

    .line 199
    .line 200
    cmpg-float p2, v2, v5

    .line 201
    .line 202
    if-gez p2, :cond_c

    .line 203
    .line 204
    and-int/lit8 p2, p1, 0x4

    .line 205
    .line 206
    if-nez p2, :cond_c

    .line 207
    .line 208
    return-void

    .line 209
    :cond_c
    cmpl-float p2, v2, v5

    .line 210
    .line 211
    if-lez p2, :cond_f

    .line 212
    .line 213
    and-int/lit8 p1, p1, 0x8

    .line 214
    .line 215
    if-nez p1, :cond_f

    .line 216
    .line 217
    return-void

    .line 218
    :cond_d
    cmpg-float v2, p2, v5

    .line 219
    .line 220
    if-gez v2, :cond_e

    .line 221
    .line 222
    and-int/lit8 v2, p1, 0x1

    .line 223
    .line 224
    if-nez v2, :cond_e

    .line 225
    .line 226
    return-void

    .line 227
    :cond_e
    cmpl-float p2, p2, v5

    .line 228
    .line 229
    if-lez p2, :cond_f

    .line 230
    .line 231
    and-int/2addr p1, v0

    .line 232
    if-nez p1, :cond_f

    .line 233
    .line 234
    return-void

    .line 235
    :cond_f
    iput v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 236
    .line 237
    iput v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 238
    .line 239
    const/4 p1, 0x0

    .line 240
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 245
    .line 246
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 247
    .line 248
    .line 249
    :cond_10
    :goto_4
    return-void
.end method

.method public final checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .locals 7

    .line 1
    and-int/lit8 p1, p2, 0x3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float p1, p1, v0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    move p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v2

    .line 17
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 24
    .line 25
    const/4 v6, -0x1

    .line 26
    if-le v5, v6, :cond_2

    .line 27
    .line 28
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 v6, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v3, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    iget v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    cmpl-float v0, v5, v0

    .line 55
    .line 56
    if-lez v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v1, v2

    .line 60
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    and-int v2, v1, p2

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    if-ne v1, p1, :cond_2

    .line 69
    .line 70
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    cmpl-float v2, v0, v2

    .line 77
    .line 78
    if-ltz v2, :cond_2

    .line 79
    .line 80
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    cmpl-float v0, v0, v2

    .line 85
    .line 86
    if-lez v0, :cond_2

    .line 87
    .line 88
    return v1

    .line 89
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    int-to-float v0, v0

    .line 96
    invoke-virtual {v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold()F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    mul-float/2addr v1, v0

    .line 101
    and-int/2addr p2, p1

    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    iget p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 105
    .line 106
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    cmpl-float p0, p0, v1

    .line 111
    .line 112
    if-lez p0, :cond_3

    .line 113
    .line 114
    return p1

    .line 115
    :cond_3
    const/4 p0, 0x0

    .line 116
    return p0
.end method

.method public final endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-ltz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 24
    .line 25
    or-int/2addr p1, p2

    .line 26
    iput-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 27
    .line 28
    iget-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 16
    .line 17
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 18
    .line 19
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 21
    .line 22
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 23
    .line 24
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    :goto_0
    if-ltz v2, :cond_2

    .line 44
    .line 45
    move-object v3, v1

    .line 46
    check-cast v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 53
    .line 54
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 55
    .line 56
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 57
    .line 58
    iget v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 59
    .line 60
    iget v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 61
    .line 62
    invoke-static {v4, v0, p1, v5, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    return-object v4

    .line 69
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getSelectedDxDy([FI)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    const-string v1, " outPosition[0] = "

    .line 6
    .line 7
    const-string v2, "ItemTouchHelper"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 13
    .line 14
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 15
    .line 16
    add-float/2addr v0, v4

    .line 17
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    sub-float/2addr v0, v4

    .line 27
    aput v0, p1, v3

    .line 28
    .line 29
    const-string v0, "getSelectedDxDy: #1 calledBy = "

    .line 30
    .line 31
    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    aget v0, p1, v3

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", mSelectedStartX = "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", mDx = "

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", mSelected.itemView.getLeft() = "

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    aput v0, p1, v3

    .line 93
    .line 94
    const-string v0, "getSelectedDxDy: #2 calledBy = "

    .line 95
    .line 96
    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 119
    .line 120
    and-int/lit8 p2, p2, 0x3

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    if-eqz p2, :cond_1

    .line 124
    .line 125
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 126
    .line 127
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 128
    .line 129
    add-float/2addr p2, v1

    .line 130
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 131
    .line 132
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    int-to-float p0, p0

    .line 139
    sub-float/2addr p2, p0

    .line 140
    aput p2, p1, v0

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 144
    .line 145
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    aput p0, p1, v0

    .line 152
    .line 153
    :goto_1
    return-void
.end method

.method public final moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 26
    .line 27
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 28
    .line 29
    add-float/2addr v4, v5

    .line 30
    float-to-int v4, v4

    .line 31
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 32
    .line 33
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 34
    .line 35
    add-float/2addr v5, v6

    .line 36
    float-to-int v5, v5

    .line 37
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    sub-int v6, v5, v6

    .line 44
    .line 45
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    int-to-float v6, v6

    .line 50
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    int-to-float v8, v8

    .line 57
    const/high16 v9, 0x3f000000    # 0.5f

    .line 58
    .line 59
    mul-float/2addr v8, v9

    .line 60
    cmpg-float v6, v6, v8

    .line 61
    .line 62
    if-gez v6, :cond_2

    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    sub-int v6, v4, v6

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    int-to-float v6, v6

    .line 75
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    int-to-float v8, v8

    .line 80
    mul-float/2addr v8, v9

    .line 81
    cmpg-float v6, v6, v8

    .line 82
    .line 83
    if-gez v6, :cond_2

    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 87
    .line 88
    if-nez v6, :cond_3

    .line 89
    .line 90
    new-instance v6, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 96
    .line 97
    new-instance v6, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    check-cast v6, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 111
    .line 112
    check-cast v6, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 115
    .line 116
    .line 117
    :goto_0
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 118
    .line 119
    iget v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 120
    .line 121
    add-float/2addr v6, v8

    .line 122
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v8, 0x0

    .line 127
    sub-int/2addr v6, v8

    .line 128
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 129
    .line 130
    iget v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 131
    .line 132
    add-float/2addr v9, v10

    .line 133
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    sub-int/2addr v9, v8

    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    add-int/2addr v10, v6

    .line 143
    add-int/2addr v10, v8

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    add-int/2addr v11, v9

    .line 149
    add-int/2addr v11, v8

    .line 150
    add-int v12, v6, v10

    .line 151
    .line 152
    div-int/2addr v12, v3

    .line 153
    add-int v13, v9, v11

    .line 154
    .line 155
    div-int/2addr v13, v3

    .line 156
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 159
    .line 160
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    :goto_1
    if-ge v8, v15, :cond_9

    .line 165
    .line 166
    invoke-virtual {v14, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    if-ne v3, v7, :cond_4

    .line 171
    .line 172
    move/from16 v19, v6

    .line 173
    .line 174
    move/from16 v20, v9

    .line 175
    .line 176
    move/from16 v21, v10

    .line 177
    .line 178
    move-object/from16 v18, v14

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_4
    move-object/from16 v18, v14

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    if-lt v14, v9, :cond_7

    .line 189
    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-gt v14, v11, :cond_7

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-lt v14, v6, :cond_7

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    if-le v14, v10, :cond_5

    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_5
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 211
    .line 212
    invoke-virtual {v14, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    move/from16 v19, v6

    .line 217
    .line 218
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 219
    .line 220
    invoke-virtual {v2, v6, v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 231
    .line 232
    .line 233
    move-result v20

    .line 234
    add-int v20, v20, v6

    .line 235
    .line 236
    const/4 v6, 0x2

    .line 237
    div-int/lit8 v20, v20, 0x2

    .line 238
    .line 239
    sub-int v17, v12, v20

    .line 240
    .line 241
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    .line 242
    .line 243
    .line 244
    move-result v17

    .line 245
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 246
    .line 247
    .line 248
    move-result v20

    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    add-int v3, v3, v20

    .line 254
    .line 255
    div-int/2addr v3, v6

    .line 256
    sub-int v3, v13, v3

    .line 257
    .line 258
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    mul-int v17, v17, v17

    .line 263
    .line 264
    mul-int/2addr v3, v3

    .line 265
    add-int v3, v3, v17

    .line 266
    .line 267
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 268
    .line 269
    check-cast v6, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    move/from16 v20, v9

    .line 276
    .line 277
    move/from16 v21, v10

    .line 278
    .line 279
    const/4 v9, 0x0

    .line 280
    const/4 v10, 0x0

    .line 281
    :goto_2
    if-ge v9, v6, :cond_6

    .line 282
    .line 283
    move/from16 v22, v6

    .line 284
    .line 285
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 286
    .line 287
    check-cast v6, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    check-cast v6, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-le v3, v6, :cond_6

    .line 300
    .line 301
    add-int/lit8 v10, v10, 0x1

    .line 302
    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    move/from16 v6, v22

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_6
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 309
    .line 310
    check-cast v6, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v6, v10, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 316
    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v6, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v6, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_7
    :goto_3
    move/from16 v19, v6

    .line 328
    .line 329
    :cond_8
    move/from16 v20, v9

    .line 330
    .line 331
    move/from16 v21, v10

    .line 332
    .line 333
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 334
    .line 335
    move-object/from16 v14, v18

    .line 336
    .line 337
    move/from16 v6, v19

    .line 338
    .line 339
    move/from16 v9, v20

    .line 340
    .line 341
    move/from16 v10, v21

    .line 342
    .line 343
    const/4 v3, 0x2

    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_9
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 347
    .line 348
    check-cast v3, Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-nez v6, :cond_a

    .line 355
    .line 356
    return-void

    .line 357
    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    add-int/2addr v6, v4

    .line 362
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    add-int/2addr v8, v5

    .line 367
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    sub-int v9, v4, v9

    .line 372
    .line 373
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    sub-int v10, v5, v10

    .line 378
    .line 379
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    const/4 v13, 0x0

    .line 384
    move-object v14, v13

    .line 385
    const/4 v13, 0x0

    .line 386
    const/4 v15, -0x1

    .line 387
    :goto_5
    if-ge v13, v11, :cond_11

    .line 388
    .line 389
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v16

    .line 393
    move-object/from16 v12, v16

    .line 394
    .line 395
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 396
    .line 397
    if-lez v9, :cond_b

    .line 398
    .line 399
    move-object/from16 v16, v3

    .line 400
    .line 401
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 402
    .line 403
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    sub-int/2addr v3, v6

    .line 408
    move/from16 v18, v6

    .line 409
    .line 410
    if-gez v3, :cond_c

    .line 411
    .line 412
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 413
    .line 414
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    move/from16 v19, v11

    .line 419
    .line 420
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 421
    .line 422
    .line 423
    move-result v11

    .line 424
    if-le v6, v11, :cond_d

    .line 425
    .line 426
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    if-le v3, v15, :cond_d

    .line 431
    .line 432
    move v15, v3

    .line 433
    move-object v14, v12

    .line 434
    goto :goto_6

    .line 435
    :cond_b
    move-object/from16 v16, v3

    .line 436
    .line 437
    move/from16 v18, v6

    .line 438
    .line 439
    :cond_c
    move/from16 v19, v11

    .line 440
    .line 441
    :cond_d
    :goto_6
    if-gez v9, :cond_e

    .line 442
    .line 443
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 444
    .line 445
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    sub-int/2addr v3, v4

    .line 450
    if-lez v3, :cond_e

    .line 451
    .line 452
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 453
    .line 454
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 459
    .line 460
    .line 461
    move-result v11

    .line 462
    if-ge v6, v11, :cond_e

    .line 463
    .line 464
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-le v3, v15, :cond_e

    .line 469
    .line 470
    move v15, v3

    .line 471
    move-object v14, v12

    .line 472
    :cond_e
    if-gez v10, :cond_f

    .line 473
    .line 474
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 475
    .line 476
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    sub-int/2addr v3, v5

    .line 481
    if-lez v3, :cond_f

    .line 482
    .line 483
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 484
    .line 485
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    if-ge v6, v11, :cond_f

    .line 494
    .line 495
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    if-le v3, v15, :cond_f

    .line 500
    .line 501
    move v15, v3

    .line 502
    move-object v14, v12

    .line 503
    :cond_f
    if-lez v10, :cond_10

    .line 504
    .line 505
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 506
    .line 507
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    sub-int/2addr v3, v8

    .line 512
    if-gez v3, :cond_10

    .line 513
    .line 514
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 515
    .line 516
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    if-le v6, v11, :cond_10

    .line 525
    .line 526
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-le v3, v15, :cond_10

    .line 531
    .line 532
    move v15, v3

    .line 533
    move-object v14, v12

    .line 534
    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 535
    .line 536
    move-object/from16 v3, v16

    .line 537
    .line 538
    move/from16 v6, v18

    .line 539
    .line 540
    move/from16 v11, v19

    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :cond_11
    if-nez v14, :cond_12

    .line 545
    .line 546
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 547
    .line 548
    check-cast v1, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 551
    .line 552
    .line 553
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 554
    .line 555
    check-cast v0, Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :cond_12
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, v1, v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_1c

    .line 573
    .line 574
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 575
    .line 576
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 577
    .line 578
    instance-of v4, v2, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    .line 579
    .line 580
    const/4 v5, 0x1

    .line 581
    iget-object v6, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 582
    .line 583
    if-eqz v4, :cond_17

    .line 584
    .line 585
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    .line 586
    .line 587
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 588
    .line 589
    const-string v1, "Cannot drop a view during a scroll or layout calculation"

    .line 590
    .line 591
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 598
    .line 599
    .line 600
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    if-ge v1, v4, :cond_13

    .line 609
    .line 610
    move v1, v5

    .line 611
    goto :goto_7

    .line 612
    :cond_13
    const/4 v1, -0x1

    .line 613
    :goto_7
    iget-boolean v8, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 614
    .line 615
    if-eqz v8, :cond_15

    .line 616
    .line 617
    if-ne v1, v5, :cond_14

    .line 618
    .line 619
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 620
    .line 621
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    iget-object v8, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 626
    .line 627
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 628
    .line 629
    .line 630
    move-result v6

    .line 631
    iget-object v8, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 632
    .line 633
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    add-int/2addr v8, v6

    .line 638
    sub-int/2addr v1, v8

    .line 639
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_8

    .line 643
    .line 644
    :cond_14
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 645
    .line 646
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    iget-object v8, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 651
    .line 652
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    sub-int/2addr v1, v6

    .line 657
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 658
    .line 659
    .line 660
    goto :goto_8

    .line 661
    :cond_15
    const/4 v8, -0x1

    .line 662
    if-ne v1, v8, :cond_16

    .line 663
    .line 664
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 665
    .line 666
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 671
    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_16
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 675
    .line 676
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 677
    .line 678
    .line 679
    move-result v1

    .line 680
    iget-object v6, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 681
    .line 682
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    sub-int/2addr v1, v6

    .line 687
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 688
    .line 689
    .line 690
    goto :goto_8

    .line 691
    :cond_17
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    if-eqz v4, :cond_19

    .line 696
    .line 697
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 702
    .line 703
    .line 704
    move-result v8

    .line 705
    if-gt v4, v8, :cond_18

    .line 706
    .line 707
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 708
    .line 709
    .line 710
    :cond_18
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 715
    .line 716
    .line 717
    move-result v8

    .line 718
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 719
    .line 720
    .line 721
    move-result v9

    .line 722
    sub-int/2addr v8, v9

    .line 723
    if-lt v4, v8, :cond_19

    .line 724
    .line 725
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 726
    .line 727
    .line 728
    :cond_19
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    if-eqz v4, :cond_1b

    .line 733
    .line 734
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 739
    .line 740
    .line 741
    move-result v8

    .line 742
    if-gt v4, v8, :cond_1a

    .line 743
    .line 744
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 745
    .line 746
    .line 747
    :cond_1a
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 752
    .line 753
    .line 754
    move-result v4

    .line 755
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 756
    .line 757
    .line 758
    move-result v6

    .line 759
    sub-int/2addr v4, v6

    .line 760
    if-lt v2, v4, :cond_1b

    .line 761
    .line 762
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 763
    .line 764
    .line 765
    :cond_1b
    :goto_8
    const/16 v1, 0x29

    .line 766
    .line 767
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    invoke-virtual {v7, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 772
    .line 773
    .line 774
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 775
    .line 776
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 777
    .line 778
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 779
    .line 780
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    add-int/2addr v3, v5

    .line 785
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    const v3, 0x7f1304da

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 801
    .line 802
    .line 803
    :cond_1c
    return-void
.end method

.method public final onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 32
    .line 33
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([FI)V

    .line 17
    .line 18
    .line 19
    aget v3, v1, v2

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    aget v1, v1, v4

    .line 23
    .line 24
    move v10, v1

    .line 25
    move v9, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    move v9, v1

    .line 29
    move v10, v9

    .line 30
    :goto_0
    iget-object v11, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 31
    .line 32
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 33
    .line 34
    iget v12, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 35
    .line 36
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 37
    .line 38
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-object v14, v1

    .line 42
    check-cast v14, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    move v7, v2

    .line 49
    :goto_1
    if-ge v7, v15, :cond_3

    .line 50
    .line 51
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 56
    .line 57
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 58
    .line 59
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 60
    .line 61
    cmpl-float v3, v1, v2

    .line 62
    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 66
    .line 67
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    iget v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 77
    .line 78
    invoke-static {v2, v1, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 83
    .line 84
    :goto_2
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 85
    .line 86
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 87
    .line 88
    cmpl-float v3, v1, v2

    .line 89
    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 93
    .line 94
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    iget v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 104
    .line 105
    invoke-static {v2, v1, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 110
    .line 111
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 116
    .line 117
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 118
    .line 119
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 120
    .line 121
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 122
    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    move-object v0, v13

    .line 126
    move-object/from16 v1, p1

    .line 127
    .line 128
    move/from16 v17, v2

    .line 129
    .line 130
    move-object/from16 v2, p2

    .line 131
    .line 132
    move-object/from16 p0, v14

    .line 133
    .line 134
    move v14, v6

    .line 135
    move/from16 v6, v17

    .line 136
    .line 137
    move/from16 v17, v7

    .line 138
    .line 139
    move/from16 v7, v16

    .line 140
    .line 141
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v7, v17, 0x1

    .line 148
    .line 149
    move-object/from16 v14, p0

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    if-eqz v11, :cond_4

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    const/4 v7, 0x1

    .line 159
    move-object v0, v13

    .line 160
    move-object/from16 v1, p1

    .line 161
    .line 162
    move-object/from16 v2, p2

    .line 163
    .line 164
    move-object v3, v11

    .line 165
    move v4, v9

    .line 166
    move v5, v10

    .line 167
    move v6, v12

    .line 168
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 172
    .line 173
    .line 174
    :cond_4
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 12
    .line 13
    invoke-virtual {v0, v1, v10}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([FI)V

    .line 14
    .line 15
    .line 16
    aget v2, v1, v9

    .line 17
    .line 18
    aget v1, v1, v10

    .line 19
    .line 20
    move v12, v1

    .line 21
    move v11, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    move v11, v1

    .line 25
    move v12, v11

    .line 26
    :goto_0
    iget-object v13, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 29
    .line 30
    iget v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 31
    .line 32
    iget-object v15, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 33
    .line 34
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-object v7, v1

    .line 38
    check-cast v7, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    move v5, v9

    .line 45
    :goto_1
    if-ge v5, v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    .line 59
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 60
    .line 61
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 62
    .line 63
    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    move/from16 v17, v0

    .line 68
    .line 69
    move-object v0, v15

    .line 70
    move/from16 v18, v1

    .line 71
    .line 72
    move-object/from16 v1, p1

    .line 73
    .line 74
    move/from16 v19, v2

    .line 75
    .line 76
    move-object/from16 v2, p2

    .line 77
    .line 78
    move v9, v4

    .line 79
    move/from16 v4, v19

    .line 80
    .line 81
    move/from16 v19, v5

    .line 82
    .line 83
    move/from16 v5, v18

    .line 84
    .line 85
    move/from16 v18, v6

    .line 86
    .line 87
    move/from16 v6, v17

    .line 88
    .line 89
    move-object v10, v7

    .line 90
    move/from16 v7, v16

    .line 91
    .line 92
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v19, 0x1

    .line 99
    .line 100
    move-object v7, v10

    .line 101
    move/from16 v6, v18

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move/from16 v18, v6

    .line 107
    .line 108
    move-object v10, v7

    .line 109
    if-eqz v13, :cond_2

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/4 v7, 0x1

    .line 116
    move-object v0, v15

    .line 117
    move-object/from16 v1, p1

    .line 118
    .line 119
    move-object/from16 v2, p2

    .line 120
    .line 121
    move-object v3, v13

    .line 122
    move v4, v11

    .line 123
    move v5, v12

    .line 124
    move v6, v14

    .line 125
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 129
    .line 130
    .line 131
    :cond_2
    add-int/lit8 v6, v18, -0x1

    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    :goto_2
    if-ltz v6, :cond_5

    .line 135
    .line 136
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 141
    .line 142
    iget-boolean v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 143
    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    iget-boolean v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    .line 147
    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    invoke-interface {v10, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    if-nez v1, :cond_4

    .line 155
    .line 156
    const/4 v9, 0x1

    .line 157
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    if-eqz v9, :cond_6

    .line 161
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 163
    .line 164
    .line 165
    :cond_6
    return-void
.end method

.method public final select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move/from16 v13, p2

    .line 6
    .line 7
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    if-ne v12, v0, :cond_0

    .line 10
    .line 11
    iget v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 12
    .line 13
    if-ne v13, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 17
    .line 18
    iput-wide v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 19
    .line 20
    iget v4, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 21
    .line 22
    const/4 v14, 0x1

    .line 23
    invoke-virtual {v11, v12, v14}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 24
    .line 25
    .line 26
    iput v13, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 27
    .line 28
    const/4 v15, 0x2

    .line 29
    if-ne v13, v15, :cond_2

    .line 30
    .line 31
    if-eqz v12, :cond_1

    .line 32
    .line 33
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v1, "Must pass a ViewHolder when dragging"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    :goto_0
    mul-int/lit8 v0, v13, 0x8

    .line 47
    .line 48
    const/16 v10, 0x8

    .line 49
    .line 50
    add-int/2addr v0, v10

    .line 51
    shl-int v0, v14, v0

    .line 52
    .line 53
    add-int/lit8 v16, v0, -0x1

    .line 54
    .line 55
    iget-object v9, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 56
    .line 57
    const v17, -0x303031

    .line 58
    .line 59
    .line 60
    const v18, 0x303030

    .line 61
    .line 62
    .line 63
    iget-object v7, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 64
    .line 65
    if-eqz v9, :cond_1a

    .line 66
    .line 67
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v6, 0x0

    .line 74
    if-eqz v1, :cond_18

    .line 75
    .line 76
    if-ne v4, v15, :cond_3

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_3
    iget v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 82
    .line 83
    if-ne v0, v15, :cond_4

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 94
    .line 95
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    and-int v2, v0, v18

    .line 100
    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    move v1, v0

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    not-int v3, v2

    .line 106
    and-int/2addr v3, v0

    .line 107
    if-nez v1, :cond_6

    .line 108
    .line 109
    shr-int/lit8 v1, v2, 0x2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    shr-int/lit8 v1, v2, 0x1

    .line 113
    .line 114
    and-int v2, v1, v17

    .line 115
    .line 116
    or-int/2addr v3, v2

    .line 117
    and-int v1, v1, v18

    .line 118
    .line 119
    shr-int/2addr v1, v15

    .line 120
    :goto_1
    or-int/2addr v1, v3

    .line 121
    :goto_2
    const v2, 0xff00

    .line 122
    .line 123
    .line 124
    and-int/2addr v1, v2

    .line 125
    shr-int/2addr v1, v10

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_7
    and-int/2addr v0, v2

    .line 131
    shr-int/2addr v0, v10

    .line 132
    iget v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iget v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 139
    .line 140
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    cmpl-float v2, v2, v3

    .line 145
    .line 146
    const v3, -0xc0c0d

    .line 147
    .line 148
    .line 149
    const v5, 0xc0c0c

    .line 150
    .line 151
    .line 152
    if-lez v2, :cond_b

    .line 153
    .line 154
    invoke-virtual {v11, v9, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-lez v2, :cond_a

    .line 159
    .line 160
    and-int/2addr v0, v2

    .line 161
    if-nez v0, :cond_f

    .line 162
    .line 163
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    and-int v1, v2, v5

    .line 170
    .line 171
    if-nez v1, :cond_8

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_8
    not-int v8, v1

    .line 175
    and-int/2addr v2, v8

    .line 176
    if-nez v0, :cond_9

    .line 177
    .line 178
    :goto_3
    shl-int/lit8 v0, v1, 0x2

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_9
    shl-int/lit8 v0, v1, 0x1

    .line 182
    .line 183
    and-int v1, v0, v3

    .line 184
    .line 185
    or-int/2addr v2, v1

    .line 186
    and-int/2addr v0, v5

    .line 187
    shl-int/2addr v0, v15

    .line 188
    :goto_4
    or-int/2addr v0, v2

    .line 189
    move v2, v0

    .line 190
    goto :goto_6

    .line 191
    :cond_a
    invoke-virtual {v11, v9, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-lez v2, :cond_e

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_b
    invoke-virtual {v11, v9, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-lez v2, :cond_c

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_c
    invoke-virtual {v11, v9, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-lez v2, :cond_e

    .line 210
    .line 211
    and-int/2addr v0, v2

    .line 212
    if-nez v0, :cond_f

    .line 213
    .line 214
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    and-int v1, v2, v5

    .line 221
    .line 222
    if-nez v1, :cond_d

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_d
    not-int v8, v1

    .line 226
    and-int/2addr v2, v8

    .line 227
    if-nez v0, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_e
    :goto_5
    const/4 v2, 0x0

    .line 231
    :cond_f
    :goto_6
    move v8, v2

    .line 232
    :goto_7
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 233
    .line 234
    if-eqz v0, :cond_10

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 237
    .line 238
    .line 239
    iput-object v6, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    .line 241
    :cond_10
    const/4 v0, 0x4

    .line 242
    const/4 v1, 0x0

    .line 243
    if-eq v8, v14, :cond_12

    .line 244
    .line 245
    if-eq v8, v15, :cond_12

    .line 246
    .line 247
    if-eq v8, v0, :cond_11

    .line 248
    .line 249
    if-eq v8, v10, :cond_11

    .line 250
    .line 251
    const/16 v2, 0x10

    .line 252
    .line 253
    if-eq v8, v2, :cond_11

    .line 254
    .line 255
    const/16 v2, 0x20

    .line 256
    .line 257
    if-eq v8, v2, :cond_11

    .line 258
    .line 259
    move/from16 v20, v1

    .line 260
    .line 261
    move/from16 v21, v20

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_11
    iget v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 265
    .line 266
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    iget-object v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    .line 272
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    int-to-float v3, v3

    .line 277
    mul-float/2addr v2, v3

    .line 278
    move/from16 v21, v1

    .line 279
    .line 280
    move/from16 v20, v2

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_12
    iget v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 284
    .line 285
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    iget-object v3, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 290
    .line 291
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    int-to-float v3, v3

    .line 296
    mul-float/2addr v2, v3

    .line 297
    move/from16 v20, v1

    .line 298
    .line 299
    move/from16 v21, v2

    .line 300
    .line 301
    :goto_8
    if-ne v4, v15, :cond_13

    .line 302
    .line 303
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 304
    .line 305
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 306
    .line 307
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 308
    .line 309
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 314
    .line 315
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    add-int/2addr v2, v14

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    const v3, 0x7f1304db

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    move v5, v10

    .line 339
    goto :goto_9

    .line 340
    :cond_13
    if-lez v8, :cond_14

    .line 341
    .line 342
    move v5, v15

    .line 343
    goto :goto_9

    .line 344
    :cond_14
    move v5, v0

    .line 345
    :goto_9
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 346
    .line 347
    const/4 v1, 0x3

    .line 348
    invoke-virtual {v11, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([FI)V

    .line 349
    .line 350
    .line 351
    const/16 v19, 0x0

    .line 352
    .line 353
    aget v22, v0, v19

    .line 354
    .line 355
    aget v23, v0, v14

    .line 356
    .line 357
    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 358
    .line 359
    move-object v0, v3

    .line 360
    move-object/from16 v1, p0

    .line 361
    .line 362
    move-object v2, v9

    .line 363
    move-object v14, v3

    .line 364
    move v3, v5

    .line 365
    move v15, v5

    .line 366
    move/from16 v5, v22

    .line 367
    .line 368
    move-object v13, v6

    .line 369
    move/from16 v6, v23

    .line 370
    .line 371
    move-object/from16 v22, v7

    .line 372
    .line 373
    move/from16 v7, v20

    .line 374
    .line 375
    move/from16 v13, v19

    .line 376
    .line 377
    move/from16 v19, v8

    .line 378
    .line 379
    move/from16 v8, v21

    .line 380
    .line 381
    move-object/from16 v21, v9

    .line 382
    .line 383
    move/from16 v9, v19

    .line 384
    .line 385
    move v13, v10

    .line 386
    move-object/from16 v10, v21

    .line 387
    .line 388
    invoke-direct/range {v0 .. v10}, Landroidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 392
    .line 393
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 397
    .line 398
    if-nez v0, :cond_16

    .line 399
    .line 400
    if-ne v15, v13, :cond_15

    .line 401
    .line 402
    const-wide/16 v0, 0xc8

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_15
    const-wide/16 v0, 0xfa

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_16
    if-ne v15, v13, :cond_17

    .line 409
    .line 410
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    .line 411
    .line 412
    .line 413
    move-result-wide v0

    .line 414
    goto :goto_a

    .line 415
    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    .line 416
    .line 417
    .line 418
    move-result-wide v0

    .line 419
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string/jumbo v3, "select: setDuration = "

    .line 422
    .line 423
    .line 424
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    const-string v3, "ItemTouchHelper"

    .line 435
    .line 436
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    iget-object v2, v14, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 440
    .line 441
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 442
    .line 443
    .line 444
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 445
    .line 446
    check-cast v0, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    iget-object v0, v14, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 452
    .line 453
    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 455
    .line 456
    .line 457
    iget-object v0, v14, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 458
    .line 459
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 460
    .line 461
    .line 462
    move-object/from16 v2, v21

    .line 463
    .line 464
    move-object/from16 v3, v22

    .line 465
    .line 466
    const/4 v0, 0x0

    .line 467
    const/4 v8, 0x1

    .line 468
    goto :goto_c

    .line 469
    :cond_18
    move-object/from16 v22, v7

    .line 470
    .line 471
    move-object/from16 v21, v9

    .line 472
    .line 473
    move v13, v10

    .line 474
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 475
    .line 476
    if-ne v0, v1, :cond_19

    .line 477
    .line 478
    const/4 v0, 0x0

    .line 479
    iput-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 480
    .line 481
    goto :goto_b

    .line 482
    :cond_19
    const/4 v0, 0x0

    .line 483
    :goto_b
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 484
    .line 485
    move-object/from16 v2, v21

    .line 486
    .line 487
    move-object/from16 v3, v22

    .line 488
    .line 489
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 490
    .line 491
    .line 492
    const/4 v8, 0x0

    .line 493
    :goto_c
    iput-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 494
    .line 495
    goto :goto_d

    .line 496
    :cond_1a
    move-object v3, v7

    .line 497
    move-object v2, v9

    .line 498
    move v13, v10

    .line 499
    const/4 v8, 0x0

    .line 500
    :goto_d
    if-eqz v12, :cond_1d

    .line 501
    .line 502
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 503
    .line 504
    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 509
    .line 510
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    and-int v4, v1, v18

    .line 515
    .line 516
    if-nez v4, :cond_1b

    .line 517
    .line 518
    goto :goto_f

    .line 519
    :cond_1b
    not-int v5, v4

    .line 520
    and-int/2addr v1, v5

    .line 521
    if-nez v0, :cond_1c

    .line 522
    .line 523
    const/4 v0, 0x2

    .line 524
    goto :goto_e

    .line 525
    :cond_1c
    const/4 v0, 0x2

    .line 526
    const/4 v5, 0x1

    .line 527
    shr-int/2addr v4, v5

    .line 528
    and-int v5, v4, v17

    .line 529
    .line 530
    or-int/2addr v1, v5

    .line 531
    and-int v4, v4, v18

    .line 532
    .line 533
    :goto_e
    shr-int/2addr v4, v0

    .line 534
    or-int/2addr v1, v4

    .line 535
    :goto_f
    and-int v0, v1, v16

    .line 536
    .line 537
    iget v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 538
    .line 539
    mul-int/2addr v1, v13

    .line 540
    shr-int/2addr v0, v1

    .line 541
    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 542
    .line 543
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 544
    .line 545
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    int-to-float v1, v1

    .line 550
    iput v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 551
    .line 552
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    int-to-float v0, v0

    .line 557
    iput v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 558
    .line 559
    iput-object v12, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 560
    .line 561
    :cond_1d
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 562
    .line 563
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    if-eqz v0, :cond_1f

    .line 568
    .line 569
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 570
    .line 571
    if-eqz v1, :cond_1e

    .line 572
    .line 573
    const/4 v1, 0x1

    .line 574
    goto :goto_10

    .line 575
    :cond_1e
    const/4 v1, 0x0

    .line 576
    :goto_10
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 577
    .line 578
    .line 579
    :cond_1f
    if-nez v8, :cond_20

    .line 580
    .line 581
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 582
    .line 583
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 584
    .line 585
    const/4 v1, 0x1

    .line 586
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 587
    .line 588
    :cond_20
    iget v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 589
    .line 590
    if-nez v0, :cond_21

    .line 591
    .line 592
    invoke-virtual {v3, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 593
    .line 594
    .line 595
    goto :goto_11

    .line 596
    :cond_21
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 597
    .line 598
    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 599
    .line 600
    .line 601
    :goto_11
    move/from16 v0, p2

    .line 602
    .line 603
    const/4 v1, 0x2

    .line 604
    if-ne v0, v1, :cond_22

    .line 605
    .line 606
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 607
    .line 608
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 609
    .line 610
    const/4 v1, 0x0

    .line 611
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 612
    .line 613
    .line 614
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 615
    .line 616
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 617
    .line 618
    iget-object v1, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 619
    .line 620
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    iget-object v2, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 625
    .line 626
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    const/4 v3, 0x1

    .line 631
    add-int/2addr v2, v3

    .line 632
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    const v3, 0x7f1304dc

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 648
    .line 649
    .line 650
    :cond_22
    iget-object v0, v11, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 651
    .line 652
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 653
    .line 654
    .line 655
    return-void
.end method

.method public final updateDxDy(IILandroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 10
    .line 11
    sub-float p3, v0, p3

    .line 12
    .line 13
    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 14
    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v1, "updateDxDy: mDx = "

    .line 18
    .line 19
    .line 20
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 24
    .line 25
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " = (x = "

    .line 29
    .line 30
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " - mInitialTouchX = "

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 42
    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const-string v0, "ItemTouchHelper"

    .line 56
    .line 57
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 61
    .line 62
    sub-float/2addr p2, p3

    .line 63
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 64
    .line 65
    and-int/lit8 p2, p1, 0x4

    .line 66
    .line 67
    const/4 p3, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    .line 70
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 71
    .line 72
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v1, "updateDxDy: direction LEFT mDx = "

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_0
    and-int/lit8 p2, p1, 0x8

    .line 99
    .line 100
    if-nez p2, :cond_1

    .line 101
    .line 102
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 103
    .line 104
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string/jumbo v1, "updateDxDy: direction RIGHT mDx = "

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 119
    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_1
    and-int/lit8 p2, p1, 0x1

    .line 131
    .line 132
    if-nez p2, :cond_2

    .line 133
    .line 134
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 135
    .line 136
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 141
    .line 142
    :cond_2
    and-int/lit8 p1, p1, 0x2

    .line 143
    .line 144
    if-nez p1, :cond_3

    .line 145
    .line 146
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 147
    .line 148
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 153
    .line 154
    :cond_3
    return-void
.end method
