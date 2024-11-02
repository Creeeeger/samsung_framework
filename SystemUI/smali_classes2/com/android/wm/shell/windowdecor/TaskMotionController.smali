.class public final Lcom/android/wm/shell/windowdecor/TaskMotionController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAllowTouches:Z

.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mCanceled:Z

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mFlingConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field public mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastReportedTaskBounds:Landroid/graphics/Rect;

.field public mLastTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mMinVisibleWidth:I

.field public mResizeFreeformUpdateListener:Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;

.field public mScaledFreeformHeight:I

.field public mScreenEdgeInset:I

.field public final mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field public mStashMoveThreshold:I

.field public final mTargetBounds:Landroid/graphics/Rect;

.field public mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRect2:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect2:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 26
    .line 27
    const/high16 v1, 0x43480000    # 200.0f

    .line 28
    .line 29
    const v2, 0x3f333333    # 0.7f

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 36
    .line 37
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 62
    .line 63
    iget-object p1, p5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 66
    .line 67
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 68
    .line 69
    iget-object p1, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 72
    .line 73
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final addTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    .line 3
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect2:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 18
    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public final cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Bounds Animator canceled by "

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "TaskMotionController"

    .line 18
    .line 19
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final computeStashState(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p2, :cond_12

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-gt v1, v2, :cond_1

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    if-lt v1, v2, :cond_2

    .line 28
    .line 29
    move v1, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, v0

    .line 32
    :goto_0
    if-eqz v1, :cond_11

    .line 33
    .line 34
    if-eqz p3, :cond_b

    .line 35
    .line 36
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 37
    .line 38
    iget v2, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 39
    .line 40
    if-ne v1, v2, :cond_a

    .line 41
    .line 42
    if-eq v2, v3, :cond_3

    .line 43
    .line 44
    if-ne v2, v4, :cond_a

    .line 45
    .line 46
    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iget v7, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 53
    .line 54
    iget v8, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    .line 55
    .line 56
    add-int/2addr v7, v8

    .line 57
    iget v5, v5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 58
    .line 59
    if-nez v5, :cond_4

    .line 60
    .line 61
    move v5, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move v5, v0

    .line 64
    :goto_1
    iget v8, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    .line 65
    .line 66
    const/4 v9, -0x1

    .line 67
    if-eq v8, v9, :cond_5

    .line 68
    .line 69
    iget-boolean v8, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 70
    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    move v8, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    move v8, v0

    .line 76
    :goto_2
    if-eqz v8, :cond_6

    .line 77
    .line 78
    iget p3, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 79
    .line 80
    const/high16 v8, 0x3f800000    # 1.0f

    .line 81
    .line 82
    cmpl-float p3, p3, v8

    .line 83
    .line 84
    if-eqz p3, :cond_6

    .line 85
    .line 86
    move p3, v3

    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move p3, v0

    .line 89
    :goto_3
    if-nez p3, :cond_a

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    if-eqz v6, :cond_a

    .line 94
    .line 95
    :cond_7
    if-ne v2, v3, :cond_8

    .line 96
    .line 97
    iget p3, p2, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    if-gt p3, v7, :cond_9

    .line 100
    .line 101
    :cond_8
    if-ne v2, v4, :cond_a

    .line 102
    .line 103
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 106
    .line 107
    sub-int/2addr v2, v7

    .line 108
    if-ge p3, v2, :cond_a

    .line 109
    .line 110
    :cond_9
    move p3, v3

    .line 111
    goto :goto_4

    .line 112
    :cond_a
    move p3, v0

    .line 113
    :goto_4
    if-eqz p3, :cond_b

    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return v0

    .line 117
    :cond_b
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    .line 121
    .line 122
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    div-int/2addr p3, v4

    .line 132
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-gt v2, p3, :cond_c

    .line 139
    .line 140
    monitor-exit p0

    .line 141
    return v1

    .line 142
    :cond_c
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 143
    .line 144
    invoke-virtual {p3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 149
    .line 150
    iget v5, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 151
    .line 152
    if-nez v5, :cond_d

    .line 153
    .line 154
    move v5, v3

    .line 155
    goto :goto_5

    .line 156
    :cond_d
    move v5, v0

    .line 157
    :goto_5
    if-eqz v5, :cond_e

    .line 158
    .line 159
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    .line 161
    iget-boolean v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 162
    .line 163
    if-eqz v5, :cond_e

    .line 164
    .line 165
    if-nez p3, :cond_e

    .line 166
    .line 167
    monitor-exit p0

    .line 168
    return v0

    .line 169
    :cond_e
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleViewWidth()I

    .line 170
    .line 171
    .line 172
    move-result p3

    .line 173
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    sub-int/2addr v5, p3

    .line 185
    div-int/2addr v5, v4

    .line 186
    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 187
    .line 188
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 189
    .line 190
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 191
    .line 192
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 193
    .line 194
    add-int/2addr v5, p2

    .line 195
    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 196
    .line 197
    add-int/2addr p3, v5

    .line 198
    iput p3, v2, Landroid/graphics/Rect;->right:I

    .line 199
    .line 200
    if-ne v1, v3, :cond_f

    .line 201
    .line 202
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    if-ge v5, p2, :cond_10

    .line 205
    .line 206
    :cond_f
    if-ne v1, v4, :cond_11

    .line 207
    .line 208
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 209
    .line 210
    if-gt p3, p1, :cond_11

    .line 211
    .line 212
    :cond_10
    monitor-exit p0

    .line 213
    return v0

    .line 214
    :cond_11
    monitor-exit p0

    .line 215
    return v1

    .line 216
    :cond_12
    :goto_6
    monitor-exit p0

    .line 217
    return v0

    .line 218
    :catchall_0
    move-exception p1

    .line 219
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    throw p1
.end method

.method public final isMotionAnimating()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-gt v2, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 27
    .line 28
    invoke-interface {v3}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->isAnimating()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    move v0, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move v1, v4

    .line 43
    :cond_2
    monitor-exit p0

    .line 44
    return v1

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v0
.end method

.method public final moveToTarget(Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;Z)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    const-string v10, "moveToTarget: stashState=0, velocity.x= "

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v11, 0x0

    .line 19
    iput-boolean v11, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 27
    .line 28
    invoke-virtual {v3, v11}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->rebuildFlingConfigs(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 43
    .line 44
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    int-to-float v6, v6

    .line 47
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 48
    .line 49
    invoke-static {v6, v5, v7}, Lcom/android/wm/shell/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)F

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 56
    .line 57
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    int-to-float v7, v7

    .line 62
    cmpg-float v7, v12, v7

    .line 63
    .line 64
    if-gez v7, :cond_1

    .line 65
    .line 66
    int-to-float v7, v3

    .line 67
    add-float/2addr v7, v12

    .line 68
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    int-to-float v6, v6

    .line 71
    cmpg-float v6, v7, v6

    .line 72
    .line 73
    if-gez v6, :cond_1

    .line 74
    .line 75
    const/4 v14, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v14, v11

    .line 78
    :goto_0
    if-eqz v9, :cond_2

    .line 79
    .line 80
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 81
    .line 82
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    int-to-float v7, v7

    .line 87
    cmpl-float v7, v12, v7

    .line 88
    .line 89
    if-lez v7, :cond_2

    .line 90
    .line 91
    int-to-float v7, v3

    .line 92
    add-float/2addr v7, v12

    .line 93
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    int-to-float v6, v6

    .line 96
    cmpl-float v6, v7, v6

    .line 97
    .line 98
    if-lez v6, :cond_2

    .line 99
    .line 100
    const/4 v15, 0x1

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move v15, v11

    .line 103
    :goto_1
    const/high16 v6, -0x40800000    # -1.0f

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    if-eqz v14, :cond_3

    .line 107
    .line 108
    cmpl-float v8, v5, v7

    .line 109
    .line 110
    if-nez v8, :cond_3

    .line 111
    .line 112
    const-string v5, "TaskMotionController"

    .line 113
    .line 114
    const-string v8, "moveToTarget: make velocity as negative"

    .line 115
    .line 116
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move v5, v6

    .line 120
    :cond_3
    const/high16 v8, 0x457a0000    # 4000.0f

    .line 121
    .line 122
    if-eqz v14, :cond_5

    .line 123
    .line 124
    cmpg-float v6, v5, v6

    .line 125
    .line 126
    if-gtz v6, :cond_4

    .line 127
    .line 128
    const/high16 v6, -0x3a860000    # -4000.0f

    .line 129
    .line 130
    cmpl-float v6, v5, v6

    .line 131
    .line 132
    if-lez v6, :cond_4

    .line 133
    .line 134
    sub-float/2addr v5, v8

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    const v6, -0x3a254000    # -7000.0f

    .line 137
    .line 138
    .line 139
    cmpg-float v8, v5, v6

    .line 140
    .line 141
    if-gez v8, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    if-eqz v15, :cond_7

    .line 145
    .line 146
    cmpl-float v6, v5, v7

    .line 147
    .line 148
    if-ltz v6, :cond_6

    .line 149
    .line 150
    cmpg-float v6, v5, v8

    .line 151
    .line 152
    if-gez v6, :cond_6

    .line 153
    .line 154
    add-float/2addr v5, v8

    .line 155
    goto :goto_3

    .line 156
    :cond_6
    const v6, 0x45dac000    # 7000.0f

    .line 157
    .line 158
    .line 159
    cmpl-float v8, v5, v6

    .line 160
    .line 161
    if-lez v8, :cond_7

    .line 162
    .line 163
    :goto_2
    move v5, v6

    .line 164
    :cond_7
    :goto_3
    iget v8, v2, Landroid/graphics/PointF;->y:F

    .line 165
    .line 166
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    iput-object v6, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 171
    .line 172
    sget-object v13, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    .line 173
    .line 174
    int-to-float v3, v3

    .line 175
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 176
    .line 177
    invoke-virtual {v6, v13, v3, v7, v11}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 178
    .line 179
    .line 180
    sget-object v3, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    .line 181
    .line 182
    int-to-float v4, v4

    .line 183
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 184
    .line 185
    invoke-virtual {v6, v3, v4, v7, v11}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 186
    .line 187
    .line 188
    sget-object v4, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 189
    .line 190
    if-eqz v9, :cond_8

    .line 191
    .line 192
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_8
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 196
    .line 197
    :goto_4
    move-object v7, v3

    .line 198
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 199
    .line 200
    move-object v3, v6

    .line 201
    move-object v13, v6

    .line 202
    move-object v6, v7

    .line 203
    move-object v7, v11

    .line 204
    move v11, v8

    .line 205
    move/from16 v8, p4

    .line 206
    .line 207
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 208
    .line 209
    .line 210
    sget-object v17, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    .line 211
    .line 212
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 213
    .line 214
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 215
    .line 216
    const/16 v21, 0x0

    .line 217
    .line 218
    move-object/from16 v16, v13

    .line 219
    .line 220
    move/from16 v18, v11

    .line 221
    .line 222
    move-object/from16 v19, v3

    .line 223
    .line 224
    move-object/from16 v20, v4

    .line 225
    .line 226
    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 227
    .line 228
    .line 229
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eq v3, v9, :cond_c

    .line 236
    .line 237
    if-eqz v3, :cond_9

    .line 238
    .line 239
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 240
    .line 241
    const/4 v3, 0x0

    .line 242
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScaleUp(Landroid/graphics/Rect;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_9
    const/4 v3, 0x0

    .line 250
    if-eqz v14, :cond_a

    .line 251
    .line 252
    const/4 v11, 0x1

    .line 253
    goto :goto_5

    .line 254
    :cond_a
    if-eqz v15, :cond_b

    .line 255
    .line 256
    const/4 v11, 0x2

    .line 257
    goto :goto_5

    .line 258
    :cond_b
    const-string v4, "TaskMotionController"

    .line 259
    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 266
    .line 267
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v2, ", estimatedStashXEndValue="

    .line 271
    .line 272
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move v11, v3

    .line 286
    :goto_5
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 287
    .line 288
    invoke-virtual {v2, v11}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScaleDown(Landroid/graphics/Rect;)Z

    .line 292
    .line 293
    .line 294
    :cond_c
    :goto_6
    new-instance v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;

    .line 295
    .line 296
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;)V

    .line 297
    .line 298
    .line 299
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mResizeFreeformUpdateListener:Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;

    .line 300
    .line 301
    move-object/from16 v0, p3

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->startBoundsAnimator(Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;)V

    .line 304
    .line 305
    .line 306
    monitor-exit p0

    .line 307
    return-void

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    throw v0
.end method

.method public final postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 2
    .line 3
    invoke-virtual {p4, v0, p3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 26
    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-virtual {p4, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 36
    .line 37
    invoke-virtual {p4, v0}, Landroid/window/WindowContainerTransaction;->requestForceTaskInfoChange(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 41
    .line 42
    invoke-virtual {v0, p4}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->removeMotionAnimator(I)V

    .line 46
    .line 47
    .line 48
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {p4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    sget-boolean p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo p4, "postAnimationFinished: Task="

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, " animType="

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " endBounds="

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, " Callers="

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x6

    .line 92
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string p1, "TaskMotionController"

    .line 104
    .line 105
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final rebuildFlingConfigs(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    int-to-float v3, v3

    .line 18
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    sub-int/2addr v2, v0

    .line 21
    int-to-float v2, v2

    .line 22
    const v4, 0x3ff33333    # 1.9f

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v4, v3, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 29
    .line 30
    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/2addr v3, v2

    .line 45
    int-to-float v2, v3

    .line 46
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    sub-int/2addr v3, p1

    .line 53
    int-to-float p1, v3

    .line 54
    invoke-direct {v1, v4, v2, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 58
    .line 59
    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    int-to-float v2, v2

    .line 68
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    sub-int/2addr v1, v0

    .line 71
    int-to-float v0, v1

    .line 72
    invoke-direct {p1, v4, v2, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 76
    .line 77
    return-void
.end method

.method public final removeMotionAnimator(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "removeMotionAnimator: clear taskInfo="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const-string p1, "TaskMotionController"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " Callers="

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1
.end method

.method public final scheduleAnimateRestore(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    if-eqz v3, :cond_a

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    const-string v0, "TaskMotionController"

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v5, "scheduleAnimateRestore fail: taskInfo="

    .line 35
    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, " startBounds="

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " endBounds="

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    if-nez v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->addTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-static {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-ge v4, v6, :cond_3

    .line 105
    .line 106
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 107
    .line 108
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 115
    .line 116
    :cond_3
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 117
    .line 118
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-ge v4, v6, :cond_4

    .line 129
    .line 130
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 131
    .line 132
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 139
    .line 140
    :cond_4
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 141
    .line 142
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 143
    .line 144
    move/from16 v6, p3

    .line 145
    .line 146
    invoke-virtual {p0, v4, v2, v6}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->computeStashState(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_5

    .line 151
    .line 152
    const-string v6, "TaskMotionController"

    .line 153
    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string/jumbo v8, "scheduleAnimateRestore adjust restore bounds: taskInfo="

    .line 157
    .line 158
    .line 159
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v8, " startBounds="

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v8, " endBounds="

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 189
    .line 190
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    sub-int/2addr v6, v7

    .line 201
    div-int/lit8 v6, v6, 0x2

    .line 202
    .line 203
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 204
    .line 205
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 206
    .line 207
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    sub-int/2addr v7, v8

    .line 216
    div-int/lit8 v7, v7, 0x2

    .line 217
    .line 218
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 222
    .line 223
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 224
    .line 225
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-ne v7, v8, :cond_6

    .line 238
    .line 239
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eq v7, v8, :cond_7

    .line 248
    .line 249
    :cond_6
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 250
    .line 251
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    add-int/2addr v8, v7

    .line 256
    iput v8, v2, Landroid/graphics/Rect;->right:I

    .line 257
    .line 258
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 259
    .line 260
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    add-int/2addr v6, v7

    .line 265
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 266
    .line 267
    :cond_7
    if-nez v4, :cond_8

    .line 268
    .line 269
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 270
    .line 271
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    .line 272
    .line 273
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 274
    .line 275
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 276
    .line 277
    if-le v4, v6, :cond_8

    .line 278
    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 284
    .line 285
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    .line 286
    .line 287
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 288
    .line 289
    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    add-int/2addr v6, v4

    .line 292
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 293
    .line 294
    :cond_8
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 295
    .line 296
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 297
    .line 298
    new-instance v7, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;

    .line 299
    .line 300
    invoke-direct {v7, p0, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 301
    .line 302
    .line 303
    const/4 v3, 0x4

    .line 304
    invoke-virtual {v4, v3, v6, v7}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->makeAnimator(ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 309
    .line 310
    check-cast v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;

    .line 311
    .line 312
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 313
    .line 314
    iget v6, v6, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 315
    .line 316
    iget-object v7, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 317
    .line 318
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 319
    .line 320
    monitor-enter v7

    .line 321
    :try_start_0
    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 322
    .line 323
    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    .line 325
    .line 326
    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 327
    .line 328
    invoke-virtual {v8, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 329
    .line 330
    .line 331
    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 332
    .line 333
    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 337
    .line 338
    invoke-virtual {v2}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iput-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 343
    .line 344
    new-instance v8, Lcom/facebook/rebound/SpringConfig;

    .line 345
    .line 346
    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    .line 347
    .line 348
    invoke-static {v9, v10}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    .line 349
    .line 350
    .line 351
    move-result-wide v11

    .line 352
    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    .line 353
    .line 354
    move/from16 p3, v6

    .line 355
    .line 356
    invoke-static {v13, v14}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    .line 357
    .line 358
    .line 359
    move-result-wide v5

    .line 360
    invoke-direct {v8, v11, v12, v5, v6}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v8}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 367
    .line 368
    invoke-virtual {v2}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    iput-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 373
    .line 374
    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    .line 375
    .line 376
    invoke-static {v9, v10}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    .line 377
    .line 378
    .line 379
    move-result-wide v8

    .line 380
    invoke-static {v13, v14}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    .line 381
    .line 382
    .line 383
    move-result-wide v10

    .line 384
    invoke-direct {v5, v8, v9, v10, v11}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v5}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 388
    .line 389
    .line 390
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 391
    .line 392
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 393
    .line 394
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 395
    .line 396
    int-to-double v5, v5

    .line 397
    invoke-virtual {v2, v5, v6}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    .line 398
    .line 399
    .line 400
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 401
    .line 402
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 403
    .line 404
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 405
    .line 406
    int-to-double v5, v5

    .line 407
    invoke-virtual {v2, v5, v6}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    .line 408
    .line 409
    .line 410
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 411
    .line 412
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    .line 413
    .line 414
    invoke-virtual {v2, v5, v6}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    .line 415
    .line 416
    .line 417
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 418
    .line 419
    invoke-virtual {v2, v5, v6}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    .line 420
    .line 421
    .line 422
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 423
    .line 424
    invoke-virtual {v2, v4}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    .line 425
    .line 426
    .line 427
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 428
    .line 429
    invoke-virtual {v2, v4}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    .line 430
    .line 431
    .line 432
    move/from16 v2, p3

    .line 433
    .line 434
    iput v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mScale:F

    .line 435
    .line 436
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    sget-boolean v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 438
    .line 439
    if-eqz v2, :cond_9

    .line 440
    .line 441
    const-string v2, "TaskMotionAnimator"

    .line 442
    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v6, "StashRestoreAnimation:initialize(): startBounds="

    .line 446
    .line 447
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v1, " endBounds="

    .line 454
    .line 455
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v1, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 459
    .line 460
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    :cond_9
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 471
    .line 472
    new-instance v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda1;

    .line 473
    .line 474
    const/4 v2, 0x0

    .line 475
    invoke-direct {v1, v3, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;I)V

    .line 476
    .line 477
    .line 478
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :catchall_0
    move-exception v0

    .line 485
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    throw v0

    .line 487
    :cond_a
    :goto_1
    return-void
.end method

.method public final scheduleAnimateScaleDown(Landroid/graphics/Rect;)Z
    .locals 10

    .line 1
    const-string/jumbo v0, "scheduleAnimateScaleDown: failed, already animating, t #"

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string p1, "TaskMotionController"

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    .line 39
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return v2

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 68
    .line 69
    iput v2, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    .line 70
    .line 71
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 76
    .line 77
    new-instance v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    invoke-direct {v4, p0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->makeAnimator(ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 87
    .line 88
    move-object v3, v2

    .line 89
    check-cast v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;

    .line 90
    .line 91
    iget v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    .line 92
    .line 93
    int-to-float v2, v2

    .line 94
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    .line 98
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 99
    .line 100
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    int-to-float v4, v4

    .line 111
    div-float v6, v2, v4

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 115
    .line 116
    iget v5, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 121
    .line 122
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 123
    .line 124
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    move-object v8, p1

    .line 137
    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->initialize(IFFLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 141
    .line 142
    new-instance v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda1;

    .line 143
    .line 144
    invoke-direct {v2, v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;I)V

    .line 145
    .line 146
    .line 147
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 154
    .line 155
    if-eqz p1, :cond_3

    .line 156
    .line 157
    const-string p1, "TaskMotionController"

    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string/jumbo v2, "scheduleAnimateScaleDown: taskInfo="

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p0, " callers="

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const/4 p0, 0x4

    .line 180
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    :cond_3
    return v1

    .line 195
    :cond_4
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 196
    return v2

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    throw p1
.end method

.method public final scheduleAnimateScaleUp(Landroid/graphics/Rect;)Z
    .locals 12

    .line 1
    const-string/jumbo v0, "scheduleAnimateScaleUp: taskInfo="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "scheduleAnimateScaleUp: failed, already animating, t #"

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    const/4 v4, 0x1

    .line 26
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string p1, "TaskMotionController"

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return v3

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 71
    .line 72
    iput v4, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    .line 73
    .line 74
    iput-boolean v4, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 75
    .line 76
    sget-boolean v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    const-string v1, "TaskMotionController"

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " callers="

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 117
    .line 118
    new-instance v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;

    .line 119
    .line 120
    invoke-direct {v2, p0, v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->makeAnimator(ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 128
    .line 129
    move-object v5, v1

    .line 130
    check-cast v5, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 134
    .line 135
    iget v7, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 136
    .line 137
    const/high16 v8, 0x3f800000    # 1.0f

    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 142
    .line 143
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 144
    .line 145
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    move-object v10, p1

    .line 158
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->initialize(IFFLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 162
    .line 163
    new-instance v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    const/4 v2, 0x2

    .line 166
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;I)V

    .line 167
    .line 168
    .line 169
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    monitor-exit p0

    .line 175
    return v4

    .line 176
    :cond_4
    :goto_0
    monitor-exit p0

    .line 177
    return v3

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw p1
.end method

.method public final setStashDim(Landroid/window/WindowContainerTransaction;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    .line 7
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 15
    .line 16
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 27
    .line 28
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 29
    .line 30
    invoke-virtual {v5, v6, v3, v2, v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->createStashDimOverlay(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v3, :cond_b

    .line 38
    .line 39
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_2
    const/4 v3, 0x0

    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 51
    .line 52
    if-nez v6, :cond_b

    .line 53
    .line 54
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 55
    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    .line 60
    .line 61
    .line 62
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 63
    .line 64
    :goto_0
    new-instance v3, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 65
    .line 66
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    .line 71
    .line 72
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    .line 79
    .line 80
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 81
    .line 82
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 83
    .line 84
    iget v14, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 85
    .line 86
    move-object v7, v3

    .line 87
    invoke-direct/range {v7 .. v14}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V

    .line 88
    .line 89
    .line 90
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_4
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 95
    .line 96
    if-nez v6, :cond_6

    .line 97
    .line 98
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 99
    .line 100
    if-nez v6, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    .line 104
    .line 105
    .line 106
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 107
    .line 108
    :goto_1
    new-instance v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 109
    .line 110
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    .line 115
    .line 116
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 117
    .line 118
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 125
    .line 126
    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 127
    .line 128
    move-object v7, v3

    .line 129
    invoke-direct/range {v7 .. v14}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    .line 130
    .line 131
    .line 132
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 133
    .line 134
    :cond_6
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 137
    .line 138
    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 139
    .line 140
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const/16 v6, 0xa

    .line 149
    .line 150
    invoke-static {v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 155
    .line 156
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 157
    .line 158
    if-ne v6, v4, :cond_7

    .line 159
    .line 160
    iget-boolean v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 161
    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    move v14, v10

    .line 165
    goto :goto_2

    .line 166
    :cond_7
    const/16 v6, 0x30

    .line 167
    .line 168
    move v14, v6

    .line 169
    :goto_2
    mul-int/lit8 v15, v14, 0x2

    .line 170
    .line 171
    iget-boolean v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    if-nez v6, :cond_8

    .line 175
    .line 176
    const/4 v6, 0x4

    .line 177
    invoke-static {v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    move v11, v3

    .line 182
    goto :goto_3

    .line 183
    :cond_8
    move v11, v7

    .line 184
    :goto_3
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 185
    .line 186
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 187
    .line 188
    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 189
    .line 190
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 199
    .line 200
    .line 201
    move-result v16

    .line 202
    iget v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 203
    .line 204
    if-nez v3, :cond_9

    .line 205
    .line 206
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 207
    .line 208
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 209
    .line 210
    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 217
    .line 218
    iget v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    .line 219
    .line 220
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    move v9, v3

    .line 225
    goto :goto_4

    .line 226
    :cond_9
    move v9, v7

    .line 227
    :goto_4
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 228
    .line 229
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 230
    .line 231
    if-eqz v6, :cond_a

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    move v8, v6

    .line 238
    goto :goto_5

    .line 239
    :cond_a
    move v8, v7

    .line 240
    :goto_5
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 241
    .line 242
    iget v12, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    .line 243
    .line 244
    iget v13, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    .line 245
    .line 246
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 247
    .line 248
    iget-boolean v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    .line 249
    .line 250
    xor-int/lit8 v17, v6, 0x1

    .line 251
    .line 252
    move-object v7, v3

    .line 253
    invoke-virtual/range {v7 .. v17}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(IIIIIIIIIZ)Z

    .line 254
    .line 255
    .line 256
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 257
    .line 258
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 259
    .line 260
    iput-boolean v1, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsDexEnabled:Z

    .line 261
    .line 262
    :cond_b
    :goto_6
    if-eqz p1, :cond_c

    .line 263
    .line 264
    move-object/from16 v1, p1

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_c
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 268
    .line 269
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 270
    .line 271
    .line 272
    :goto_7
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 273
    .line 274
    if-eqz p2, :cond_d

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_d
    move v4, v5

    .line 278
    :goto_8
    invoke-virtual {v1, v2, v4}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 279
    .line 280
    .line 281
    if-eqz p1, :cond_e

    .line 282
    .line 283
    return-void

    .line 284
    :cond_e
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public final startBoundsAnimator(Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mResizeFreeformUpdateListener:Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V

    .line 22
    .line 23
    .line 24
    filled-new-array {v1, p1}, [Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
