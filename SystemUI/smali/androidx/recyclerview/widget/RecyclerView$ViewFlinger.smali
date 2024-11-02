.class public final Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEatRunOnAnimationRequest:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastFlingX:I

.field public mLastFlingY:I

.field public mOverScroller:Landroid/widget/OverScroller;

.field public mReSchedulePostAnimationCallback:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$8;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final fling(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$8;

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v0, Landroid/widget/OverScroller;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 32
    .line 33
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/high16 v8, -0x80000000

    .line 38
    .line 39
    const v9, 0x7fffffff

    .line 40
    .line 41
    .line 42
    const/high16 v10, -0x80000000

    .line 43
    .line 44
    const v11, 0x7fffffff

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    .line 50
    .line 51
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    .line 52
    .line 53
    sget-object v2, Landroidx/reflect/widget/SeslOverScrollerReflector;->mClass:Ljava/lang/Class;

    .line 54
    .line 55
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    filled-new-array {v6, v6, v7, v12}, [Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "hidden_fling"

    .line 66
    .line 67
    invoke-static {v2, v7, v6}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    filled-new-array {p1, p2, v1, v0}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v3, v2, p1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v6, p1

    .line 98
    move v7, p2

    .line 99
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final postOnAnimation()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_20

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 44
    .line 45
    sub-int v6, v4, v6

    .line 46
    .line 47
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 48
    .line 49
    sub-int v7, v5, v7

    .line 50
    .line 51
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 52
    .line 53
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 54
    .line 55
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v6, v5, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInStretch(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-static {v7, v6, v8, v5}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInStretch(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    iget-object v13, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 86
    .line 87
    aput v2, v13, v2

    .line 88
    .line 89
    aput v2, v13, v3

    .line 90
    .line 91
    const/4 v14, 0x0

    .line 92
    const/4 v12, 0x1

    .line 93
    move v10, v4

    .line 94
    move v11, v5

    .line 95
    invoke-virtual/range {v9 .. v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_1

    .line 100
    .line 101
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 104
    .line 105
    aget v8, v7, v2

    .line 106
    .line 107
    sub-int/2addr v4, v8

    .line 108
    aget v7, v7, v3

    .line 109
    .line 110
    sub-int/2addr v5, v7

    .line 111
    invoke-static {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    invoke-static {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v7, 0x2

    .line 127
    if-eq v6, v7, :cond_2

    .line 128
    .line 129
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 132
    .line 133
    .line 134
    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 137
    .line 138
    if-eqz v8, :cond_5

    .line 139
    .line 140
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 141
    .line 142
    aput v2, v8, v2

    .line 143
    .line 144
    aput v2, v8, v3

    .line 145
    .line 146
    invoke-virtual {v6, v4, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 147
    .line 148
    .line 149
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .line 151
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 152
    .line 153
    aget v9, v8, v2

    .line 154
    .line 155
    aget v8, v8, v3

    .line 156
    .line 157
    sub-int/2addr v4, v9

    .line 158
    sub-int/2addr v5, v8

    .line 159
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 160
    .line 161
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 162
    .line 163
    if-eqz v10, :cond_6

    .line 164
    .line 165
    iget-boolean v11, v10, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 166
    .line 167
    if-nez v11, :cond_6

    .line 168
    .line 169
    iget-boolean v11, v10, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 170
    .line 171
    if-eqz v11, :cond_6

    .line 172
    .line 173
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 174
    .line 175
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-nez v6, :cond_3

    .line 180
    .line 181
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    iget v11, v10, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 186
    .line 187
    if-lt v11, v6, :cond_4

    .line 188
    .line 189
    sub-int/2addr v6, v3

    .line 190
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 191
    .line 192
    invoke-virtual {v10, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {v10, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_5
    move v8, v2

    .line 201
    move v9, v8

    .line 202
    :cond_6
    :goto_1
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    .line 204
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_7

    .line 211
    .line 212
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    .line 214
    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    .line 215
    .line 216
    .line 217
    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    iget-object v6, v11, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 220
    .line 221
    aput v2, v6, v2

    .line 222
    .line 223
    aput v2, v6, v3

    .line 224
    .line 225
    move v12, v9

    .line 226
    move v13, v8

    .line 227
    move v14, v4

    .line 228
    move v15, v5

    .line 229
    move-object/from16 v16, v6

    .line 230
    .line 231
    invoke-static/range {v11 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->access$5400(Landroidx/recyclerview/widget/RecyclerView;IIII[I)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_8

    .line 236
    .line 237
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 240
    .line 241
    aput v2, v6, v2

    .line 242
    .line 243
    aput v2, v6, v3

    .line 244
    .line 245
    :cond_8
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    .line 247
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 248
    .line 249
    aget v11, v10, v2

    .line 250
    .line 251
    if-ltz v11, :cond_9

    .line 252
    .line 253
    aget v11, v10, v3

    .line 254
    .line 255
    if-gez v11, :cond_a

    .line 256
    .line 257
    :cond_9
    aput v2, v10, v2

    .line 258
    .line 259
    aput v2, v10, v3

    .line 260
    .line 261
    :cond_a
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 262
    .line 263
    aget v11, v10, v2

    .line 264
    .line 265
    sub-int/2addr v4, v11

    .line 266
    aget v10, v10, v3

    .line 267
    .line 268
    sub-int/2addr v5, v10

    .line 269
    if-nez v9, :cond_b

    .line 270
    .line 271
    if-eqz v8, :cond_c

    .line 272
    .line 273
    :cond_b
    invoke-virtual {v6, v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 274
    .line 275
    .line 276
    :cond_c
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 277
    .line 278
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->access$5600(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-nez v6, :cond_d

    .line 283
    .line 284
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    .line 287
    .line 288
    .line 289
    :cond_d
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-ne v6, v10, :cond_e

    .line 298
    .line 299
    move v6, v3

    .line 300
    goto :goto_2

    .line 301
    :cond_e
    move v6, v2

    .line 302
    :goto_2
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-ne v10, v11, :cond_f

    .line 311
    .line 312
    move v10, v3

    .line 313
    goto :goto_3

    .line 314
    :cond_f
    move v10, v2

    .line 315
    :goto_3
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    if-nez v11, :cond_12

    .line 320
    .line 321
    if-nez v6, :cond_10

    .line 322
    .line 323
    if-eqz v4, :cond_11

    .line 324
    .line 325
    :cond_10
    if-nez v10, :cond_12

    .line 326
    .line 327
    if-eqz v5, :cond_11

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_11
    move v6, v2

    .line 331
    goto :goto_5

    .line 332
    :cond_12
    :goto_4
    move v6, v3

    .line 333
    :goto_5
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 334
    .line 335
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 336
    .line 337
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 338
    .line 339
    if-eqz v11, :cond_13

    .line 340
    .line 341
    iget-boolean v11, v11, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 342
    .line 343
    if-eqz v11, :cond_13

    .line 344
    .line 345
    move v11, v3

    .line 346
    goto :goto_6

    .line 347
    :cond_13
    move v11, v2

    .line 348
    :goto_6
    if-nez v11, :cond_1f

    .line 349
    .line 350
    if-eqz v6, :cond_1f

    .line 351
    .line 352
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    if-eq v6, v7, :cond_1d

    .line 357
    .line 358
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 359
    .line 360
    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    .line 361
    .line 362
    if-nez v6, :cond_1d

    .line 363
    .line 364
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    float-to-int v1, v1

    .line 369
    if-gez v4, :cond_14

    .line 370
    .line 371
    neg-int v4, v1

    .line 372
    goto :goto_7

    .line 373
    :cond_14
    if-lez v4, :cond_15

    .line 374
    .line 375
    move v4, v1

    .line 376
    goto :goto_7

    .line 377
    :cond_15
    move v4, v2

    .line 378
    :goto_7
    if-gez v5, :cond_16

    .line 379
    .line 380
    neg-int v1, v1

    .line 381
    goto :goto_8

    .line 382
    :cond_16
    if-lez v5, :cond_17

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_17
    move v1, v2

    .line 386
    :goto_8
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    if-gez v4, :cond_18

    .line 392
    .line 393
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 394
    .line 395
    .line 396
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    if-eqz v6, :cond_19

    .line 403
    .line 404
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 405
    .line 406
    neg-int v7, v4

    .line 407
    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_18
    if-lez v4, :cond_19

    .line 412
    .line 413
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 414
    .line 415
    .line 416
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 417
    .line 418
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_19

    .line 423
    .line 424
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 425
    .line 426
    invoke-virtual {v6, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 427
    .line 428
    .line 429
    :cond_19
    :goto_9
    if-gez v1, :cond_1a

    .line 430
    .line 431
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 432
    .line 433
    .line 434
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 435
    .line 436
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-eqz v6, :cond_1b

    .line 441
    .line 442
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 443
    .line 444
    neg-int v7, v1

    .line 445
    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 446
    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_1a
    if-lez v1, :cond_1b

    .line 450
    .line 451
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 452
    .line 453
    .line 454
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 455
    .line 456
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-eqz v6, :cond_1b

    .line 461
    .line 462
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 463
    .line 464
    invoke-virtual {v6, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 465
    .line 466
    .line 467
    :cond_1b
    :goto_a
    if-nez v4, :cond_1c

    .line 468
    .line 469
    if-eqz v1, :cond_1d

    .line 470
    .line 471
    :cond_1c
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 472
    .line 473
    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 474
    .line 475
    .line 476
    :cond_1d
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 477
    .line 478
    if-eqz v1, :cond_20

    .line 479
    .line 480
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 481
    .line 482
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 483
    .line 484
    iget-object v4, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 485
    .line 486
    if-eqz v4, :cond_1e

    .line 487
    .line 488
    const/4 v5, -0x1

    .line 489
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 490
    .line 491
    .line 492
    :cond_1e
    iput v2, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 496
    .line 497
    .line 498
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 499
    .line 500
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 501
    .line 502
    if-eqz v4, :cond_20

    .line 503
    .line 504
    invoke-virtual {v4, v1, v9, v8}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 505
    .line 506
    .line 507
    :cond_20
    :goto_b
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 508
    .line 509
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 510
    .line 511
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 512
    .line 513
    if-eqz v1, :cond_21

    .line 514
    .line 515
    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 516
    .line 517
    if-eqz v4, :cond_21

    .line 518
    .line 519
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 520
    .line 521
    .line 522
    :cond_21
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 523
    .line 524
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 525
    .line 526
    if-eqz v1, :cond_22

    .line 527
    .line 528
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 529
    .line 530
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 531
    .line 532
    .line 533
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 534
    .line 535
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 536
    .line 537
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 538
    .line 539
    .line 540
    goto :goto_c

    .line 541
    :cond_22
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 544
    .line 545
    .line 546
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 547
    .line 548
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 549
    .line 550
    .line 551
    :goto_c
    return-void
.end method

.method public final smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v7, p2

    .line 3
    .line 4
    const/high16 v1, -0x80000000

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v8, 0x0

    .line 8
    move/from16 v3, p3

    .line 9
    .line 10
    if-ne v3, v1, :cond_4

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-le v1, v3, :cond_0

    .line 21
    .line 22
    move v4, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v4, v8

    .line 25
    :goto_0
    int-to-double v5, v8

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    double-to-int v5, v5

    .line 31
    mul-int v6, p1, p1

    .line 32
    .line 33
    mul-int v9, v7, v7

    .line 34
    .line 35
    add-int/2addr v9, v6

    .line 36
    int-to-double v9, v9

    .line 37
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    double-to-int v6, v9

    .line 42
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    :goto_1
    div-int/lit8 v10, v9, 0x2

    .line 56
    .line 57
    int-to-float v6, v6

    .line 58
    const/high16 v11, 0x3f800000    # 1.0f

    .line 59
    .line 60
    mul-float/2addr v6, v11

    .line 61
    int-to-float v9, v9

    .line 62
    div-float/2addr v6, v9

    .line 63
    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    int-to-float v10, v10

    .line 68
    const/high16 v12, 0x3f000000    # 0.5f

    .line 69
    .line 70
    sub-float/2addr v6, v12

    .line 71
    const v12, 0x3ef1463b

    .line 72
    .line 73
    .line 74
    mul-float/2addr v6, v12

    .line 75
    float-to-double v12, v6

    .line 76
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v12

    .line 80
    double-to-float v6, v12

    .line 81
    mul-float/2addr v6, v10

    .line 82
    add-float/2addr v6, v10

    .line 83
    if-lez v5, :cond_2

    .line 84
    .line 85
    int-to-float v1, v5

    .line 86
    div-float/2addr v6, v1

    .line 87
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 92
    .line 93
    mul-float/2addr v1, v3

    .line 94
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    mul-int/lit8 v1, v1, 0x4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    if-eqz v4, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v1, v3

    .line 105
    :goto_2
    int-to-float v1, v1

    .line 106
    div-float/2addr v1, v9

    .line 107
    add-float/2addr v1, v11

    .line 108
    const/high16 v3, 0x43960000    # 300.0f

    .line 109
    .line 110
    mul-float/2addr v1, v3

    .line 111
    float-to-int v1, v1

    .line 112
    :goto_3
    const/16 v3, 0x7d0

    .line 113
    .line 114
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    move v9, v1

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    move v9, v3

    .line 121
    :goto_4
    if-nez p4, :cond_5

    .line 122
    .line 123
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$8;

    .line 124
    .line 125
    move-object v10, v1

    .line 126
    goto :goto_5

    .line 127
    :cond_5
    move-object/from16 v10, p4

    .line 128
    .line 129
    :goto_5
    const/4 v11, 0x2

    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    move v1, v11

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    move v1, v2

    .line 135
    :goto_6
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v4, 0x1

    .line 145
    move v2, p1

    .line 146
    move/from16 v3, p2

    .line 147
    .line 148
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_8

    .line 153
    .line 154
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    .line 156
    if-eq v1, v10, :cond_7

    .line 157
    .line 158
    iput-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 159
    .line 160
    new-instance v1, Landroid/widget/OverScroller;

    .line 161
    .line 162
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    .line 164
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-direct {v1, v2, v10}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 169
    .line 170
    .line 171
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 172
    .line 173
    :cond_7
    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 174
    .line 175
    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 176
    .line 177
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    const/4 v3, 0x0

    .line 186
    move v4, p1

    .line 187
    move/from16 v5, p2

    .line 188
    .line 189
    move v6, v9

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 194
    .line 195
    .line 196
    :cond_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    invoke-static {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 199
    .line 200
    .line 201
    return-void
.end method
