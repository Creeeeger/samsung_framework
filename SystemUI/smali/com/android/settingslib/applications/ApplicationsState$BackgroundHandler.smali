.class public final Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIconLoaded:I

.field public mRunning:Z

.field public final mStatsObserver:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

.field public final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getCombinedSessionFlags(Ljava/util/List;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 22
    .line 23
    iget v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    .line 24
    .line 25
    or-int/2addr v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return v0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 24
    .line 25
    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 31
    .line 32
    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v3, v4

    .line 39
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->getCombinedSessionFlags(Ljava/util/List;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget v3, v0, Landroid/os/Message;->what:I

    .line 71
    .line 72
    const/4 v5, 0x5

    .line 73
    const/4 v6, 0x6

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x1

    .line 76
    const/high16 v9, 0x800000

    .line 77
    .line 78
    const/16 v10, 0x20

    .line 79
    .line 80
    const/4 v11, 0x3

    .line 81
    const/4 v12, 0x7

    .line 82
    const/16 v13, 0x8

    .line 83
    .line 84
    const/4 v14, 0x2

    .line 85
    const/4 v15, 0x4

    .line 86
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    goto/16 :goto_13

    .line 90
    .line 91
    :pswitch_0
    invoke-static {v2, v10}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2b

    .line 96
    .line 97
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 98
    .line 99
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 100
    .line 101
    monitor-enter v2

    .line 102
    move v0, v7

    .line 103
    :goto_2
    :try_start_1
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-ge v7, v3, :cond_3

    .line 112
    .line 113
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 114
    .line 115
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 122
    .line 123
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 124
    .line 125
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-nez v5, :cond_2

    .line 132
    .line 133
    new-instance v5, Ljava/io/File;

    .line 134
    .line 135
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    iget-wide v9, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->lastUpdated:J

    .line 143
    .line 144
    cmp-long v6, v4, v9

    .line 145
    .line 146
    if-eqz v6, :cond_2

    .line 147
    .line 148
    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->lastUpdated:J

    .line 149
    .line 150
    move v0, v8

    .line 151
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-eqz v0, :cond_2b

    .line 156
    .line 157
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 160
    .line 161
    const/16 v2, 0xa

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_2b

    .line 168
    .line 169
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    .line 175
    .line 176
    goto/16 :goto_13

    .line 177
    .line 178
    :catchall_0
    move-exception v0

    .line 179
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    throw v0

    .line 181
    :pswitch_1
    invoke-static {v2, v10}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/16 v2, 0x9

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 190
    .line 191
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 192
    .line 193
    monitor-enter v3

    .line 194
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const/4 v4, -0x6

    .line 199
    invoke-virtual {v0, v14, v4}, Ljava/util/Calendar;->add(II)V

    .line 200
    .line 201
    .line 202
    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 205
    .line 206
    .line 207
    move-result-wide v5

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    :goto_3
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 217
    .line 218
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-ge v7, v4, :cond_5

    .line 225
    .line 226
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 227
    .line 228
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 235
    .line 236
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 237
    .line 238
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 239
    .line 240
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Landroid/app/usage/UsageStats;

    .line 245
    .line 246
    if-eqz v5, :cond_4

    .line 247
    .line 248
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    .line 249
    .line 250
    .line 251
    move-result-wide v5

    .line 252
    iput-wide v5, v4, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->lastUsed:J

    .line 253
    .line 254
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_6

    .line 267
    .line 268
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 269
    .line 270
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :catchall_1
    move-exception v0

    .line 277
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    throw v0

    .line 279
    :cond_6
    :goto_4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    .line 281
    .line 282
    goto/16 :goto_13

    .line 283
    .line 284
    :pswitch_2
    invoke-static {v2, v15}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_f

    .line 289
    .line 290
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 291
    .line 292
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 293
    .line 294
    monitor-enter v2

    .line 295
    :try_start_5
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 298
    .line 299
    if-eqz v0, :cond_7

    .line 300
    .line 301
    monitor-exit v2

    .line 302
    return-void

    .line 303
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v3

    .line 307
    move v0, v7

    .line 308
    :goto_5
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 309
    .line 310
    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    if-ge v0, v10, :cond_d

    .line 317
    .line 318
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 319
    .line 320
    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 327
    .line 328
    iget-object v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 329
    .line 330
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 331
    .line 332
    invoke-static {v11, v9}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    if-eqz v11, :cond_c

    .line 337
    .line 338
    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    .line 339
    .line 340
    const-wide/16 v14, -0x1

    .line 341
    .line 342
    cmp-long v11, v11, v14

    .line 343
    .line 344
    if-eqz v11, :cond_8

    .line 345
    .line 346
    iget-boolean v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 347
    .line 348
    if-eqz v11, :cond_c

    .line 349
    .line 350
    :cond_8
    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 351
    .line 352
    const-wide/16 v13, 0x0

    .line 353
    .line 354
    cmp-long v0, v11, v13

    .line 355
    .line 356
    if-eqz v0, :cond_9

    .line 357
    .line 358
    const-wide/16 v13, 0x4e20

    .line 359
    .line 360
    sub-long v13, v3, v13

    .line 361
    .line 362
    cmp-long v0, v11, v13

    .line 363
    .line 364
    if-gez v0, :cond_b

    .line 365
    .line 366
    :cond_9
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 367
    .line 368
    if-nez v0, :cond_a

    .line 369
    .line 370
    iput-boolean v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 371
    .line 372
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 373
    .line 374
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 375
    .line 376
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-virtual {v0, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 385
    .line 386
    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 387
    .line 388
    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    .line 390
    .line 391
    :cond_a
    iput-wide v3, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 392
    .line 393
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 394
    .line 395
    iget-object v3, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 396
    .line 397
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 398
    .line 399
    iput-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 400
    .line 401
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 402
    .line 403
    iput-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 404
    .line 405
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 406
    .line 407
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    iput v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 412
    .line 413
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 414
    .line 415
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 416
    .line 417
    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$$ExternalSyntheticLambda0;

    .line 418
    .line 419
    invoke-direct {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    .line 424
    .line 425
    :cond_b
    monitor-exit v2

    .line 426
    return-void

    .line 427
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 428
    .line 429
    goto :goto_5

    .line 430
    :cond_d
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 431
    .line 432
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 433
    .line 434
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_e

    .line 439
    .line 440
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 441
    .line 442
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 443
    .line 444
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    .line 446
    .line 447
    iput-boolean v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 448
    .line 449
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 450
    .line 451
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 452
    .line 453
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v0, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 462
    .line 463
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 464
    .line 465
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    .line 467
    .line 468
    :cond_e
    monitor-exit v2

    .line 469
    goto :goto_6

    .line 470
    :catchall_2
    move-exception v0

    .line 471
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 472
    throw v0

    .line 473
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 474
    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    .line 483
    .line 484
    goto/16 :goto_13

    .line 485
    .line 486
    :pswitch_3
    invoke-static {v2, v14}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_15

    .line 491
    .line 492
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 493
    .line 494
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 495
    .line 496
    monitor-enter v2

    .line 497
    move v0, v7

    .line 498
    :goto_7
    :try_start_6
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 499
    .line 500
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-ge v7, v3, :cond_14

    .line 507
    .line 508
    if-ge v0, v14, :cond_14

    .line 509
    .line 510
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 511
    .line 512
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 519
    .line 520
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 521
    .line 522
    if-eqz v4, :cond_10

    .line 523
    .line 524
    iget-boolean v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 525
    .line 526
    if-nez v4, :cond_13

    .line 527
    .line 528
    :cond_10
    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 529
    :try_start_7
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 530
    .line 531
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 532
    .line 533
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 534
    .line 535
    invoke-virtual {v3, v5, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    if-eqz v4, :cond_12

    .line 540
    .line 541
    iget-boolean v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 542
    .line 543
    if-nez v4, :cond_11

    .line 544
    .line 545
    iput-boolean v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 546
    .line 547
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 548
    .line 549
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 550
    .line 551
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 560
    .line 561
    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 562
    .line 563
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    .line 565
    .line 566
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 567
    .line 568
    :cond_12
    monitor-exit v3

    .line 569
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 570
    .line 571
    goto :goto_7

    .line 572
    :catchall_3
    move-exception v0

    .line 573
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 574
    :try_start_8
    throw v0

    .line 575
    :cond_14
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 576
    iget v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    .line 577
    .line 578
    add-int/2addr v2, v0

    .line 579
    iput v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    .line 580
    .line 581
    if-lt v0, v14, :cond_15

    .line 582
    .line 583
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    .line 585
    .line 586
    goto/16 :goto_13

    .line 587
    .line 588
    :catchall_4
    move-exception v0

    .line 589
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 590
    throw v0

    .line 591
    :cond_15
    iget v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    .line 592
    .line 593
    if-lez v0, :cond_16

    .line 594
    .line 595
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 596
    .line 597
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 598
    .line 599
    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-nez v0, :cond_16

    .line 604
    .line 605
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 606
    .line 607
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 608
    .line 609
    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 610
    .line 611
    .line 612
    :cond_16
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    .line 614
    .line 615
    goto/16 :goto_13

    .line 616
    .line 617
    :pswitch_4
    if-ne v3, v15, :cond_17

    .line 618
    .line 619
    invoke-static {v2, v13}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-nez v3, :cond_18

    .line 624
    .line 625
    :cond_17
    iget v3, v0, Landroid/os/Message;->what:I

    .line 626
    .line 627
    if-ne v3, v5, :cond_1d

    .line 628
    .line 629
    const/16 v3, 0x10

    .line 630
    .line 631
    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-eqz v2, :cond_1d

    .line 636
    .line 637
    :cond_18
    new-instance v2, Landroid/content/Intent;

    .line 638
    .line 639
    const-string v3, "android.intent.action.MAIN"

    .line 640
    .line 641
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 642
    .line 643
    .line 644
    iget v3, v0, Landroid/os/Message;->what:I

    .line 645
    .line 646
    if-ne v3, v15, :cond_19

    .line 647
    .line 648
    const-string v3, "android.intent.category.LAUNCHER"

    .line 649
    .line 650
    goto :goto_8

    .line 651
    :cond_19
    const-string v3, "android.intent.category.LEANBACK_LAUNCHER"

    .line 652
    .line 653
    :goto_8
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    .line 655
    .line 656
    move v3, v7

    .line 657
    :goto_9
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 658
    .line 659
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 660
    .line 661
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    if-ge v3, v4, :cond_1c

    .line 666
    .line 667
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 668
    .line 669
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 670
    .line 671
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    sget-object v9, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 676
    .line 677
    const v10, 0xc0200

    .line 678
    .line 679
    .line 680
    invoke-virtual {v9, v2, v10, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 681
    .line 682
    .line 683
    move-result-object v9

    .line 684
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 685
    .line 686
    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 687
    .line 688
    monitor-enter v10

    .line 689
    :try_start_a
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 690
    .line 691
    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 692
    .line 693
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v11

    .line 697
    check-cast v11, Ljava/util/HashMap;

    .line 698
    .line 699
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 700
    .line 701
    .line 702
    move-result v13

    .line 703
    move v14, v7

    .line 704
    :goto_a
    if-ge v14, v13, :cond_1b

    .line 705
    .line 706
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v16

    .line 710
    move-object/from16 v6, v16

    .line 711
    .line 712
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 713
    .line 714
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 715
    .line 716
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 717
    .line 718
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v17

    .line 722
    move-object/from16 v5, v17

    .line 723
    .line 724
    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 725
    .line 726
    if-eqz v5, :cond_1a

    .line 727
    .line 728
    iput-boolean v8, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 729
    .line 730
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 731
    .line 732
    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 733
    .line 734
    goto :goto_b

    .line 735
    :cond_1a
    const-string v5, "ApplicationsState"

    .line 736
    .line 737
    new-instance v6, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .line 741
    .line 742
    const-string v8, "Cannot find pkg: "

    .line 743
    .line 744
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v7, " on user "

    .line 751
    .line 752
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .line 764
    .line 765
    :goto_b
    add-int/lit8 v14, v14, 0x1

    .line 766
    .line 767
    const/4 v5, 0x5

    .line 768
    const/4 v6, 0x6

    .line 769
    const/4 v7, 0x0

    .line 770
    const/4 v8, 0x1

    .line 771
    goto :goto_a

    .line 772
    :cond_1b
    monitor-exit v10

    .line 773
    add-int/lit8 v3, v3, 0x1

    .line 774
    .line 775
    const/4 v5, 0x5

    .line 776
    const/4 v6, 0x6

    .line 777
    const/4 v7, 0x0

    .line 778
    const/4 v8, 0x1

    .line 779
    goto :goto_9

    .line 780
    :catchall_5
    move-exception v0

    .line 781
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 782
    throw v0

    .line 783
    :cond_1c
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 784
    .line 785
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 786
    .line 787
    invoke-virtual {v2, v12}, Landroid/os/Handler;->hasMessages(I)Z

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    if-nez v2, :cond_1d

    .line 792
    .line 793
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 794
    .line 795
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 796
    .line 797
    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 798
    .line 799
    .line 800
    :cond_1d
    iget v0, v0, Landroid/os/Message;->what:I

    .line 801
    .line 802
    if-ne v0, v15, :cond_1e

    .line 803
    .line 804
    const/4 v0, 0x5

    .line 805
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 806
    .line 807
    .line 808
    goto/16 :goto_13

    .line 809
    .line 810
    :cond_1e
    const/4 v2, 0x0

    .line 811
    iput v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    .line 812
    .line 813
    const/4 v2, 0x6

    .line 814
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 815
    .line 816
    .line 817
    goto/16 :goto_13

    .line 818
    .line 819
    :pswitch_5
    move v3, v8

    .line 820
    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    if-eqz v0, :cond_22

    .line 825
    .line 826
    new-instance v0, Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .line 830
    .line 831
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 832
    .line 833
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 834
    .line 835
    .line 836
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 837
    .line 838
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 839
    .line 840
    monitor-enter v2

    .line 841
    :try_start_b
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 842
    .line 843
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 844
    .line 845
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    const/4 v7, 0x0

    .line 850
    :goto_c
    if-ge v7, v3, :cond_21

    .line 851
    .line 852
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 853
    .line 854
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 855
    .line 856
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    check-cast v4, Ljava/util/HashMap;

    .line 861
    .line 862
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    :cond_1f
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 867
    .line 868
    .line 869
    move-result v6

    .line 870
    if-eqz v6, :cond_20

    .line 871
    .line 872
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v6

    .line 876
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 877
    .line 878
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 879
    .line 880
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 881
    .line 882
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v6

    .line 886
    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 887
    .line 888
    if-eqz v6, :cond_1f

    .line 889
    .line 890
    const/4 v8, 0x1

    .line 891
    iput-boolean v8, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    .line 892
    .line 893
    goto :goto_d

    .line 894
    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 895
    .line 896
    goto :goto_c

    .line 897
    :cond_21
    monitor-exit v2

    .line 898
    goto :goto_e

    .line 899
    :catchall_6
    move-exception v0

    .line 900
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 901
    throw v0

    .line 902
    :cond_22
    :goto_e
    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 903
    .line 904
    .line 905
    goto/16 :goto_13

    .line 906
    .line 907
    :pswitch_6
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 908
    .line 909
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 910
    .line 911
    monitor-enter v2

    .line 912
    const/4 v3, 0x0

    .line 913
    const/4 v4, 0x0

    .line 914
    :goto_f
    :try_start_c
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 915
    .line 916
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 917
    .line 918
    check-cast v0, Ljava/util/ArrayList;

    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    if-ge v3, v0, :cond_28

    .line 925
    .line 926
    const/4 v5, 0x6

    .line 927
    if-ge v4, v5, :cond_28

    .line 928
    .line 929
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 930
    .line 931
    if-nez v0, :cond_23

    .line 932
    .line 933
    const/4 v5, 0x1

    .line 934
    iput-boolean v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 935
    .line 936
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 937
    .line 938
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 939
    .line 940
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 941
    .line 942
    .line 943
    move-result-object v6

    .line 944
    const/4 v7, 0x6

    .line 945
    invoke-virtual {v0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 950
    .line 951
    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 952
    .line 953
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 954
    .line 955
    .line 956
    goto :goto_10

    .line 957
    :cond_23
    const/4 v5, 0x1

    .line 958
    :goto_10
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 959
    .line 960
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 961
    .line 962
    check-cast v0, Ljava/util/ArrayList;

    .line 963
    .line 964
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    move-object v6, v0

    .line 969
    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 970
    .line 971
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 972
    .line 973
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 974
    .line 975
    .line 976
    move-result v7

    .line 977
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 978
    .line 979
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 980
    .line 981
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    if-eqz v0, :cond_24

    .line 986
    .line 987
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 988
    .line 989
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 990
    .line 991
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    check-cast v0, Ljava/util/HashMap;

    .line 996
    .line 997
    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 998
    .line 999
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    if-nez v0, :cond_24

    .line 1004
    .line 1005
    add-int/lit8 v4, v4, 0x1

    .line 1006
    .line 1007
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1008
    .line 1009
    invoke-static {v0, v6}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetEntryLocked(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1010
    .line 1011
    .line 1012
    goto :goto_11

    .line 1013
    :cond_24
    :try_start_d
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1014
    .line 1015
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 1016
    .line 1017
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    check-cast v0, Ljava/util/HashMap;

    .line 1022
    .line 1023
    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1024
    .line 1025
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1030
    .line 1031
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1032
    .line 1033
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v8

    .line 1037
    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1038
    .line 1039
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v8

    .line 1043
    if-nez v8, :cond_25

    .line 1044
    .line 1045
    new-instance v8, Ljava/io/File;

    .line 1046
    .line 1047
    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1048
    .line 1049
    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    iput-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1053
    .line 1054
    const-string v0, "ApplicationsState"

    .line 1055
    .line 1056
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    const-string v10, "MSG_LOAD_ENTRIES Update info.apkFile : "

    .line 1062
    .line 1063
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1067
    .line 1068
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    const-string v10, " , "

    .line 1072
    .line 1073
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1077
    .line 1078
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v8

    .line 1085
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1086
    .line 1087
    .line 1088
    goto :goto_11

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1091
    .line 1092
    .line 1093
    :cond_25
    :goto_11
    if-eqz v7, :cond_27

    .line 1094
    .line 1095
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1096
    .line 1097
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 1098
    .line 1099
    const/4 v7, 0x0

    .line 1100
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-ltz v0, :cond_26

    .line 1105
    .line 1106
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1107
    .line 1108
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 1109
    .line 1110
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    check-cast v0, Ljava/util/HashMap;

    .line 1115
    .line 1116
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1117
    .line 1118
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1123
    .line 1124
    if-eqz v0, :cond_27

    .line 1125
    .line 1126
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1127
    .line 1128
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1129
    .line 1130
    invoke-static {v7, v9}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v7

    .line 1134
    if-nez v7, :cond_27

    .line 1135
    .line 1136
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1137
    .line 1138
    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 1139
    .line 1140
    const/4 v8, 0x0

    .line 1141
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v7

    .line 1145
    check-cast v7, Ljava/util/HashMap;

    .line 1146
    .line 1147
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1148
    .line 1149
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1153
    .line 1154
    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 1155
    .line 1156
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    goto :goto_12

    .line 1160
    :cond_26
    move v8, v7

    .line 1161
    goto :goto_12

    .line 1162
    :cond_27
    const/4 v8, 0x0

    .line 1163
    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 1164
    .line 1165
    goto/16 :goto_f

    .line 1166
    .line 1167
    :cond_28
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1168
    const/4 v2, 0x6

    .line 1169
    if-lt v4, v2, :cond_29

    .line 1170
    .line 1171
    invoke-virtual {v1, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1172
    .line 1173
    .line 1174
    goto :goto_13

    .line 1175
    :cond_29
    const-string v0, "ApplicationsState"

    .line 1176
    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    const-string v3, "MSG_LOAD_ENTRIES took : "

    .line 1180
    .line 1181
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1185
    .line 1186
    .line 1187
    move-result-wide v3

    .line 1188
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1189
    .line 1190
    iget-wide v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mAppLoadStartTime:J

    .line 1191
    .line 1192
    sub-long/2addr v3, v5

    .line 1193
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v2

    .line 1200
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .line 1202
    .line 1203
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1204
    .line 1205
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1206
    .line 1207
    invoke-virtual {v0, v13}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v0

    .line 1211
    if-nez v0, :cond_2a

    .line 1212
    .line 1213
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1214
    .line 1215
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1216
    .line 1217
    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1218
    .line 1219
    .line 1220
    :cond_2a
    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1221
    .line 1222
    .line 1223
    goto :goto_13

    .line 1224
    :catchall_7
    move-exception v0

    .line 1225
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1226
    throw v0

    .line 1227
    :cond_2b
    :goto_13
    return-void

    .line 1228
    :catchall_8
    move-exception v0

    .line 1229
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1230
    throw v0

    .line 1231
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
