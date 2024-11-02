.class public final Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

.field public final synthetic val$multiSplitTasks:Landroid/util/SparseIntArray;

.field public final synthetic val$splitTasks:Landroid/util/SparseIntArray;

.field public final synthetic val$taskSplitBoundsMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->this$0:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$splitTasks:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$multiSplitTasks:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$taskSplitBoundsMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->this$0:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$splitTasks:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$multiSplitTasks:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$taskSplitBoundsMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "GroupedRecentTaskSaveInfo"

    .line 15
    .line 16
    new-instance v5, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 27
    .line 28
    new-instance v8, Ljava/io/FileReader;

    .line 29
    .line 30
    iget-object v9, v1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentSaveFile:Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v6, "grouped_recent_tasks"

    .line 58
    .line 59
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const/4 v8, 0x0

    .line 64
    move v9, v8

    .line 65
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-ge v9, v10, :cond_1

    .line 70
    .line 71
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-static {v10}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->jsonToGroupedRecentTaskSaveInfo(Lorg/json/JSONObject;)Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v1, v10}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->addGroupedRecentTaskSaveInfo(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v9, v9, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_c

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_b

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 109
    .line 110
    const/4 v6, -0x1

    .line 111
    filled-new-array {v6, v6, v6}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 116
    .line 117
    aput v10, v9, v8

    .line 118
    .line 119
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 120
    .line 121
    const/4 v11, 0x1

    .line 122
    aput v10, v9, v11

    .line 123
    .line 124
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 125
    .line 126
    const/4 v12, 0x2

    .line 127
    if-eqz v10, :cond_2

    .line 128
    .line 129
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 130
    .line 131
    aput v10, v9, v12

    .line 132
    .line 133
    :cond_2
    move v10, v8

    .line 134
    :goto_3
    const/4 v13, 0x3

    .line 135
    if-ge v10, v13, :cond_5

    .line 136
    .line 137
    aget v13, v9, v10

    .line 138
    .line 139
    invoke-virtual {v2, v13, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    if-ne v13, v6, :cond_6

    .line 144
    .line 145
    if-ge v10, v12, :cond_3

    .line 146
    .line 147
    aget v13, v9, v10

    .line 148
    .line 149
    if-ne v13, v6, :cond_3

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_3
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 153
    .line 154
    if-eqz v13, :cond_4

    .line 155
    .line 156
    aget v13, v9, v10

    .line 157
    .line 158
    invoke-virtual {v3, v13, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    if-eq v13, v6, :cond_4

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move v11, v8

    .line 169
    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    .line 170
    .line 171
    const-string/jumbo v5, "skip saved task to load"

    .line 172
    .line 173
    .line 174
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 179
    .line 180
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 181
    .line 182
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    .line 184
    .line 185
    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 186
    .line 187
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 188
    .line 189
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    .line 191
    .line 192
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 193
    .line 194
    if-eqz v9, :cond_8

    .line 195
    .line 196
    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 197
    .line 198
    if-eq v9, v6, :cond_8

    .line 199
    .line 200
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 201
    .line 202
    invoke-virtual {v3, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    .line 204
    .line 205
    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 206
    .line 207
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 208
    .line 209
    invoke-virtual {v3, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    .line 211
    .line 212
    :cond_8
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 213
    .line 214
    if-eqz v9, :cond_9

    .line 215
    .line 216
    new-instance v9, Lcom/android/wm/shell/util/SplitBounds;

    .line 217
    .line 218
    iget-object v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 219
    .line 220
    iget-object v12, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 221
    .line 222
    iget-object v13, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 223
    .line 224
    iget v14, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 225
    .line 226
    iget v15, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 227
    .line 228
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 229
    .line 230
    iget v8, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    .line 231
    .line 232
    iget v6, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    .line 233
    .line 234
    move/from16 v16, v10

    .line 235
    .line 236
    move-object v10, v9

    .line 237
    move/from16 v17, v8

    .line 238
    .line 239
    move/from16 v18, v6

    .line 240
    .line 241
    invoke-direct/range {v10 .. v18}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_9
    new-instance v9, Lcom/android/wm/shell/util/SplitBounds;

    .line 246
    .line 247
    iget-object v6, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 248
    .line 249
    iget-object v8, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 250
    .line 251
    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 252
    .line 253
    iget v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 254
    .line 255
    invoke-direct {v9, v6, v8, v10, v11}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 256
    .line 257
    .line 258
    :goto_5
    iget v6, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 259
    .line 260
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    iget v6, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 268
    .line 269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 277
    .line 278
    if-eqz v6, :cond_a

    .line 279
    .line 280
    iget v5, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 281
    .line 282
    const/4 v6, -0x1

    .line 283
    if-eq v5, v6, :cond_a

    .line 284
    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_a
    const/4 v8, 0x0

    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_b
    const-string/jumbo v0, "success to load grouped recent tasks"

    .line 296
    .line 297
    .line 298
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .line 300
    .line 301
    :cond_c
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    .line 303
    .line 304
    goto :goto_7

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    move-object v1, v0

    .line 307
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object v2, v0

    .line 313
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    :goto_6
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v2, "fail to restore grouped recent tasks"

    .line 321
    .line 322
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :goto_7
    return-void
.end method
