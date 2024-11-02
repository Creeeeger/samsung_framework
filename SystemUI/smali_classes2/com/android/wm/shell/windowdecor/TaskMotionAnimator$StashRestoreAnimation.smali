.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;


# instance fields
.field public final mAnimatedBounds:Landroid/graphics/RectF;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public mScale:F

.field public final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field public mSpringTranslateX:Lcom/facebook/rebound/Spring;

.field public mSpringTranslateY:Lcom/facebook/rebound/Spring;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance p1, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 32
    .line 33
    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    iput p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mScale:F

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    .line 9
    .line 10
    if-nez v2, :cond_5

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 13
    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x1

    .line 22
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->setAtRest()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->setAtRest()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 37
    .line 38
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 39
    .line 40
    float-to-int v3, v3

    .line 41
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 42
    .line 43
    float-to-int v2, v2

    .line 44
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 51
    .line 52
    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 57
    .line 58
    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-interface {v2, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    sget-boolean p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    const-string p0, "TaskMotionAnimator"

    .line 73
    .line 74
    const-string p1, "StashRestoreAnimation[cancel]"

    .line 75
    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void

    .line 80
    :cond_5
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0
.end method

.method public final getDragBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 9
    .line 10
    float-to-int v1, v1

    .line 11
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 12
    .line 13
    float-to-int v2, v2

    .line 14
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 15
    .line 16
    float-to-int v3, v3

    .line 17
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 18
    .line 19
    float-to-int p0, p0

    .line 20
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final isAnimating()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 11

    .line 1
    const-string p1, " to 1.0"

    .line 2
    .line 3
    const-string v0, "StashRestoreAnimation: scale "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->isAnimating()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 21
    .line 22
    iget v3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 23
    .line 24
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    .line 26
    cmpg-float v3, v3, v4

    .line 27
    .line 28
    if-gez v3, :cond_2

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    sget-boolean v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const-string v2, "TaskMotionAnimator"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 54
    .line 55
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 71
    .line 72
    iget-object v5, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    const/high16 v7, 0x3f800000    # 1.0f

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/high16 v10, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 92
    .line 93
    iput v4, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 94
    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 96
    .line 97
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    iput-object v2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->setAtRest()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 110
    .line 111
    iget-object v3, p1, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 114
    .line 115
    .line 116
    iget-object v3, p1, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 117
    .line 118
    iget-object v4, v3, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 119
    .line 120
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 121
    .line 122
    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v3, v3, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 126
    .line 127
    check-cast v3, Ljava/util/HashMap;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->setAtRest()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 147
    .line 148
    iget-object v3, p1, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v3, p1, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 154
    .line 155
    iget-object v4, v3, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 156
    .line 157
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 158
    .line 159
    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    iget-object v3, v3, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 163
    .line 164
    check-cast v3, Ljava/util/HashMap;

    .line 165
    .line 166
    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 172
    .line 173
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 177
    .line 178
    invoke-interface {v0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    const-string p1, "TaskMotionAnimator"

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v1, "StashRestoreAnimation[finish]: EndBounds="

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_6
    return-void

    .line 207
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    throw p0
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    if-eqz v3, :cond_7

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_7

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 23
    .line 24
    iget-boolean v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget-object v3, v3, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 35
    .line 36
    iget-wide v3, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 37
    .line 38
    double-to-int v3, v3

    .line 39
    int-to-float v3, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 44
    .line 45
    :goto_0
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    iget-object v4, v4, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 50
    .line 51
    iget-wide v4, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 52
    .line 53
    double-to-int v4, v4

    .line 54
    int-to-float v4, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 57
    .line 58
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 59
    .line 60
    :goto_1
    float-to-double v5, v3

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    double-to-float v7, v7

    .line 66
    float-to-double v8, v4

    .line 67
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    double-to-float v10, v10

    .line 72
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 73
    .line 74
    iget v12, v11, Landroid/graphics/RectF;->left:F

    .line 75
    .line 76
    cmpl-float v7, v7, v12

    .line 77
    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    iget v7, v11, Landroid/graphics/RectF;->top:F

    .line 81
    .line 82
    cmpl-float v7, v10, v7

    .line 83
    .line 84
    if-nez v7, :cond_3

    .line 85
    .line 86
    monitor-exit v2

    .line 87
    return-void

    .line 88
    :cond_3
    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 89
    .line 90
    .line 91
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 92
    .line 93
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 96
    .line 97
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    sub-int/2addr v4, v7

    .line 100
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    int-to-float v4, v4

    .line 105
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 108
    .line 109
    float-to-int v3, v3

    .line 110
    sub-int/2addr v7, v3

    .line 111
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    int-to-float v3, v3

    .line 116
    const/4 v7, 0x0

    .line 117
    cmpl-float v7, v4, v7

    .line 118
    .line 119
    const/high16 v10, 0x3f800000    # 1.0f

    .line 120
    .line 121
    if-nez v7, :cond_4

    .line 122
    .line 123
    move v7, v10

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    iget v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mScale:F

    .line 126
    .line 127
    div-float v11, v3, v4

    .line 128
    .line 129
    sub-float v12, v10, v7

    .line 130
    .line 131
    mul-float/2addr v12, v11

    .line 132
    add-float/2addr v12, v7

    .line 133
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    :goto_2
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 138
    .line 139
    iget-object v12, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 140
    .line 141
    iget-object v13, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 142
    .line 143
    const/4 v14, 0x0

    .line 144
    const/4 v15, 0x0

    .line 145
    move-object v11, v12

    .line 146
    move-object v12, v13

    .line 147
    move v13, v7

    .line 148
    move/from16 v16, v7

    .line 149
    .line 150
    invoke-virtual/range {v11 .. v16}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 151
    .line 152
    .line 153
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 154
    .line 155
    iget-object v12, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 156
    .line 157
    iget-object v11, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 158
    .line 159
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    double-to-float v5, v5

    .line 164
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 165
    .line 166
    .line 167
    move-result-wide v8

    .line 168
    double-to-float v6, v8

    .line 169
    invoke-virtual {v12, v11, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 174
    .line 175
    .line 176
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 177
    .line 178
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 179
    .line 180
    iput v7, v5, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 181
    .line 182
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 183
    .line 184
    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_5

    .line 189
    .line 190
    const v5, 0x3ecccccd    # 0.4f

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_5
    const v5, 0x3e4ccccd    # 0.2f

    .line 195
    .line 196
    .line 197
    :goto_3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 200
    .line 201
    div-float/2addr v3, v4

    .line 202
    sub-float/2addr v10, v3

    .line 203
    mul-float/2addr v10, v5

    .line 204
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    .line 205
    .line 206
    .line 207
    iget-object v0, v1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 208
    .line 209
    iget-wide v3, v1, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 210
    .line 211
    iget-wide v5, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 212
    .line 213
    sub-double/2addr v3, v5

    .line 214
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v3

    .line 218
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 219
    .line 220
    cmpg-double v0, v3, v5

    .line 221
    .line 222
    if-gez v0, :cond_6

    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rebound/Spring;->setAtRest()V

    .line 225
    .line 226
    .line 227
    :cond_6
    monitor-exit v2

    .line 228
    return-void

    .line 229
    :cond_7
    :goto_4
    monitor-exit v2

    .line 230
    return-void

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    throw v0
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    int-to-double v2, v2

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    int-to-double v2, p0

    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    .line 28
    .line 29
    .line 30
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-boolean p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    const-string p0, "TaskMotionAnimator"

    .line 36
    .line 37
    const-string v0, "StashRestoreAnimation[start]"

    .line 38
    .line 39
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method
