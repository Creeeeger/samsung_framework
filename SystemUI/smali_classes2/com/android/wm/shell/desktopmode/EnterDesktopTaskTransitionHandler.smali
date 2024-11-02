.class public final Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

.field public final mPendingTransitionTokens:Ljava/util/List;

.field public mPosition:Landroid/graphics/Point;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;-><init>(Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    move v7, v6

    .line 21
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    iget-object v9, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v8, :cond_7

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 34
    .line 35
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    const/4 v11, 0x2

    .line 40
    and-int/2addr v10, v11

    .line 41
    if-eqz v10, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    if-eqz v10, :cond_6

    .line 50
    .line 51
    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 52
    .line 53
    const/4 v12, -0x1

    .line 54
    if-ne v10, v12, :cond_1

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const/4 v12, 0x6

    .line 63
    if-ne v10, v12, :cond_6

    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    check-cast v9, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    move v14, v6

    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_2
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    const/16 v12, 0x3f2

    .line 85
    .line 86
    const/4 v13, 0x5

    .line 87
    const/4 v14, 0x1

    .line 88
    if-ne v10, v12, :cond_3

    .line 89
    .line 90
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    if-ne v12, v13, :cond_3

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const/4 v9, 0x0

    .line 101
    invoke-virtual {v2, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 105
    .line 106
    .line 107
    iget-object v8, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 108
    .line 109
    iget-object v8, v8, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 110
    .line 111
    new-instance v9, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;

    .line 112
    .line 113
    invoke-direct {v9, v4, v6}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 114
    .line 115
    .line 116
    check-cast v8, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 117
    .line 118
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_3
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    const/16 v15, 0x3f3

    .line 128
    .line 129
    iget-object v6, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 130
    .line 131
    move-object/from16 v16, v12

    .line 132
    .line 133
    const-wide/16 v11, 0x150

    .line 134
    .line 135
    if-ne v10, v15, :cond_4

    .line 136
    .line 137
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-ne v15, v13, :cond_4

    .line 142
    .line 143
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    if-nez v13, :cond_4

    .line 148
    .line 149
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    invoke-virtual {v2, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 165
    .line 166
    .line 167
    const/4 v9, 0x2

    .line 168
    new-array v9, v9, [F

    .line 169
    .line 170
    fill-array-data v9, :array_0

    .line 171
    .line 172
    .line 173
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    .line 179
    .line 180
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 185
    .line 186
    new-instance v10, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;

    .line 187
    .line 188
    move-object/from16 v13, v16

    .line 189
    .line 190
    invoke-direct {v10, v13, v6, v8}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    .line 195
    .line 196
    new-instance v6, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;

    .line 197
    .line 198
    invoke-direct {v6, v0, v3, v4}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    move-object/from16 v13, v16

    .line 209
    .line 210
    const/16 v15, 0x3f5

    .line 211
    .line 212
    if-ne v10, v15, :cond_5

    .line 213
    .line 214
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-ne v9, v14, :cond_5

    .line 219
    .line 220
    iget-object v9, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    .line 221
    .line 222
    if-eqz v9, :cond_5

    .line 223
    .line 224
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    invoke-virtual {v9, v8, v10, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 245
    .line 246
    .line 247
    new-instance v9, Landroid/animation/ValueAnimator;

    .line 248
    .line 249
    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    .line 250
    .line 251
    .line 252
    const/4 v10, 0x2

    .line 253
    new-array v10, v10, [F

    .line 254
    .line 255
    fill-array-data v10, :array_1

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    .line 263
    .line 264
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 269
    .line 270
    new-instance v10, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;

    .line 271
    .line 272
    invoke-direct {v10, v0, v6, v8}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    .line 277
    .line 278
    new-instance v6, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$2;

    .line 279
    .line 280
    invoke-direct {v6, v0, v3, v4}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$2;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 287
    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_5
    const/4 v14, 0x0

    .line 291
    :goto_1
    or-int v6, v7, v14

    .line 292
    .line 293
    move v7, v6

    .line 294
    :cond_6
    :goto_2
    const/4 v6, 0x0

    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_7
    check-cast v9, Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    return v7

    .line 303
    :array_0
    .array-data 4
        0x3f2aaaaa
        0x3f800000    # 1.0f
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
