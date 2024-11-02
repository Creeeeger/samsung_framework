.class public final Lcom/android/wm/shell/splitscreen/AppPairShortcutController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sPairComponentNameList:[Ljava/lang/String;

.field public static final sPairUserIdList:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

.field public final mSplitAreaBounds:Landroid/graphics/Rect;

.field public final mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "component_second"

    .line 2
    .line 3
    const-string v1, "component_third"

    .line 4
    .line 5
    const-string v2, "component_first"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "userId_second"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "userId_third"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "userId_first"

    .line 20
    .line 21
    .line 22
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;-><init>(Lcom/android/wm/shell/splitscreen/AppPairShortcutController;Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final createAppPairShortcut(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    .line 4
    .line 5
    const-string v2, "AppPairShortcutController"

    .line 6
    .line 7
    if-eqz v1, :cond_18

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_b

    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, v4, v5}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 30
    .line 31
    iget-object v6, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    .line 32
    .line 33
    invoke-virtual {v4, v6, v5}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_17

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    goto/16 :goto_a

    .line 50
    .line 51
    :cond_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 52
    .line 53
    const/4 v7, 0x2

    .line 54
    const/4 v8, 0x1

    .line 55
    const/4 v9, 0x3

    .line 56
    const/4 v10, 0x0

    .line 57
    if-eqz v6, :cond_a

    .line 58
    .line 59
    iget-object v6, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_a

    .line 66
    .line 67
    iget-object v6, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    .line 68
    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    const-string p0, "createAppPairShortcut: Can\'t find topActivity there is null for cell"

    .line 72
    .line 73
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget-object v11, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 78
    .line 79
    invoke-virtual {v11, v6, v5}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-eqz v11, :cond_3

    .line 88
    .line 89
    const-string p0, "createAppPairShortcut: Can\'t find topActivity there is no child tasks for cell"

    .line 90
    .line 91
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    iget-object v11, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 96
    .line 97
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSide()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eq v11, v7, :cond_7

    .line 106
    .line 107
    if-ne v11, v9, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    if-eq v0, v7, :cond_6

    .line 111
    .line 112
    if-ne v0, v9, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    :goto_0
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 157
    .line 158
    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    :goto_2
    if-eq v0, v7, :cond_9

    .line 163
    .line 164
    if-ne v0, v9, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    :goto_3
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 209
    .line 210
    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_a
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    new-array v3, v9, [I

    .line 238
    .line 239
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-ge v10, v4, :cond_e

    .line 244
    .line 245
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 250
    .line 251
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 252
    .line 253
    if-nez v6, :cond_c

    .line 254
    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v11, "getLaunchActivityForTask, can\'t get ComponentName from Task="

    .line 258
    .line 259
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_b
    move-object v6, v5

    .line 273
    goto :goto_7

    .line 274
    :cond_c
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    iget v11, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 279
    .line 280
    invoke-static {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    if-eqz v6, :cond_b

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    if-eqz v11, :cond_b

    .line 291
    .line 292
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    :goto_7
    if-eqz v6, :cond_d

    .line 301
    .line 302
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 306
    .line 307
    aput v4, v3, v10

    .line 308
    .line 309
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eq v1, v2, :cond_f

    .line 321
    .line 322
    return-void

    .line 323
    :cond_f
    if-eqz p1, :cond_12

    .line 324
    .line 325
    if-eq p1, v8, :cond_12

    .line 326
    .line 327
    if-eq p1, v7, :cond_11

    .line 328
    .line 329
    if-eq p1, v9, :cond_10

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_10
    const-string v1, "com.samsung.android.multiwindow.SEND_SPLIT_STATE_CHANGED"

    .line 333
    .line 334
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    goto :goto_8

    .line 339
    :cond_11
    const-string v1, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_EDGEPANEL"

    .line 340
    .line 341
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    goto :goto_8

    .line 346
    :cond_12
    const-string v1, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_LAUNCHER"

    .line 347
    .line 348
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    :goto_8
    if-eqz v5, :cond_16

    .line 353
    .line 354
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    .line 355
    .line 356
    if-ne p1, v9, :cond_13

    .line 357
    .line 358
    const/4 p1, 0x7

    .line 359
    invoke-virtual {p0, p1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :cond_13
    const/4 v0, 0x6

    .line 368
    invoke-virtual {p0, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    .line 374
    .line 375
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_APP_PAIR_SA_LOGGING:Z

    .line 376
    .line 377
    if-eqz p0, :cond_16

    .line 378
    .line 379
    if-nez p1, :cond_14

    .line 380
    .line 381
    const-string p0, "Taskbar"

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_14
    if-ne p1, v8, :cond_15

    .line 385
    .line 386
    const-string p0, "Home screen"

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_15
    const-string p0, "Apps edge"

    .line 390
    .line 391
    :goto_9
    const-string p1, "1050"

    .line 392
    .line 393
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    :cond_16
    return-void

    .line 397
    :cond_17
    :goto_a
    const-string p0, "createAppPairShortcut: Can\'t find topActivity Or there is no child tasks."

    .line 398
    .line 399
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_18
    :goto_b
    const-string p0, "createAppPairShortcut: Can\'t find topActivity there is null"

    .line 404
    .line 405
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public final createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[II)Landroid/content/Intent;
    .locals 9

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    const/high16 p1, 0x11000000

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    if-ne p4, p1, :cond_0

    .line 16
    .line 17
    const-string v1, "com.samsung.android.smartsuggestions"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    sget-object v3, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object v3, v3, v2

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    sget-object v3, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v3, v3, v2

    .line 45
    .line 46
    aget v4, p3, v2

    .line 47
    .line 48
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-eq p4, p1, :cond_2

    .line 55
    .line 56
    const-string v2, "add_app_pair_to"

    .line 57
    .line 58
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 65
    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const-string/jumbo v5, "pair_orientation"

    .line 75
    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    move v2, v3

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move v2, p1

    .line 98
    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    const v6, 0x7f071228

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    const v6, 0x7f071227

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 123
    .line 124
    const/4 v7, 0x1

    .line 125
    const/4 v8, 0x0

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    .line 127
    .line 128
    if-nez v6, :cond_8

    .line 129
    .line 130
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 131
    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6, p0}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v5, v6, p0, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    :goto_4
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2, p0, v7}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v5, v2, p0, v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    :goto_5
    const-string v2, "divider_ratio"

    .line 175
    .line 176
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 180
    .line 181
    if-eqz p0, :cond_9

    .line 182
    .line 183
    if-le v1, v3, :cond_9

    .line 184
    .line 185
    new-instance p0, Landroid/graphics/Rect;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v1, Landroid/graphics/Rect;

    .line 191
    .line 192
    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Landroid/graphics/Rect;

    .line 208
    .line 209
    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 210
    .line 211
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v5, v1, p0, v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    const-string v1, "cell_divider_ratio"

    .line 219
    .line 220
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    :cond_9
    const-string p0, "AppPairShortcutController"

    .line 224
    .line 225
    if-ne p4, p1, :cond_a

    .line 226
    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string/jumbo p3, "send split state, Split activities = "

    .line 230
    .line 231
    .line 232
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string p4, "createAppPairShortcutLocked() Split activities = "

    .line 249
    .line 250
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string p2, ", userIds = "

    .line 257
    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :goto_6
    return-object v0
.end method
