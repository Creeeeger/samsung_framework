.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final EL_POLICY_ITEM_URI:Landroid/net/Uri;

.field public static final POLICY_ITEM_PROJECTION:[Ljava/lang/String;

.field public static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;


# instance fields
.field public final mCategoryComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

.field public final mPolicyInfoData:Landroid/util/SparseArray;

.field public mPolicyType:I

.field public mPolicyVersion:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyItems;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "EdgeLighting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->EL_POLICY_ITEM_URI:Landroid/net/Uri;

    .line 10
    .line 11
    const-string v0, "data2"

    .line 12
    .line 13
    const-string v1, "data3"

    .line 14
    .line 15
    const-string v2, "item"

    .line 16
    .line 17
    const-string v3, "category"

    .line 18
    .line 19
    const-string v4, "data1"

    .line 20
    .line 21
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->POLICY_ITEM_PROJECTION:[Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput v3, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mCategoryComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

    .line 24
    .line 25
    const-string v4, "color"

    .line 26
    .line 27
    const-string v5, "item"

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "edge_lighting_policy.json"

    .line 36
    .line 37
    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v0, :cond_9

    .line 46
    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-virtual {v2, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    .line 57
    .line 58
    new-instance v0, Ljava/io/InputStreamReader;

    .line 59
    .line 60
    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    if-eqz v7, :cond_1

    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_a

    .line 85
    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object v1, v0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_a

    .line 94
    :goto_1
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    .line 99
    move-object v2, v0

    .line 100
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_2
    throw v1

    .line 104
    :catch_2
    move-exception v0

    .line 105
    goto :goto_4

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object v9, v6

    .line 108
    :goto_3
    move-object v6, v7

    .line 109
    goto :goto_b

    .line 110
    :catch_3
    move-exception v0

    .line 111
    move-object v9, v6

    .line 112
    goto :goto_4

    .line 113
    :catchall_2
    move-exception v0

    .line 114
    move-object v1, v0

    .line 115
    move-object v9, v6

    .line 116
    goto :goto_c

    .line 117
    :catch_4
    move-exception v0

    .line 118
    move-object v7, v6

    .line 119
    move-object v9, v7

    .line 120
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 121
    .line 122
    .line 123
    if-eqz v7, :cond_2

    .line 124
    .line 125
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :catchall_3
    move-exception v0

    .line 130
    move-object v1, v0

    .line 131
    goto :goto_7

    .line 132
    :catch_5
    move-exception v0

    .line 133
    goto :goto_6

    .line 134
    :cond_2
    :goto_5
    if-eqz v9, :cond_4

    .line 135
    .line 136
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 137
    .line 138
    .line 139
    goto :goto_9

    .line 140
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 141
    .line 142
    .line 143
    if-eqz v9, :cond_a

    .line 144
    .line 145
    goto :goto_a

    .line 146
    :goto_7
    if-eqz v9, :cond_3

    .line 147
    .line 148
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :catch_6
    move-exception v0

    .line 153
    move-object v2, v0

    .line 154
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_8
    throw v1

    .line 158
    :cond_4
    :goto_9
    if-eqz v9, :cond_a

    .line 159
    .line 160
    :goto_a
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 161
    .line 162
    .line 163
    goto :goto_14

    .line 164
    :catch_7
    move-exception v0

    .line 165
    move-object v7, v0

    .line 166
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    goto :goto_14

    .line 170
    :catchall_4
    move-exception v0

    .line 171
    goto :goto_3

    .line 172
    :goto_b
    move-object v1, v0

    .line 173
    :goto_c
    if-eqz v6, :cond_5

    .line 174
    .line 175
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 176
    .line 177
    .line 178
    goto :goto_d

    .line 179
    :catchall_5
    move-exception v0

    .line 180
    move-object v1, v0

    .line 181
    goto :goto_f

    .line 182
    :catch_8
    move-exception v0

    .line 183
    goto :goto_e

    .line 184
    :cond_5
    :goto_d
    if-eqz v9, :cond_7

    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 187
    .line 188
    .line 189
    goto :goto_11

    .line 190
    :goto_e
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 191
    .line 192
    .line 193
    if-eqz v9, :cond_8

    .line 194
    .line 195
    goto :goto_12

    .line 196
    :goto_f
    if-eqz v9, :cond_6

    .line 197
    .line 198
    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 199
    .line 200
    .line 201
    goto :goto_10

    .line 202
    :catch_9
    move-exception v0

    .line 203
    move-object v2, v0

    .line 204
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    :cond_6
    :goto_10
    throw v1

    .line 208
    :cond_7
    :goto_11
    if-eqz v9, :cond_8

    .line 209
    .line 210
    :goto_12
    :try_start_e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 211
    .line 212
    .line 213
    goto :goto_13

    .line 214
    :catch_a
    move-exception v0

    .line 215
    move-object v2, v0

    .line 216
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_13
    throw v1

    .line 220
    :cond_9
    move-object v8, v6

    .line 221
    :cond_a
    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const v9, 0x7f12001b

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 234
    .line 235
    .line 236
    move-result-object v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 237
    :try_start_10
    new-instance v10, Ljava/io/BufferedReader;

    .line 238
    .line 239
    new-instance v0, Ljava/io/InputStreamReader;

    .line 240
    .line 241
    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 245
    .line 246
    .line 247
    :goto_15
    :try_start_11
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_b

    .line 252
    .line 253
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 254
    .line 255
    .line 256
    goto :goto_15

    .line 257
    :cond_b
    if-eqz v9, :cond_c

    .line 258
    .line 259
    :try_start_12
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 260
    .line 261
    .line 262
    :cond_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 263
    .line 264
    .line 265
    goto/16 :goto_20

    .line 266
    .line 267
    :catchall_6
    move-exception v0

    .line 268
    move-object v1, v0

    .line 269
    goto :goto_16

    .line 270
    :catch_b
    move-exception v0

    .line 271
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 272
    .line 273
    .line 274
    goto/16 :goto_20

    .line 275
    .line 276
    :goto_16
    :try_start_14
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 277
    .line 278
    .line 279
    goto :goto_17

    .line 280
    :catch_c
    move-exception v0

    .line 281
    move-object v2, v0

    .line 282
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    :goto_17
    throw v1

    .line 286
    :catchall_7
    move-exception v0

    .line 287
    move-object v6, v9

    .line 288
    move-object v9, v10

    .line 289
    goto/16 :goto_33

    .line 290
    .line 291
    :catch_d
    move-exception v0

    .line 292
    move-object v6, v10

    .line 293
    goto :goto_18

    .line 294
    :catchall_8
    move-exception v0

    .line 295
    move-object/from16 v23, v9

    .line 296
    .line 297
    move-object v9, v6

    .line 298
    move-object/from16 v6, v23

    .line 299
    .line 300
    goto/16 :goto_33

    .line 301
    .line 302
    :catch_e
    move-exception v0

    .line 303
    :goto_18
    move-object/from16 v23, v9

    .line 304
    .line 305
    move-object v9, v6

    .line 306
    move-object/from16 v6, v23

    .line 307
    .line 308
    goto :goto_19

    .line 309
    :catchall_9
    move-exception v0

    .line 310
    move-object v1, v0

    .line 311
    move-object v9, v6

    .line 312
    goto/16 :goto_34

    .line 313
    .line 314
    :catch_f
    move-exception v0

    .line 315
    move-object v9, v6

    .line 316
    :goto_19
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 317
    .line 318
    .line 319
    if-eqz v6, :cond_d

    .line 320
    .line 321
    :try_start_16
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 322
    .line 323
    .line 324
    goto :goto_1a

    .line 325
    :catchall_a
    move-exception v0

    .line 326
    move-object v1, v0

    .line 327
    goto :goto_1c

    .line 328
    :catch_10
    move-exception v0

    .line 329
    goto :goto_1b

    .line 330
    :cond_d
    :goto_1a
    if-eqz v9, :cond_f

    .line 331
    .line 332
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 333
    .line 334
    .line 335
    goto :goto_1e

    .line 336
    :goto_1b
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 337
    .line 338
    .line 339
    if-eqz v9, :cond_10

    .line 340
    .line 341
    goto :goto_1f

    .line 342
    :goto_1c
    if-eqz v9, :cond_e

    .line 343
    .line 344
    :try_start_18
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 345
    .line 346
    .line 347
    goto :goto_1d

    .line 348
    :catch_11
    move-exception v0

    .line 349
    move-object v2, v0

    .line 350
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    .line 352
    .line 353
    :cond_e
    :goto_1d
    throw v1

    .line 354
    :cond_f
    :goto_1e
    if-eqz v9, :cond_10

    .line 355
    .line 356
    :goto_1f
    move-object v10, v9

    .line 357
    :goto_20
    :try_start_19
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    .line 358
    .line 359
    .line 360
    goto :goto_21

    .line 361
    :catch_12
    move-exception v0

    .line 362
    move-object v6, v0

    .line 363
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 364
    .line 365
    .line 366
    :cond_10
    :goto_21
    const-string/jumbo v6, "policy_version"

    .line 367
    .line 368
    .line 369
    const/4 v9, 0x1

    .line 370
    if-eqz v8, :cond_12

    .line 371
    .line 372
    const-wide/16 v10, 0x0

    .line 373
    .line 374
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    .line 375
    .line 376
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 384
    .line 385
    .line 386
    move-result-wide v12
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 387
    goto :goto_22

    .line 388
    :catch_13
    move-exception v0

    .line 389
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 390
    .line 391
    .line 392
    move-wide v12, v10

    .line 393
    :goto_22
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    .line 394
    .line 395
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v14

    .line 399
    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 403
    .line 404
    .line 405
    move-result-wide v10
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 406
    goto :goto_23

    .line 407
    :catch_14
    move-exception v0

    .line 408
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 409
    .line 410
    .line 411
    :goto_23
    cmp-long v0, v10, v12

    .line 412
    .line 413
    if-lez v0, :cond_11

    .line 414
    .line 415
    move-object v8, v7

    .line 416
    move v0, v9

    .line 417
    goto :goto_24

    .line 418
    :cond_11
    move v0, v3

    .line 419
    :goto_24
    move v7, v0

    .line 420
    goto :goto_25

    .line 421
    :cond_12
    move-object v8, v7

    .line 422
    move v7, v3

    .line 423
    :goto_25
    const-string/jumbo v0, "policy_type"

    .line 424
    .line 425
    .line 426
    :try_start_1c
    new-instance v10, Lorg/json/JSONObject;

    .line 427
    .line 428
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 436
    .line 437
    .line 438
    move-result-wide v11

    .line 439
    iput-wide v11, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 440
    .line 441
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-eqz v6, :cond_13

    .line 446
    .line 447
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    iput v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_15

    .line 452
    .line 453
    goto :goto_26

    .line 454
    :catch_15
    move-exception v0

    .line 455
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 456
    .line 457
    .line 458
    :cond_13
    :goto_26
    const-string/jumbo v0, "versionCode"

    .line 459
    .line 460
    .line 461
    const-string/jumbo v6, "range"

    .line 462
    .line 463
    .line 464
    iget-object v10, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 465
    .line 466
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 467
    .line 468
    .line 469
    :try_start_1d
    new-instance v12, Lorg/json/JSONObject;

    .line 470
    .line 471
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v13

    .line 475
    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    new-instance v13, Lorg/json/JSONArray;

    .line 479
    .line 480
    const-string v14, "edge_lighting_policy"

    .line 481
    .line 482
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v12

    .line 486
    invoke-direct {v13, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 490
    .line 491
    .line 492
    move-result v12

    .line 493
    new-instance v14, Ljava/util/HashMap;

    .line 494
    .line 495
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 496
    .line 497
    .line 498
    move v15, v3

    .line 499
    :goto_27
    if-ge v15, v12, :cond_19

    .line 500
    .line 501
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v11

    .line 509
    move/from16 v22, v12

    .line 510
    .line 511
    const-string v12, "category"

    .line 512
    .line 513
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    move-result v12

    .line 517
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 518
    .line 519
    .line 520
    move-result v16

    .line 521
    if-eqz v16, :cond_14

    .line 522
    .line 523
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    move-result v16

    .line 527
    move/from16 v19, v16

    .line 528
    .line 529
    goto :goto_28

    .line 530
    :cond_14
    const/16 v19, 0x0

    .line 531
    .line 532
    :goto_28
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result v16

    .line 536
    if-eqz v16, :cond_15

    .line 537
    .line 538
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    move-result v16

    .line 542
    move/from16 v20, v16

    .line 543
    .line 544
    goto :goto_29

    .line 545
    :cond_15
    const v20, -0xb37941

    .line 546
    .line 547
    .line 548
    :goto_29
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 549
    .line 550
    .line 551
    move-result v16

    .line 552
    if-eqz v16, :cond_16

    .line 553
    .line 554
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    move/from16 v21, v3

    .line 559
    .line 560
    goto :goto_2a

    .line 561
    :cond_16
    const/16 v21, 0x0

    .line 562
    .line 563
    :goto_2a
    new-instance v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 564
    .line 565
    move-object/from16 v16, v3

    .line 566
    .line 567
    move-object/from16 v17, v11

    .line 568
    .line 569
    move/from16 v18, v12

    .line 570
    .line 571
    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    .line 572
    .line 573
    .line 574
    if-eq v9, v12, :cond_18

    .line 575
    .line 576
    invoke-virtual {v10, v9, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    check-cast v9, Ljava/util/HashMap;

    .line 584
    .line 585
    if-nez v9, :cond_17

    .line 586
    .line 587
    new-instance v9, Ljava/util/HashMap;

    .line 588
    .line 589
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 590
    .line 591
    .line 592
    :cond_17
    move-object v14, v9

    .line 593
    move v9, v12

    .line 594
    :cond_18
    invoke-virtual {v14, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    add-int/lit8 v15, v15, 0x1

    .line 598
    .line 599
    move/from16 v12, v22

    .line 600
    .line 601
    const/4 v3, 0x0

    .line 602
    goto :goto_27

    .line 603
    :cond_19
    invoke-virtual {v10, v9, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_16

    .line 604
    .line 605
    .line 606
    goto :goto_2b

    .line 607
    :catch_16
    move-exception v0

    .line 608
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 609
    .line 610
    .line 611
    :goto_2b
    const-string v0, "default_on"

    .line 612
    .line 613
    const-string/jumbo v3, "priority"

    .line 614
    .line 615
    .line 616
    :try_start_1e
    new-instance v6, Ljava/util/HashMap;

    .line 617
    .line 618
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 619
    .line 620
    .line 621
    new-instance v9, Lorg/json/JSONObject;

    .line 622
    .line 623
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v11

    .line 627
    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    new-instance v11, Lorg/json/JSONArray;

    .line 631
    .line 632
    const-string v12, "edge_lighting_priority"

    .line 633
    .line 634
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    invoke-direct {v11, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 642
    .line 643
    .line 644
    move-result v9

    .line 645
    const/4 v12, 0x0

    .line 646
    :goto_2c
    if-ge v12, v9, :cond_1d

    .line 647
    .line 648
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 649
    .line 650
    .line 651
    move-result-object v13

    .line 652
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v14

    .line 656
    const/16 v19, 0x1

    .line 657
    .line 658
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 659
    .line 660
    .line 661
    move-result v15

    .line 662
    if-eqz v15, :cond_1a

    .line 663
    .line 664
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move-result v15

    .line 668
    goto :goto_2d

    .line 669
    :cond_1a
    const v15, -0xb37941

    .line 670
    .line 671
    .line 672
    :goto_2d
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v16

    .line 676
    if-eqz v16, :cond_1b

    .line 677
    .line 678
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 679
    .line 680
    .line 681
    move-result v16

    .line 682
    move/from16 v20, v16

    .line 683
    .line 684
    goto :goto_2e

    .line 685
    :cond_1b
    const/16 v20, 0x0

    .line 686
    .line 687
    :goto_2e
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 688
    .line 689
    .line 690
    move-result v16

    .line 691
    if-eqz v16, :cond_1c

    .line 692
    .line 693
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    move-result v13

    .line 697
    move/from16 v21, v13

    .line 698
    .line 699
    goto :goto_2f

    .line 700
    :cond_1c
    move/from16 v21, v15

    .line 701
    .line 702
    :goto_2f
    new-instance v13, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 703
    .line 704
    const/16 v18, 0xa

    .line 705
    .line 706
    move-object/from16 v16, v13

    .line 707
    .line 708
    move-object/from16 v17, v14

    .line 709
    .line 710
    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v6, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    add-int/lit8 v12, v12, 0x1

    .line 717
    .line 718
    goto :goto_2c

    .line 719
    :cond_1d
    const/16 v0, 0xa

    .line 720
    .line 721
    invoke-virtual {v10, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_17

    .line 722
    .line 723
    .line 724
    goto :goto_30

    .line 725
    :catch_17
    move-exception v0

    .line 726
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 727
    .line 728
    .line 729
    :goto_30
    :try_start_1f
    new-instance v0, Ljava/util/HashMap;

    .line 730
    .line 731
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 732
    .line 733
    .line 734
    new-instance v3, Lorg/json/JSONObject;

    .line 735
    .line 736
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    new-instance v4, Lorg/json/JSONArray;

    .line 744
    .line 745
    const-string v6, "edge_lighting_whitelist"

    .line 746
    .line 747
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    const/4 v6, 0x0

    .line 759
    :goto_31
    const/16 v8, 0xb

    .line 760
    .line 761
    if-ge v6, v3, :cond_1e

    .line 762
    .line 763
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 764
    .line 765
    .line 766
    move-result-object v9

    .line 767
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v9

    .line 771
    new-instance v11, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 772
    .line 773
    invoke-direct {v11, v9, v8}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    add-int/lit8 v6, v6, 0x1

    .line 780
    .line 781
    goto :goto_31

    .line 782
    :cond_1e
    invoke-virtual {v10, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_18

    .line 783
    .line 784
    .line 785
    goto :goto_32

    .line 786
    :catch_18
    move-exception v0

    .line 787
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 788
    .line 789
    .line 790
    :goto_32
    if-eqz v7, :cond_1f

    .line 791
    .line 792
    iget-wide v3, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 793
    .line 794
    iget v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    .line 795
    .line 796
    invoke-static {v2, v3, v4, v0, v10}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V

    .line 797
    .line 798
    .line 799
    :cond_1f
    if-nez p2, :cond_20

    .line 800
    .line 801
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    .line 802
    .line 803
    .line 804
    :cond_20
    return-void

    .line 805
    :catchall_b
    move-exception v0

    .line 806
    :goto_33
    move-object v1, v0

    .line 807
    :goto_34
    if-eqz v6, :cond_21

    .line 808
    .line 809
    :try_start_20
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 810
    .line 811
    .line 812
    goto :goto_35

    .line 813
    :catchall_c
    move-exception v0

    .line 814
    move-object v1, v0

    .line 815
    goto :goto_37

    .line 816
    :catch_19
    move-exception v0

    .line 817
    goto :goto_36

    .line 818
    :cond_21
    :goto_35
    if-eqz v9, :cond_23

    .line 819
    .line 820
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 821
    .line 822
    .line 823
    goto :goto_39

    .line 824
    :goto_36
    :try_start_21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 825
    .line 826
    .line 827
    if-eqz v9, :cond_24

    .line 828
    .line 829
    goto :goto_3a

    .line 830
    :goto_37
    if-eqz v9, :cond_22

    .line 831
    .line 832
    :try_start_22
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1a

    .line 833
    .line 834
    .line 835
    goto :goto_38

    .line 836
    :catch_1a
    move-exception v0

    .line 837
    move-object v2, v0

    .line 838
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 839
    .line 840
    .line 841
    :cond_22
    :goto_38
    throw v1

    .line 842
    :cond_23
    :goto_39
    if-eqz v9, :cond_24

    .line 843
    .line 844
    :goto_3a
    :try_start_23
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1b

    .line 845
    .line 846
    .line 847
    goto :goto_3b

    .line 848
    :catch_1b
    move-exception v0

    .line 849
    move-object v2, v0

    .line 850
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 851
    .line 852
    .line 853
    :cond_24
    :goto_3b
    throw v1
.end method

.method public static createPolicyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    move v3, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    move v3, p1

    .line 21
    :goto_1
    const/4 p1, 0x0

    .line 22
    const v1, -0xb37941

    .line 23
    .line 24
    .line 25
    if-eq v3, v0, :cond_5

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v3, v2, :cond_5

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    if-eq v3, v2, :cond_1

    .line 33
    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p1, "createPolicyInfo : wrong category = "

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "ELPolicyManager"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    :pswitch_0
    new-instance p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 59
    .line 60
    invoke-direct {p1, p0, v3}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    if-eqz p2, :cond_2

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception p2

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    :cond_3
    if-eqz p4, :cond_4

    .line 88
    .line 89
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    move v5, p1

    .line 98
    move v6, p2

    .line 99
    move v4, v0

    .line 100
    goto :goto_4

    .line 101
    :goto_3
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_4
    move v5, p1

    .line 105
    move v4, v0

    .line 106
    move v6, v1

    .line 107
    :goto_4
    new-instance p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 108
    .line 109
    move-object v1, p1

    .line 110
    move-object v2, p0

    .line 111
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_5
    if-eqz p2, :cond_6

    .line 116
    .line 117
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    goto :goto_5

    .line 126
    :catch_2
    move-exception p2

    .line 127
    move p3, p1

    .line 128
    goto :goto_8

    .line 129
    :cond_6
    move p2, p1

    .line 130
    :goto_5
    if-eqz p3, :cond_7

    .line 131
    .line 132
    :try_start_3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    goto :goto_6

    .line 141
    :catch_3
    move-exception p3

    .line 142
    goto :goto_7

    .line 143
    :cond_7
    :goto_6
    if-eqz p4, :cond_8

    .line 144
    .line 145
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 153
    goto :goto_9

    .line 154
    :goto_7
    move-object v7, p3

    .line 155
    move p3, p2

    .line 156
    move-object p2, v7

    .line 157
    :goto_8
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    move v6, p1

    .line 161
    move v4, p3

    .line 162
    goto :goto_a

    .line 163
    :cond_8
    :goto_9
    move v6, p1

    .line 164
    move v4, p2

    .line 165
    :goto_a
    move v5, v1

    .line 166
    new-instance p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 167
    .line 168
    move-object v1, p1

    .line 169
    move-object v2, p0

    .line 170
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;Z)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    const-string v2, "com.samsung.android.messaging"

    .line 11
    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget v2, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 32
    .line 33
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v4

    .line 37
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 v4, -0x1

    .line 41
    :goto_0
    const-string v5, " pkgName : "

    .line 42
    .line 43
    const-string v6, " version NAme : "

    .line 44
    .line 45
    const-string v7, " "

    .line 46
    .line 47
    invoke-static {v5, p2, v6, v2, v7}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v5, "Utils"

    .line 59
    .line 60
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const v2, 0x1dcd6500

    .line 64
    .line 65
    .line 66
    if-ge v4, v2, :cond_0

    .line 67
    .line 68
    const p0, 0xf2721c

    .line 69
    .line 70
    .line 71
    return p0

    .line 72
    :cond_0
    const v2, -0xb37941

    .line 73
    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    iget v1, v1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 86
    .line 87
    if-eq v1, v2, :cond_1

    .line 88
    .line 89
    return v1

    .line 90
    :cond_1
    const/16 v1, 0xa

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/util/HashMap;

    .line 97
    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 105
    .line 106
    if-eqz p0, :cond_2

    .line 107
    .line 108
    iget p0, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 109
    .line 110
    if-eq p0, v2, :cond_2

    .line 111
    .line 112
    return p0

    .line 113
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_6

    .line 122
    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-lez v1, :cond_6

    .line 128
    .line 129
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 134
    .line 135
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 136
    .line 137
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 138
    .line 139
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 140
    .line 141
    new-instance v3, Landroid/content/ComponentName;

    .line 142
    .line 143
    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_3

    .line 151
    .line 152
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-eqz v1, :cond_4

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_5

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    :try_start_1
    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    goto :goto_1

    .line 187
    :catch_1
    move-exception p0

    .line 188
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    .line 199
    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :goto_1
    move-object v1, p0

    .line 201
    goto :goto_2

    .line 202
    :catch_2
    move-exception p0

    .line 203
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    const/4 p0, 0x0

    .line 207
    goto :goto_1

    .line 208
    :goto_2
    if-eqz v1, :cond_7

    .line 209
    .line 210
    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    invoke-static {p1, p2, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveAppCustomColor(Landroid/content/Context;Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string/jumbo v0, "package : "

    .line 220
    .line 221
    .line 222
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p2, " Extract color : "

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const-string p2, "ELPolicyManager"

    .line 241
    .line 242
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    return p0

    .line 246
    :cond_7
    return v2
.end method

.method public final updateEdgeLightingPolicy(Landroid/content/Context;Z)V
    .locals 7

    .line 1
    const-string v0, "edge"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/edge/SemEdgeManager;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    or-int/lit8 p2, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    and-int/lit8 p2, v1, -0x2

    .line 21
    .line 22
    :goto_0
    new-instance v1, Lcom/samsung/android/edge/EdgeLightingPolicy;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/samsung/android/edge/EdgeLightingPolicy;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->setPolicyType(I)V

    .line 28
    .line 29
    .line 30
    iget-wide v3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 31
    .line 32
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/edge/EdgeLightingPolicy;->setPolicyVersion(J)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/HashMap;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 70
    .line 71
    new-instance v5, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 72
    .line 73
    iget-object v6, v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 74
    .line 75
    iget v4, v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 76
    .line 77
    invoke-direct {v5, v6, v2, v4}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v5}, Lcom/samsung/android/edge/EdgeLightingPolicy;->addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    .line 85
    .line 86
    and-int/lit8 p0, p0, 0x4

    .line 87
    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    const/4 p0, 0x2

    .line 91
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/util/HashMap;

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/util/Map$Entry;

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 124
    .line 125
    new-instance v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 126
    .line 127
    iget-object v5, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 128
    .line 129
    iget v3, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 130
    .line 131
    invoke-direct {v4, v5, p0, v3}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4}, Lcom/samsung/android/edge/EdgeLightingPolicy;->addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    const/16 p0, 0xa

    .line 139
    .line 140
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Ljava/util/HashMap;

    .line 145
    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_5

    .line 164
    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Ljava/util/Map$Entry;

    .line 170
    .line 171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-eqz v3, :cond_4

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 182
    .line 183
    iget-object v3, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v3, :cond_4

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, ","

    .line 199
    .line 200
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    const-string p1, "edge_lighting_recommend_app_list"

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string p1, " update Policy : "

    .line 220
    .line 221
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const-string p1, "ELPolicyManager"

    .line 240
    .line 241
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lcom/samsung/android/edge/SemEdgeManager;->updateEdgeLightingPolicy(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method
