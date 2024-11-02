.class public final Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static volatile sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    sget-object v1, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    .line 8
    .line 9
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->getSimpleDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "diagnosticsAgree"

    .line 14
    .line 15
    const-string v3, "N"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    const-string v10, "eventId"

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :try_start_1
    const-string v2, "deviceId"

    .line 27
    .line 28
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    iget-object v2, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v2, "networkMode"

    .line 39
    .line 40
    iget-boolean v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v2, "status"

    .line 46
    .line 47
    iget v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v2, "retryCount"

    .line 53
    .line 54
    iget v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v2, "serviceId"

    .line 60
    .line 61
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string v2, "serviceVersion"

    .line 67
    .line 68
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string v2, "serviceAgreeType"

    .line 74
    .line 75
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v2, "logPath"

    .line 81
    .line 82
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v2, "s3Path"

    .line 88
    .line 89
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v2, "sdkType"

    .line 95
    .line 96
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v2, "sdkVersion"

    .line 102
    .line 103
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    const-string v2, "serviceDefinedKey"

    .line 109
    .line 110
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    const-string v2, "errorCode"

    .line 116
    .line 117
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    .line 121
    .line 122
    const-string v2, "description"

    .line 123
    .line 124
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    const-string v2, "relayClientType"

    .line 130
    .line 131
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    const-string v2, "relayClientVersion"

    .line 137
    .line 138
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v2, "extension"

    .line 144
    .line 145
    iget-object v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v2, "timestamp"

    .line 151
    .line 152
    iget-wide v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    .line 153
    .line 154
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string v2, "expirationTime"

    .line 158
    .line 159
    iget-wide v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    .line 160
    .line 161
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    new-instance v2, Lorg/json/JSONObject;

    .line 165
    .line 166
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v3, "eventInfo"

    .line 170
    .line 171
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    move-object v6, v1

    .line 176
    goto :goto_1

    .line 177
    :catch_1
    const-string v1, "JSONException occurred making event object"

    .line 178
    .line 179
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_0
    const/4 v6, 0x0

    .line 183
    :goto_1
    new-instance v11, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    .line 184
    .line 185
    const-string v3, "/v2/eventreport"

    .line 186
    .line 187
    const-string v4, "POST"

    .line 188
    .line 189
    iget-object v5, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 190
    .line 191
    move-object v1, v11

    .line 192
    move-object/from16 v2, p0

    .line 193
    .line 194
    invoke-direct/range {v1 .. v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-eqz v1, :cond_18

    .line 202
    .line 203
    iget v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 204
    .line 205
    const/16 v3, 0xc8

    .line 206
    .line 207
    const-string v5, "upload retry count over - delete LogFile"

    .line 208
    .line 209
    const-string v6, "/"

    .line 210
    .line 211
    if-ne v2, v3, :cond_10

    .line 212
    .line 213
    const-string v0, "succeed to connect to report event"

    .line 214
    .line 215
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 224
    .line 225
    const-string v1, "preSignedURL"

    .line 226
    .line 227
    new-instance v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;

    .line 228
    .line 229
    invoke-direct {v2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;-><init>()V

    .line 230
    .line 231
    .line 232
    :try_start_2
    new-instance v11, Lorg/json/JSONObject;

    .line 233
    .line 234
    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_1

    .line 242
    .line 243
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->eventId:Ljava/lang/String;

    .line 248
    .line 249
    :cond_1
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iput-object v0, v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->preSignedURL:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :catch_2
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 263
    .line 264
    const-string v1, "JSONException occurred while parsing event response"

    .line 265
    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_2
    :goto_2
    iget-object v0, v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->eventId:Ljava/lang/String;

    .line 270
    .line 271
    iput-object v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 272
    .line 273
    iget-object v0, v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->preSignedURL:Ljava/lang/String;

    .line 274
    .line 275
    iput-object v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 278
    .line 279
    .line 280
    move-result-wide v0

    .line 281
    const-wide/32 v10, 0x5265c00

    .line 282
    .line 283
    .line 284
    add-long/2addr v0, v10

    .line 285
    iput-wide v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    .line 286
    .line 287
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/FileUploadClient;

    .line 299
    .line 300
    iget-object v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    .line 301
    .line 302
    invoke-direct {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/FileUploadClient;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v2, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v2, "close?"

    .line 330
    .line 331
    const/4 v11, 0x0

    .line 332
    iget-object v12, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/FileUploadClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 333
    .line 334
    if-nez v12, :cond_3

    .line 335
    .line 336
    const/4 v10, -0x1

    .line 337
    goto/16 :goto_c

    .line 338
    .line 339
    :cond_3
    :try_start_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 340
    .line 341
    .line 342
    move-result-object v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 343
    :try_start_4
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 344
    .line 345
    invoke-direct {v14, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 346
    .line 347
    .line 348
    :try_start_5
    new-instance v15, Ljava/io/FileInputStream;

    .line 349
    .line 350
    new-instance v0, Ljava/io/File;

    .line 351
    .line 352
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 356
    .line 357
    .line 358
    :try_start_6
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 359
    .line 360
    invoke-direct {v9, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 361
    .line 362
    .line 363
    const/16 v0, 0x400

    .line 364
    .line 365
    :try_start_7
    new-array v10, v0, [B

    .line 366
    .line 367
    :goto_3
    invoke-virtual {v9, v10, v11, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-lez v4, :cond_4

    .line 372
    .line 373
    invoke-virtual {v14, v10, v11, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :cond_4
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 378
    .line 379
    .line 380
    :try_start_8
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 381
    .line 382
    .line 383
    move-result v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 384
    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 385
    .line 386
    .line 387
    if-eqz v13, :cond_5

    .line 388
    .line 389
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 390
    .line 391
    .line 392
    :cond_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 399
    .line 400
    .line 401
    goto/16 :goto_c

    .line 402
    .line 403
    :catch_3
    move-exception v0

    .line 404
    goto :goto_4

    .line 405
    :catch_4
    move-exception v0

    .line 406
    const/4 v10, -0x1

    .line 407
    :goto_4
    sget-object v4, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 408
    .line 409
    new-instance v9, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    goto :goto_b

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    goto/16 :goto_d

    .line 417
    .line 418
    :catch_5
    move-exception v0

    .line 419
    goto :goto_8

    .line 420
    :catchall_1
    move-exception v0

    .line 421
    const/4 v9, 0x0

    .line 422
    goto/16 :goto_d

    .line 423
    .line 424
    :catch_6
    move-exception v0

    .line 425
    const/4 v9, 0x0

    .line 426
    goto :goto_8

    .line 427
    :catchall_2
    move-exception v0

    .line 428
    move-object v9, v14

    .line 429
    const/4 v15, 0x0

    .line 430
    const/16 v16, 0x0

    .line 431
    .line 432
    goto/16 :goto_e

    .line 433
    .line 434
    :catch_7
    move-exception v0

    .line 435
    goto :goto_7

    .line 436
    :catchall_3
    move-exception v0

    .line 437
    goto :goto_5

    .line 438
    :catch_8
    move-exception v0

    .line 439
    goto :goto_6

    .line 440
    :catchall_4
    move-exception v0

    .line 441
    const/4 v13, 0x0

    .line 442
    :goto_5
    move-object v1, v0

    .line 443
    const/4 v9, 0x0

    .line 444
    const/4 v15, 0x0

    .line 445
    const/16 v16, 0x0

    .line 446
    .line 447
    goto/16 :goto_f

    .line 448
    .line 449
    :catch_9
    move-exception v0

    .line 450
    const/4 v13, 0x0

    .line 451
    :goto_6
    const/4 v14, 0x0

    .line 452
    :goto_7
    const/4 v9, 0x0

    .line 453
    const/4 v15, 0x0

    .line 454
    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 455
    .line 456
    .line 457
    :try_start_b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 458
    .line 459
    .line 460
    move-result v10
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 461
    if-eqz v14, :cond_6

    .line 462
    .line 463
    :try_start_c
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 464
    .line 465
    .line 466
    goto :goto_9

    .line 467
    :catch_a
    move-exception v0

    .line 468
    goto :goto_a

    .line 469
    :cond_6
    :goto_9
    if-eqz v13, :cond_7

    .line 470
    .line 471
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 472
    .line 473
    .line 474
    :cond_7
    if-eqz v9, :cond_8

    .line 475
    .line 476
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 477
    .line 478
    .line 479
    :cond_8
    if-eqz v15, :cond_9

    .line 480
    .line 481
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 482
    .line 483
    .line 484
    :cond_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 485
    .line 486
    .line 487
    goto :goto_c

    .line 488
    :catch_b
    move-exception v0

    .line 489
    const/4 v10, -0x1

    .line 490
    :goto_a
    sget-object v4, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 491
    .line 492
    new-instance v9, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    :goto_b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    :goto_c
    if-ne v10, v3, :cond_a

    .line 511
    .line 512
    iget-object v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 513
    .line 514
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    const-string v0, "succeed to connect to upload file"

    .line 518
    .line 519
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    new-instance v0, Ljava/io/File;

    .line 523
    .line 524
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 528
    .line 529
    .line 530
    iput v3, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 531
    .line 532
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v7, v8, v11}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReportAfterLogUpload(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_12

    .line 547
    .line 548
    :cond_a
    const-string v0, "Failed to connect to upload file"

    .line 549
    .line 550
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 554
    .line 555
    add-int/lit8 v0, v0, 0x1

    .line 556
    .line 557
    iput v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 558
    .line 559
    const/4 v1, 0x3

    .line 560
    if-ge v0, v1, :cond_b

    .line 561
    .line 562
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_12

    .line 574
    .line 575
    :cond_b
    invoke-static {v5}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    iget-object v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->deleteFiles(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const/16 v0, 0x12e

    .line 610
    .line 611
    iput v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 612
    .line 613
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 622
    .line 623
    .line 624
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-static/range {p1 .. p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_12

    .line 640
    .line 641
    :goto_d
    move-object/from16 v16, v9

    .line 642
    .line 643
    move-object v9, v14

    .line 644
    :goto_e
    move-object v1, v0

    .line 645
    :goto_f
    :try_start_d
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 646
    .line 647
    .line 648
    if-eqz v9, :cond_c

    .line 649
    .line 650
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 651
    .line 652
    .line 653
    :cond_c
    if-eqz v13, :cond_d

    .line 654
    .line 655
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 656
    .line 657
    .line 658
    :cond_d
    if-eqz v16, :cond_e

    .line 659
    .line 660
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 661
    .line 662
    .line 663
    :cond_e
    if-eqz v15, :cond_f

    .line 664
    .line 665
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 666
    .line 667
    .line 668
    :cond_f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 669
    .line 670
    .line 671
    goto :goto_10

    .line 672
    :catch_c
    move-exception v0

    .line 673
    sget-object v3, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 674
    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    :goto_10
    throw v1

    .line 694
    :cond_10
    invoke-static {v7, v1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    if-eqz v2, :cond_12

    .line 699
    .line 700
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    .line 701
    .line 702
    .line 703
    const-string v1, "Retry event report"

    .line 704
    .line 705
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const/4 v1, 0x3

    .line 709
    if-ge v0, v1, :cond_11

    .line 710
    .line 711
    add-int/lit8 v0, v0, 0x1

    .line 712
    .line 713
    invoke-static {v7, v8, v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_12

    .line 717
    .line 718
    :cond_11
    iget v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 719
    .line 720
    add-int/lit8 v0, v0, 0x1

    .line 721
    .line 722
    iput v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 723
    .line 724
    if-lt v0, v1, :cond_18

    .line 725
    .line 726
    const/16 v0, 0x12f

    .line 727
    .line 728
    iput v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 729
    .line 730
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 739
    .line 740
    .line 741
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static/range {p1 .. p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_12

    .line 757
    .line 758
    :cond_12
    iget v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 759
    .line 760
    const/16 v2, 0x191

    .line 761
    .line 762
    if-ne v2, v0, :cond_13

    .line 763
    .line 764
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 765
    .line 766
    if-eqz v0, :cond_13

    .line 767
    .line 768
    const-string v3, "4403"

    .line 769
    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    if-eqz v0, :cond_13

    .line 775
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const-string v1, "Unauthorized error code : "

    .line 779
    .line 780
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    iget-object v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    .line 784
    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const/16 v0, 0x192

    .line 796
    .line 797
    iput v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 798
    .line 799
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 808
    .line 809
    .line 810
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static/range {p1 .. p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_12

    .line 826
    .line 827
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    const-string v3, "failed to connect to report event : "

    .line 830
    .line 831
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    iget v3, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 835
    .line 836
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    iget v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 847
    .line 848
    iget v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 849
    .line 850
    add-int/lit8 v1, v1, 0x1

    .line 851
    .line 852
    iput v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    .line 853
    .line 854
    const/4 v3, 0x3

    .line 855
    if-ge v1, v3, :cond_14

    .line 856
    .line 857
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 866
    .line 867
    .line 868
    goto :goto_12

    .line 869
    :cond_14
    const/16 v1, 0x190

    .line 870
    .line 871
    if-eq v0, v1, :cond_17

    .line 872
    .line 873
    if-eq v0, v2, :cond_16

    .line 874
    .line 875
    const/16 v1, 0x1f4

    .line 876
    .line 877
    if-eq v0, v1, :cond_15

    .line 878
    .line 879
    const/16 v0, 0x131

    .line 880
    .line 881
    iput v0, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 882
    .line 883
    goto :goto_11

    .line 884
    :cond_15
    iput v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 885
    .line 886
    goto :goto_11

    .line 887
    :cond_16
    iput v2, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 888
    .line 889
    goto :goto_11

    .line 890
    :cond_17
    iput v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 891
    .line 892
    :goto_11
    invoke-static {v5}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .line 899
    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    iget-object v1, v8, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    .line 915
    .line 916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->deleteFiles(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    invoke-virtual {v0, v8}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    .line 935
    .line 936
    .line 937
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-static/range {p1 .. p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    .line 950
    .line 951
    .line 952
    :cond_18
    :goto_12
    return-void
.end method

.method public static getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    .line 25
    .line 26
    return-object v0
.end method

.method public static refreshPolicy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    const-string v9, "uploadFile"

    .line 8
    .line 9
    const-string v10, "maxFileSize"

    .line 10
    .line 11
    const-string v11, "maxFileCount"

    .line 12
    .line 13
    const-string v12, "pollingInterval"

    .line 14
    .line 15
    const-string v0, "needed_version"

    .line 16
    .line 17
    const-string v1, "0"

    .line 18
    .line 19
    invoke-static {v6, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-string v0, "Needed policy version is invalid"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v13, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    .line 36
    .line 37
    const-string v2, "/v2/policy"

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "?policyVersion="

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v6, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "&currentPolicyVersion="

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v14, "version"

    .line 59
    .line 60
    invoke-static {v6, v14, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "&dmaVersion=ged&tmcc="

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->getTmcc(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, "&smcc="

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->getSmcc(Landroid/content/Context;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "GET"

    .line 96
    .line 97
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    .line 98
    .line 99
    const-string v5, "x6g1q14r77"

    .line 100
    .line 101
    move-object v0, v13

    .line 102
    move-object/from16 v1, p0

    .line 103
    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_1a

    .line 112
    .line 113
    iget v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 114
    .line 115
    const/16 v2, 0xc8

    .line 116
    .line 117
    if-ne v1, v2, :cond_18

    .line 118
    .line 119
    const-string v1, "succeed to connect to refresh policy"

    .line 120
    .line 121
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;

    .line 132
    .line 133
    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;-><init>()V

    .line 134
    .line 135
    .line 136
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->version:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->pollingInterval:Ljava/lang/String;

    .line 152
    .line 153
    const-string v0, "defaultPolicySet"

    .line 154
    .line 155
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v5, 0x0

    .line 160
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 161
    .line 162
    .line 163
    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const v13, -0xe8370e3

    .line 165
    .line 166
    .line 167
    const-string v3, "policyId"

    .line 168
    .line 169
    const-string v15, "value"

    .line 170
    .line 171
    if-ge v5, v8, :cond_8

    .line 172
    .line 173
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eq v4, v13, :cond_3

    .line 186
    .line 187
    const v13, 0x4d4a9121    # 2.124068E8f

    .line 188
    .line 189
    .line 190
    if-eq v4, v13, :cond_2

    .line 191
    .line 192
    const v13, 0x5b28c3ef

    .line 193
    .line 194
    .line 195
    if-eq v4, v13, :cond_1

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_4

    .line 203
    .line 204
    const/4 v13, 0x2

    .line 205
    goto :goto_2

    .line 206
    :cond_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_4

    .line 211
    .line 212
    const/4 v13, 0x1

    .line 213
    goto :goto_2

    .line 214
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_4

    .line 219
    .line 220
    const/4 v13, 0x0

    .line 221
    goto :goto_2

    .line 222
    :cond_4
    :goto_1
    const/4 v13, -0x1

    .line 223
    :goto_2
    if-eqz v13, :cond_7

    .line 224
    .line 225
    const/4 v3, 0x1

    .line 226
    if-eq v13, v3, :cond_6

    .line 227
    .line 228
    const/4 v3, 0x2

    .line 229
    if-eq v13, v3, :cond_5

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_5
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iput-object v3, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->defaultMaxFileCount:Ljava/lang/String;

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iput-object v3, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->defaultMaxFileSize:Ljava/lang/String;

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_7
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    iput-object v3, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->defaultUploadFile:Ljava/lang/String;

    .line 251
    .line 252
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_8
    const-string v0, "services"

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const/4 v2, 0x0

    .line 262
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-ge v2, v4, :cond_17

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    const-string v5, "serviceId"

    .line 273
    .line 274
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_16

    .line 283
    .line 284
    const-string v5, "policySet"

    .line 285
    .line 286
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    const/4 v5, 0x0

    .line 291
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-ge v5, v8, :cond_16

    .line 296
    .line 297
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v16

    .line 309
    if-nez v16, :cond_14

    .line 310
    .line 311
    move-object/from16 v16, v0

    .line 312
    .line 313
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    move-object/from16 v17, v3

    .line 318
    .line 319
    const v3, -0xe8370e3

    .line 320
    .line 321
    .line 322
    if-eq v0, v3, :cond_b

    .line 323
    .line 324
    const v3, 0x4d4a9121    # 2.124068E8f

    .line 325
    .line 326
    .line 327
    if-eq v0, v3, :cond_a

    .line 328
    .line 329
    const v3, 0x5b28c3ef

    .line 330
    .line 331
    .line 332
    if-eq v0, v3, :cond_9

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_9
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_c

    .line 340
    .line 341
    const/4 v0, 0x2

    .line 342
    goto :goto_7

    .line 343
    :cond_a
    const v3, 0x5b28c3ef

    .line 344
    .line 345
    .line 346
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_c

    .line 351
    .line 352
    const/4 v0, 0x1

    .line 353
    goto :goto_7

    .line 354
    :cond_b
    const v3, 0x5b28c3ef

    .line 355
    .line 356
    .line 357
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    if-eqz v0, :cond_c

    .line 362
    .line 363
    const/4 v0, 0x0

    .line 364
    goto :goto_7

    .line 365
    :cond_c
    :goto_6
    const/4 v0, -0x1

    .line 366
    :goto_7
    const-string v13, "errorCode"

    .line 367
    .line 368
    const-string v3, "serviceVersion"

    .line 369
    .line 370
    if-eqz v0, :cond_11

    .line 371
    .line 372
    move-object/from16 v18, v4

    .line 373
    .line 374
    const/4 v4, 0x1

    .line 375
    if-eq v0, v4, :cond_e

    .line 376
    .line 377
    const/4 v4, 0x2

    .line 378
    if-eq v0, v4, :cond_d

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_d
    :try_start_2
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_15

    .line 386
    .line 387
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileCountValue:Ljava/lang/String;

    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_e
    const/4 v4, 0x2

    .line 395
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_f

    .line 400
    .line 401
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileSizeValue:Ljava/lang/String;

    .line 406
    .line 407
    :cond_f
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_10

    .line 412
    .line 413
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileSizeServiceVersion:Ljava/lang/String;

    .line 418
    .line 419
    :cond_10
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_15

    .line 424
    .line 425
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileSizeErrorCode:Ljava/lang/String;

    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_11
    move-object/from16 v18, v4

    .line 433
    .line 434
    const/4 v4, 0x2

    .line 435
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_12

    .line 440
    .line 441
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->uploadFileValue:Ljava/lang/String;

    .line 446
    .line 447
    :cond_12
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_13

    .line 452
    .line 453
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->uploadFileServiceVersion:Ljava/lang/String;

    .line 458
    .line 459
    :cond_13
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_15

    .line 464
    .line 465
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iput-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->uploadFileErrorCode:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_14
    move-object/from16 v16, v0

    .line 473
    .line 474
    move-object/from16 v17, v3

    .line 475
    .line 476
    move-object/from16 v18, v4

    .line 477
    .line 478
    const/4 v4, 0x2

    .line 479
    :cond_15
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 480
    .line 481
    move-object/from16 v0, v16

    .line 482
    .line 483
    move-object/from16 v3, v17

    .line 484
    .line 485
    move-object/from16 v4, v18

    .line 486
    .line 487
    const v13, -0xe8370e3

    .line 488
    .line 489
    .line 490
    goto/16 :goto_5

    .line 491
    .line 492
    :cond_16
    move-object/from16 v16, v0

    .line 493
    .line 494
    move-object/from16 v17, v3

    .line 495
    .line 496
    const/4 v4, 0x2

    .line 497
    add-int/lit8 v2, v2, 0x1

    .line 498
    .line 499
    move-object/from16 v0, v16

    .line 500
    .line 501
    move-object/from16 v3, v17

    .line 502
    .line 503
    const v13, -0xe8370e3

    .line 504
    .line 505
    .line 506
    goto/16 :goto_4

    .line 507
    .line 508
    :catch_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 509
    .line 510
    const-string v2, "JSONException occurred while parsing policy"

    .line 511
    .line 512
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    :cond_17
    const-string v0, "uploadFileValue"

    .line 516
    .line 517
    const-string v2, ""

    .line 518
    .line 519
    invoke-static {v6, v0, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const-string v3, "uploadFileServiceVersion"

    .line 523
    .line 524
    invoke-static {v6, v3, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const-string v4, "uploadFileErrorCode"

    .line 528
    .line 529
    invoke-static {v6, v4, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    const-string v5, "maxFileSizeValue"

    .line 533
    .line 534
    invoke-static {v6, v5, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    const-string v7, "maxFileSizeServiceVersion"

    .line 538
    .line 539
    invoke-static {v6, v7, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    const-string v8, "maxFileSizeErrorCode"

    .line 543
    .line 544
    invoke-static {v6, v8, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    const-string v13, "maxFileCountValue"

    .line 548
    .line 549
    invoke-static {v6, v13, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->version:Ljava/lang/String;

    .line 553
    .line 554
    invoke-static {v6, v14, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->pollingInterval:Ljava/lang/String;

    .line 558
    .line 559
    invoke-static {v6, v12, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->defaultUploadFile:Ljava/lang/String;

    .line 563
    .line 564
    invoke-static {v6, v9, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->defaultMaxFileSize:Ljava/lang/String;

    .line 568
    .line 569
    invoke-static {v6, v10, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->defaultMaxFileCount:Ljava/lang/String;

    .line 573
    .line 574
    invoke-static {v6, v11, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->uploadFileValue:Ljava/lang/String;

    .line 578
    .line 579
    invoke-static {v6, v0, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->uploadFileServiceVersion:Ljava/lang/String;

    .line 583
    .line 584
    invoke-static {v6, v3, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->uploadFileErrorCode:Ljava/lang/String;

    .line 588
    .line 589
    invoke-static {v6, v4, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileSizeValue:Ljava/lang/String;

    .line 593
    .line 594
    invoke-static {v6, v5, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileSizeServiceVersion:Ljava/lang/String;

    .line 598
    .line 599
    invoke-static {v6, v7, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileSizeErrorCode:Ljava/lang/String;

    .line 603
    .line 604
    invoke-static {v6, v8, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->maxFileCountValue:Ljava/lang/String;

    .line 608
    .line 609
    invoke-static {v6, v13, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    goto :goto_9

    .line 613
    :cond_18
    invoke-static {v6, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_19

    .line 618
    .line 619
    invoke-static/range {p0 .. p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    .line 620
    .line 621
    .line 622
    const-string v0, "Retry refresh policy"

    .line 623
    .line 624
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    const/4 v0, 0x3

    .line 628
    if-ge v8, v0, :cond_1a

    .line 629
    .line 630
    const/4 v0, 0x1

    .line 631
    add-int/2addr v0, v8

    .line 632
    invoke-static {v6, v7, v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshPolicy(Landroid/content/Context;Ljava/lang/String;I)V

    .line 633
    .line 634
    .line 635
    goto :goto_9

    .line 636
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const-string v2, "Failed to connect to refresh policy : "

    .line 639
    .line 640
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 644
    .line 645
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    :cond_1a
    :goto_9
    return-void
.end method

.method public static refreshToken(Landroid/content/Context;)V
    .locals 11

    .line 1
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;

    .line 2
    .line 3
    const-string v1, "/v2/common/authtoken"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Failed to close()"

    .line 9
    .line 10
    iget-object v2, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 13
    .line 14
    const/16 v3, 0xc8

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-ne v5, v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :goto_0
    if-eqz v2, :cond_2

    .line 45
    .line 46
    :try_start_1
    const-string v5, "bufferedReader start"

    .line 47
    .line 48
    invoke-static {v5}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/16 v5, 0x80

    .line 52
    .line 53
    new-array v6, v5, [C

    .line 54
    .line 55
    new-instance v7, Ljava/lang/StringBuffer;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v8, Ljava/io/BufferedReader;

    .line 61
    .line 62
    new-instance v9, Ljava/io/InputStreamReader;

    .line 63
    .line 64
    const-string v10, "UTF-8"

    .line 65
    .line 66
    invoke-direct {v9, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_1
    const/4 v4, 0x0

    .line 73
    :try_start_2
    invoke-virtual {v8, v6, v4, v5}, Ljava/io/BufferedReader;->read([CII)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    const/4 v10, -0x1

    .line 78
    if-eq v9, v10, :cond_1

    .line 79
    .line 80
    invoke-virtual {v7, v6, v4, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const-string v4, "bufferedReader end"

    .line 85
    .line 86
    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iput-object v4, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v5, "JSON = "

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v5, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 115
    .line 116
    .line 117
    move-object v4, v8

    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception v4

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    :try_start_3
    const-string v5, "in is null"

    .line 122
    .line 123
    invoke-static {v5}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_2
    if-eqz v4, :cond_3

    .line 127
    .line 128
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    .line 130
    .line 131
    :cond_3
    if-eqz v2, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :catch_1
    move-exception v5

    .line 138
    move-object v8, v4

    .line 139
    move-object v4, v5

    .line 140
    goto :goto_3

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    move-object v2, v4

    .line 143
    goto :goto_7

    .line 144
    :catch_2
    move-exception v2

    .line 145
    move-object v8, v4

    .line 146
    move-object v4, v2

    .line 147
    move-object v2, v8

    .line 148
    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v4, " failed to getInputStream()"

    .line 157
    .line 158
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 166
    .line 167
    .line 168
    if-eqz v8, :cond_4

    .line 169
    .line 170
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 171
    .line 172
    .line 173
    :cond_4
    if-eqz v2, :cond_5

    .line 174
    .line 175
    :goto_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :catch_3
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    :goto_5
    if-eqz v0, :cond_7

    .line 183
    .line 184
    :try_start_7
    iget v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 185
    .line 186
    if-ne v1, v3, :cond_6

    .line 187
    .line 188
    const-string v1, "succeed to connect to get JWT"

    .line 189
    .line 190
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/util/ParsingUtils;->parseTokenResponse(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/TokenResponse;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/TokenResponse;->token:Ljava/lang/String;

    .line 205
    .line 206
    const-string v1, "JWT_TOKEN"

    .line 207
    .line 208
    invoke-static {p0, v1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v1, "failed to connect to get JWT : "

    .line 218
    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 223
    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :catch_4
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    :goto_6
    return-void

    .line 244
    :catchall_2
    move-exception p0

    .line 245
    move-object v4, v8

    .line 246
    :goto_7
    if-eqz v4, :cond_8

    .line 247
    .line 248
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 249
    .line 250
    .line 251
    :cond_8
    if-eqz v2, :cond_9

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 254
    .line 255
    .line 256
    goto :goto_8

    .line 257
    :catch_5
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_8
    throw p0
.end method

.method public static resultReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Result;I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "eventId"

    .line 9
    .line 10
    iget-object v2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->eventId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "clientStatusCode"

    .line 16
    .line 17
    iget v2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->clientStatusCode:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "resultInfo"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string v0, "JSONException occurred making result object"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    move-object v6, v0

    .line 41
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    .line 42
    .line 43
    const-string v3, "/v2/eventreport/result"

    .line 44
    .line 45
    const-string v4, "POST"

    .line 46
    .line 47
    iget-object v5, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->serviceId:Ljava/lang/String;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    move-object v2, p0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 61
    .line 62
    const/16 v2, 0xc8

    .line 63
    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    .line 66
    const-string p2, "succeed to connect to report result"

    .line 67
    .line 68
    invoke-static {p2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iget p1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->id:I

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    filled-new-array {p1}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "id=?"

    .line 95
    .line 96
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    .line 98
    const-string v0, "Result"

    .line 99
    .line 100
    invoke-virtual {p0, v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "Retry result report"

    .line 114
    .line 115
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 v0, 0x3

    .line 119
    if-ge p2, v0, :cond_2

    .line 120
    .line 121
    add-int/lit8 p2, p2, 0x1

    .line 122
    .line 123
    invoke-static {p0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Result;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p1, "Failed to connect to report result : "

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget p1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    :goto_1
    return-void
.end method

.method public static resultReportAfterLogUpload(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "eventId"

    .line 9
    .line 10
    iget-object v2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "clientStatusCode"

    .line 16
    .line 17
    iget v2, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "resultInfo"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string v0, "JSONException occurred making result object"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    move-object v6, v0

    .line 41
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    .line 42
    .line 43
    const-string v3, "/v2/eventreport/result"

    .line 44
    .line 45
    const-string v4, "POST"

    .line 46
    .line 47
    iget-object v5, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    move-object v2, p0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 61
    .line 62
    const/16 v2, 0xc8

    .line 63
    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    .line 66
    const-string p0, "succeed to connect to report result after log upload"

    .line 67
    .line 68
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "Retry result report after log upload"

    .line 87
    .line 88
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x3

    .line 92
    if-ge p2, v0, :cond_2

    .line 93
    .line 94
    add-int/lit8 p2, p2, 0x1

    .line 95
    .line 96
    invoke-static {p0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReportAfterLogUpload(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p1, "failed to connect to report result after log upload: "

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget p1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    return-void
.end method

.method public static serviceRegister(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;I)V
    .locals 11

    .line 1
    const-string v0, "documentId"

    .line 2
    .line 3
    sget-object v1, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->getSimpleDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "diagnosticsAgree"

    .line 11
    .line 12
    const-string v4, "N"

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-object v2, v1

    .line 19
    :goto_0
    const-string v3, "status"

    .line 20
    .line 21
    const-string v4, "service"

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v6, Lorg/json/JSONArray;

    .line 31
    .line 32
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v7, "serviceId"

    .line 36
    .line 37
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v7, "deviceId"

    .line 43
    .line 44
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->deviceId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string v7, "serviceVersion"

    .line 50
    .line 51
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceVersion:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v7, "serviceAgreeType"

    .line 57
    .line 58
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceAgreeType:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v7, "sdkType"

    .line 64
    .line 65
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkType:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v7, "sdkVersion"

    .line 71
    .line 72
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkVersion:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    iget v7, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    .line 78
    .line 79
    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    const-string v7, "trackingId"

    .line 83
    .line 84
    iget-object v8, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->trackingId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    new-instance v5, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v6, "deviceInfo"

    .line 101
    .line 102
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    goto :goto_1

    .line 107
    :catch_1
    const-string v2, "JSONException occurred making service object"

    .line 108
    .line 109
    invoke-static {v2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    :goto_1
    move-object v10, v1

    .line 113
    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    .line 114
    .line 115
    const-string v7, "/v2/common/serviceregistration"

    .line 116
    .line 117
    const-string v8, "POST"

    .line 118
    .line 119
    sget-object v2, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    .line 120
    .line 121
    const-string v9, "x6g1q14r77"

    .line 122
    .line 123
    move-object v5, v1

    .line 124
    move-object v6, p0

    .line 125
    invoke-direct/range {v5 .. v10}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_c

    .line 133
    .line 134
    iget v2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 135
    .line 136
    const/4 v5, 0x1

    .line 137
    const/16 v6, 0xc8

    .line 138
    .line 139
    const/4 v7, 0x3

    .line 140
    if-ne v2, v6, :cond_a

    .line 141
    .line 142
    const-string p2, "succeed to connect to register service"

    .line 143
    .line 144
    invoke-static {p2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {p2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p2, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 155
    .line 156
    const-string v1, "errorMessage"

    .line 157
    .line 158
    const-string v2, "errorCode"

    .line 159
    .line 160
    const-string v6, "statusCode"

    .line 161
    .line 162
    const-string v8, "id"

    .line 163
    .line 164
    new-instance v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;

    .line 165
    .line 166
    invoke-direct {v9}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;-><init>()V

    .line 167
    .line 168
    .line 169
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    .line 170
    .line 171
    invoke-direct {v10, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const/4 v4, 0x0

    .line 179
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-ge v4, v10, :cond_6

    .line 184
    .line 185
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_5

    .line 198
    .line 199
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_1

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iput-object p2, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->documentId:Ljava/lang/String;

    .line 214
    .line 215
    :cond_1
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_2

    .line 220
    .line 221
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    :cond_2
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_3

    .line 229
    .line 230
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iput-object p2, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->statusCode:Ljava/lang/String;

    .line 235
    .line 236
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    if-eqz p2, :cond_4

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iput-object p2, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->errorCode:Ljava/lang/String;

    .line 247
    .line 248
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-eqz p2, :cond_6

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iput-object p1, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->errorMessage:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :catch_2
    sget-object p1, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 265
    .line 266
    const-string p2, "JSONException occurred while parsing service response"

    .line 267
    .line 268
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    :cond_6
    :goto_3
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    new-instance p1, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    .line 276
    .line 277
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->context:Landroid/content/Context;

    .line 278
    .line 279
    invoke-direct {p1, p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    iget-object p0, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->statusCode:Ljava/lang/String;

    .line 283
    .line 284
    const-string p2, "Y"

    .line 285
    .line 286
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    iget-object p1, p1, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    .line 291
    .line 292
    if-eqz p0, :cond_7

    .line 293
    .line 294
    iget-object p0, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->documentId:Ljava/lang/String;

    .line 295
    .line 296
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    .line 306
    .line 307
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :cond_7
    iget-object p0, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->errorCode:Ljava/lang/String;

    .line 321
    .line 322
    const-string p2, "1100"

    .line 323
    .line 324
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    if-eqz p0, :cond_8

    .line 329
    .line 330
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    const/4 p1, 0x2

    .line 335
    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_8
    iget-object p0, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->errorCode:Ljava/lang/String;

    .line 344
    .line 345
    const-string p2, "1101"

    .line 346
    .line 347
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    if-eqz p0, :cond_9

    .line 352
    .line 353
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-interface {p0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string p1, "ErrorCode = "

    .line 368
    .line 369
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object p1, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->errorCode:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    new-instance p0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string p1, "ErrorMessage = "

    .line 387
    .line 388
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object p1, v9, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->errorMessage:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_a
    invoke-static {p0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_b

    .line 409
    .line 410
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    .line 411
    .line 412
    .line 413
    const-string v0, "Retry service registration"

    .line 414
    .line 415
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    if-ge p2, v7, :cond_c

    .line 419
    .line 420
    add-int/2addr p2, v5

    .line 421
    invoke-static {p0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->serviceRegister(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;I)V

    .line 422
    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    const-string p1, "failed to connect to register service : "

    .line 428
    .line 429
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget p1, v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 433
    .line 434
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_c
    :goto_4
    return-void
.end method
