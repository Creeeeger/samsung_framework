.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;


# instance fields
.field public mAnimType:I

.field public mStartFromLeftStash:Z

.field public final mTaskBounds:Landroid/graphics/Rect;

.field public mTaskSurfaceBounds:Landroid/graphics/Rect;

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mStartFromLeftStash:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    .line 9
    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->isAnimating()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    const-string p1, "TaskMotionAnimator"

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "ScaleAnimation[cancel] : this="

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :cond_4
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method public final initialize(IFFLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p2, v0, v1

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    aput p3, v0, p2

    .line 9
    .line 10
    const-string/jumbo p2, "scale"

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    const-wide/16 v0, 0x12c

    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    sget-object p3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    .line 53
    .line 54
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    .line 55
    .line 56
    iput p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mAnimType:I

    .line 57
    .line 58
    iput-boolean p6, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mStartFromLeftStash:Z

    .line 59
    .line 60
    return-void
.end method

.method public final isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 21
    .line 22
    :cond_0
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 12
    .line 13
    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 14
    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-interface {v2, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p1, "TaskMotionAnimator"

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "ScaleAnimation[End] this="

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    const-string/jumbo v1, "scale"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Float;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v2, v3

    .line 48
    move-object v3, v4

    .line 49
    move v4, v1

    .line 50
    move v7, v1

    .line 51
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 57
    .line 58
    iput v1, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 59
    .line 60
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    const v1, 0x3ecccccd    # 0.4f

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    .line 73
    .line 74
    .line 75
    :goto_0
    iget v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mAnimType:I

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    mul-float/2addr p1, v1

    .line 88
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    mul-float/2addr p1, v1

    .line 101
    sub-float/2addr v1, p1

    .line 102
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    .line 103
    .line 104
    .line 105
    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mStartFromLeftStash:Z

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    int-to-float p1, p1

    .line 116
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    int-to-float v1, v1

    .line 123
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 126
    .line 127
    iget v2, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 128
    .line 129
    mul-float/2addr v1, v2

    .line 130
    sub-float/2addr p1, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const/4 p1, 0x0

    .line 133
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 134
    .line 135
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    .line 140
    .line 141
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    add-float/2addr v4, p1

    .line 145
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    int-to-float p1, p1

    .line 148
    invoke-virtual {v2, v1, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 156
    .line 157
    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 160
    :cond_4
    :goto_3
    monitor-exit v0

    .line 161
    return-void

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 11
    .line 12
    .line 13
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "TaskMotionAnimator"

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "ScaleAnimation[start] : this="

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method
