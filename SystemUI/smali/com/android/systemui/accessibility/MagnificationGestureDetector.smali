.class public final Lcom/android/systemui/accessibility/MagnificationGestureDetector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

.field public mDetectSingleTap:Z

.field public mDraggingDetected:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

.field public final mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

.field public final mPointerDown:Landroid/graphics/PointF;

.field public final mPointerLocation:Landroid/graphics/PointF;

.field public final mTouchSlopSquare:I

.field public mVibratorNoti:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 14
    .line 15
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 25
    .line 26
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    .line 35
    .line 36
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 43
    .line 44
    mul-int/2addr p1, p1

    .line 45
    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    .line 50
    .line 51
    new-instance p1, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    iget-object v5, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    .line 19
    .line 20
    iget-object v7, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    if-eqz v2, :cond_8

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    if-eq v2, v4, :cond_6

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    if-eq v2, v9, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x3

    .line 33
    if-eq v2, p1, :cond_7

    .line 34
    .line 35
    const/4 p1, 0x5

    .line 36
    if-eq v2, p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v7, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v8, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 43
    .line 44
    :goto_0
    move v4, v8

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 48
    .line 49
    .line 50
    iget-boolean v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    move p0, v8

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 65
    .line 66
    .line 67
    iput-boolean v4, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    .line 68
    .line 69
    :cond_3
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_4

    .line 76
    .line 77
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move v4, v8

    .line 87
    :goto_1
    if-nez v4, :cond_5

    .line 88
    .line 89
    invoke-virtual {p2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 93
    .line 94
    sub-float p0, v0, p0

    .line 95
    .line 96
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 97
    .line 98
    sub-float v2, v1, v2

    .line 99
    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v6, p1, p0, v2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onDrag(Landroid/view/View;FF)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    :goto_2
    or-int v4, v8, p0

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    .line 111
    .line 112
    invoke-virtual {v7, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    iput-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    .line 117
    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 119
    .line 120
    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 122
    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    invoke-interface {v6, p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onSingleTap(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    move p1, v4

    .line 129
    goto :goto_3

    .line 130
    :cond_7
    move p1, v8

    .line 131
    :goto_3
    invoke-interface {v6}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onFinish()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    or-int/2addr p1, v0

    .line 136
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 137
    .line 138
    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 139
    .line 140
    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 141
    .line 142
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 143
    .line 144
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 145
    .line 146
    invoke-virtual {v7, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v4, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 150
    .line 151
    iput-boolean v8, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 152
    .line 153
    move v4, p1

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    int-to-long v2, p2

    .line 167
    add-long/2addr v0, v2

    .line 168
    invoke-virtual {v7, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    .line 172
    .line 173
    if-eqz p2, :cond_9

    .line 174
    .line 175
    invoke-virtual {v7, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    .line 179
    .line 180
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;-><init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    .line 184
    .line 185
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    int-to-long p0, p0

    .line 190
    invoke-virtual {v7, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    .line 192
    .line 193
    invoke-interface {v6}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onStart()V

    .line 194
    .line 195
    .line 196
    :goto_4
    return v4
.end method

.method public final stopSingleTapDetectionIfNeeded(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 7
    .line 8
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :goto_0
    if-nez v1, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 33
    .line 34
    sub-float/2addr v1, p1

    .line 35
    float-to-int p1, v1

    .line 36
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    sub-float/2addr v0, p2

    .line 39
    float-to-int p2, v0

    .line 40
    mul-int/2addr p1, p1

    .line 41
    mul-int/2addr p2, p2

    .line 42
    add-int/2addr p2, p1

    .line 43
    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    .line 44
    .line 45
    if-le p2, p1, :cond_3

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    .line 57
    .line 58
    :cond_3
    return-void
.end method
