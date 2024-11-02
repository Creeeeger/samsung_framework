.class public final Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, [Ljava/lang/Void;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v3, "(Preview)"

    .line 10
    .line 11
    const-string v4, "KeyguardMotionWallpaper"

    .line 12
    .line 13
    iget-object v5, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 14
    .line 15
    sget v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v0, "/data/overlays/main_packages/"

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 28
    .line 29
    .line 30
    iget-boolean v7, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    const-string v8, "motion"

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    :try_start_1
    iput-object v8, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 40
    .line 41
    iget v9, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 42
    .line 43
    invoke-virtual {v7, v9}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iput-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v8, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 50
    .line 51
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ".apk"

    .line 62
    .line 63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v7, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    if-eqz v7, :cond_1

    .line 80
    .line 81
    :try_start_2
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    .line 99
    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v0, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    move-object v0, v6

    .line 119
    :goto_1
    iput-object v0, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    .line 120
    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    const-string v0, "mPkgResources == null"

    .line 124
    .line 125
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_1
    iget-object v0, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    .line 131
    .line 132
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 133
    .line 134
    const-string v8, "layout"

    .line 135
    .line 136
    iget-object v9, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-boolean v8, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 148
    .line 149
    if-eqz v8, :cond_2

    .line 150
    .line 151
    move-object v8, v3

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move-object v8, v2

    .line 154
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string/jumbo v8, "pkg name ("

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v8, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v8, ") xml name("

    .line 169
    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v8, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v8, ")"

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    if-nez v0, :cond_4

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-boolean v7, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 198
    .line 199
    if-eqz v7, :cond_3

    .line 200
    .line 201
    move-object v7, v3

    .line 202
    goto :goto_3

    .line 203
    :cond_3
    move-object v7, v2

    .line 204
    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v7, "ERROR - chosen xml name("

    .line 208
    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v5, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v5, ") resource is not exist !!!"

    .line 218
    .line 219
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_4
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    .line 231
    .line 232
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_5

    .line 237
    .line 238
    invoke-virtual {v5, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 242
    goto :goto_5

    .line 243
    :catch_1
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    :cond_5
    :goto_4
    move-object v0, v6

    .line 248
    :goto_5
    if-eqz v0, :cond_1c

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-lez v5, :cond_1c

    .line 255
    .line 256
    iget-object v5, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 257
    .line 258
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 259
    .line 260
    if-eqz v7, :cond_7

    .line 261
    .line 262
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-boolean v9, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 272
    .line 273
    if-eqz v9, :cond_6

    .line 274
    .line 275
    move-object v9, v3

    .line 276
    goto :goto_6

    .line 277
    :cond_6
    move-object v9, v2

    .line 278
    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v9, "collectOldBitmap: size = "

    .line 282
    .line 283
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    if-lez v7, :cond_7

    .line 297
    .line 298
    iget-object v7, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_7

    .line 309
    .line 310
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    check-cast v8, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 315
    .line 316
    iget-object v9, v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_7
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 323
    .line 324
    iput-object v0, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    iget-boolean v5, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 332
    .line 333
    if-eqz v5, :cond_8

    .line 334
    .line 335
    move-object v5, v3

    .line 336
    goto :goto_8

    .line 337
    :cond_8
    move-object v5, v2

    .line 338
    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v5, "BITMAP LOAD START "

    .line 342
    .line 343
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    iget-object v0, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_1c

    .line 367
    .line 368
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    move-object v7, v0

    .line 373
    check-cast v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 374
    .line 375
    iget v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->type:I

    .line 376
    .line 377
    const/4 v8, 0x1

    .line 378
    if-nez v0, :cond_c

    .line 379
    .line 380
    :try_start_4
    iget-object v0, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    .line 381
    .line 382
    iget-object v9, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    .line 383
    .line 384
    const-string v10, "drawable"

    .line 385
    .line 386
    iget-object v11, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v0, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-lez v0, :cond_9

    .line 393
    .line 394
    iget-object v9, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    .line 395
    .line 396
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 403
    .line 404
    .line 405
    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 406
    :try_start_5
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v9, v0, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 415
    .line 416
    goto/16 :goto_e

    .line 417
    .line 418
    :catch_2
    move-exception v0

    .line 419
    goto :goto_b

    .line 420
    :cond_9
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    iget-boolean v9, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 426
    .line 427
    if-eqz v9, :cond_a

    .line 428
    .line 429
    move-object v9, v3

    .line 430
    goto :goto_a

    .line 431
    :cond_a
    move-object v9, v2

    .line 432
    :goto_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v9, "Fail to get drawable"

    .line 436
    .line 437
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 445
    .line 446
    .line 447
    goto :goto_d

    .line 448
    :catch_3
    move-exception v0

    .line 449
    move-object v9, v6

    .line 450
    :goto_b
    new-instance v10, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    iget-boolean v11, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 456
    .line 457
    if-eqz v11, :cond_b

    .line 458
    .line 459
    move-object v11, v3

    .line 460
    goto :goto_c

    .line 461
    :cond_b
    move-object v11, v2

    .line 462
    :goto_c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v11, "loadDrawable exception"

    .line 466
    .line 467
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_c
    if-ne v0, v8, :cond_d

    .line 486
    .line 487
    new-instance v0, Ljava/io/File;

    .line 488
    .line 489
    iget-object v9, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    .line 490
    .line 491
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-eqz v9, :cond_1c

    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_1c

    .line 505
    .line 506
    :try_start_7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 507
    .line 508
    iget-object v9, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    .line 509
    .line 510
    iget-object v10, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    .line 511
    .line 512
    invoke-direct {v0, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 516
    .line 517
    .line 518
    move-result-object v9

    .line 519
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v9, v0, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 528
    .line 529
    goto :goto_e

    .line 530
    :catch_4
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_19

    .line 535
    .line 536
    :cond_d
    const/4 v9, 0x2

    .line 537
    if-ne v0, v9, :cond_e

    .line 538
    .line 539
    iput-object v6, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 540
    .line 541
    :cond_e
    :goto_d
    move-object v9, v6

    .line 542
    :goto_e
    iget-boolean v0, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 543
    .line 544
    if-eqz v0, :cond_f

    .line 545
    .line 546
    move-object v0, v3

    .line 547
    goto :goto_f

    .line 548
    :cond_f
    move-object v0, v2

    .line 549
    :goto_f
    const-string v10, "getMatrix"

    .line 550
    .line 551
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    if-eqz v9, :cond_19

    .line 559
    .line 560
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 561
    .line 562
    .line 563
    move-result v10

    .line 564
    if-eqz v10, :cond_10

    .line 565
    .line 566
    goto/16 :goto_15

    .line 567
    .line 568
    :cond_10
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    .line 569
    .line 570
    .line 571
    move-result v10

    .line 572
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 573
    .line 574
    .line 575
    move-result v9

    .line 576
    int-to-float v11, v10

    .line 577
    const/high16 v12, 0x40000000    # 2.0f

    .line 578
    .line 579
    div-float v13, v11, v12

    .line 580
    .line 581
    int-to-float v14, v9

    .line 582
    div-float v15, v14, v12

    .line 583
    .line 584
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 585
    .line 586
    .line 587
    iget v6, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 588
    .line 589
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 590
    .line 591
    .line 592
    iget v8, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 593
    .line 594
    mul-int v0, v10, v8

    .line 595
    .line 596
    mul-int v12, v6, v9

    .line 597
    .line 598
    if-le v0, v12, :cond_11

    .line 599
    .line 600
    int-to-float v0, v8

    .line 601
    div-float/2addr v0, v14

    .line 602
    goto :goto_10

    .line 603
    :cond_11
    int-to-float v0, v6

    .line 604
    div-float/2addr v0, v11

    .line 605
    :goto_10
    const/high16 v11, 0x3f800000    # 1.0f

    .line 606
    .line 607
    mul-float/2addr v0, v11

    .line 608
    iput v0, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCroppedScale:F

    .line 609
    .line 610
    int-to-float v12, v6

    .line 611
    mul-float/2addr v12, v11

    .line 612
    div-float/2addr v12, v0

    .line 613
    int-to-float v14, v8

    .line 614
    mul-float/2addr v14, v11

    .line 615
    div-float/2addr v14, v0

    .line 616
    const/high16 v11, 0x40000000    # 2.0f

    .line 617
    .line 618
    div-float v17, v12, v11

    .line 619
    .line 620
    sub-float v17, v13, v17

    .line 621
    .line 622
    const/16 v16, 0x0

    .line 623
    .line 624
    cmpg-float v18, v17, v16

    .line 625
    .line 626
    if-gez v18, :cond_12

    .line 627
    .line 628
    move-object/from16 v18, v2

    .line 629
    .line 630
    move/from16 v2, v16

    .line 631
    .line 632
    goto :goto_11

    .line 633
    :cond_12
    move-object/from16 v18, v2

    .line 634
    .line 635
    move/from16 v2, v17

    .line 636
    .line 637
    :goto_11
    div-float v11, v14, v11

    .line 638
    .line 639
    sub-float v11, v15, v11

    .line 640
    .line 641
    cmpg-float v17, v11, v16

    .line 642
    .line 643
    if-gez v17, :cond_13

    .line 644
    .line 645
    move-object/from16 v17, v3

    .line 646
    .line 647
    const/4 v11, 0x0

    .line 648
    goto :goto_12

    .line 649
    :cond_13
    move-object/from16 v17, v3

    .line 650
    .line 651
    :goto_12
    new-instance v3, Landroid/graphics/Matrix;

    .line 652
    .line 653
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3, v2, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 660
    .line 661
    .line 662
    move-object/from16 v19, v3

    .line 663
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    move-object/from16 v20, v5

    .line 667
    .line 668
    const-string/jumbo v5, "widthOrigin = "

    .line 669
    .line 670
    .line 671
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    const-string v5, "heightOrigin = "

    .line 687
    .line 688
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .line 700
    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    const-string/jumbo v5, "scale = "

    .line 704
    .line 705
    .line 706
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .line 718
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    const-string v3, "mCroppedScale:"

    .line 722
    .line 723
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    iget v3, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCroppedScale:F

    .line 727
    .line 728
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    const-string v3, "centerX = "

    .line 741
    .line 742
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    const-string v3, "centerY = "

    .line 758
    .line 759
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    const-string/jumbo v3, "startX = "

    .line 775
    .line 776
    .line 777
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .line 789
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    .line 791
    .line 792
    const-string/jumbo v3, "startY = "

    .line 793
    .line 794
    .line 795
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .line 807
    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string/jumbo v3, "width = "

    .line 811
    .line 812
    .line 813
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    const-string v3, "height = "

    .line 829
    .line 830
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .line 842
    .line 843
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_14

    .line 848
    .line 849
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    if-nez v0, :cond_14

    .line 854
    .line 855
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-ne v10, v0, :cond_14

    .line 860
    .line 861
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    if-ne v9, v0, :cond_14

    .line 866
    .line 867
    const-string v0, "It doesn\'t need to crop bitmap"

    .line 868
    .line 869
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    goto :goto_16

    .line 873
    :cond_14
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    const/4 v3, 0x1

    .line 878
    if-lt v0, v3, :cond_18

    .line 879
    .line 880
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    if-lt v0, v3, :cond_18

    .line 885
    .line 886
    if-lt v6, v3, :cond_18

    .line 887
    .line 888
    if-ge v8, v3, :cond_15

    .line 889
    .line 890
    goto :goto_14

    .line 891
    :cond_15
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    add-int/2addr v2, v0

    .line 900
    if-gt v2, v10, :cond_17

    .line 901
    .line 902
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    add-int/2addr v2, v0

    .line 911
    if-le v2, v9, :cond_16

    .line 912
    .line 913
    goto :goto_13

    .line 914
    :cond_16
    move-object/from16 v3, v19

    .line 915
    .line 916
    goto :goto_17

    .line 917
    :cond_17
    :goto_13
    const-string v0, "Calculated crop size error"

    .line 918
    .line 919
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .line 921
    .line 922
    goto :goto_16

    .line 923
    :cond_18
    :goto_14
    const-string v0, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    .line 924
    .line 925
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .line 927
    .line 928
    goto :goto_16

    .line 929
    :cond_19
    :goto_15
    move-object/from16 v18, v2

    .line 930
    .line 931
    move-object/from16 v17, v3

    .line 932
    .line 933
    move-object/from16 v20, v5

    .line 934
    .line 935
    :goto_16
    const/4 v3, 0x0

    .line 936
    :goto_17
    if-eqz v3, :cond_1b

    .line 937
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    .line 939
    .line 940
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .line 942
    .line 943
    iget-boolean v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 944
    .line 945
    if-eqz v2, :cond_1a

    .line 946
    .line 947
    move-object/from16 v2, v17

    .line 948
    .line 949
    goto :goto_18

    .line 950
    :cond_1a
    move-object/from16 v2, v18

    .line 951
    .line 952
    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    const-string v2, "loadWallpapers: matrix "

    .line 956
    .line 957
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .line 969
    .line 970
    iput-object v3, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 971
    .line 972
    :cond_1b
    iget-object v0, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 973
    .line 974
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    mul-int/lit8 v0, v0, 0x1e

    .line 979
    .line 980
    add-int/lit8 v2, v0, -0x3

    .line 981
    .line 982
    iput v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    .line 983
    .line 984
    add-int/lit8 v0, v0, 0x3

    .line 985
    .line 986
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 987
    .line 988
    const/4 v0, 0x0

    .line 989
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 990
    .line 991
    const/4 v0, 0x0

    .line 992
    invoke-virtual {v7, v0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 993
    .line 994
    .line 995
    move-object/from16 v3, v17

    .line 996
    .line 997
    move-object/from16 v2, v18

    .line 998
    .line 999
    move-object/from16 v5, v20

    .line 1000
    .line 1001
    const/4 v6, 0x0

    .line 1002
    goto/16 :goto_9

    .line 1003
    .line 1004
    :cond_1c
    :goto_19
    move-object v1, v6

    .line 1005
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string v0, "(Preview)"

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    const-string v2, "KeyguardMotionWallpaper"

    .line 12
    .line 13
    if-eqz p1, :cond_9

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 43
    .line 44
    iput-boolean v4, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 53
    .line 54
    iget-boolean v3, v3, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    move-object v3, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v3, v1

    .line 61
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, "BITMAP LOAD FINISH "

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 100
    .line 101
    iget-object v3, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 119
    .line 120
    iget-object v3, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :catch_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 127
    .line 128
    iget-boolean v3, v3, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 129
    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move-object v0, v1

    .line 134
    :goto_2
    const-string v1, "IndexOutOfBoundsException"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :catch_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 145
    .line 146
    iget-boolean v3, v3, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 147
    .line 148
    if-eqz v3, :cond_4

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    move-object v0, v1

    .line 152
    :goto_3
    const-string v1, "CloneNotSupportedException"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :goto_4
    move v0, p1

    .line 162
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v0, v1, :cond_5

    .line 171
    .line 172
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 181
    .line 182
    mul-int/lit8 v3, v0, 0x1e

    .line 183
    .line 184
    add-int/lit8 v5, v3, -0x3

    .line 185
    .line 186
    iput v5, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    .line 187
    .line 188
    add-int/lit8 v3, v3, 0x3

    .line 189
    .line 190
    iput v3, v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 191
    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 198
    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v3, "it = "

    .line 208
    .line 209
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move v1, p1

    .line 227
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_7

    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 238
    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v6, "layer "

    .line 242
    .line 243
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v6, v1, 0x1

    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v1, " "

    .line 252
    .line 253
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    const-string v5, "URL :"

    .line 261
    .line 262
    invoke-static {v1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-object v5, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 267
    .line 268
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v5, " / "

    .line 272
    .line 273
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const-string/jumbo v7, "type :"

    .line 281
    .line 282
    .line 283
    invoke-static {v1, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    iget v7, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->type:I

    .line 288
    .line 289
    invoke-static {v1, v7, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    const-string/jumbo v7, "stayPoint1 :"

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget v7, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    .line 301
    .line 302
    invoke-static {v1, v7, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string/jumbo v7, "stayPoint2 :"

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iget v3, v3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 314
    .line 315
    invoke-static {v1, v3, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const-string v3, "content = "

    .line 320
    .line 321
    invoke-static {v3, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    move v1, v6

    .line 325
    goto :goto_6

    .line 326
    :cond_6
    const-string v0, "layers = null"

    .line 327
    .line 328
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 332
    .line 333
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 334
    .line 335
    if-eqz v1, :cond_8

    .line 336
    .line 337
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-lez v0, :cond_8

    .line 344
    .line 345
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 346
    .line 347
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 356
    .line 357
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    .line 358
    .line 359
    invoke-interface {v1, p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;)V

    .line 360
    .line 361
    .line 362
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 363
    .line 364
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    .line 365
    .line 366
    .line 367
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 368
    .line 369
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;Z)V

    .line 372
    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_9
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 376
    .line 377
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 378
    .line 379
    if-eqz p1, :cond_a

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_a
    move-object v0, v1

    .line 383
    :goto_8
    const-string p1, "PARSE FAILED"

    .line 384
    .line 385
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 393
    .line 394
    const/4 p1, 0x2

    .line 395
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 396
    .line 397
    :goto_9
    return-void
.end method
