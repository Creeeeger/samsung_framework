.class public abstract Lcom/android/wm/shell/bubbles/RelativeTouchListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public movedEnough:Z

.field public performedLongClick:Z

.field public final touchDown:Landroid/graphics/PointF;

.field public touchSlop:I

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final viewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchSlop:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public abstract onDown(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 25
    .line 26
    .line 27
    neg-float v0, v0

    .line 28
    neg-float v1, v1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 37
    .line 38
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 39
    .line 40
    sub-float/2addr v0, v1

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    sub-float v8, v1, v2

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    if-eq v1, v10, :cond_2

    .line 61
    .line 62
    const/4 v3, 0x2

    .line 63
    if-eq v1, v3, :cond_0

    .line 64
    .line 65
    const/4 p2, 0x3

    .line 66
    if-eq v1, p2, :cond_2

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    float-to-double v3, v0

    .line 75
    float-to-double v5, v8

    .line 76
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    double-to-float v1, v3

    .line 81
    iget v3, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchSlop:I

    .line 82
    .line 83
    int-to-float v3, v3

    .line 84
    cmpl-float v1, v1, v3

    .line 85
    .line 86
    if-lez v1, :cond_1

    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 89
    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    iput-boolean v10, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 106
    .line 107
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 108
    .line 109
    iget v6, v1, Landroid/graphics/PointF;->y:F

    .line 110
    .line 111
    move-object v2, p0

    .line 112
    move-object v3, p1

    .line 113
    move-object v4, p2

    .line 114
    move v7, v0

    .line 115
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 121
    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 125
    .line 126
    const/16 v1, 0x3e8

    .line 127
    .line 128
    invoke-virtual {p2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 132
    .line 133
    iget v4, p2, Landroid/graphics/PointF;->x:F

    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    move-object v2, p0

    .line 148
    move-object v3, p1

    .line 149
    move v5, v0

    .line 150
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->onUp(Landroid/view/View;FFFF)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 155
    .line 156
    if-nez p2, :cond_4

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 172
    .line 173
    .line 174
    iput-boolean v9, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->onDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchSlop:I

    .line 193
    .line 194
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-virtual {v0, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 218
    .line 219
    .line 220
    iput-boolean v9, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    new-instance v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;

    .line 227
    .line 228
    invoke-direct {v0, p1, p0}, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;-><init>(Landroid/view/View;Lcom/android/wm/shell/bubbles/RelativeTouchListener;)V

    .line 229
    .line 230
    .line 231
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    int-to-long p0, p0

    .line 236
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    .line 238
    .line 239
    :cond_6
    :goto_1
    return v10
.end method

.method public abstract onUp(Landroid/view/View;FFFF)V
.end method
