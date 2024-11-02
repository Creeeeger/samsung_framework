.class public final Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

.field public mConsumeBatchEventScheduled:Z

.field public mMoved:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 3
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 5
    new-instance p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_15

    .line 19
    .line 20
    const-string v3, " in handleMotionEvent"

    .line 21
    .line 22
    const-string v4, "Invalid pointerId="

    .line 23
    .line 24
    const-string v5, "FreeformDimInputListener"

    .line 25
    .line 26
    const/4 v6, -0x1

    .line 27
    if-eq v0, v2, :cond_f

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    if-eq v0, v7, :cond_1

    .line 31
    .line 32
    const/4 v7, 0x3

    .line 33
    if-eq v0, v7, :cond_f

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 38
    .line 39
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v6, :cond_2

    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_a

    .line 66
    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 72
    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_3
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 84
    .line 85
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 86
    .line 87
    if-eqz v5, :cond_8

    .line 88
    .line 89
    iget-boolean v5, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 90
    .line 91
    if-nez v5, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 95
    .line 96
    iget v5, v8, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 97
    .line 98
    iget v9, v8, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    .line 99
    .line 100
    add-int/2addr v5, v9

    .line 101
    iget v9, v4, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    if-le v3, v5, :cond_5

    .line 112
    .line 113
    if-eq v9, v2, :cond_8

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    if-ne v9, v2, :cond_8

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 120
    .line 121
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 122
    .line 123
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 124
    .line 125
    iget-object v10, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 126
    .line 127
    invoke-virtual {v10, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-virtual {v4, v3, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 134
    .line 135
    .line 136
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 139
    .line 140
    sub-int/2addr v3, v5

    .line 141
    if-ge v4, v3, :cond_7

    .line 142
    .line 143
    if-eq v9, v2, :cond_8

    .line 144
    .line 145
    :goto_0
    move v3, v2

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    if-ne v9, v2, :cond_8

    .line 148
    .line 149
    :goto_1
    move v3, v1

    .line 150
    goto :goto_3

    .line 151
    :cond_8
    :goto_2
    move v3, v6

    .line 152
    :goto_3
    if-ne v3, v2, :cond_9

    .line 153
    .line 154
    invoke-virtual {v8, v7}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScaleUp(Landroid/graphics/Rect;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    goto :goto_4

    .line 159
    :cond_9
    if-nez v3, :cond_a

    .line 160
    .line 161
    invoke-virtual {v8, v7}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScaleDown(Landroid/graphics/Rect;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    goto :goto_4

    .line 166
    :cond_a
    move v4, v1

    .line 167
    :goto_4
    if-eqz v4, :cond_b

    .line 168
    .line 169
    move v6, v3

    .line 170
    :cond_b
    :goto_5
    if-ne v6, v2, :cond_c

    .line 171
    .line 172
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_c
    if-nez v6, :cond_d

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 181
    .line 182
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    .line 183
    .line 184
    .line 185
    :cond_d
    :goto_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 186
    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 192
    .line 193
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 194
    .line 195
    .line 196
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 207
    .line 208
    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->onDragPositioningMove(FF)V

    .line 209
    .line 210
    .line 211
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mMoved:Z

    .line 212
    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 216
    .line 217
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iget-boolean v7, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mMoved:Z

    .line 224
    .line 225
    if-nez v7, :cond_10

    .line 226
    .line 227
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 228
    .line 229
    iget v8, v7, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    .line 230
    .line 231
    if-eq v8, v6, :cond_10

    .line 232
    .line 233
    invoke-virtual {v7, v1}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    .line 234
    .line 235
    .line 236
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 237
    .line 238
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 239
    .line 240
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->resetStashedFreeform(Z)V

    .line 241
    .line 242
    .line 243
    :cond_10
    if-ne v0, v6, :cond_11

    .line 244
    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 264
    .line 265
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 266
    .line 267
    const/high16 v0, -0x40800000    # -1.0f

    .line 268
    .line 269
    invoke-virtual {p1, v0, v0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->onDragPositioningEnd(FF)V

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_11
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 274
    .line 275
    if-eqz v2, :cond_12

    .line 276
    .line 277
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 278
    .line 279
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 280
    .line 281
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 285
    .line 286
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->computeCurrentVelocity()V

    .line 289
    .line 290
    .line 291
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 292
    .line 293
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 294
    .line 295
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 296
    .line 297
    iput-object v2, v3, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 298
    .line 299
    :cond_12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 310
    .line 311
    invoke-virtual {v0, v2, p1}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->onDragPositioningEnd(FF)V

    .line 312
    .line 313
    .line 314
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 315
    .line 316
    if-eqz p1, :cond_14

    .line 317
    .line 318
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 319
    .line 320
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 321
    .line 322
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 323
    .line 324
    const/4 v2, 0x0

    .line 325
    if-eqz v0, :cond_13

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 328
    .line 329
    .line 330
    iput-object v2, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 331
    .line 332
    :cond_13
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 333
    .line 334
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 335
    .line 336
    iput-object v2, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 337
    .line 338
    :cond_14
    :goto_7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 339
    .line 340
    iput v6, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 344
    .line 345
    if-eqz v0, :cond_17

    .line 346
    .line 347
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 350
    .line 351
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 352
    .line 353
    if-nez v3, :cond_16

    .line 354
    .line 355
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_16
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 363
    .line 364
    .line 365
    :goto_8
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 366
    .line 367
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 368
    .line 369
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 370
    .line 371
    .line 372
    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 373
    .line 374
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    iput v3, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    .line 379
    .line 380
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 389
    .line 390
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 391
    .line 392
    invoke-virtual {v3, v0, p1, v1}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->onDragPositioningStart(FFI)V

    .line 393
    .line 394
    .line 395
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mMoved:Z

    .line 396
    .line 397
    :goto_9
    move v1, v2

    .line 398
    :goto_a
    return v1
.end method

.method public final onBatchedInputEventPending(I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Landroid/view/MotionEvent;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
