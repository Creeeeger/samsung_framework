.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic $appIntent:Landroid/app/PendingIntent;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $desc:Landroid/media/MediaDescription;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$userId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v15, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    .line 5
    iget v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$userId:I

    .line 6
    .line 7
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    .line 8
    .line 9
    iget-object v10, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    .line 10
    .line 11
    iget-object v8, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v9, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move v0, v6

    .line 42
    :goto_1
    iget-object v7, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    const-string v11, "MediaDataManager"

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v0, "Description incomplete"

    .line 49
    .line 50
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto/16 :goto_a

    .line 57
    .line 58
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v12, "adding track for "

    .line 61
    .line 62
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v12, " from browser: "

    .line 69
    .line 70
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_3
    const/4 v11, 0x0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v13, v0

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object v13, v11

    .line 116
    :goto_2
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    iget-object v7, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 125
    .line 126
    if-nez v7, :cond_6

    .line 127
    .line 128
    :cond_5
    iget-object v7, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    :cond_6
    move-object v14, v7

    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    iget v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    const/4 v0, -0x1

    .line 141
    :goto_3
    move/from16 v16, v0

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    const-string v7, "android.media.IS_EXPLICIT"

    .line 150
    .line 151
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v17

    .line 155
    const-wide/16 v19, 0x1

    .line 156
    .line 157
    cmp-long v0, v17, v19

    .line 158
    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    move v0, v6

    .line 162
    goto :goto_4

    .line 163
    :cond_8
    move v0, v1

    .line 164
    :goto_4
    iget-object v7, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 165
    .line 166
    if-eqz v0, :cond_9

    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    sget-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_EXPLICIT_INDICATOR:Lcom/android/systemui/flags/ReleasedFlag;

    .line 177
    .line 178
    iget-object v12, v7, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 179
    .line 180
    check-cast v12, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 181
    .line 182
    invoke-virtual {v12, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    move/from16 v17, v6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_9
    move/from16 v17, v1

    .line 192
    .line 193
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_RESUME_PROGRESS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 202
    .line 203
    iget-object v1, v7, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 204
    .line 205
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_11

    .line 212
    .line 213
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-eqz v0, :cond_11

    .line 218
    .line 219
    const-string v1, "android.media.extra.PLAYBACK_STATUS"

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-nez v7, :cond_a

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    const-wide/16 v18, 0x0

    .line 233
    .line 234
    if-eqz v1, :cond_10

    .line 235
    .line 236
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 237
    .line 238
    if-eq v1, v6, :cond_c

    .line 239
    .line 240
    const/4 v0, 0x2

    .line 241
    if-eq v1, v0, :cond_b

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto :goto_7

    .line 249
    :cond_c
    const-string v1, "androidx.media.MediaItem.Extras.COMPLETION_PERCENTAGE"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eqz v6, :cond_f

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    cmpg-double v6, v0, v18

    .line 262
    .line 263
    if-gez v6, :cond_d

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_d
    cmpl-double v6, v0, v20

    .line 267
    .line 268
    if-lez v6, :cond_e

    .line 269
    .line 270
    move-wide/from16 v18, v20

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_e
    move-wide/from16 v18, v0

    .line 274
    .line 275
    :goto_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    goto :goto_7

    .line 280
    :cond_f
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 281
    .line 282
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    goto :goto_7

    .line 287
    :cond_10
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :goto_7
    move-object/from16 v18, v0

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_11
    :goto_8
    move-object/from16 v18, v11

    .line 295
    .line 296
    :goto_9
    invoke-virtual {v15, v10}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    iget-object v0, v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 301
    .line 302
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 308
    .line 309
    .line 310
    move-result-wide v11

    .line 311
    new-instance v6, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;

    .line 312
    .line 313
    move-object v0, v6

    .line 314
    move-object v1, v15

    .line 315
    move-object/from16 v22, v6

    .line 316
    .line 317
    move-object v6, v13

    .line 318
    move-object v13, v14

    .line 319
    move/from16 v14, v16

    .line 320
    .line 321
    move-object/from16 v23, v15

    .line 322
    .line 323
    move/from16 v15, v17

    .line 324
    .line 325
    move-object/from16 v16, v18

    .line 326
    .line 327
    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/models/player/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;JLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v0, v23

    .line 331
    .line 332
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 333
    .line 334
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 335
    .line 336
    move-object/from16 v1, v22

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 339
    .line 340
    .line 341
    :goto_a
    return-void
.end method
