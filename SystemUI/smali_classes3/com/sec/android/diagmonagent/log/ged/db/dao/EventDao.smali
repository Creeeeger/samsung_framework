.class public final Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final MAX_KEEP_TIME:J

.field public final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    const-wide/16 v1, 0x1e

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->MAX_KEEP_TIME:J

    .line 13
    .line 14
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    const-string v2, "Event"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    move-object v4, p1

    .line 15
    move-object v5, p2

    .line 16
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    :try_start_1
    const-string p1, "cursor is null"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v0

    .line 33
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    new-instance p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string p2, "id"

    .line 45
    .line 46
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->id:I

    .line 55
    .line 56
    const-string p2, "serviceId"

    .line 57
    .line 58
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 67
    .line 68
    const-string p2, "deviceId"

    .line 69
    .line 70
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    .line 79
    .line 80
    const-string p2, "serviceVersion"

    .line 81
    .line 82
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    .line 91
    .line 92
    const-string p2, "serviceAgreeType"

    .line 93
    .line 94
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    .line 103
    .line 104
    const-string p2, "sdkVersion"

    .line 105
    .line 106
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    .line 115
    .line 116
    const-string p2, "sdkType"

    .line 117
    .line 118
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    .line 127
    .line 128
    const-string p2, "serviceDefinedKey"

    .line 129
    .line 130
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    .line 139
    .line 140
    const-string p2, "errorCode"

    .line 141
    .line 142
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    .line 151
    .line 152
    const-string p2, "logPath"

    .line 153
    .line 154
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 163
    .line 164
    const-string p2, "description"

    .line 165
    .line 166
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    .line 175
    .line 176
    const-string p2, "relayClientVersion"

    .line 177
    .line 178
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    .line 187
    .line 188
    const-string p2, "relayClientType"

    .line 189
    .line 190
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    .line 199
    .line 200
    const-string p2, "extension"

    .line 201
    .line 202
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    .line 211
    .line 212
    const-string p2, "networkMode"

    .line 213
    .line 214
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    const/4 v1, 0x1

    .line 223
    if-ne p2, v1, :cond_2

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    const/4 v1, 0x0

    .line 227
    :goto_1
    iput-boolean v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    .line 228
    .line 229
    const-string p2, "memory"

    .line 230
    .line 231
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->memory:Ljava/lang/String;

    .line 240
    .line 241
    const-string p2, "storage"

    .line 242
    .line 243
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->storage:Ljava/lang/String;

    .line 252
    .line 253
    const-string p2, "status"

    .line 254
    .line 255
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    iput p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 264
    .line 265
    const-string p2, "retryCount"

    .line 266
    .line 267
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    iput p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 276
    .line 277
    const-string p2, "eventId"

    .line 278
    .line 279
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 288
    .line 289
    const-string p2, "s3Path"

    .line 290
    .line 291
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    iput-object p2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    .line 300
    .line 301
    const-string p2, "timestamp"

    .line 302
    .line 303
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 308
    .line 309
    .line 310
    move-result-wide v1

    .line 311
    iput-wide v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    .line 312
    .line 313
    const-string p2, "expirationTime"

    .line 314
    .line 315
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v1

    .line 323
    iput-wide v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    .line 324
    .line 325
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_3
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 331
    .line 332
    .line 333
    return-object v0

    .line 334
    :catchall_0
    move-exception p1

    .line 335
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 336
    :catchall_1
    move-exception p2

    .line 337
    if-eqz p0, :cond_4

    .line 338
    .line 339
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :catchall_2
    move-exception p0

    .line 344
    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    :cond_4
    :goto_2
    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 348
    :catch_0
    const-string p0, "fail to get events"

    .line 349
    .line 350
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-object v0
.end method

.method public final update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "serviceId"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "deviceId"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "serviceVersion"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "serviceAgreeType"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "sdkVersion"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "sdkType"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "serviceDefinedKey"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "errorCode"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "logPath"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    .line 70
    .line 71
    const-string v2, "description"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "relayClientVersion"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    .line 84
    .line 85
    const-string v2, "relayClientType"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    .line 91
    .line 92
    const-string v2, "extension"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v2, "networkMode"

    .line 104
    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->memory:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "memory"

    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->storage:Ljava/lang/String;

    .line 116
    .line 117
    const-string v2, "storage"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "status"

    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    .line 132
    .line 133
    iget v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "retryCount"

    .line 140
    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 145
    .line 146
    const-string v2, "eventId"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    .line 152
    .line 153
    const-string v2, "s3Path"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-wide v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    .line 159
    .line 160
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "timestamp"

    .line 165
    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    .line 168
    .line 169
    iget-wide v1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    .line 170
    .line 171
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v2, "expirationTime"

    .line 176
    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    .line 179
    .line 180
    iget p1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->id:I

    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    filled-new-array {p1}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 191
    .line 192
    const-string v1, "Event"

    .line 193
    .line 194
    const-string v2, "id=?"

    .line 195
    .line 196
    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    return-void
.end method
