.class public Landroidx/core/animation/ValueAnimator;
.super Landroidx/core/animation/Animator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;


# instance fields
.field public mAnimationEndRequested:Z

.field public mDuration:J

.field public final mDurationScale:F

.field public mInitialized:Z

.field public mInterpolator:Landroidx/core/animation/Interpolator;

.field public mLastFrameTime:J

.field public mOverallFraction:F

.field public mPauseTime:J

.field public final mRepeatMode:I

.field public mReversing:Z

.field public mRunning:Z

.field public mSeekFraction:F

.field public mSelfPulse:Z

.field public mStartDelay:J

.field public mStartListenersCalled:Z

.field public mStartTime:J

.field public mStarted:Z

.field public mSuppressSelfPulseRequested:Z

.field public mValues:[Landroidx/core/animation/PropertyValuesHolder;

.field public mValuesMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/AccelerateDecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/animation/ValueAnimator;->sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/core/animation/Animator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 7
    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v2, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput v3, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 27
    .line 28
    const-wide/16 v3, 0x12c

    .line 29
    .line 30
    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    iput v1, p0, Landroidx/core/animation/ValueAnimator;->mRepeatMode:I

    .line 38
    .line 39
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 42
    .line 43
    sget-object v0, Landroidx/core/animation/ValueAnimator;->sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 46
    .line 47
    iput v2, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    .line 48
    .line 49
    return-void
.end method

.method public static clampFraction(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    int-to-float v0, v0

    .line 9
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    return v0
.end method

.method public static varargs ofFloat([F)Landroidx/core/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/core/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs ofInt([I)Landroidx/core/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/core/animation/ValueAnimator;->setIntValues([I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public animateValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Landroidx/core/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_1
    if-ge v1, p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/core/animation/Animator$AnimatorUpdateListener;

    .line 41
    .line 42
    invoke-interface {v0, p0}, Landroidx/core/animation/Animator$AnimatorUpdateListener;->onAnimationUpdate(Landroidx/core/animation/Animator;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->notifyStartListeners()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/core/animation/Animator$AnimatorListener;

    .line 54
    .line 55
    invoke-interface {v1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationCancel()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->endAnimation()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 64
    .line 65
    const-string v0, "Animators may only be run on Looper threads"

    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public bridge synthetic clone()Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public clone()Landroidx/core/animation/ValueAnimator;
    .locals 6

    .line 3
    invoke-super {p0}, Landroidx/core/animation/Animator;->clone()Landroidx/core/animation/Animator;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/ValueAnimator;

    .line 4
    iget-object v1, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, v0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 8
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 9
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 10
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 11
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    const-wide/16 v2, -0x1

    .line 12
    iput-wide v2, v0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 13
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 14
    iput-wide v2, v0, Landroidx/core/animation/ValueAnimator;->mPauseTime:J

    .line 15
    iput-wide v2, v0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    const/4 v2, 0x0

    .line 16
    iput v2, v0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    .line 18
    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 19
    iget-object p0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    if-eqz p0, :cond_1

    .line 20
    array-length v2, p0

    .line 21
    new-array v3, v2, [Landroidx/core/animation/PropertyValuesHolder;

    iput-object v3, v0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_0
    if-ge v1, v2, :cond_1

    .line 23
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object v3

    .line 24
    iget-object v4, v0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aput-object v3, v4, v1

    .line 25
    iget-object v4, v0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 26
    iget-object v5, v3, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 27
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final doAnimationFrame(J)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-gez v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-wide v5, p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-wide v5, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    .line 19
    .line 20
    long-to-float v0, v5

    .line 21
    iget v5, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    .line 22
    .line 23
    cmpl-float v6, v5, v4

    .line 24
    .line 25
    if-ltz v6, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v5, v1

    .line 29
    :goto_0
    mul-float/2addr v5, v0

    .line 30
    float-to-long v5, v5

    .line 31
    add-long/2addr v5, p1

    .line 32
    :goto_1
    iput-wide v5, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 33
    .line 34
    :cond_2
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    const/high16 v7, -0x40800000    # -1.0f

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 43
    .line 44
    cmp-long v0, v8, p1

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    iget v0, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 49
    .line 50
    cmpl-float v0, v0, v7

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    return v6

    .line 55
    :cond_3
    iput-boolean v5, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->startAnimation()V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 61
    .line 62
    cmp-long v0, v8, v2

    .line 63
    .line 64
    if-gez v0, :cond_6

    .line 65
    .line 66
    iget v0, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 67
    .line 68
    cmpl-float v8, v0, v4

    .line 69
    .line 70
    if-ltz v8, :cond_6

    .line 71
    .line 72
    iget-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 73
    .line 74
    long-to-float v8, v8

    .line 75
    iget v9, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    .line 76
    .line 77
    cmpl-float v10, v9, v4

    .line 78
    .line 79
    if-ltz v10, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    move v9, v1

    .line 83
    :goto_2
    mul-float/2addr v9, v8

    .line 84
    float-to-long v8, v9

    .line 85
    long-to-float v8, v8

    .line 86
    mul-float/2addr v8, v0

    .line 87
    float-to-long v8, v8

    .line 88
    sub-long v8, p1, v8

    .line 89
    .line 90
    iput-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 91
    .line 92
    iput v7, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 93
    .line 94
    :cond_6
    iput-wide p1, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 95
    .line 96
    iget-wide v7, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 97
    .line 98
    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide p1

    .line 102
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 103
    .line 104
    if-eqz v0, :cond_e

    .line 105
    .line 106
    iget-wide v7, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 107
    .line 108
    long-to-float v0, v7

    .line 109
    iget v7, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    .line 110
    .line 111
    cmpl-float v4, v7, v4

    .line 112
    .line 113
    if-ltz v4, :cond_7

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    move v7, v1

    .line 117
    :goto_3
    mul-float/2addr v7, v0

    .line 118
    float-to-long v7, v7

    .line 119
    cmp-long v0, v7, v2

    .line 120
    .line 121
    if-lez v0, :cond_8

    .line 122
    .line 123
    iget-wide v1, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 124
    .line 125
    sub-long/2addr p1, v1

    .line 126
    long-to-float p1, p1

    .line 127
    long-to-float p2, v7

    .line 128
    div-float v1, p1, p2

    .line 129
    .line 130
    :cond_8
    iget p1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    .line 131
    .line 132
    float-to-int p2, v1

    .line 133
    float-to-int p1, p1

    .line 134
    if-le p2, p1, :cond_9

    .line 135
    .line 136
    move p1, v5

    .line 137
    goto :goto_4

    .line 138
    :cond_9
    move p1, v6

    .line 139
    :goto_4
    int-to-float p2, v5

    .line 140
    cmpl-float p2, v1, p2

    .line 141
    .line 142
    if-ltz p2, :cond_a

    .line 143
    .line 144
    move p2, v5

    .line 145
    goto :goto_5

    .line 146
    :cond_a
    move p2, v6

    .line 147
    :goto_5
    if-nez v0, :cond_b

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_b
    if-eqz p1, :cond_c

    .line 151
    .line 152
    if-nez p2, :cond_c

    .line 153
    .line 154
    iget-object p1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 155
    .line 156
    if-eqz p1, :cond_d

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    move p2, v6

    .line 163
    :goto_6
    if-ge p2, p1, :cond_d

    .line 164
    .line 165
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroidx/core/animation/Animator$AnimatorListener;

    .line 172
    .line 173
    invoke-interface {v0}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationRepeat()V

    .line 174
    .line 175
    .line 176
    add-int/lit8 p2, p2, 0x1

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_c
    if-eqz p2, :cond_d

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_d
    move v5, v6

    .line 183
    :goto_7
    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput p1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    .line 188
    .line 189
    iget-boolean p2, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 190
    .line 191
    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    .line 196
    .line 197
    .line 198
    move v6, v5

    .line 199
    :cond_e
    if-eqz v6, :cond_f

    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->endAnimation()V

    .line 202
    .line 203
    .line 204
    :cond_f
    return v6
.end method

.method public final end()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->startAnimation()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    .line 33
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->endAnimation()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 41
    .line 42
    const-string v0, "Animators may only be run on Looper threads"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final endAnimation()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ltz v3, :cond_2

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iput-boolean v1, v0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    .line 29
    .line 30
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 31
    .line 32
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move v1, v2

    .line 47
    :goto_1
    if-eqz v1, :cond_5

    .line 48
    .line 49
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 50
    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->notifyStartListeners()V

    .line 54
    .line 55
    .line 56
    :cond_5
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 57
    .line 58
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 59
    .line 60
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 61
    .line 62
    const-wide/16 v3, -0x1

    .line 63
    .line 64
    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 65
    .line 66
    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    move v3, v2

    .line 85
    :goto_2
    if-ge v3, v1, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroidx/core/animation/Animator$AnimatorListener;

    .line 92
    .line 93
    invoke-interface {v4, p0}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aget-object p0, p0, v0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/core/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final getCurrentIterationFraction(FZ)F
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-double v1, v0

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmpl-double v1, v1, v3

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    cmpl-float v0, v0, v1

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    sub-double/2addr v3, v0

    .line 26
    :cond_0
    double-to-int v0, v3

    .line 27
    int-to-float v1, v0

    .line 28
    sub-float/2addr p1, v1

    .line 29
    if-lez v0, :cond_4

    .line 30
    .line 31
    iget p0, p0, Landroidx/core/animation/ValueAnimator;->mRepeatMode:I

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-ne p0, v1, :cond_4

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    if-lt v0, p0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    rem-int/2addr v0, v1

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    :goto_0
    move p2, p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move p2, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    rem-int/2addr v0, v1

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 55
    .line 56
    const/high16 p0, 0x3f800000    # 1.0f

    .line 57
    .line 58
    sub-float p1, p0, p1

    .line 59
    .line 60
    :cond_5
    return p1
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNameForTrace()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "animator"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStartDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTotalDuration()J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    int-to-long v4, p0

    .line 7
    mul-long/2addr v2, v4

    .line 8
    add-long/2addr v2, v0

    .line 9
    return-wide v2
.end method

.method public initAnimation()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    iget-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    iget-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 20
    .line 21
    const-class v4, Ljava/lang/Integer;

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    sget-object v3, Landroidx/core/animation/IntEvaluator;->sInstance:Landroidx/core/animation/IntEvaluator;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-class v4, Ljava/lang/Float;

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    sget-object v3, Landroidx/core/animation/FloatEvaluator;->sInstance:Landroidx/core/animation/FloatEvaluator;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_1
    iput-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 37
    .line 38
    :cond_2
    iget-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-object v2, v2, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 43
    .line 44
    check-cast v2, Landroidx/core/animation/KeyframeSet;

    .line 45
    .line 46
    iput-object v3, v2, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 47
    .line 48
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 53
    .line 54
    :cond_5
    return-void
.end method

.method public isInitialized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final notifyStartListeners()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/core/animation/Animator$AnimatorListener;

    .line 27
    .line 28
    invoke-interface {v3}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationStart$1()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 36
    .line 37
    return-void
.end method

.method public final pulseAnimationFrame(J)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final reverse()V
    .locals 8

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 20
    .line 21
    sub-long v4, v2, v4

    .line 22
    .line 23
    iget-wide v6, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 24
    .line 25
    long-to-float v0, v6

    .line 26
    iget v6, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    cmpl-float v7, v6, v7

    .line 30
    .line 31
    if-ltz v7, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 35
    .line 36
    :goto_1
    mul-float/2addr v6, v0

    .line 37
    float-to-long v6, v6

    .line 38
    sub-long/2addr v6, v4

    .line 39
    sub-long/2addr v2, v6

    .line 40
    iput-wide v2, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 41
    .line 42
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 43
    .line 44
    xor-int/2addr v0, v1

    .line 45
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 53
    .line 54
    xor-int/2addr v0, v1

    .line 55
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->end()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method public final setCurrentFraction(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 22
    .line 23
    long-to-float v0, v0

    .line 24
    iget v1, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    cmpl-float v2, v1, v2

    .line 28
    .line 29
    if-ltz v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    :goto_1
    mul-float/2addr v1, v0

    .line 35
    float-to-long v0, v1

    .line 36
    long-to-float v0, v0

    .line 37
    mul-float/2addr v0, p1

    .line 38
    float-to-long v0, v0

    .line 39
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    sub-long/2addr v2, v0

    .line 44
    iput-wide v2, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iput p1, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 48
    .line 49
    :goto_2
    iput p1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    .line 50
    .line 51
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Landroidx/core/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)Landroidx/core/animation/ValueAnimator;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iput-wide p1, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Animators cannot have negative duration: "

    .line 4
    invoke-static {v0, p1, p2}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    aget-object v0, v0, v1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    sget-object v0, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 21
    .line 22
    new-instance v0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-direct {v0, v2, p1}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    .line 27
    .line 28
    .line 29
    filled-new-array {v0}, [Landroidx/core/animation/PropertyValuesHolder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    aget-object v0, v0, v1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    sget-object v0, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 21
    .line 22
    new-instance v0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-direct {v0, v2, p1}, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    .line 27
    .line 28
    .line 29
    filled-new-array {v0}, [Landroidx/core/animation/PropertyValuesHolder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method public final setInterpolator(Landroidx/core/animation/Interpolator;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroidx/core/animation/LinearInterpolator;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/core/animation/LinearInterpolator;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public final setStartDelay(J)V
    .locals 3

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
    const-string p1, "ValueAnimator"

    .line 8
    .line 9
    const-string p2, "Start delay should always be non-negative"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-wide p1, v0

    .line 15
    :cond_0
    iput-wide p1, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    .line 16
    .line 17
    return-void
.end method

.method public final varargs setValues([Landroidx/core/animation/PropertyValuesHolder;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v5, v3, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 28
    .line 29
    return-void
.end method

.method public final skipToEndValue(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public final start(Z)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iput-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    .line 3
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    .line 4
    iget v3, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_0

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    int-to-float v4, v1

    sub-float/2addr v4, v3

    .line 5
    iput v4, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 6
    :cond_0
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 8
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v3, -0x1

    .line 9
    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    .line 10
    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    .line 11
    iget-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_1

    if-eqz p1, :cond_4

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->startAnimation()V

    .line 13
    iget p1, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, p1, v2

    if-nez v0, :cond_3

    .line 14
    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_2

    long-to-float p1, v5

    long-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 17
    :cond_4
    :goto_1
    iget-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    if-nez p1, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {p0}, Landroidx/core/animation/Animator;->addAnimationCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V

    :goto_2
    return-void

    .line 19
    :cond_6
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animators may only be run on Looper threads"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startAnimation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    .line 16
    .line 17
    iget v0, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v2, v0, v1

    .line 21
    .line 22
    if-ltz v2, :cond_0

    .line 23
    .line 24
    iput v0, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput v1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->notifyStartListeners()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final startWithoutPulsing(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->reverse()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->start()V

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 15
    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ValueAnimator@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    const-string v2, "\n    "

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/core/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method
