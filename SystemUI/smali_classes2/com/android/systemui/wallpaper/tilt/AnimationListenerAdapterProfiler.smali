.class public Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mAnimElapsed:J

.field public mAnimInfo:Ljava/lang/String;

.field public mAnimStartDelayElapsed:J

.field public mFrameCnt:I

.field public mIsCanceled:Z

.field public mIsProfilingStarted:Z

.field public mLastFrameTime:J

.field public mLongestFrameFraction:F

.field public mLongestFrameNum:J

.field public mLongestFrameTime:J

.field public mProfileTag:Ljava/lang/String;

.field public mStartFraction:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    .line 24
    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    .line 26
    .line 27
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    .line 12
    .line 13
    sub-long/2addr v0, v3

    .line 14
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "["

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "] onAnimationEnd : "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " onStart-onEnd took "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " ms / duration diff= "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    sub-long v3, v0, v3

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " ms / "

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " frames "

    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 78
    .line 79
    int-to-float p1, p1

    .line 80
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 81
    .line 82
    mul-float/2addr p1, v3

    .line 83
    long-to-float v0, v0

    .line 84
    div-float/2addr p1, v0

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " fps / StartFraction = "

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, "\nLongest Frame [num : "

    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    .line 104
    .line 105
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " time : "

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    .line 114
    .line 115
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " fracton : "

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    .line 124
    .line 125
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "AnimationListenerAdapterProfiler"

    .line 133
    .line 134
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimElapsed:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    .line 22
    .line 23
    iput-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    .line 24
    .line 25
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    .line 26
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    iget-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    .line 30
    .line 31
    sub-long/2addr v2, v4

    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "(duration= "

    .line 39
    .line 40
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, " / delay= "

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ")"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v4, "["

    .line 76
    .line 77
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, "] onAnimationStart : "

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimInfo:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, " StartDelay took "

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " ms / delay diff= "

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    sub-long/2addr v2, v4

    .line 113
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, " ms. "

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "AnimationListenerAdapterProfiler"

    .line 126
    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 131
    .line 132
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    .line 133
    .line 134
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mStartFraction:F

    .line 18
    .line 19
    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    cmp-long v4, v2, v4

    .line 24
    .line 25
    if-lez v4, :cond_1

    .line 26
    .line 27
    sub-long v2, v0, v2

    .line 28
    .line 29
    iget-wide v4, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    .line 30
    .line 31
    cmp-long v4, v2, v4

    .line 32
    .line 33
    if-lez v4, :cond_1

    .line 34
    .line 35
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameTime:J

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameFraction:F

    .line 42
    .line 43
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 44
    .line 45
    int-to-long v2, p1

    .line 46
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLongestFrameNum:J

    .line 47
    .line 48
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mLastFrameTime:J

    .line 49
    .line 50
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mFrameCnt:I

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final startAnimationProfile(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsProfilingStarted:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "Unknown"

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mAnimStartDelayElapsed:J

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "["

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mProfileTag:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "] startAnimationProfile"

    .line 26
    .line 27
    const-string v1, "AnimationListenerAdapterProfiler"

    .line 28
    .line 29
    invoke-static {p1, p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
