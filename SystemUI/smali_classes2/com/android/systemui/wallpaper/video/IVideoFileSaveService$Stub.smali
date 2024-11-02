.class public abstract Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 1
    const-string v0, "com.android.systemui.wallpaper.video.IVideoFileSaveService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_8

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    check-cast p4, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 41
    .line 42
    .line 43
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 44
    .line 45
    invoke-virtual {p0, p4, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoWallpaperAsOwnerWithFilename(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 58
    .line 59
    .line 60
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoLockscreenWallpaperAsOwnerWithFilename(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    .line 76
    .line 77
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->renameVideoFileWithFilename(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    .line 97
    .line 98
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_7

    .line 105
    .line 106
    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 107
    .line 108
    const/4 p4, 0x0

    .line 109
    if-eqz p2, :cond_1

    .line 110
    .line 111
    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 112
    .line 113
    if-nez p2, :cond_1

    .line 114
    .line 115
    move p2, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move p2, p4

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v2, 0x2

    .line 129
    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/16 v3, 0x12

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v3, Ljava/io/File;

    .line 140
    .line 141
    const-string v4, "/data/user_de/0/com.android.systemui/files"

    .line 142
    .line 143
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoWallpaperFileFilter:Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;

    .line 149
    .line 150
    invoke-virtual {v3, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    array-length v3, p0

    .line 155
    :goto_1
    if-ge p4, v3, :cond_6

    .line 156
    .line 157
    aget-object v4, p0, p4

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-nez v6, :cond_2

    .line 168
    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_5

    .line 174
    .line 175
    :cond_2
    if-eqz p2, :cond_3

    .line 176
    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-nez v6, :cond_3

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_3

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    const-string v7, "VideoFileCopyService"

    .line 195
    .line 196
    if-eqz v6, :cond_4

    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_4

    .line 203
    .line 204
    const-string v4, "deleteVideoFiles: "

    .line 205
    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    const-string v4, "deleteVideoFiles, fail: "

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_5
    :goto_2
    add-int/lit8 p4, p4, 0x1

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string p2, "This service must be run from the owner("

    .line 236
    .line 237
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p2, ")"

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p0

    .line 260
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 265
    .line 266
    .line 267
    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    .line 270
    .line 271
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 272
    .line 273
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->deleteVideoFileWithFilename(Ljava/lang/String;Z)Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 290
    .line 291
    .line 292
    move-result p4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    .line 295
    .line 296
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 297
    .line 298
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->isVideoFileExistsWithFilename(Ljava/lang/String;Z)Z

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 315
    .line 316
    .line 317
    move-result p4

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    .line 320
    .line 321
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 322
    .line 323
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFileDescriptorAsUserWithFilename(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_3

    .line 334
    .line 335
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 336
    .line 337
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Landroid/os/Bundle;

    .line 342
    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    .line 345
    .line 346
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 347
    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoWallpaperAsOwnerWithFilename(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :pswitch_8
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 356
    .line 357
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->setVideoLockscreenWallpaperAsOwnerWithFilename(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :pswitch_9
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 365
    .line 366
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->renameVideoFileWithFilename(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    .line 383
    .line 384
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 385
    .line 386
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->deleteVideoFileWithFilename(Ljava/lang/String;Z)Z

    .line 387
    .line 388
    .line 389
    move-result p0

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 394
    .line 395
    .line 396
    goto :goto_3

    .line 397
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    .line 403
    .line 404
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 405
    .line 406
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->isVideoFileExistsWithFilename(Ljava/lang/String;Z)Z

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 414
    .line 415
    .line 416
    goto :goto_3

    .line 417
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    .line 423
    .line 424
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 425
    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->getVideoFileDescriptorAsUserWithFilename(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 434
    .line 435
    .line 436
    goto :goto_3

    .line 437
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 442
    .line 443
    .line 444
    move-result p4

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    .line 451
    .line 452
    check-cast p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;

    .line 453
    .line 454
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    .line 455
    .line 456
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    .line 457
    .line 458
    iput p4, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    .line 459
    .line 460
    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    .line 461
    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    .line 464
    .line 465
    :goto_3
    return v1

    .line 466
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return v1

    .line 470
    nop

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
