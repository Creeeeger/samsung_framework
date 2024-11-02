.class public final Lcom/android/systemui/pluginlock/PluginLockInstanceState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mDbCacheData:Ljava/lang/String;

.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public mAllowedNumber:I

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

.field public final mGson:Lcom/google/gson/Gson;

.field public mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field public mIsDestroyed:Z

.field public final mMode:I

.field public mPackageName:Ljava/lang/String;

.field public mTimeStamp:J

.field public final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 8

    .line 1
    const-string v0, "PluginLockInstanceState mPackageName["

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    .line 11
    .line 12
    const-string v3, "PluginLockInstanceState"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "PluginLockInstanceState: "

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 46
    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    iput-wide v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 50
    .line 51
    new-instance p2, Lcom/google/gson/GsonBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-boolean v2, p2, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    .line 63
    .line 64
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 65
    .line 66
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->getServiceType()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_0

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, ":"

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 102
    .line 103
    const-string p1, "PluginLockInstanceState"

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p3, "]"

    .line 116
    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    const-string p2, "PluginLockInstanceState"

    .line 130
    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v0, "PluginLockInstanceState Throwable "

    .line 134
    .line 135
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 153
    .line 154
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const/16 p2, 0x44c

    .line 159
    .line 160
    if-lt p1, p2, :cond_a

    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 163
    .line 164
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->getMode()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    .line 173
    .line 174
    const-string p2, "initInstanceData() instanceData:"

    .line 175
    .line 176
    const-string p3, "initInstanceData() strData:"

    .line 177
    .line 178
    const-string v0, "initInstanceData list = "

    .line 179
    .line 180
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    if-nez v2, :cond_1

    .line 183
    .line 184
    goto/16 :goto_6

    .line 185
    .line 186
    :cond_1
    sget-object v2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mLock:Ljava/lang/Object;

    .line 187
    .line 188
    monitor-enter v2

    .line 189
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "PluginLockInstanceState"

    .line 194
    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    const/16 v0, 0x2710

    .line 211
    .line 212
    const/4 v4, 0x2

    .line 213
    const/16 v5, 0xa

    .line 214
    .line 215
    if-eqz v3, :cond_6

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_2

    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    .line 226
    .line 227
    const-class v6, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 228
    .line 229
    invoke-virtual {p3, v6, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p3

    .line 233
    check-cast p3, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 234
    .line 235
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 236
    .line 237
    const-string v6, "PluginLockInstanceState"

    .line 238
    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p3, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {v3, v6, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {p3, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->contain(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    if-nez p2, :cond_5

    .line 267
    .line 268
    new-instance p2, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 269
    .line 270
    invoke-direct {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    .line 271
    .line 272
    .line 273
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 274
    .line 275
    invoke-virtual {p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    if-ne p1, v1, :cond_3

    .line 284
    .line 285
    mul-int/2addr p2, v5

    .line 286
    add-int/2addr p2, v5

    .line 287
    iput p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_3
    if-ne p1, v4, :cond_4

    .line 291
    .line 292
    mul-int/2addr p2, v5

    .line 293
    add-int/2addr p2, v0

    .line 294
    iput p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 295
    .line 296
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 297
    .line 298
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 304
    .line 305
    iget p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 306
    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 312
    .line 313
    .line 314
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 315
    .line 316
    invoke-virtual {p3, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {p3, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 330
    .line 331
    if-eqz p1, :cond_9

    .line 332
    .line 333
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 345
    .line 346
    const-string v6, "PluginLockInstanceState"

    .line 347
    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v7, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p3

    .line 360
    invoke-virtual {p2, v6, p3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance p2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 364
    .line 365
    invoke-direct {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;-><init>()V

    .line 366
    .line 367
    .line 368
    new-instance p3, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 369
    .line 370
    invoke-direct {p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    .line 371
    .line 372
    .line 373
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 374
    .line 375
    if-ne p1, v1, :cond_7

    .line 376
    .line 377
    iput v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_7
    if-ne p1, v4, :cond_8

    .line 381
    .line 382
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 383
    .line 384
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {p3, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 390
    .line 391
    iget p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 392
    .line 393
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object p3

    .line 397
    invoke-virtual {p1, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 401
    .line 402
    invoke-virtual {p2, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    .line 406
    .line 407
    .line 408
    :cond_9
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    const-string p1, "PluginLockInstanceState"

    .line 410
    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string p3, "initInstanceData setAllowedNumber "

    .line 414
    .line 415
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 419
    .line 420
    invoke-static {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 424
    .line 425
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    iget p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 430
    .line 431
    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setAllowedNumber(I)V

    .line 432
    .line 433
    .line 434
    goto :goto_6

    .line 435
    :catchall_1
    move-exception p0

    .line 436
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 437
    throw p0

    .line 438
    :cond_a
    :goto_6
    const-string p1, "PluginLockInstanceState"

    .line 439
    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string p3, "mMode = "

    .line 443
    .line 444
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    .line 448
    .line 449
    invoke-static {p2, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "destroy() "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "PluginLockInstanceState"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setPanelView(Landroid/view/ViewGroup;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 50
    .line 51
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    .line 59
    .line 60
    return-void
.end method

.method public final getDbData()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mDbCacheData:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mDbCacheData:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    .line 16
    .line 17
    const-string v0, "key_plugin_lock_instance_data"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_1
    return-object p0
.end method

.method public final getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final hasEnabledPlugin(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    .line 6
    .line 7
    const-class v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 37
    .line 38
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_1
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return v0
.end method

.method public final isEnabledOtherScreen(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    return v1
.end method

.method public final isRecentInstance()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 4
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    .line 5
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecentInstance() true, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-string v2, "PluginLockInstanceState"

    .line 8
    invoke-static {v1, p0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public final isRecentInstance(I)Z
    .locals 9

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 15
    sget-boolean v6, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_0

    .line 16
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    invoke-virtual {v5, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 18
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    :goto_2
    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRecentInstance() true, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-string v1, "PluginLockInstanceState"

    .line 21
    invoke-static {v0, p0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return p1
.end method

.method public final setStateData(IZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-wide v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(ILjava/lang/Long;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setScreen(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final setTimeStamp(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 33
    .line 34
    .line 35
    :cond_2
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
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "null"

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", instance["

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, "]"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final updateDb()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    :cond_1
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;-><init>()V

    .line 6
    new-instance v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 7
    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/16 v3, 0xa

    .line 8
    iput v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/16 v3, 0x2710

    .line 9
    iput v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 10
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 12
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    .line 13
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 16
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 17
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    .line 18
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStampList(Ljava/util/List;)V

    .line 19
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setRecoverData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;)V

    .line 20
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getWhich()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setWhich(I)V

    .line 21
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update instance data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->setVersion()V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mDbCacheData:Ljava/lang/String;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v0, "key_plugin_lock_instance_data"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
