.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_1d

    .line 9
    .line 10
    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/window/StartingWindowInfo;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v2, "addStartingWindow"

    .line 22
    .line 23
    const-wide/16 v3, 0x20

    .line 24
    .line 25
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;->getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    iget-object v11, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, -0x1

    .line 40
    if-ne v10, v2, :cond_9

    .line 41
    .line 42
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v12, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 48
    .line 49
    if-eqz v12, :cond_1

    .line 50
    .line 51
    iget-object v4, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    iget-object v15, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 54
    .line 55
    iget-object v14, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    .line 56
    .line 57
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v13, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    .line 62
    iget v9, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    .line 64
    const-string v2, "Windowless Snapshot "

    .line 65
    .line 66
    invoke-static {v2, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/16 v6, 0x7f6

    .line 79
    .line 80
    invoke-static {v0, v2, v6, v5, v3}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_0

    .line 85
    .line 86
    move-object/from16 v16, v1

    .line 87
    .line 88
    move/from16 p0, v10

    .line 89
    .line 90
    move-object/from16 v18, v11

    .line 91
    .line 92
    goto/16 :goto_1a

    .line 93
    .line 94
    :cond_0
    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 95
    .line 96
    iget v5, v13, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 97
    .line 98
    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v7, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    .line 103
    .line 104
    iget-object v5, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 105
    .line 106
    invoke-direct {v7, v5, v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Landroid/view/SurfaceControlViewHost;

    .line 110
    .line 111
    iget-object v4, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    const-string v5, "WindowlessSnapshotWindowCreator"

    .line 114
    .line 115
    invoke-direct {v6, v4, v2, v7, v5}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v5, Landroid/graphics/Rect;

    .line 123
    .line 124
    move/from16 v16, v9

    .line 125
    .line 126
    iget v9, v2, Landroid/graphics/Point;->x:I

    .line 127
    .line 128
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 129
    .line 130
    invoke-direct {v5, v8, v8, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 134
    .line 135
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    iget-object v9, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 142
    .line 143
    new-instance v2, Landroid/widget/FrameLayout;

    .line 144
    .line 145
    move-object/from16 p0, v5

    .line 146
    .line 147
    iget-object v5, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-object/from16 v17, v15

    .line 153
    .line 154
    new-instance v15, Landroid/view/ContextThemeWrapper;

    .line 155
    .line 156
    iget-object v5, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-direct {v15, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v2, v15}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v2, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    iget-object v4, v7, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 172
    .line 173
    const/4 v15, 0x0

    .line 174
    move-object v2, v0

    .line 175
    move-object/from16 v18, p0

    .line 176
    .line 177
    move-object v5, v12

    .line 178
    move-object/from16 v19, v6

    .line 179
    .line 180
    move-object/from16 v6, v18

    .line 181
    .line 182
    move-object/from16 v23, v7

    .line 183
    .line 184
    move-object v7, v8

    .line 185
    move-object v8, v9

    .line 186
    move/from16 p0, v16

    .line 187
    .line 188
    move v9, v15

    .line 189
    invoke-static/range {v2 .. v9}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    .line 190
    .line 191
    .line 192
    invoke-static {v13}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    new-instance v3, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

    .line 197
    .line 198
    move-object/from16 v4, v23

    .line 199
    .line 200
    iget-object v5, v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {v12}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    .line 207
    .line 208
    .line 209
    move-result v18

    .line 210
    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 211
    .line 212
    iget-object v7, v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 213
    .line 214
    move-object v13, v3

    .line 215
    move-object v8, v14

    .line 216
    move-object/from16 v9, v17

    .line 217
    .line 218
    move-object/from16 v15, v19

    .line 219
    .line 220
    move-object/from16 v16, v5

    .line 221
    .line 222
    move/from16 v17, v2

    .line 223
    .line 224
    move/from16 v19, v6

    .line 225
    .line 226
    move-object/from16 v20, v9

    .line 227
    .line 228
    move/from16 v21, p0

    .line 229
    .line 230
    move-object/from16 v22, v7

    .line 231
    .line 232
    invoke-direct/range {v13 .. v22}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControl;IZILcom/android/wm/shell/common/ShellExecutor;ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 236
    .line 237
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 238
    .line 239
    move/from16 v5, p0

    .line 240
    .line 241
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Landroid/window/StartingWindowInfo;->notifyAddComplete(Landroid/view/SurfaceControl;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_1
    const/4 v3, 0x1

    .line 252
    iget-object v4, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 253
    .line 254
    iget-object v8, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    .line 255
    .line 256
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object v15, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 260
    .line 261
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 262
    .line 263
    if-eqz v2, :cond_2

    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_2
    iget-object v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 267
    .line 268
    :goto_0
    if-eqz v2, :cond_8

    .line 269
    .line 270
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 271
    .line 272
    if-nez v2, :cond_3

    .line 273
    .line 274
    goto/16 :goto_4

    .line 275
    .line 276
    :cond_3
    iget v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 277
    .line 278
    iget-object v5, v8, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 279
    .line 280
    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-nez v2, :cond_4

    .line 285
    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :cond_4
    iget-object v12, v8, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    const/4 v14, 0x0

    .line 291
    invoke-static {v12, v0, v14, v3, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    if-nez v13, :cond_5

    .line 296
    .line 297
    move v3, v14

    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :cond_5
    new-instance v7, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    .line 301
    .line 302
    iget-object v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 303
    .line 304
    invoke-direct {v7, v3, v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    .line 305
    .line 306
    .line 307
    new-instance v6, Landroid/view/SurfaceControlViewHost;

    .line 308
    .line 309
    const-string v3, "WindowlessSplashWindowCreator"

    .line 310
    .line 311
    invoke-direct {v6, v13, v2, v7, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v3, "Windowless Splash "

    .line 317
    .line 318
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 322
    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    const/4 v4, 0x1

    .line 331
    const/16 v16, -0x3

    .line 332
    .line 333
    new-instance v17, Landroid/os/Binder;

    .line 334
    .line 335
    invoke-direct/range {v17 .. v17}, Landroid/os/Binder;-><init>()V

    .line 336
    .line 337
    .line 338
    move-object v2, v13

    .line 339
    move-object v3, v0

    .line 340
    move-object v14, v6

    .line 341
    move/from16 v6, v16

    .line 342
    .line 343
    move-object/from16 v24, v7

    .line 344
    .line 345
    move-object/from16 v7, v17

    .line 346
    .line 347
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    iget-object v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 352
    .line 353
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 354
    .line 355
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 364
    .line 365
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 370
    .line 371
    iget-object v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 372
    .line 373
    if-eqz v3, :cond_6

    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_6
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    .line 377
    .line 378
    invoke-direct {v3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v9}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 382
    .line 383
    .line 384
    :goto_1
    new-instance v4, Landroid/widget/FrameLayout;

    .line 385
    .line 386
    iget-object v5, v8, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 392
    .line 393
    iget-object v7, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 394
    .line 395
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    invoke-direct {v6, v12, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 400
    .line 401
    .line 402
    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v14, v4, v2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    invoke-virtual {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    .line 413
    .line 414
    .line 415
    iget-object v3, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 416
    .line 417
    const/4 v6, 0x0

    .line 418
    iput v6, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    .line 419
    .line 420
    iput v6, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    .line 421
    .line 422
    const/4 v7, 0x0

    .line 423
    iput-object v7, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    .line 424
    .line 425
    iput-object v7, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    .line 426
    .line 427
    iput v6, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    .line 428
    .line 429
    iput-object v7, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 430
    .line 431
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 432
    .line 433
    if-eqz v3, :cond_7

    .line 434
    .line 435
    goto :goto_2

    .line 436
    :cond_7
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 437
    .line 438
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 439
    .line 440
    :goto_2
    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    .line 441
    .line 442
    invoke-direct {v6, v5, v13, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 443
    .line 444
    .line 445
    iput v2, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    .line 446
    .line 447
    const/4 v3, 0x1

    .line 448
    iput v3, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    .line 449
    .line 450
    const/4 v3, 0x0

    .line 451
    invoke-virtual {v6, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->build(Z)Landroid/window/SplashScreenView;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {v5}, Landroid/window/SplashScreenView;->setNotCopyable()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 459
    .line 460
    .line 461
    new-instance v4, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;

    .line 462
    .line 463
    move-object/from16 v6, v24

    .line 464
    .line 465
    iget-object v7, v6, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 466
    .line 467
    move-object v12, v4

    .line 468
    move-object v13, v8

    .line 469
    move-object v9, v15

    .line 470
    move-object v15, v5

    .line 471
    move-object/from16 v16, v7

    .line 472
    .line 473
    move/from16 v17, v2

    .line 474
    .line 475
    invoke-direct/range {v12 .. v17}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;I)V

    .line 476
    .line 477
    .line 478
    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 479
    .line 480
    iget v5, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 481
    .line 482
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 483
    .line 484
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    iget-object v2, v6, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    .line 488
    .line 489
    invoke-virtual {v0, v2}, Landroid/window/StartingWindowInfo;->notifyAddComplete(Landroid/view/SurfaceControl;)V

    .line 490
    .line 491
    .line 492
    :goto_3
    move v8, v3

    .line 493
    goto/16 :goto_c

    .line 494
    .line 495
    :cond_8
    :goto_4
    move-object/from16 v16, v1

    .line 496
    .line 497
    move/from16 p0, v10

    .line 498
    .line 499
    move-object/from16 v18, v11

    .line 500
    .line 501
    goto/16 :goto_19

    .line 502
    .line 503
    :cond_9
    const/4 v2, 0x1

    .line 504
    if-eq v10, v2, :cond_b

    .line 505
    .line 506
    const/4 v2, 0x3

    .line 507
    if-eq v10, v2, :cond_b

    .line 508
    .line 509
    const/4 v2, 0x4

    .line 510
    if-ne v10, v2, :cond_a

    .line 511
    .line 512
    goto :goto_5

    .line 513
    :cond_a
    move v4, v8

    .line 514
    goto :goto_6

    .line 515
    :cond_b
    const/4 v2, 0x4

    .line 516
    :goto_5
    const/4 v4, 0x1

    .line 517
    :goto_6
    if-eqz v4, :cond_1b

    .line 518
    .line 519
    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 520
    .line 521
    iget-object v12, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 522
    .line 523
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    iget-object v9, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 527
    .line 528
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 529
    .line 530
    if-eqz v3, :cond_c

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :cond_c
    iget-object v3, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 534
    .line 535
    :goto_7
    if-eqz v3, :cond_1a

    .line 536
    .line 537
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 538
    .line 539
    if-nez v4, :cond_d

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_d
    iget v4, v0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 543
    .line 544
    invoke-static {v4, v3}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->getSplashScreenTheme(ILandroid/content/pm/ActivityInfo;)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    iget-object v13, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 549
    .line 550
    iget-object v5, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    .line 551
    .line 552
    iget-object v6, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    .line 553
    .line 554
    if-nez v6, :cond_e

    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_e
    iget v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 558
    .line 559
    if-eqz v7, :cond_f

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :cond_f
    iget v7, v0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 563
    .line 564
    iget-boolean v14, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    .line 565
    .line 566
    if-eqz v14, :cond_10

    .line 567
    .line 568
    if-eqz v7, :cond_10

    .line 569
    .line 570
    invoke-virtual {v6}, Landroid/content/Context;->getThemeResId()I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    if-ne v7, v6, :cond_10

    .line 575
    .line 576
    const/4 v6, 0x1

    .line 577
    goto :goto_8

    .line 578
    :cond_10
    move v6, v8

    .line 579
    :goto_8
    if-nez v6, :cond_11

    .line 580
    .line 581
    goto :goto_9

    .line 582
    :cond_11
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    invoke-virtual {v6}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    iget-object v5, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    .line 591
    .line 592
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-eq v6, v5, :cond_12

    .line 605
    .line 606
    :goto_9
    move v5, v8

    .line 607
    goto :goto_a

    .line 608
    :cond_12
    const/4 v5, 0x1

    .line 609
    :goto_a
    if-eqz v5, :cond_13

    .line 610
    .line 611
    iget-object v4, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    .line 612
    .line 613
    iget-object v4, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    .line 614
    .line 615
    goto :goto_b

    .line 616
    :cond_13
    iget-object v5, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    .line 617
    .line 618
    iget-object v6, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 619
    .line 620
    invoke-static {v5, v0, v4, v10, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    :goto_b
    move-object v14, v4

    .line 625
    if-nez v14, :cond_14

    .line 626
    .line 627
    :goto_c
    goto/16 :goto_10

    .line 628
    .line 629
    :cond_14
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 630
    .line 631
    if-ne v10, v2, :cond_15

    .line 632
    .line 633
    const/4 v2, -0x1

    .line 634
    goto :goto_d

    .line 635
    :cond_15
    const/4 v2, -0x3

    .line 636
    :goto_d
    move v6, v2

    .line 637
    iget-object v7, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 638
    .line 639
    move-object v2, v14

    .line 640
    move-object v3, v0

    .line 641
    move v4, v10

    .line 642
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 643
    .line 644
    .line 645
    move-result-object v15

    .line 646
    iget v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 647
    .line 648
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 649
    .line 650
    iget-object v3, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 651
    .line 652
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 653
    .line 654
    .line 655
    move-result-object v16

    .line 656
    new-instance v7, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;

    .line 657
    .line 658
    invoke-direct {v7, v8}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;-><init>(I)V

    .line 659
    .line 660
    .line 661
    new-instance v6, Landroid/widget/FrameLayout;

    .line 662
    .line 663
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 664
    .line 665
    iget-object v3, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 666
    .line 667
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-direct {v2, v14, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 672
    .line 673
    .line 674
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 681
    .line 682
    .line 683
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda1;

    .line 684
    .line 685
    move-object v2, v5

    .line 686
    move-object v3, v12

    .line 687
    move-object v4, v7

    .line 688
    move-object/from16 v25, v5

    .line 689
    .line 690
    move v5, v9

    .line 691
    move-object/from16 v17, v6

    .line 692
    .line 693
    move-object v6, v0

    .line 694
    move-object/from16 v26, v7

    .line 695
    .line 696
    move-object/from16 v7, v17

    .line 697
    .line 698
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/widget/FrameLayout;)V

    .line 699
    .line 700
    .line 701
    iget-object v2, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 702
    .line 703
    if-eqz v2, :cond_16

    .line 704
    .line 705
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 708
    .line 709
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda24;

    .line 713
    .line 714
    const-string v4, "ShellStartingWindow"

    .line 715
    .line 716
    const/4 v5, 0x1

    .line 717
    invoke-direct {v3, v2, v5, v4, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;ZLjava/lang/String;I)V

    .line 718
    .line 719
    .line 720
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 721
    .line 722
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 723
    .line 724
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 725
    .line 726
    .line 727
    goto :goto_e

    .line 728
    :cond_16
    const/4 v5, 0x1

    .line 729
    :goto_e
    new-instance v7, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;

    .line 730
    .line 731
    move-object/from16 v6, v26

    .line 732
    .line 733
    invoke-direct {v7, v6, v8}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;I)V

    .line 734
    .line 735
    .line 736
    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;

    .line 737
    .line 738
    invoke-direct {v8, v6, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;I)V

    .line 739
    .line 740
    .line 741
    new-instance v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;

    .line 742
    .line 743
    const/4 v4, 0x0

    .line 744
    move-object v2, v5

    .line 745
    move-object v3, v13

    .line 746
    move-object/from16 v18, v11

    .line 747
    .line 748
    move-object v11, v4

    .line 749
    move-object v4, v14

    .line 750
    move-object v11, v5

    .line 751
    move-object v5, v0

    .line 752
    move-object/from16 v20, v6

    .line 753
    .line 754
    move v6, v10

    .line 755
    move-object/from16 v21, v7

    .line 756
    .line 757
    move-object v7, v8

    .line 758
    move-object/from16 v8, v21

    .line 759
    .line 760
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;)V

    .line 761
    .line 762
    .line 763
    iget-object v2, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    .line 764
    .line 765
    invoke-virtual {v2, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 766
    .line 767
    .line 768
    :try_start_0
    iget-object v5, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 769
    .line 770
    move-object v3, v12

    .line 771
    move v4, v9

    .line 772
    move-object/from16 v6, v17

    .line 773
    .line 774
    move-object/from16 v7, v16

    .line 775
    .line 776
    move-object v8, v15

    .line 777
    move v2, v9

    .line 778
    move v9, v10

    .line 779
    :try_start_1
    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-eqz v0, :cond_19

    .line 784
    .line 785
    iget-object v0, v12, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mChoreographer:Landroid/view/Choreographer;

    .line 786
    .line 787
    const/4 v3, 0x2

    .line 788
    move-object/from16 v4, v25

    .line 789
    .line 790
    const/4 v5, 0x0

    .line 791
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    iget-object v0, v12, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 795
    .line 796
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 797
    .line 798
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 803
    .line 804
    check-cast v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    .line 805
    .line 806
    if-eqz v0, :cond_22

    .line 807
    .line 808
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    .line 809
    .line 810
    invoke-virtual {v14, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    const/16 v4, 0x21

    .line 815
    .line 816
    const/4 v5, 0x0

    .line 817
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    iput-boolean v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mDrawsSystemBarBackgrounds:Z

    .line 822
    .line 823
    const/16 v4, 0x2d

    .line 824
    .line 825
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    if-eqz v4, :cond_17

    .line 830
    .line 831
    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 832
    .line 833
    or-int/lit8 v4, v4, 0x8

    .line 834
    .line 835
    iput v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 836
    .line 837
    :cond_17
    const/16 v4, 0x30

    .line 838
    .line 839
    const/4 v5, 0x0

    .line 840
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 841
    .line 842
    .line 843
    move-result v4

    .line 844
    if-eqz v4, :cond_18

    .line 845
    .line 846
    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 847
    .line 848
    or-int/lit8 v4, v4, 0x10

    .line 849
    .line 850
    iput v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 851
    .line 852
    :cond_18
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 853
    .line 854
    .line 855
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    const/4 v3, 0x4

    .line 860
    if-eq v10, v3, :cond_22

    .line 861
    .line 862
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;

    .line 863
    .line 864
    invoke-direct {v3, v12, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/window/SplashScreenView;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0, v3}, Landroid/window/SplashScreenView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 868
    .line 869
    .line 870
    goto/16 :goto_18

    .line 871
    .line 872
    :cond_19
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    if-eqz v3, :cond_22

    .line 881
    .line 882
    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    .line 888
    .line 889
    goto/16 :goto_18

    .line 890
    .line 891
    :catch_0
    move-exception v0

    .line 892
    goto :goto_f

    .line 893
    :catch_1
    move-exception v0

    .line 894
    move v2, v9

    .line 895
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    const-string v4, "failed creating starting window at taskId: "

    .line 898
    .line 899
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    const-string v3, "ShellStartingWindow"

    .line 910
    .line 911
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .line 913
    .line 914
    goto/16 :goto_18

    .line 915
    .line 916
    :cond_1a
    :goto_10
    move-object/from16 v18, v11

    .line 917
    .line 918
    move-object/from16 v16, v1

    .line 919
    .line 920
    move/from16 p0, v10

    .line 921
    .line 922
    goto/16 :goto_1a

    .line 923
    .line 924
    :cond_1b
    move-object/from16 v18, v11

    .line 925
    .line 926
    const/4 v2, 0x2

    .line 927
    if-ne v10, v2, :cond_22

    .line 928
    .line 929
    iget-object v11, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 930
    .line 931
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 932
    .line 933
    iget-object v12, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    .line 934
    .line 935
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 939
    .line 940
    iget v13, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 941
    .line 942
    iget-object v14, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 943
    .line 944
    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    .line 945
    .line 946
    iput v13, v2, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 947
    .line 948
    const/4 v4, 0x1

    .line 949
    invoke-virtual {v14, v2, v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    .line 950
    .line 951
    .line 952
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 953
    .line 954
    iget-object v9, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 955
    .line 956
    new-instance v8, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;

    .line 957
    .line 958
    invoke-direct {v8, v12, v13}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;I)V

    .line 959
    .line 960
    .line 961
    const-string v15, "Failed to add snapshot starting window res="

    .line 962
    .line 963
    iget-object v4, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 964
    .line 965
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 966
    .line 967
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 968
    .line 969
    .line 970
    move-result v6

    .line 971
    const/4 v7, 0x2

    .line 972
    if-ne v6, v7, :cond_1d

    .line 973
    .line 974
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 975
    .line 976
    if-eqz v2, :cond_1c

    .line 977
    .line 978
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 979
    .line 980
    const v4, 0x376e4b2f

    .line 981
    .line 982
    .line 983
    const/4 v5, 0x0

    .line 984
    invoke-static {v2, v4, v5, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    move-object/from16 v16, v1

    .line 988
    .line 989
    move/from16 v35, v5

    .line 990
    .line 991
    move/from16 p0, v10

    .line 992
    .line 993
    :goto_11
    move-object v5, v3

    .line 994
    goto/16 :goto_17

    .line 995
    .line 996
    :cond_1c
    move-object/from16 v16, v1

    .line 997
    .line 998
    move/from16 p0, v10

    .line 999
    .line 1000
    goto :goto_13

    .line 1001
    :cond_1d
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 1002
    .line 1003
    if-eqz v3, :cond_1e

    .line 1004
    .line 1005
    int-to-long v6, v5

    .line 1006
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1007
    .line 1008
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v6

    .line 1012
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    const v7, 0x3dd969c7

    .line 1017
    .line 1018
    .line 1019
    move-object/from16 v16, v1

    .line 1020
    .line 1021
    const/4 v1, 0x0

    .line 1022
    move/from16 p0, v10

    .line 1023
    .line 1024
    const/4 v10, 0x1

    .line 1025
    invoke-static {v3, v7, v10, v1, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    .line 1027
    .line 1028
    goto :goto_12

    .line 1029
    :cond_1e
    move-object/from16 v16, v1

    .line 1030
    .line 1031
    move/from16 p0, v10

    .line 1032
    .line 1033
    :goto_12
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 1034
    .line 1035
    const-string v3, "SnapshotStartingWindow for taskId="

    .line 1036
    .line 1037
    invoke-static {v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-virtual {v11}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v5

    .line 1045
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 1046
    .line 1047
    .line 1048
    move-result v5

    .line 1049
    const/4 v6, 0x3

    .line 1050
    invoke-static {v0, v3, v6, v5, v2}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    const-string v2, "ShellStartingWindow"

    .line 1055
    .line 1056
    if-nez v3, :cond_1f

    .line 1057
    .line 1058
    const-string v1, "TaskSnapshotWindow no layoutParams"

    .line 1059
    .line 1060
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .line 1062
    .line 1063
    :goto_13
    const/4 v3, 0x0

    .line 1064
    const/4 v1, 0x0

    .line 1065
    move/from16 v35, v1

    .line 1066
    .line 1067
    goto :goto_11

    .line 1068
    :cond_1f
    invoke-virtual {v11}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    new-instance v10, Landroid/graphics/Rect;

    .line 1073
    .line 1074
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 1075
    .line 1076
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 1077
    .line 1078
    const/4 v7, 0x0

    .line 1079
    invoke-direct {v10, v7, v7, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v11}, Landroid/window/TaskSnapshot;->getOrientation()I

    .line 1083
    .line 1084
    .line 1085
    move-result v7

    .line 1086
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 1087
    .line 1088
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v17

    .line 1092
    new-instance v34, Landroid/view/SurfaceControl;

    .line 1093
    .line 1094
    invoke-direct/range {v34 .. v34}, Landroid/view/SurfaceControl;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    new-instance v5, Landroid/window/ClientWindowFrames;

    .line 1098
    .line 1099
    invoke-direct {v5}, Landroid/window/ClientWindowFrames;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    new-instance v32, Landroid/view/InsetsSourceControl$Array;

    .line 1103
    .line 1104
    invoke-direct/range {v32 .. v32}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    new-instance v30, Landroid/util/MergedConfiguration;

    .line 1108
    .line 1109
    invoke-direct/range {v30 .. v30}, Landroid/util/MergedConfiguration;-><init>()V

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v4}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v19

    .line 1116
    new-instance v4, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    .line 1117
    .line 1118
    move-object/from16 v35, v4

    .line 1119
    .line 1120
    move-object/from16 v36, v5

    .line 1121
    .line 1122
    move-object v5, v11

    .line 1123
    move/from16 v23, v6

    .line 1124
    .line 1125
    move-object/from16 v6, v19

    .line 1126
    .line 1127
    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;-><init>(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$TaskDescription;ILjava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 1128
    .line 1129
    .line 1130
    move-object/from16 v9, v35

    .line 1131
    .line 1132
    iget-object v4, v9, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    .line 1133
    .line 1134
    new-instance v31, Landroid/view/InsetsState;

    .line 1135
    .line 1136
    invoke-direct/range {v31 .. v31}, Landroid/view/InsetsState;-><init>()V

    .line 1137
    .line 1138
    .line 1139
    new-instance v25, Landroid/view/InputChannel;

    .line 1140
    .line 1141
    invoke-direct/range {v25 .. v25}, Landroid/view/InputChannel;-><init>()V

    .line 1142
    .line 1143
    .line 1144
    const/4 v5, 0x1

    .line 1145
    new-array v5, v5, [F

    .line 1146
    .line 1147
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1148
    .line 1149
    const/16 v35, 0x0

    .line 1150
    .line 1151
    aput v6, v5, v35

    .line 1152
    .line 1153
    :try_start_2
    const-string v6, "TaskSnapshot#addToDisplay"

    .line 1154
    .line 1155
    const-wide/16 v7, 0x20

    .line 1156
    .line 1157
    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    const/16 v22, 0x8

    .line 1161
    .line 1162
    iget v6, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 1163
    .line 1164
    new-instance v28, Landroid/graphics/Rect;

    .line 1165
    .line 1166
    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    move-object/from16 v19, v17

    .line 1170
    .line 1171
    move-object/from16 v20, v4

    .line 1172
    .line 1173
    move-object/from16 v21, v3

    .line 1174
    .line 1175
    move/from16 v24, v6

    .line 1176
    .line 1177
    move-object/from16 v26, v31

    .line 1178
    .line 1179
    move-object/from16 v27, v32

    .line 1180
    .line 1181
    move-object/from16 v29, v5

    .line 1182
    .line 1183
    invoke-interface/range {v19 .. v29}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    .line 1184
    .line 1185
    .line 1186
    move-result v5

    .line 1187
    const-wide/16 v6, 0x20

    .line 1188
    .line 1189
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1190
    .line 1191
    .line 1192
    if-gez v5, :cond_20

    .line 1193
    .line 1194
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v5

    .line 1206
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1207
    .line 1208
    .line 1209
    const/4 v3, 0x0

    .line 1210
    goto/16 :goto_11

    .line 1211
    .line 1212
    :cond_20
    const-wide/16 v5, 0x0

    .line 1213
    .line 1214
    goto :goto_14

    .line 1215
    :catch_2
    iget-object v5, v9, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1216
    .line 1217
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1218
    .line 1219
    iget-object v6, v9, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    .line 1220
    .line 1221
    const-wide/16 v7, 0x0

    .line 1222
    .line 1223
    invoke-virtual {v5, v7, v8, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 1224
    .line 1225
    .line 1226
    move-wide v5, v7

    .line 1227
    :goto_14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1228
    .line 1229
    .line 1230
    new-instance v7, Ljava/lang/ref/WeakReference;

    .line 1231
    .line 1232
    invoke-direct {v7, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1233
    .line 1234
    .line 1235
    iput-object v7, v4, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->mOuter:Ljava/lang/ref/WeakReference;

    .line 1236
    .line 1237
    :try_start_3
    const-string v5, "TaskSnapshot#relayout"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1238
    .line 1239
    const-wide/16 v6, 0x20

    .line 1240
    .line 1241
    :try_start_4
    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    const/16 v22, -0x1

    .line 1245
    .line 1246
    const/16 v23, -0x1

    .line 1247
    .line 1248
    const/16 v24, 0x0

    .line 1249
    .line 1250
    const/16 v25, 0x0

    .line 1251
    .line 1252
    const/16 v26, 0x0

    .line 1253
    .line 1254
    const/16 v27, 0x0

    .line 1255
    .line 1256
    new-instance v33, Landroid/os/Bundle;

    .line 1257
    .line 1258
    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 1259
    .line 1260
    .line 1261
    move-object/from16 v19, v17

    .line 1262
    .line 1263
    move-object/from16 v20, v4

    .line 1264
    .line 1265
    move-object/from16 v21, v3

    .line 1266
    .line 1267
    move-object/from16 v28, v36

    .line 1268
    .line 1269
    move-object/from16 v29, v30

    .line 1270
    .line 1271
    move-object/from16 v30, v34

    .line 1272
    .line 1273
    invoke-interface/range {v19 .. v33}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    .line 1274
    .line 1275
    .line 1276
    const-wide/16 v4, 0x20

    .line 1277
    .line 1278
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1279
    .line 1280
    .line 1281
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    const-string v5, "Relayout returned: frame="

    .line 1284
    .line 1285
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    move-object/from16 v5, v36

    .line 1289
    .line 1290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    const-string v6, " topInset="

    .line 1294
    .line 1295
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    const-string v6, ", title="

    .line 1302
    .line 1303
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v6

    .line 1310
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v4

    .line 1317
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .line 1319
    .line 1320
    iget-object v7, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 1321
    .line 1322
    const/4 v15, 0x1

    .line 1323
    move-object v2, v0

    .line 1324
    move-object/from16 v4, v34

    .line 1325
    .line 1326
    move-object v5, v11

    .line 1327
    move-object v6, v10

    .line 1328
    move-object v8, v1

    .line 1329
    move-object v1, v9

    .line 1330
    move v9, v15

    .line 1331
    invoke-static/range {v2 .. v9}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    .line 1332
    .line 1333
    .line 1334
    const/4 v2, 0x1

    .line 1335
    iput-boolean v2, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    .line 1336
    .line 1337
    :try_start_5
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    .line 1338
    .line 1339
    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    .line 1340
    .line 1341
    const v4, 0x7fffffff

    .line 1342
    .line 1343
    .line 1344
    const/4 v5, 0x0

    .line 1345
    invoke-interface {v2, v3, v5, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1346
    .line 1347
    .line 1348
    goto :goto_15

    .line 1349
    :catch_3
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1350
    .line 1351
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1352
    .line 1353
    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    .line 1354
    .line 1355
    const-wide/16 v4, 0x0

    .line 1356
    .line 1357
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 1358
    .line 1359
    .line 1360
    :goto_15
    move-object v5, v1

    .line 1361
    goto :goto_17

    .line 1362
    :catch_4
    move-object v1, v9

    .line 1363
    const/4 v3, 0x0

    .line 1364
    const-wide/16 v5, 0x0

    .line 1365
    .line 1366
    goto :goto_16

    .line 1367
    :catch_5
    move-object v1, v9

    .line 1368
    const/4 v3, 0x0

    .line 1369
    :goto_16
    iget-object v4, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1370
    .line 1371
    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1372
    .line 1373
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    .line 1374
    .line 1375
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 1376
    .line 1377
    .line 1378
    const-string v1, "Failed to relayout snapshot starting window"

    .line 1379
    .line 1380
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    .line 1382
    .line 1383
    goto/16 :goto_11

    .line 1384
    .line 1385
    :goto_17
    if-eqz v5, :cond_21

    .line 1386
    .line 1387
    new-instance v1, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;

    .line 1388
    .line 1389
    iget-object v0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1390
    .line 1391
    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 1392
    .line 1393
    iget-object v7, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1394
    .line 1395
    iget-object v9, v12, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 1396
    .line 1397
    move-object v4, v1

    .line 1398
    move v8, v13

    .line 1399
    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;ILcom/android/wm/shell/common/ShellExecutor;ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    .line 1400
    .line 1401
    .line 1402
    iget-object v0, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 1403
    .line 1404
    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1405
    .line 1406
    .line 1407
    :cond_21
    move/from16 v8, v35

    .line 1408
    .line 1409
    goto :goto_1a

    .line 1410
    :cond_22
    :goto_18
    move-object/from16 v16, v1

    .line 1411
    .line 1412
    move/from16 p0, v10

    .line 1413
    .line 1414
    :goto_19
    const/4 v8, 0x0

    .line 1415
    :goto_1a
    if-eqz p0, :cond_27

    .line 1416
    .line 1417
    const/4 v0, 0x5

    .line 1418
    move/from16 v1, p0

    .line 1419
    .line 1420
    if-eq v1, v0, :cond_27

    .line 1421
    .line 1422
    move-object/from16 v2, v18

    .line 1423
    .line 1424
    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1425
    .line 1426
    move-object/from16 v2, v16

    .line 1427
    .line 1428
    iget-object v3, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 1429
    .line 1430
    iget-object v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 1431
    .line 1432
    iget-object v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 1433
    .line 1434
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v3

    .line 1438
    check-cast v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 1439
    .line 1440
    if-nez v3, :cond_23

    .line 1441
    .line 1442
    move v3, v8

    .line 1443
    goto :goto_1b

    .line 1444
    :cond_23
    iget v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    .line 1445
    .line 1446
    :goto_1b
    if-eqz v3, :cond_24

    .line 1447
    .line 1448
    iget-object v4, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 1449
    .line 1450
    monitor-enter v4

    .line 1451
    :try_start_6
    iget-object v5, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 1452
    .line 1453
    invoke-virtual {v5, v0, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1454
    .line 1455
    .line 1456
    monitor-exit v4

    .line 1457
    goto :goto_1c

    .line 1458
    :catchall_0
    move-exception v0

    .line 1459
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1460
    throw v0

    .line 1461
    :cond_24
    :goto_1c
    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;

    .line 1462
    .line 1463
    if-eqz v2, :cond_27

    .line 1464
    .line 1465
    const/4 v4, 0x1

    .line 1466
    if-eq v1, v4, :cond_25

    .line 1467
    .line 1468
    const/4 v5, 0x3

    .line 1469
    if-eq v1, v5, :cond_25

    .line 1470
    .line 1471
    const/4 v5, 0x4

    .line 1472
    if-ne v1, v5, :cond_26

    .line 1473
    .line 1474
    :cond_25
    move v8, v4

    .line 1475
    :cond_26
    if-eqz v8, :cond_27

    .line 1476
    .line 1477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v0

    .line 1481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v1

    .line 1485
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v3

    .line 1489
    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1490
    .line 1491
    .line 1492
    :cond_27
    const-wide/16 v0, 0x20

    .line 1493
    .line 1494
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1495
    .line 1496
    .line 1497
    return-void

    .line 1498
    :goto_1d
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1499
    .line 1500
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 1501
    .line 1502
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1503
    .line 1504
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 1505
    .line 1506
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 1507
    .line 1508
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 1509
    .line 1510
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 1511
    .line 1512
    iput-object v0, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 1513
    .line 1514
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    .line 1515
    .line 1516
    iput-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    .line 1517
    .line 1518
    return-void

    .line 1519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
