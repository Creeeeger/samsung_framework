.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mTasksOnDisplay:I

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 2
    .line 3
    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Landroid/view/MotionEvent;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_22

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 11
    .line 12
    move-object v11, v1

    .line 13
    check-cast v11, Landroid/view/MotionEvent;

    .line 14
    .line 15
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 16
    .line 17
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 v13, 0x1

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 45
    .line 46
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 55
    .line 56
    invoke-virtual {v4, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    float-to-int v8, v8

    .line 77
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    float-to-int v9, v9

    .line 82
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_0

    .line 87
    .line 88
    iget v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    if-eqz v4, :cond_3

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    float-to-int v7, v7

    .line 114
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    float-to-int v8, v8

    .line 119
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    neg-int v7, v7

    .line 138
    int-to-float v7, v7

    .line 139
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    neg-int v5, v5

    .line 142
    int-to-float v5, v5

    .line 143
    invoke-virtual {v11, v7, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 144
    .line 145
    .line 146
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 147
    .line 148
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    move v5, v3

    .line 160
    :goto_0
    if-ge v5, v4, :cond_3

    .line 161
    .line 162
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 167
    .line 168
    if-eqz v7, :cond_2

    .line 169
    .line 170
    iget-object v8, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    .line 172
    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 173
    .line 174
    if-eqz v8, :cond_2

    .line 175
    .line 176
    move-object v14, v7

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_3
    const/4 v4, 0x0

    .line 182
    :goto_1
    move-object v14, v4

    .line 183
    :goto_2
    sget-boolean v15, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 184
    .line 185
    const/4 v10, 0x3

    .line 186
    if-eqz v15, :cond_18

    .line 187
    .line 188
    if-eqz v14, :cond_4

    .line 189
    .line 190
    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    const/4 v5, 0x5

    .line 197
    if-ne v4, v5, :cond_4

    .line 198
    .line 199
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 200
    .line 201
    if-eqz v4, :cond_18

    .line 202
    .line 203
    :cond_4
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    .line 208
    .line 209
    if-eqz v4, :cond_12

    .line 210
    .line 211
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 212
    .line 213
    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 214
    .line 215
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 216
    .line 217
    const/4 v9, 0x2

    .line 218
    if-eq v4, v13, :cond_9

    .line 219
    .line 220
    if-eq v4, v9, :cond_6

    .line 221
    .line 222
    if-eq v4, v10, :cond_5

    .line 223
    .line 224
    goto/16 :goto_9

    .line 225
    .line 226
    :cond_5
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 227
    .line 228
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 229
    .line 230
    goto/16 :goto_9

    .line 231
    .line 232
    :cond_6
    if-nez v14, :cond_7

    .line 233
    .line 234
    goto/16 :goto_9

    .line 235
    .line 236
    :cond_7
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 237
    .line 238
    if-eqz v4, :cond_18

    .line 239
    .line 240
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 241
    .line 242
    invoke-direct {v4, v14, v11, v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 246
    .line 247
    .line 248
    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 249
    .line 250
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 251
    .line 252
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 261
    .line 262
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    int-to-float v4, v4

    .line 267
    cmpl-float v4, v5, v4

    .line 268
    .line 269
    if-lez v4, :cond_8

    .line 270
    .line 271
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 272
    .line 273
    if-nez v4, :cond_8

    .line 274
    .line 275
    iput-boolean v13, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 276
    .line 277
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 278
    .line 279
    invoke-direct {v4, v2, v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 283
    .line 284
    .line 285
    new-array v4, v9, [F

    .line 286
    .line 287
    fill-array-data v4, :array_0

    .line 288
    .line 289
    .line 290
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    iput-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 295
    .line 296
    const-wide/16 v8, 0x150

    .line 297
    .line 298
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 299
    .line 300
    .line 301
    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 306
    .line 307
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 308
    .line 309
    new-instance v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 310
    .line 311
    invoke-direct {v8, v14, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    .line 316
    .line 317
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 318
    .line 319
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 320
    .line 321
    .line 322
    :cond_8
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 323
    .line 324
    if-eqz v4, :cond_18

    .line 325
    .line 326
    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 331
    .line 332
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 333
    .line 334
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    check-cast v5, Ljava/lang/Float;

    .line 339
    .line 340
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    int-to-float v6, v6

    .line 349
    mul-float/2addr v5, v6

    .line 350
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    const/high16 v7, 0x40000000    # 2.0f

    .line 355
    .line 356
    div-float/2addr v5, v7

    .line 357
    sub-float/2addr v6, v5

    .line 358
    iget-object v5, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 359
    .line 360
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_9

    .line 371
    .line 372
    :cond_9
    if-nez v14, :cond_a

    .line 373
    .line 374
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 375
    .line 376
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 377
    .line 378
    goto/16 :goto_9

    .line 379
    .line 380
    :cond_a
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 381
    .line 382
    if-eqz v4, :cond_e

    .line 383
    .line 384
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 385
    .line 386
    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 387
    .line 388
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 389
    .line 390
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 399
    .line 400
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    mul-int/2addr v4, v9

    .line 405
    int-to-float v4, v4

    .line 406
    cmpl-float v4, v5, v4

    .line 407
    .line 408
    if-lez v4, :cond_d

    .line 409
    .line 410
    if-eqz v15, :cond_b

    .line 411
    .line 412
    iget v4, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 413
    .line 414
    add-int/2addr v4, v13

    .line 415
    iput v4, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 416
    .line 417
    new-array v4, v9, [F

    .line 418
    .line 419
    fill-array-data v4, :array_1

    .line 420
    .line 421
    .line 422
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    const-wide/16 v4, 0x150

    .line 427
    .line 428
    invoke-virtual {v9, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    .line 430
    .line 431
    iget-object v8, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 432
    .line 433
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    const v5, 0x3ecccccd    # 0.4f

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v5, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->calculateFreeformBounds(FI)Landroid/graphics/Rect;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    move-object/from16 v16, v7

    .line 449
    .line 450
    check-cast v16, Landroid/view/SurfaceControl$Transaction;

    .line 451
    .line 452
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    int-to-float v7, v7

    .line 457
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 458
    .line 459
    .line 460
    move-result v17

    .line 461
    sub-float v7, v7, v17

    .line 462
    .line 463
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 464
    .line 465
    int-to-float v4, v4

    .line 466
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 467
    .line 468
    .line 469
    move-result v17

    .line 470
    sub-float v17, v4, v17

    .line 471
    .line 472
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    int-to-float v6, v6

    .line 481
    mul-float/2addr v6, v5

    .line 482
    const/high16 v5, 0x40000000    # 2.0f

    .line 483
    .line 484
    div-float/2addr v6, v5

    .line 485
    sub-float v5, v4, v6

    .line 486
    .line 487
    new-instance v6, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;

    .line 488
    .line 489
    move-object v4, v6

    .line 490
    move-object v13, v6

    .line 491
    move v6, v7

    .line 492
    move-object v7, v11

    .line 493
    move-object/from16 v18, v8

    .line 494
    .line 495
    move/from16 v8, v17

    .line 496
    .line 497
    move-object v3, v9

    .line 498
    move-object/from16 v9, v16

    .line 499
    .line 500
    move v0, v10

    .line 501
    move-object/from16 v10, v18

    .line 502
    .line 503
    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;-><init>(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 507
    .line 508
    .line 509
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    .line 510
    .line 511
    invoke-direct {v4, v2, v14, v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 518
    .line 519
    .line 520
    goto :goto_3

    .line 521
    :cond_b
    move v0, v10

    .line 522
    sget-boolean v3, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 523
    .line 524
    if-eqz v3, :cond_c

    .line 525
    .line 526
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 527
    .line 528
    const/4 v4, 0x0

    .line 529
    invoke-direct {v3, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 530
    .line 531
    .line 532
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 533
    .line 534
    invoke-virtual {v5, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 535
    .line 536
    .line 537
    goto :goto_4

    .line 538
    :cond_c
    :goto_3
    const/4 v4, 0x0

    .line 539
    :goto_4
    iput-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 540
    .line 541
    goto/16 :goto_8

    .line 542
    .line 543
    :cond_d
    move v4, v3

    .line 544
    move v0, v10

    .line 545
    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 546
    .line 547
    if-eqz v3, :cond_f

    .line 548
    .line 549
    new-instance v3, Landroid/graphics/Point;

    .line 550
    .line 551
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    float-to-int v5, v5

    .line 556
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 557
    .line 558
    .line 559
    move-result v6

    .line 560
    float-to-int v6, v6

    .line 561
    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 562
    .line 563
    .line 564
    new-instance v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 565
    .line 566
    invoke-direct {v5, v14, v3, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 570
    .line 571
    .line 572
    iput-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 573
    .line 574
    goto/16 :goto_8

    .line 575
    .line 576
    :cond_e
    move v4, v3

    .line 577
    move v0, v10

    .line 578
    :cond_f
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 579
    .line 580
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 581
    .line 582
    if-nez v3, :cond_10

    .line 583
    .line 584
    goto/16 :goto_8

    .line 585
    .line 586
    :cond_10
    invoke-virtual {v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    if-nez v3, :cond_11

    .line 591
    .line 592
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 593
    .line 594
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 595
    .line 596
    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 597
    .line 598
    const v5, 0x7f0a0309

    .line 599
    .line 600
    .line 601
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    const v5, 0x7f0a021c

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    new-instance v5, Landroid/graphics/PointF;

    .line 613
    .line 614
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 615
    .line 616
    .line 617
    move-result v6

    .line 618
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 623
    .line 624
    .line 625
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 626
    .line 627
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 628
    .line 629
    invoke-static {v3, v6, v5}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_17

    .line 634
    .line 635
    iget-object v5, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 636
    .line 637
    invoke-interface {v5, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_8

    .line 641
    .line 642
    :cond_11
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 643
    .line 644
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 645
    .line 646
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 647
    .line 648
    invoke-virtual {v5}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    const v6, 0x7f0a0278

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    check-cast v5, Landroid/widget/ImageButton;

    .line 660
    .line 661
    new-instance v6, Landroid/graphics/PointF;

    .line 662
    .line 663
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 664
    .line 665
    .line 666
    move-result v7

    .line 667
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 668
    .line 669
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 670
    .line 671
    sub-float/2addr v7, v9

    .line 672
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 673
    .line 674
    .line 675
    move-result v9

    .line 676
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 677
    .line 678
    sub-float/2addr v9, v8

    .line 679
    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 680
    .line 681
    .line 682
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 683
    .line 684
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 685
    .line 686
    invoke-static {v5, v7, v6}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 687
    .line 688
    .line 689
    move-result v6

    .line 690
    if-eqz v6, :cond_17

    .line 691
    .line 692
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 693
    .line 694
    invoke-interface {v3, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 695
    .line 696
    .line 697
    goto :goto_8

    .line 698
    :cond_12
    move v4, v3

    .line 699
    move v0, v10

    .line 700
    if-eqz v14, :cond_17

    .line 701
    .line 702
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 703
    .line 704
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 705
    .line 706
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 707
    .line 708
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 713
    .line 714
    .line 715
    if-eqz v15, :cond_13

    .line 716
    .line 717
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 718
    .line 719
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    const/4 v5, 0x1

    .line 724
    if-ne v3, v5, :cond_13

    .line 725
    .line 726
    const/4 v5, 0x1

    .line 727
    goto :goto_5

    .line 728
    :cond_13
    move v5, v4

    .line 729
    :goto_5
    if-eqz v5, :cond_17

    .line 730
    .line 731
    invoke-virtual {v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    if-eqz v3, :cond_14

    .line 736
    .line 737
    goto :goto_6

    .line 738
    :cond_14
    iget-object v3, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 739
    .line 740
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 741
    .line 742
    if-nez v3, :cond_15

    .line 743
    .line 744
    goto :goto_6

    .line 745
    :cond_15
    invoke-virtual {v14, v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    iget-object v5, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 750
    .line 751
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 752
    .line 753
    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 754
    .line 755
    const v6, 0x7f0a021c

    .line 756
    .line 757
    .line 758
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    if-eqz v5, :cond_16

    .line 763
    .line 764
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 765
    .line 766
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 767
    .line 768
    invoke-static {v5, v6, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    if-eqz v3, :cond_16

    .line 773
    .line 774
    const/4 v5, 0x1

    .line 775
    goto :goto_7

    .line 776
    :cond_16
    :goto_6
    move v5, v4

    .line 777
    :goto_7
    if-eqz v5, :cond_17

    .line 778
    .line 779
    const/4 v3, 0x1

    .line 780
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 781
    .line 782
    goto :goto_a

    .line 783
    :cond_17
    :goto_8
    const/4 v3, 0x1

    .line 784
    goto :goto_a

    .line 785
    :cond_18
    :goto_9
    move v4, v3

    .line 786
    move v0, v10

    .line 787
    move v3, v13

    .line 788
    :goto_a
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-eq v5, v3, :cond_19

    .line 793
    .line 794
    if-ne v5, v0, :cond_20

    .line 795
    .line 796
    :cond_19
    if-nez v14, :cond_1a

    .line 797
    .line 798
    goto/16 :goto_d

    .line 799
    .line 800
    :cond_1a
    iget-boolean v0, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 801
    .line 802
    if-nez v0, :cond_20

    .line 803
    .line 804
    invoke-virtual {v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-nez v0, :cond_1b

    .line 809
    .line 810
    goto/16 :goto_d

    .line 811
    .line 812
    :cond_1b
    invoke-virtual {v14, v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    iget-object v5, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 817
    .line 818
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 819
    .line 820
    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 821
    .line 822
    const v6, 0x7f0a0793

    .line 823
    .line 824
    .line 825
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 830
    .line 831
    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 832
    .line 833
    invoke-static {v5, v6, v7}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    .line 834
    .line 835
    .line 836
    move-result v5

    .line 837
    iget-object v6, v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 838
    .line 839
    iget-object v7, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 840
    .line 841
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 842
    .line 843
    invoke-virtual {v7}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    invoke-virtual {v7}, Landroid/view/View;->isLaidOut()Z

    .line 848
    .line 849
    .line 850
    move-result v7

    .line 851
    if-nez v7, :cond_1c

    .line 852
    .line 853
    goto :goto_c

    .line 854
    :cond_1c
    iget-object v7, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 855
    .line 856
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 857
    .line 858
    invoke-virtual {v7}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 859
    .line 860
    .line 861
    move-result-object v7

    .line 862
    iget v8, v0, Landroid/graphics/PointF;->x:F

    .line 863
    .line 864
    iget-object v9, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 865
    .line 866
    iget v10, v9, Landroid/graphics/PointF;->x:F

    .line 867
    .line 868
    sub-float/2addr v8, v10

    .line 869
    iget v10, v0, Landroid/graphics/PointF;->y:F

    .line 870
    .line 871
    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 872
    .line 873
    sub-float/2addr v10, v9

    .line 874
    invoke-static {v7, v8, v10}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 875
    .line 876
    .line 877
    move-result v7

    .line 878
    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 879
    .line 880
    if-eqz v8, :cond_1d

    .line 881
    .line 882
    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 883
    .line 884
    invoke-virtual {v8}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 885
    .line 886
    .line 887
    move-result-object v8

    .line 888
    iget v9, v0, Landroid/graphics/PointF;->x:F

    .line 889
    .line 890
    iget-object v10, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 891
    .line 892
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 893
    .line 894
    sub-float/2addr v9, v11

    .line 895
    iget v11, v0, Landroid/graphics/PointF;->y:F

    .line 896
    .line 897
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 898
    .line 899
    sub-float/2addr v11, v10

    .line 900
    invoke-static {v8, v9, v11}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 901
    .line 902
    .line 903
    move-result v8

    .line 904
    goto :goto_b

    .line 905
    :cond_1d
    move v8, v4

    .line 906
    :goto_b
    iget-object v9, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 907
    .line 908
    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 909
    .line 910
    invoke-virtual {v9}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 911
    .line 912
    .line 913
    move-result-object v9

    .line 914
    iget v10, v0, Landroid/graphics/PointF;->x:F

    .line 915
    .line 916
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 917
    .line 918
    iget v11, v6, Landroid/graphics/PointF;->x:F

    .line 919
    .line 920
    sub-float/2addr v10, v11

    .line 921
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 922
    .line 923
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 924
    .line 925
    sub-float/2addr v0, v6

    .line 926
    invoke-static {v9, v10, v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    if-nez v7, :cond_1e

    .line 931
    .line 932
    if-nez v8, :cond_1e

    .line 933
    .line 934
    if-eqz v0, :cond_1f

    .line 935
    .line 936
    :cond_1e
    :goto_c
    move v4, v3

    .line 937
    :cond_1f
    if-nez v4, :cond_20

    .line 938
    .line 939
    if-nez v5, :cond_20

    .line 940
    .line 941
    invoke-virtual {v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 942
    .line 943
    .line 944
    :cond_20
    :goto_d
    if-eqz v15, :cond_21

    .line 945
    .line 946
    iget-boolean v0, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 947
    .line 948
    if-eqz v0, :cond_23

    .line 949
    .line 950
    invoke-virtual {v12}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 951
    .line 952
    .line 953
    goto :goto_e

    .line 954
    :cond_21
    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 955
    .line 956
    if-eqz v0, :cond_23

    .line 957
    .line 958
    iget-boolean v0, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 959
    .line 960
    if-eqz v0, :cond_23

    .line 961
    .line 962
    iget-object v0, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 963
    .line 964
    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    if-nez v0, :cond_23

    .line 969
    .line 970
    invoke-virtual {v12}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 971
    .line 972
    .line 973
    goto :goto_e

    .line 974
    :cond_22
    move v4, v3

    .line 975
    :cond_23
    :goto_e
    move-object/from16 v0, p0

    .line 976
    .line 977
    invoke-virtual {v0, v1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 978
    .line 979
    .line 980
    return-void

    .line 981
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
