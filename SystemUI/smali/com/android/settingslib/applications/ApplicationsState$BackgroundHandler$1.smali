.class public final Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget v4, v1, Landroid/content/pm/PackageStats;->userHandle:I

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/HashMap;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    monitor-exit v2

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    const/4 v4, 0x0

    .line 45
    :try_start_1
    iput-boolean v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 46
    .line 47
    const-wide/16 v5, 0x0

    .line 48
    .line 49
    iput-wide v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 50
    .line 51
    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 52
    .line 53
    iget-wide v7, v1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 54
    .line 55
    add-long/2addr v5, v7

    .line 56
    iget-wide v7, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 57
    .line 58
    iget-wide v9, v1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 59
    .line 60
    add-long/2addr v7, v9

    .line 61
    add-long v9, v5, v7

    .line 62
    .line 63
    iget-object v11, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 64
    .line 65
    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 66
    .line 67
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-wide v11, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 71
    .line 72
    iget-wide v13, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 73
    .line 74
    add-long v15, v11, v13

    .line 75
    .line 76
    move-wide/from16 v17, v5

    .line 77
    .line 78
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 79
    .line 80
    sub-long/2addr v15, v4

    .line 81
    add-long/2addr v9, v15

    .line 82
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    .line 83
    .line 84
    cmp-long v0, v0, v9

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 89
    .line 90
    cmp-long v0, v0, v4

    .line 91
    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 95
    .line 96
    cmp-long v0, v0, v11

    .line 97
    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 101
    .line 102
    cmp-long v0, v0, v13

    .line 103
    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 107
    .line 108
    cmp-long v0, v0, v17

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 113
    .line 114
    cmp-long v0, v0, v7

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    .line 119
    .line 120
    move-object/from16 v6, p1

    .line 121
    .line 122
    move-wide v15, v7

    .line 123
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 124
    .line 125
    cmp-long v0, v0, v7

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    const/4 v4, 0x0

    .line 131
    move-object/from16 v0, p0

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move-object/from16 v6, p1

    .line 135
    .line 136
    move-wide v15, v7

    .line 137
    :goto_0
    iput-wide v9, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    .line 138
    .line 139
    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 140
    .line 141
    iput-wide v11, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 142
    .line 143
    iput-wide v13, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 144
    .line 145
    move-wide/from16 v0, v17

    .line 146
    .line 147
    iput-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 148
    .line 149
    move-wide v7, v15

    .line 150
    iput-wide v7, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 151
    .line 152
    iget-wide v0, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 153
    .line 154
    iput-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    .line 155
    .line 156
    move-object/from16 v0, p0

    .line 157
    .line 158
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 161
    .line 162
    invoke-static {v1, v9, v10}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 166
    .line 167
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iget-wide v4, v6, Landroid/content/pm/PackageStats;->codeSize:J

    .line 173
    .line 174
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->dataSize:J

    .line 175
    .line 176
    add-long/2addr v4, v7

    .line 177
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 178
    .line 179
    sub-long/2addr v4, v7

    .line 180
    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 181
    .line 182
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 185
    .line 186
    invoke-static {v1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    iget-wide v4, v6, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 197
    .line 198
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 199
    .line 200
    add-long/2addr v4, v7

    .line 201
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 202
    .line 203
    add-long/2addr v4, v7

    .line 204
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 205
    .line 206
    add-long/2addr v4, v7

    .line 207
    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 208
    .line 209
    add-long/2addr v4, v7

    .line 210
    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 213
    .line 214
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 215
    .line 216
    invoke-static {v1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V

    .line 217
    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    if-eqz v4, :cond_5

    .line 222
    .line 223
    :try_start_2
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 226
    .line 227
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 228
    .line 229
    iget-object v3, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 230
    .line 231
    const/4 v4, 0x4

    .line 232
    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 237
    .line 238
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 239
    .line 240
    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 241
    .line 242
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    :try_start_4
    throw v0

    .line 249
    :cond_4
    move-object v6, v1

    .line 250
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 253
    .line 254
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 255
    .line 256
    if-eqz v1, :cond_6

    .line 257
    .line 258
    iget-object v3, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_6

    .line 265
    .line 266
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 267
    .line 268
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 269
    .line 270
    iget v3, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 271
    .line 272
    iget v4, v6, Landroid/content/pm/PackageStats;->userHandle:I

    .line 273
    .line 274
    if-ne v3, v4, :cond_6

    .line 275
    .line 276
    const/4 v3, 0x0

    .line 277
    iput-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 278
    .line 279
    const/4 v1, 0x7

    .line 280
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    .line 282
    .line 283
    :cond_6
    monitor-exit v2

    .line 284
    return-void

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 287
    throw v0
.end method
