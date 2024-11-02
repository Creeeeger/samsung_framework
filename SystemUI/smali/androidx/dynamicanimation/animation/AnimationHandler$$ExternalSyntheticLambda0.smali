.class public final synthetic Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    iget-object v6, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-ge v5, v7, :cond_6

    .line 30
    .line 31
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 36
    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_0
    iget-object v7, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 41
    .line 42
    invoke-virtual {v7, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Ljava/lang/Long;

    .line 47
    .line 48
    if-nez v8, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    cmp-long v8, v8, v2

    .line 56
    .line 57
    if-gez v8, :cond_2

    .line 58
    .line 59
    invoke-virtual {v7, v6}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :goto_1
    const/4 v7, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v7, v4

    .line 65
    :goto_2
    if-eqz v7, :cond_5

    .line 66
    .line 67
    check-cast v6, Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 68
    .line 69
    iget-wide v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 70
    .line 71
    const-wide/16 v9, 0x0

    .line 72
    .line 73
    cmp-long v9, v7, v9

    .line 74
    .line 75
    if-nez v9, :cond_3

    .line 76
    .line 77
    iput-wide v0, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 78
    .line 79
    iget v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_3
    sub-long v7, v0, v7

    .line 86
    .line 87
    iput-wide v0, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 88
    .line 89
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    iget v9, v9, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    cmpl-float v10, v9, v10

    .line 97
    .line 98
    if-nez v10, :cond_4

    .line 99
    .line 100
    const-wide/32 v7, 0x7fffffff

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    long-to-float v7, v7

    .line 105
    div-float/2addr v7, v9

    .line 106
    float-to-long v7, v7

    .line 107
    :goto_3
    invoke-virtual {v6, v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iget v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 112
    .line 113
    iget v9, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 114
    .line 115
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    iput v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 120
    .line 121
    iget v9, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 122
    .line 123
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    iput v8, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 128
    .line 129
    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 130
    .line 131
    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 141
    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, -0x1

    .line 149
    .line 150
    if-ltz v0, :cond_8

    .line 151
    .line 152
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-nez v1, :cond_7

    .line 157
    .line 158
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_9

    .line 167
    .line 168
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    .line 169
    .line 170
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-static {v1}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    .line 173
    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    :cond_9
    iput-boolean v4, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 179
    .line 180
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-lez v0, :cond_b

    .line 185
    .line 186
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 189
    .line 190
    invoke-interface {p0, v0}, Landroidx/dynamicanimation/animation/FrameCallbackScheduler;->postFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;)V

    .line 191
    .line 192
    .line 193
    :cond_b
    return-void
.end method
