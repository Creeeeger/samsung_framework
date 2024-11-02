.class public final Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    iget p2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    sub-float v1, v0, p2

    .line 16
    .line 17
    const v2, 0x3dcccccd    # 0.1f

    .line 18
    .line 19
    .line 20
    cmpg-float v1, v1, v2

    .line 21
    .line 22
    if-gez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "handleMessage: fraction cut : "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v1, "SequentialAnimator"

    .line 39
    .line 40
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iput v0, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 44
    .line 45
    move p2, v0

    .line 46
    :cond_1
    iget v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x3

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, p2, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 53
    .line 54
    .line 55
    iput v3, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 56
    .line 57
    :cond_2
    iget v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 58
    .line 59
    if-ne v3, v1, :cond_4

    .line 60
    .line 61
    iget v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 62
    .line 63
    cmpg-float v1, v1, v0

    .line 64
    .line 65
    if-gez v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, p2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iput v0, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 72
    .line 73
    invoke-virtual {p1, p2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    iput v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mAnimationState:I

    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->notifyListener(FI)V

    .line 80
    .line 81
    .line 82
    iput-boolean v2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 83
    .line 84
    :goto_0
    iget-wide v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 85
    .line 86
    const-wide/16 v3, 0x1

    .line 87
    .line 88
    add-long/2addr v1, v3

    .line 89
    iput-wide v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFrameCount:J

    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 92
    .line 93
    iget p2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 94
    .line 95
    iget v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mFractionUnit:F

    .line 96
    .line 97
    add-float/2addr p2, v1

    .line 98
    iput p2, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mCurrentFraction:F

    .line 99
    .line 100
    iget-boolean v1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    cmpg-float p2, p2, v0

    .line 105
    .line 106
    if-gez p2, :cond_5

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 109
    .line 110
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    return-void
.end method
