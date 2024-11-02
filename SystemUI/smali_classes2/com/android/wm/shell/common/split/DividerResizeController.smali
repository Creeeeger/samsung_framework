.class public final Lcom/android/wm/shell/common/split/DividerResizeController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static USE_GUIDE_VIEW_EFFECTS:Z = false


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDividerPosition:I

.field public mDefaultHandleMoveThreshold:I

.field public mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

.field public mDividerSize:I

.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mHalfSplitStageType:I

.field public mIsFinishing:Z

.field public mIsHorizontalDivision:Z

.field public mIsResizing:Z

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

.field public mResizingRequested:Z

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

.field public mSyncAppsId:I

.field public mUseGuideViewByMultiStar:Z

.field public mWaitingForSyncAppsCallback:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mUseGuideViewByMultiStar:Z

    .line 6
    .line 7
    new-instance v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 24
    .line 25
    new-instance v2, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 37
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsHorizontalDivision:Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v3, "remove"

    .line 23
    .line 24
    .line 25
    const-string v4, "DividerResizeLayout"

    .line 26
    .line 27
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 48
    .line 49
    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 52
    .line 53
    iput-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 54
    .line 55
    iput-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 56
    .line 57
    iget-boolean v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v3, "removeWindow: failed, window isn\'t added, Callers="

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x5

    .line 70
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iput-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    .line 86
    .line 87
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    .line 89
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 95
    .line 96
    iput v0, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    .line 97
    .line 98
    iput-object v1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 99
    .line 100
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public final finishResizing(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    .line 2
    .line 3
    const-string v1, "DividerResizeController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "finishResizing: failed, NOT resizing state!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p0, "finishResizing: failed, already finishing state!"

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    .line 32
    .line 33
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 34
    .line 35
    invoke-static {v2, p1}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->-$$Nest$mupdate(Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;I)V

    .line 36
    .line 37
    .line 38
    iget p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 39
    .line 40
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-ge p1, v3, :cond_3

    .line 44
    .line 45
    move v3, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move v3, v4

    .line 48
    :goto_1
    if-eqz v3, :cond_4

    .line 49
    .line 50
    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 58
    .line 59
    if-le p1, v3, :cond_5

    .line 60
    .line 61
    move v3, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    move v3, v4

    .line 64
    :goto_2
    if-eqz v3, :cond_6

    .line 65
    .line 66
    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 74
    .line 75
    if-ge p1, v3, :cond_7

    .line 76
    .line 77
    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_3

    .line 84
    :cond_7
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 85
    .line 86
    if-le p1, v3, :cond_8

    .line 87
    .line 88
    iget-object p1, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    goto :goto_3

    .line 95
    :cond_8
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, p1, v5, v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_3
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    .line 103
    .line 104
    if-eqz v3, :cond_9

    .line 105
    .line 106
    move v5, v0

    .line 107
    goto :goto_4

    .line 108
    :cond_9
    move v5, v4

    .line 109
    :goto_4
    iget v6, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 110
    .line 111
    iget v7, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    .line 112
    .line 113
    if-eq v6, v7, :cond_a

    .line 114
    .line 115
    move v7, v0

    .line 116
    goto :goto_5

    .line 117
    :cond_a
    move v7, v4

    .line 118
    :goto_5
    iget-boolean v8, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 119
    .line 120
    if-eqz v8, :cond_f

    .line 121
    .line 122
    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 123
    .line 124
    const/high16 v9, 0x3f800000    # 1.0f

    .line 125
    .line 126
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 127
    .line 128
    .line 129
    new-instance v9, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    .line 130
    .line 131
    invoke-direct {v9, v8, v6, v3}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;II)V

    .line 132
    .line 133
    .line 134
    iget-boolean v3, v8, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 135
    .line 136
    if-eqz v3, :cond_b

    .line 137
    .line 138
    iget-boolean v3, v8, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 139
    .line 140
    if-eqz v3, :cond_b

    .line 141
    .line 142
    move v3, v0

    .line 143
    goto :goto_6

    .line 144
    :cond_b
    move v3, v4

    .line 145
    :goto_6
    if-eqz v3, :cond_c

    .line 146
    .line 147
    invoke-virtual {v9}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->run()V

    .line 148
    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_c
    iput-object v9, v8, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    const-string v3, "DividerResizeLayout"

    .line 154
    .line 155
    const-string v6, "onActionDrop: defer action drop, isn\'t ready to show yet"

    .line 156
    .line 157
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :goto_7
    if-eqz v7, :cond_e

    .line 161
    .line 162
    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 163
    .line 164
    if-eqz v3, :cond_d

    .line 165
    .line 166
    const-string/jumbo v3, "startWaitingForSyncAppsCallback: failed, already waiting!"

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_d
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    .line 174
    .line 175
    add-int/2addr v3, v0

    .line 176
    iput v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    .line 177
    .line 178
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 181
    .line 182
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 183
    .line 184
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    .line 185
    .line 186
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    const-wide/16 v8, 0xbb8

    .line 190
    .line 191
    invoke-virtual {v3, v8, v9, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string/jumbo v6, "startWaitingForSyncAppsCallback: reason=resize_split, SyncId="

    .line 197
    .line 198
    .line 199
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    .line 203
    .line 204
    invoke-static {v3, v6, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_e
    move v5, v0

    .line 209
    :goto_8
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 210
    .line 211
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->shouldDeferRemove(Z)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    goto :goto_9

    .line 216
    :cond_f
    move v3, v4

    .line 217
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v6, "finishResizing: snapTargetPosition="

    .line 220
    .line 221
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget v6, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 225
    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v6, ", positionChanged="

    .line 230
    .line 231
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v6, ", isInDismissZone="

    .line 238
    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v6, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 243
    .line 244
    iget v7, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 245
    .line 246
    if-ge v6, v7, :cond_10

    .line 247
    .line 248
    move v7, v0

    .line 249
    goto :goto_a

    .line 250
    :cond_10
    move v7, v4

    .line 251
    :goto_a
    if-nez v7, :cond_13

    .line 252
    .line 253
    iget v2, v2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 254
    .line 255
    if-le v6, v2, :cond_11

    .line 256
    .line 257
    move v2, v0

    .line 258
    goto :goto_b

    .line 259
    :cond_11
    move v2, v4

    .line 260
    :goto_b
    if-eqz v2, :cond_12

    .line 261
    .line 262
    goto :goto_c

    .line 263
    :cond_12
    move v0, v4

    .line 264
    :cond_13
    :goto_c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v0, ", deferStopDragging="

    .line 268
    .line 269
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;

    .line 283
    .line 284
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 285
    .line 286
    .line 287
    if-eqz v3, :cond_14

    .line 288
    .line 289
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 290
    .line 291
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 294
    .line 295
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 296
    .line 297
    const-wide/16 v0, 0x3e8

    .line 298
    .line 299
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    .line 301
    .line 302
    goto :goto_d

    .line 303
    :cond_14
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda1;->run()V

    .line 304
    .line 305
    .line 306
    :goto_d
    return-void
.end method

.method public final stopWaitingForSyncAppsCallback(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 2
    .line 3
    const-string v1, "DividerResizeController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "stopWaitingForSyncAppsCallback: failed, there is no waiting!"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 18
    .line 19
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v3, "stopWaitingForSyncAppsCallback: reason="

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ", SyncId="

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    .line 43
    .line 44
    invoke-static {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 48
    .line 49
    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    if-ltz v1, :cond_2

    .line 58
    .line 59
    iget-object v2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 88
    .line 89
    .line 90
    :cond_3
    const/4 v1, 0x2

    .line 91
    new-array v1, v1, [F

    .line 92
    .line 93
    fill-array-data v1, :array_0

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    new-instance v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;

    .line 103
    .line 104
    invoke-direct {v2, p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    new-instance v1, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;

    .line 113
    .line 114
    invoke-direct {v1, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 123
    .line 124
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    sget-wide v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->WINDOW_ALPHA_ANIM_DURATION:J

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 135
    .line 136
    .line 137
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 140
    .line 141
    .line 142
    new-instance p1, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeController;I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->shouldDeferRemove(Z)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 157
    .line 158
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    const-wide/16 v0, 0x3e8

    .line 165
    .line 166
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerResizeController$$ExternalSyntheticLambda0;->run()V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-void

    .line 174
    nop

    .line 175
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
