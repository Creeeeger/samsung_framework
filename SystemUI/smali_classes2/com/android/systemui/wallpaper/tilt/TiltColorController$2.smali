.class public final Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 6
    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 16
    .line 17
    iget v1, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpl-float v3, v2, v1

    .line 21
    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    move v0, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v3, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 29
    .line 30
    iget v0, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    .line 31
    .line 32
    sub-float/2addr v3, v0

    .line 33
    div-float/2addr v3, v1

    .line 34
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_0
    sget-object v3, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-float/2addr v4, v0

    .line 45
    const v0, 0x3a83126f    # 0.001f

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    mul-float/2addr v3, v1

    .line 53
    const/high16 v4, 0x41a00000    # 20.0f

    .line 54
    .line 55
    div-float/2addr v3, v4

    .line 56
    cmpl-float v1, v1, v2

    .line 57
    .line 58
    if-lez v1, :cond_2

    .line 59
    .line 60
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const v0, -0x457ced91    # -0.001f

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 75
    .line 76
    iget v2, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    .line 77
    .line 78
    iget v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 79
    .line 80
    sub-float/2addr v2, v1

    .line 81
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    cmpl-float v1, v2, v1

    .line 90
    .line 91
    if-lez v1, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 96
    .line 97
    iget v1, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    .line 98
    .line 99
    iput v1, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 105
    .line 106
    iget v2, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 107
    .line 108
    add-float/2addr v2, v0

    .line 109
    iput v2, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 110
    .line 111
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 114
    .line 115
    iget v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 116
    .line 117
    const/high16 v2, 0x41f00000    # 30.0f

    .line 118
    .line 119
    mul-float/2addr v1, v2

    .line 120
    iget-object v2, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 121
    .line 122
    iget v3, v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 123
    .line 124
    cmpl-float v3, v3, v1

    .line 125
    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    iput v1, v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    .line 135
    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 142
    .line 143
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 148
    .line 149
    iget v2, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 150
    .line 151
    iget v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    .line 152
    .line 153
    cmpl-float v1, v2, v1

    .line 154
    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    const-wide/16 v2, 0x32

    .line 159
    .line 160
    iget-object v0, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_3
    return-void
.end method
