.class public final Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimationState:I

.field public final mAnimationValues:Ljava/util/ArrayList;

.field public mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCurrentFraction:F

.field public final mDummyAnimator:Landroid/animation/ValueAnimator;

.field public mDuration:J

.field public mFractionUnit:F

.field public final mFrameCallback:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

.field public mFrameCount:J

.field public mIsRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;-><init>(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 28
    .line 29
    const/high16 v0, 0x41f80000    # 31.0f

    .line 30
    .line 31
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 38
    .line 39
    const-wide/16 v0, 0x1f4

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    const-string v0, "SequentialAnimator"

    .line 61
    .line 62
    const-string v1, "SequentialAnimator: prepare looper for Choreographer"

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 25
    .line 26
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final notifyListener(FI)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x3

    .line 11
    const-string v4, "SequentialAnimator"

    .line 12
    .line 13
    if-ne p2, v3, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationValues:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 35
    .line 36
    iget v7, v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    .line 37
    .line 38
    iget v8, v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    .line 39
    .line 40
    mul-float/2addr v8, p2

    .line 41
    add-float/2addr v8, v7

    .line 42
    iput v8, v6, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v6, "notifyListener: #"

    .line 58
    .line 59
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-wide v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 63
    .line 64
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v6, " state:"

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, " fraction"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v6, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, " / "

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " unit:"

    .line 94
    .line 95
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    .line 99
    .line 100
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    const/4 p0, 0x1

    .line 115
    if-eq p2, p0, :cond_3

    .line 116
    .line 117
    const/4 p0, 0x2

    .line 118
    if-eq p2, p0, :cond_2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-interface {v3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-interface {v3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 135
    .line 136
    .line 137
    move-result-wide p1

    .line 138
    sub-long/2addr p1, v1

    .line 139
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide p0

    .line 143
    const-wide/16 v0, 0x40

    .line 144
    .line 145
    cmp-long p2, p0, v0

    .line 146
    .line 147
    if-lez p2, :cond_6

    .line 148
    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v0, "notifyListener : took :"

    .line 152
    .line 153
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p0, "ms"

    .line 160
    .line 161
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :cond_6
    return-void
.end method

.method public final setDuration(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "setStartDelay: under 0 : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "SequentialAnimator"

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-wide p1, v0

    .line 28
    :cond_0
    iput-wide p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final declared-synchronized start()V
    .locals 11

    .line 1
    const-string v0, " frameDelay:16"

    .line 2
    .line 3
    const-string v1, " startDelay: 0 mFractionUnit:"

    .line 4
    .line 5
    const-string/jumbo v2, "start: duration: "

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const-string v0, "SequentialAnimator"

    .line 18
    .line 19
    const-string/jumbo v1, "start: no listeners"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const-string v0, "SequentialAnimator"

    .line 32
    .line 33
    const-string/jumbo v1, "start: skipped, already Running"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_1
    :try_start_2
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    .line 42
    .line 43
    long-to-float v3, v3

    .line 44
    const/high16 v4, 0x41800000    # 16.0f

    .line 45
    .line 46
    div-float/2addr v3, v4

    .line 47
    const/high16 v4, 0x3f800000    # 1.0f

    .line 48
    .line 49
    div-float v3, v4, v3

    .line 50
    .line 51
    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    iput v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 58
    .line 59
    const-wide/16 v5, 0x0

    .line 60
    .line 61
    iput-wide v5, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 62
    .line 63
    const-string v7, "SequentialAnimator"

    .line 64
    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-wide v9, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    .line 71
    .line 72
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    .line 79
    .line 80
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    instance-of v1, v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    check-cast v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 110
    .line 111
    iget-wide v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mDuration:J

    .line 112
    .line 113
    cmp-long v1, v1, v5

    .line 114
    .line 115
    if-lez v1, :cond_3

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCallback:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 136
    .line 137
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 138
    .line 139
    .line 140
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 141
    .line 142
    const/4 v2, 0x3

    .line 143
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 144
    .line 145
    .line 146
    iput v4, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 147
    .line 148
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 149
    .line 150
    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 152
    .line 153
    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 154
    .line 155
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .line 157
    .line 158
    :goto_0
    monitor-exit p0

    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    .line 162
    throw v0
.end method
