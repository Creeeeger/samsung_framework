.class final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $blurView:Landroid/widget/ImageView;

.field final synthetic $editModeContainer:Landroid/widget/FrameLayout;

.field final synthetic $editModeWallpaperView:Landroid/widget/ImageView;

.field final synthetic $root:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeWallpaperView:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeContainer:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "updateViews SA="

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " enterVI="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "KeyguardEditModeController"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    if-eqz p1, :cond_8

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 65
    .line 66
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iput-object v8, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v8, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v9, "requestId"

    .line 86
    .line 87
    .line 88
    iget-object v10, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperRequestID:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v9, "requestTime"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v6, "samsung.android.wallpaper.backuprunningstate"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v0, v6, v8}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    new-instance v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 106
    .line 107
    invoke-direct {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-object v6, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 125
    .line 126
    if-ne v2, v0, :cond_2

    .line 127
    .line 128
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 129
    .line 130
    iget v8, v6, Landroid/graphics/Point;->y:I

    .line 131
    .line 132
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 137
    .line 138
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 139
    .line 140
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 141
    .line 142
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    iget v8, v6, Landroid/graphics/Point;->y:I

    .line 152
    .line 153
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 158
    .line 159
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 160
    .line 161
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 162
    .line 163
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 168
    .line 169
    :goto_0
    iget v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 170
    .line 171
    iget v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 172
    .line 173
    const-string v8, "getWallpaperBitmap, orientation="

    .line 174
    .line 175
    const-string v9, ", w="

    .line 176
    .line 177
    const-string v10, ", h="

    .line 178
    .line 179
    invoke-static {v8, v2, v9, v6, v10}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 194
    .line 195
    if-nez p2, :cond_5

    .line 196
    .line 197
    iget-object v2, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    .line 198
    .line 199
    iget-object v6, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v8, "getWallpaperBitmap, parcelFileDescriptor : "

    .line 204
    .line 205
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, ", requestId : "

    .line 212
    .line 213
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :try_start_0
    iget-object v2, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    .line 227
    .line 228
    if-eqz v2, :cond_3

    .line 229
    .line 230
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    goto :goto_1

    .line 235
    :cond_3
    move-object v2, v5

    .line 236
    :goto_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    iget-object v6, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    .line 241
    .line 242
    if-eqz v6, :cond_4

    .line 243
    .line 244
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    :cond_4
    move-object v5, v2

    .line 248
    goto :goto_2

    .line 249
    :catch_0
    move-exception v2

    .line 250
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const/4 v1, 0x1

    .line 258
    iput-boolean v1, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useThumbnail:Z

    .line 259
    .line 260
    :cond_5
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->wallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    .line 261
    .line 262
    invoke-virtual {p1, v3, v5}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    :goto_2
    if-eqz v5, :cond_b

    .line 267
    .line 268
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeWallpaperView:Landroid/widget/ImageView;

    .line 271
    .line 272
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    .line 273
    .line 274
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeContainer:Landroid/widget/FrameLayout;

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    .line 277
    .line 278
    if-eqz p2, :cond_6

    .line 279
    .line 280
    iget-object p2, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 281
    .line 282
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;

    .line 283
    .line 284
    invoke-direct {v6, p1, p0, v5}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {p2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 288
    .line 289
    .line 290
    :cond_6
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 312
    .line 313
    if-ne p2, v0, :cond_7

    .line 314
    .line 315
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 316
    .line 317
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 318
    .line 319
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 324
    .line 325
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 326
    .line 327
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    goto :goto_3

    .line 332
    :cond_7
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 333
    .line 334
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 335
    .line 336
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 341
    .line 342
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 343
    .line 344
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    :goto_3
    div-int/2addr p2, v0

    .line 349
    div-int/2addr p1, v0

    .line 350
    invoke-static {p0, v5, p2, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    div-int/lit16 p1, p1, 0x400

    .line 359
    .line 360
    new-instance p2, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string p1, "KB"

    .line 369
    .line 370
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    const-string p2, "getBlurBitmap "

    .line 378
    .line 379
    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperAppliedOnLock(Landroid/content/Context;)Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-eqz p1, :cond_a

    .line 403
    .line 404
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 411
    .line 412
    .line 413
    move-result p2

    .line 414
    if-eqz p2, :cond_9

    .line 415
    .line 416
    const/16 p2, 0x10

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_9
    const/4 p2, 0x4

    .line 420
    :goto_4
    new-instance v2, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    .line 421
    .line 422
    or-int/2addr p2, v0

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    invoke-direct {v2, p1, p2, v3}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    .line 428
    .line 429
    .line 430
    const-string p1, "infinity"

    .line 431
    .line 432
    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getContentType()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-eqz p1, :cond_a

    .line 441
    .line 442
    const-wide/16 p1, 0x64

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_a
    const-wide/16 p1, 0x0

    .line 446
    .line 447
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    .line 448
    .line 449
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;

    .line 450
    .line 451
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeWallpaperView:Landroid/widget/ImageView;

    .line 452
    .line 453
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeContainer:Landroid/widget/FrameLayout;

    .line 454
    .line 455
    invoke-direct {v3, v2, v4, v5}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v3, p1, p2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    .line 460
    .line 461
    const-string/jumbo p1, "updateViews() call semSendWallpaperCommand."

    .line 462
    .line 463
    .line 464
    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    .line 468
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    new-instance p2, Landroid/os/Bundle;

    .line 478
    .line 479
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 480
    .line 481
    .line 482
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 483
    .line 484
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    .line 485
    .line 486
    const-string/jumbo v1, "stateBackupRequestId"

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string/jumbo p0, "samsung.android.wallpaper.restorerunningstate"

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, v0, p0, p2}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 496
    .line 497
    .line 498
    :cond_b
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 499
    .line 500
    return-object p0
.end method
