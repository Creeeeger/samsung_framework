.class public final Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

.field public mIsRecreating:Z

.field mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

.field public mShouldShowHint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 8
    .line 9
    .line 10
    const-class p1, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 11
    .line 12
    const-string p1, "BoundsCompatUIWindowManager"

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p7

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;Landroid/app/TaskInfo;Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;Lcom/android/wm/shell/compatui/CompatUIController;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mShouldShowHint:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 8
    .line 9
    iput-object p0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 12
    .line 13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "debug.boundscompatui.layout"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sput-boolean v1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v3, 0x7f0700f6

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    float-to-int v1, v1

    .line 38
    iput v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 41
    .line 42
    iget-object v3, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v4, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 45
    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object v6, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 51
    .line 52
    iget-object v6, v6, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityTaskManager;->getOrientationControlPolicy(ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iput v5, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mOrientationPolicy:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    iput v2, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mOrientationPolicy:I

    .line 66
    .line 67
    :goto_0
    const/4 v5, 0x1

    .line 68
    :try_start_1
    iget-object v6, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mWindowManager:Landroid/view/IWindowManager;

    .line 69
    .line 70
    invoke-interface {v6}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    iput-boolean v6, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mIsRotationFrozen:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v6

    .line 78
    const-string v7, "Failed to load orientation policy, set frozen"

    .line 79
    .line 80
    invoke-static {v3, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    iput-boolean v5, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mIsRotationFrozen:Z

    .line 84
    .line 85
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/app/IActivityTaskManager;->getBoundsCompatAlignment()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    iput v4, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_2
    move-exception v1

    .line 93
    const-string v4, "Failed to retrieve bounds compat alignment."

    .line 94
    .line 95
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    :goto_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->getActivityBounds()Landroid/graphics/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_1
    const v3, 0x7f0a01a3

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/TextView;

    .line 119
    .line 120
    if-nez v3, :cond_2

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-nez v4, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    iget-object v6, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 131
    .line 132
    iget-object v6, v6, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 133
    .line 134
    invoke-static {v6}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    .line 153
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    .line 157
    .line 158
    const v3, 0x7f0a019d

    .line 159
    .line 160
    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const v4, 0x7f0a019e

    .line 166
    .line 167
    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const v6, 0x7f0a01a0

    .line 173
    .line 174
    .line 175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const v7, 0x7f0a019f

    .line 180
    .line 181
    .line 182
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    filled-new-array {v3, v4, v6, v7}, [Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 198
    .line 199
    iget-object v3, v3, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 200
    .line 201
    if-eqz v3, :cond_6

    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    :cond_6
    const-string v3, "BoundsCompatUILayout"

    .line 208
    .line 209
    const v4, 0x7f0a019b

    .line 210
    .line 211
    .line 212
    if-eqz v2, :cond_7

    .line 213
    .line 214
    const-string v2, "ScreenReader was enabled, do not show alignment buttons"

    .line 215
    .line 216
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_7
    iget-object v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    const v7, 0x7f07124b

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    float-to-int v6, v6

    .line 239
    iget-object v7, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 240
    .line 241
    invoke-virtual {v7}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->getActivityBounds()Landroid/graphics/Rect;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    iget-object v8, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 246
    .line 247
    iget-object v8, v8, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 248
    .line 249
    iget-object v9, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 250
    .line 251
    iget-object v9, v9, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 252
    .line 253
    invoke-static {v9}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    const-string v10, ", activityBounds="

    .line 258
    .line 259
    const-string v11, ", buttonSize="

    .line 260
    .line 261
    if-eqz v9, :cond_9

    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    iget v12, v8, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 268
    .line 269
    sub-int/2addr v9, v12

    .line 270
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    sub-int/2addr v9, v12

    .line 275
    sub-int/2addr v9, v6

    .line 276
    iget v12, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 277
    .line 278
    shl-int/lit8 v5, v12, 0x1

    .line 279
    .line 280
    sub-int/2addr v9, v5

    .line 281
    shr-int/lit8 v5, v9, 0x2

    .line 282
    .line 283
    iput v5, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    .line 284
    .line 285
    const-string v9, ", mVerticalMarginFromActivityBounds="

    .line 286
    .line 287
    const-string v12, ", btnSize="

    .line 288
    .line 289
    const-string v13, ", navBarFrameHeight="

    .line 290
    .line 291
    const-string v14, ", statusBarHeight="

    .line 292
    .line 293
    if-ltz v5, :cond_8

    .line 294
    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    const v4, 0x7f0a0198

    .line 303
    .line 304
    .line 305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    sget-boolean v4, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 313
    .line 314
    if-eqz v4, :cond_b

    .line 315
    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v5, "Show alignment buttons vertically. taskBounds="

    .line 319
    .line 320
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 330
    .line 331
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    iget v2, v8, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 350
    .line 351
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 358
    .line 359
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    .line 366
    .line 367
    invoke-static {v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_5

    .line 371
    .line 372
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v5, "Not enough space to show alignment buttons vertically. taskBounds="

    .line 375
    .line 376
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 386
    .line 387
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget v2, v8, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 406
    .line 407
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 414
    .line 415
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    .line 422
    .line 423
    invoke-static {v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    iget v5, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 432
    .line 433
    shl-int/lit8 v5, v5, 0x1

    .line 434
    .line 435
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    add-int/2addr v6, v5

    .line 440
    if-le v4, v6, :cond_a

    .line 441
    .line 442
    const v2, 0x7f0a0199

    .line 443
    .line 444
    .line 445
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    const v2, 0x7f0a019a

    .line 453
    .line 454
    .line 455
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto :goto_5

    .line 463
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v5, "Not enough space to show alignment buttons, taskBounds="

    .line 466
    .line 467
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget v2, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 477
    .line 478
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    :cond_b
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eqz v2, :cond_d

    .line 503
    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    check-cast v2, Ljava/lang/Integer;

    .line 509
    .line 510
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    instance-of v4, v3, Landroid/widget/ImageButton;

    .line 519
    .line 520
    if-eqz v4, :cond_c

    .line 521
    .line 522
    iget-object v4, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 523
    .line 524
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v3, Landroid/widget/ImageButton;

    .line 529
    .line 530
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    goto :goto_6

    .line 534
    :cond_d
    const v1, 0x7f0a01a1

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    check-cast v1, Landroid/widget/FrameLayout;

    .line 542
    .line 543
    iput-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 544
    .line 545
    iget-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_17

    .line 560
    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    check-cast v2, Ljava/util/Map$Entry;

    .line 566
    .line 567
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    check-cast v2, Landroid/widget/ImageButton;

    .line 572
    .line 573
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    new-instance v4, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;

    .line 578
    .line 579
    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;Landroid/widget/ImageButton;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 583
    .line 584
    .line 585
    const v4, 0x7f0a019d

    .line 586
    .line 587
    .line 588
    if-ne v3, v4, :cond_f

    .line 589
    .line 590
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 591
    .line 592
    const/4 v4, 0x0

    .line 593
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    .line 598
    .line 599
    goto :goto_7

    .line 600
    :cond_f
    const v4, 0x7f0a019e

    .line 601
    .line 602
    .line 603
    if-ne v3, v4, :cond_10

    .line 604
    .line 605
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 606
    .line 607
    const/4 v4, 0x1

    .line 608
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    .line 613
    .line 614
    goto :goto_7

    .line 615
    :cond_10
    const v4, 0x7f0a01a0

    .line 616
    .line 617
    .line 618
    if-ne v3, v4, :cond_11

    .line 619
    .line 620
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 621
    .line 622
    const/4 v4, 0x2

    .line 623
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .line 628
    .line 629
    goto :goto_7

    .line 630
    :cond_11
    const v4, 0x7f0a019f

    .line 631
    .line 632
    .line 633
    if-ne v3, v4, :cond_12

    .line 634
    .line 635
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 636
    .line 637
    const/4 v4, 0x3

    .line 638
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_12
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    .line 646
    .line 647
    const/4 v5, 0x4

    .line 648
    if-nez v4, :cond_13

    .line 649
    .line 650
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 651
    .line 652
    .line 653
    goto :goto_7

    .line 654
    :cond_13
    const v4, 0x7f0a0199

    .line 655
    .line 656
    .line 657
    if-ne v3, v4, :cond_14

    .line 658
    .line 659
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 660
    .line 661
    invoke-direct {v3, v0, v5}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    .line 666
    .line 667
    goto :goto_7

    .line 668
    :cond_14
    const v4, 0x7f0a019a

    .line 669
    .line 670
    .line 671
    if-ne v3, v4, :cond_15

    .line 672
    .line 673
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 674
    .line 675
    const/4 v4, 0x5

    .line 676
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    .line 681
    .line 682
    goto :goto_7

    .line 683
    :cond_15
    const v4, 0x7f0a019b

    .line 684
    .line 685
    .line 686
    if-ne v3, v4, :cond_16

    .line 687
    .line 688
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 689
    .line 690
    const/4 v4, 0x6

    .line 691
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_7

    .line 698
    .line 699
    :cond_16
    const v4, 0x7f0a0198

    .line 700
    .line 701
    .line 702
    if-ne v3, v4, :cond_e

    .line 703
    .line 704
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;

    .line 705
    .line 706
    const/4 v4, 0x7

    .line 707
    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_7

    .line 714
    .line 715
    :cond_17
    const/4 v1, 0x0

    .line 716
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    .line 728
    .line 729
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    .line 730
    .line 731
    .line 732
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mIsRecreating:Z

    .line 733
    .line 734
    if-nez v0, :cond_1a

    .line 735
    .line 736
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 737
    .line 738
    iget-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 739
    .line 740
    iget-boolean v1, v1, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 741
    .line 742
    if-eqz v1, :cond_1a

    .line 743
    .line 744
    iget v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 745
    .line 746
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 747
    .line 748
    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 749
    .line 750
    iget-object v2, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 751
    .line 752
    monitor-enter v2

    .line 753
    :try_start_3
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 754
    .line 755
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Landroid/window/TaskAppearedInfo;

    .line 760
    .line 761
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    if-nez v0, :cond_18

    .line 763
    .line 764
    goto :goto_8

    .line 765
    :cond_18
    invoke-virtual {v0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 770
    .line 771
    if-nez v0, :cond_19

    .line 772
    .line 773
    goto :goto_8

    .line 774
    :cond_19
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 775
    .line 776
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 777
    .line 778
    const/16 v1, 0x183

    .line 779
    .line 780
    const/4 v2, 0x1

    .line 781
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 782
    .line 783
    .line 784
    goto :goto_8

    .line 785
    :catchall_0
    move-exception p0

    .line 786
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 787
    throw p0

    .line 788
    :cond_1a
    :goto_8
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 789
    .line 790
    return-object p0
.end method

.method public final eligibleToShowLayout()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-boolean p0, p0, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_1
    xor-int/lit8 p0, v1, 0x1

    .line 26
    .line 27
    return p0
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "getWindowLayoutParams: no layout"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getZOrder()I
    .locals 0

    .line 1
    const/16 p0, 0x2711

    .line 2
    .line 3
    return p0
.end method

.method public inflateLayout()Lcom/android/wm/shell/compatui/BoundsCompatUILayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->getActivityBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0d0056

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v0, 0x7f0d0057

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 36
    .line 37
    return-object p0
.end method

.method public final removeLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->release()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "{mLayout="

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ", mCompatUIController=, mBoundsCompatUIController=}"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v1}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v2, v1, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 30
    .line 31
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 38
    .line 39
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move v0, v3

    .line 55
    :goto_1
    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v2, v4

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    :goto_2
    move v2, v3

    .line 67
    :goto_3
    if-eqz v2, :cond_6

    .line 68
    .line 69
    iget-boolean v2, v1, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 70
    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    iget-boolean v1, v1, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v1, v4

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    :goto_4
    move v1, v3

    .line 81
    :goto_5
    if-nez v1, :cond_6

    .line 82
    .line 83
    or-int/lit8 v0, v0, 0x2

    .line 84
    .line 85
    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_FOR_BOUNDS_COMPAT_UI_EXPERIENCE:Z

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    iget-boolean v2, p1, Landroid/app/TaskInfo;->singleTapFromLetterbox:Z

    .line 94
    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_7
    and-int/lit8 v1, v0, 0x1

    .line 102
    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 106
    .line 107
    .line 108
    iput-boolean v3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mIsRecreating:Z

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 112
    .line 113
    if-eqz v1, :cond_9

    .line 114
    .line 115
    and-int/lit8 v0, v0, 0x2

    .line 116
    .line 117
    if-eqz v0, :cond_9

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->refreshButtonVisibility(Z)V

    .line 120
    .line 121
    .line 122
    :cond_9
    :goto_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput-boolean v4, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mIsRecreating:Z

    .line 127
    .line 128
    return p1
.end method

.method public final updateSurfacePosition()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mBoundsCompatUIController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$Prefs;->$VALUES:[Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$Prefs;

    .line 12
    .line 13
    const-string v1, "debug.boundscompatui.hint"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v3, "RestartHintShownCount"

    .line 21
    .line 22
    const-string v4, "boundscompatui_prefs"

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    move v0, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    if-ge v0, v5, :cond_2

    .line 42
    .line 43
    :goto_1
    move v0, v6

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v0, v2

    .line 46
    :goto_2
    if-eqz v0, :cond_6

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mShouldShowHint:Z

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mShouldShowHint:Z

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    move v7, v5

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-interface {v7, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    :goto_3
    if-ge v7, v5, :cond_5

    .line 71
    .line 72
    add-int/2addr v7, v6

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_4
    new-instance v1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const v0, 0x7f130e3c

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iput-object p0, v1, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;->mMessage:Ljava/lang/CharSequence;

    .line 110
    .line 111
    sget-object p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 112
    .line 113
    invoke-static {p0, v1}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->-$$Nest$mbuild(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupBuilder;)Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->show()V

    .line 118
    .line 119
    .line 120
    :cond_6
    return-void
.end method
