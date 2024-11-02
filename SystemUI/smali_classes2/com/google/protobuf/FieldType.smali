.class public final enum Lcom/google/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum MAP:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final VALUES:[Lcom/google/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/google/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/google/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 68

    .line 1
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 2
    .line 3
    move-object v6, v0

    .line 4
    const-string v1, "DOUBLE"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v29, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    .line 9
    .line 10
    sget-object v47, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    .line 11
    .line 12
    move-object/from16 v4, v29

    .line 13
    .line 14
    move-object/from16 v5, v47

    .line 15
    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 17
    .line 18
    .line 19
    new-instance v8, Lcom/google/protobuf/FieldType;

    .line 20
    .line 21
    move-object v7, v8

    .line 22
    const-string v9, "FLOAT"

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    const/4 v11, 0x1

    .line 26
    sget-object v48, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    .line 27
    .line 28
    move-object/from16 v12, v29

    .line 29
    .line 30
    move-object/from16 v13, v48

    .line 31
    .line 32
    invoke-direct/range {v8 .. v13}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 33
    .line 34
    .line 35
    new-instance v9, Lcom/google/protobuf/FieldType;

    .line 36
    .line 37
    move-object v8, v9

    .line 38
    const-string v10, "INT64"

    .line 39
    .line 40
    const/4 v11, 0x2

    .line 41
    const/4 v12, 0x2

    .line 42
    sget-object v55, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    .line 43
    .line 44
    move-object/from16 v13, v29

    .line 45
    .line 46
    move-object/from16 v14, v55

    .line 47
    .line 48
    invoke-direct/range {v9 .. v14}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 49
    .line 50
    .line 51
    new-instance v10, Lcom/google/protobuf/FieldType;

    .line 52
    .line 53
    move-object v9, v10

    .line 54
    const-string v11, "UINT64"

    .line 55
    .line 56
    const/4 v12, 0x3

    .line 57
    const/4 v13, 0x3

    .line 58
    move-object/from16 v14, v29

    .line 59
    .line 60
    move-object/from16 v15, v55

    .line 61
    .line 62
    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 63
    .line 64
    .line 65
    new-instance v11, Lcom/google/protobuf/FieldType;

    .line 66
    .line 67
    move-object v10, v11

    .line 68
    const-string v12, "INT32"

    .line 69
    .line 70
    const/4 v13, 0x4

    .line 71
    const/4 v14, 0x4

    .line 72
    sget-object v54, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    .line 73
    .line 74
    move-object/from16 v15, v29

    .line 75
    .line 76
    move-object/from16 v16, v54

    .line 77
    .line 78
    invoke-direct/range {v11 .. v16}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 79
    .line 80
    .line 81
    new-instance v12, Lcom/google/protobuf/FieldType;

    .line 82
    .line 83
    move-object v11, v12

    .line 84
    const-string v13, "FIXED64"

    .line 85
    .line 86
    const/4 v14, 0x5

    .line 87
    const/4 v15, 0x5

    .line 88
    move-object/from16 v16, v29

    .line 89
    .line 90
    move-object/from16 v17, v55

    .line 91
    .line 92
    invoke-direct/range {v12 .. v17}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 93
    .line 94
    .line 95
    new-instance v13, Lcom/google/protobuf/FieldType;

    .line 96
    .line 97
    move-object v12, v13

    .line 98
    const-string v14, "FIXED32"

    .line 99
    .line 100
    const/4 v15, 0x6

    .line 101
    const/16 v16, 0x6

    .line 102
    .line 103
    move-object/from16 v17, v29

    .line 104
    .line 105
    move-object/from16 v18, v54

    .line 106
    .line 107
    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 108
    .line 109
    .line 110
    new-instance v14, Lcom/google/protobuf/FieldType;

    .line 111
    .line 112
    move-object v13, v14

    .line 113
    const-string v15, "BOOL"

    .line 114
    .line 115
    const/16 v16, 0x7

    .line 116
    .line 117
    const/16 v17, 0x7

    .line 118
    .line 119
    sget-object v49, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    .line 120
    .line 121
    move-object/from16 v18, v29

    .line 122
    .line 123
    move-object/from16 v19, v49

    .line 124
    .line 125
    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 126
    .line 127
    .line 128
    new-instance v15, Lcom/google/protobuf/FieldType;

    .line 129
    .line 130
    move-object v14, v15

    .line 131
    const-string v16, "STRING"

    .line 132
    .line 133
    const/16 v17, 0x8

    .line 134
    .line 135
    const/16 v18, 0x8

    .line 136
    .line 137
    sget-object v36, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    .line 138
    .line 139
    move-object/from16 v19, v29

    .line 140
    .line 141
    move-object/from16 v20, v36

    .line 142
    .line 143
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 147
    .line 148
    move-object v15, v0

    .line 149
    const-string v17, "MESSAGE"

    .line 150
    .line 151
    const/16 v18, 0x9

    .line 152
    .line 153
    const/16 v19, 0x9

    .line 154
    .line 155
    sget-object v61, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    .line 156
    .line 157
    move-object/from16 v16, v0

    .line 158
    .line 159
    move-object/from16 v20, v29

    .line 160
    .line 161
    move-object/from16 v21, v61

    .line 162
    .line 163
    invoke-direct/range {v16 .. v21}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 164
    .line 165
    .line 166
    sput-object v0, Lcom/google/protobuf/FieldType;->MESSAGE:Lcom/google/protobuf/FieldType;

    .line 167
    .line 168
    new-instance v17, Lcom/google/protobuf/FieldType;

    .line 169
    .line 170
    move-object/from16 v16, v17

    .line 171
    .line 172
    const-string v18, "BYTES"

    .line 173
    .line 174
    const/16 v19, 0xa

    .line 175
    .line 176
    const/16 v20, 0xa

    .line 177
    .line 178
    sget-object v43, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    .line 179
    .line 180
    move-object/from16 v21, v29

    .line 181
    .line 182
    move-object/from16 v22, v43

    .line 183
    .line 184
    invoke-direct/range {v17 .. v22}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 185
    .line 186
    .line 187
    new-instance v18, Lcom/google/protobuf/FieldType;

    .line 188
    .line 189
    move-object/from16 v17, v18

    .line 190
    .line 191
    const-string v19, "UINT32"

    .line 192
    .line 193
    const/16 v20, 0xb

    .line 194
    .line 195
    const/16 v21, 0xb

    .line 196
    .line 197
    move-object/from16 v22, v29

    .line 198
    .line 199
    move-object/from16 v23, v54

    .line 200
    .line 201
    invoke-direct/range {v18 .. v23}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 202
    .line 203
    .line 204
    new-instance v19, Lcom/google/protobuf/FieldType;

    .line 205
    .line 206
    move-object/from16 v18, v19

    .line 207
    .line 208
    const-string v20, "ENUM"

    .line 209
    .line 210
    const/16 v21, 0xc

    .line 211
    .line 212
    const/16 v22, 0xc

    .line 213
    .line 214
    sget-object v51, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    .line 215
    .line 216
    move-object/from16 v23, v29

    .line 217
    .line 218
    move-object/from16 v24, v51

    .line 219
    .line 220
    invoke-direct/range {v19 .. v24}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 221
    .line 222
    .line 223
    new-instance v20, Lcom/google/protobuf/FieldType;

    .line 224
    .line 225
    move-object/from16 v19, v20

    .line 226
    .line 227
    const-string v21, "SFIXED32"

    .line 228
    .line 229
    const/16 v22, 0xd

    .line 230
    .line 231
    const/16 v23, 0xd

    .line 232
    .line 233
    move-object/from16 v24, v29

    .line 234
    .line 235
    move-object/from16 v25, v54

    .line 236
    .line 237
    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 238
    .line 239
    .line 240
    new-instance v21, Lcom/google/protobuf/FieldType;

    .line 241
    .line 242
    move-object/from16 v20, v21

    .line 243
    .line 244
    const-string v22, "SFIXED64"

    .line 245
    .line 246
    const/16 v23, 0xe

    .line 247
    .line 248
    const/16 v24, 0xe

    .line 249
    .line 250
    move-object/from16 v25, v29

    .line 251
    .line 252
    move-object/from16 v26, v55

    .line 253
    .line 254
    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 255
    .line 256
    .line 257
    new-instance v22, Lcom/google/protobuf/FieldType;

    .line 258
    .line 259
    move-object/from16 v21, v22

    .line 260
    .line 261
    const-string v23, "SINT32"

    .line 262
    .line 263
    const/16 v24, 0xf

    .line 264
    .line 265
    const/16 v25, 0xf

    .line 266
    .line 267
    move-object/from16 v26, v29

    .line 268
    .line 269
    move-object/from16 v27, v54

    .line 270
    .line 271
    invoke-direct/range {v22 .. v27}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 272
    .line 273
    .line 274
    new-instance v23, Lcom/google/protobuf/FieldType;

    .line 275
    .line 276
    move-object/from16 v22, v23

    .line 277
    .line 278
    const-string v24, "SINT64"

    .line 279
    .line 280
    const/16 v25, 0x10

    .line 281
    .line 282
    const/16 v26, 0x10

    .line 283
    .line 284
    move-object/from16 v27, v29

    .line 285
    .line 286
    move-object/from16 v28, v55

    .line 287
    .line 288
    invoke-direct/range {v23 .. v28}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 292
    .line 293
    move-object/from16 v23, v0

    .line 294
    .line 295
    const-string v25, "GROUP"

    .line 296
    .line 297
    const/16 v26, 0x11

    .line 298
    .line 299
    const/16 v27, 0x11

    .line 300
    .line 301
    move-object/from16 v24, v0

    .line 302
    .line 303
    move-object/from16 v28, v29

    .line 304
    .line 305
    move-object/from16 v29, v61

    .line 306
    .line 307
    invoke-direct/range {v24 .. v29}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 308
    .line 309
    .line 310
    sput-object v0, Lcom/google/protobuf/FieldType;->GROUP:Lcom/google/protobuf/FieldType;

    .line 311
    .line 312
    new-instance v30, Lcom/google/protobuf/FieldType;

    .line 313
    .line 314
    move-object/from16 v24, v30

    .line 315
    .line 316
    const-string v31, "DOUBLE_LIST"

    .line 317
    .line 318
    const/16 v32, 0x12

    .line 319
    .line 320
    const/16 v33, 0x12

    .line 321
    .line 322
    sget-object v60, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    .line 323
    .line 324
    move-object/from16 v34, v60

    .line 325
    .line 326
    move-object/from16 v35, v47

    .line 327
    .line 328
    invoke-direct/range {v30 .. v35}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 329
    .line 330
    .line 331
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 332
    .line 333
    move-object/from16 v25, v0

    .line 334
    .line 335
    const-string v1, "FLOAT_LIST"

    .line 336
    .line 337
    const/16 v2, 0x13

    .line 338
    .line 339
    const/16 v3, 0x13

    .line 340
    .line 341
    move-object/from16 v4, v60

    .line 342
    .line 343
    move-object/from16 v5, v48

    .line 344
    .line 345
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 346
    .line 347
    .line 348
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 349
    .line 350
    move-object/from16 v26, v0

    .line 351
    .line 352
    const-string v1, "INT64_LIST"

    .line 353
    .line 354
    const/16 v2, 0x14

    .line 355
    .line 356
    const/16 v3, 0x14

    .line 357
    .line 358
    move-object/from16 v5, v55

    .line 359
    .line 360
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 364
    .line 365
    move-object/from16 v27, v0

    .line 366
    .line 367
    const-string v1, "UINT64_LIST"

    .line 368
    .line 369
    const/16 v2, 0x15

    .line 370
    .line 371
    const/16 v3, 0x15

    .line 372
    .line 373
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 377
    .line 378
    move-object/from16 v28, v0

    .line 379
    .line 380
    const-string v1, "INT32_LIST"

    .line 381
    .line 382
    const/16 v2, 0x16

    .line 383
    .line 384
    const/16 v3, 0x16

    .line 385
    .line 386
    move-object/from16 v5, v54

    .line 387
    .line 388
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 392
    .line 393
    move-object/from16 v29, v0

    .line 394
    .line 395
    const-string v1, "FIXED64_LIST"

    .line 396
    .line 397
    const/16 v2, 0x17

    .line 398
    .line 399
    const/16 v3, 0x17

    .line 400
    .line 401
    move-object/from16 v5, v55

    .line 402
    .line 403
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 407
    .line 408
    move-object/from16 v30, v0

    .line 409
    .line 410
    const-string v1, "FIXED32_LIST"

    .line 411
    .line 412
    const/16 v2, 0x18

    .line 413
    .line 414
    const/16 v3, 0x18

    .line 415
    .line 416
    move-object/from16 v5, v54

    .line 417
    .line 418
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 419
    .line 420
    .line 421
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 422
    .line 423
    move-object/from16 v31, v0

    .line 424
    .line 425
    const-string v1, "BOOL_LIST"

    .line 426
    .line 427
    const/16 v2, 0x19

    .line 428
    .line 429
    const/16 v3, 0x19

    .line 430
    .line 431
    move-object/from16 v5, v49

    .line 432
    .line 433
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 434
    .line 435
    .line 436
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 437
    .line 438
    move-object/from16 v32, v0

    .line 439
    .line 440
    const-string v1, "STRING_LIST"

    .line 441
    .line 442
    const/16 v2, 0x1a

    .line 443
    .line 444
    const/16 v3, 0x1a

    .line 445
    .line 446
    move-object/from16 v5, v36

    .line 447
    .line 448
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 449
    .line 450
    .line 451
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 452
    .line 453
    move-object/from16 v33, v0

    .line 454
    .line 455
    const-string v38, "MESSAGE_LIST"

    .line 456
    .line 457
    const/16 v39, 0x1b

    .line 458
    .line 459
    const/16 v40, 0x1b

    .line 460
    .line 461
    move-object/from16 v37, v0

    .line 462
    .line 463
    move-object/from16 v41, v60

    .line 464
    .line 465
    move-object/from16 v42, v61

    .line 466
    .line 467
    invoke-direct/range {v37 .. v42}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 468
    .line 469
    .line 470
    sput-object v0, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    .line 471
    .line 472
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 473
    .line 474
    move-object/from16 v34, v0

    .line 475
    .line 476
    const-string v1, "BYTES_LIST"

    .line 477
    .line 478
    const/16 v2, 0x1c

    .line 479
    .line 480
    const/16 v3, 0x1c

    .line 481
    .line 482
    move-object/from16 v5, v43

    .line 483
    .line 484
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 485
    .line 486
    .line 487
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 488
    .line 489
    move-object/from16 v35, v0

    .line 490
    .line 491
    const-string v1, "UINT32_LIST"

    .line 492
    .line 493
    const/16 v2, 0x1d

    .line 494
    .line 495
    const/16 v3, 0x1d

    .line 496
    .line 497
    move-object/from16 v5, v54

    .line 498
    .line 499
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 500
    .line 501
    .line 502
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 503
    .line 504
    move-object/from16 v36, v0

    .line 505
    .line 506
    const-string v1, "ENUM_LIST"

    .line 507
    .line 508
    const/16 v2, 0x1e

    .line 509
    .line 510
    const/16 v3, 0x1e

    .line 511
    .line 512
    move-object/from16 v5, v51

    .line 513
    .line 514
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 518
    .line 519
    move-object/from16 v37, v0

    .line 520
    .line 521
    const-string v1, "SFIXED32_LIST"

    .line 522
    .line 523
    const/16 v2, 0x1f

    .line 524
    .line 525
    const/16 v3, 0x1f

    .line 526
    .line 527
    move-object/from16 v5, v54

    .line 528
    .line 529
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 530
    .line 531
    .line 532
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 533
    .line 534
    move-object/from16 v38, v0

    .line 535
    .line 536
    const-string v1, "SFIXED64_LIST"

    .line 537
    .line 538
    const/16 v2, 0x20

    .line 539
    .line 540
    const/16 v3, 0x20

    .line 541
    .line 542
    move-object/from16 v5, v55

    .line 543
    .line 544
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 545
    .line 546
    .line 547
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 548
    .line 549
    move-object/from16 v39, v0

    .line 550
    .line 551
    const-string v1, "SINT32_LIST"

    .line 552
    .line 553
    const/16 v2, 0x21

    .line 554
    .line 555
    const/16 v3, 0x21

    .line 556
    .line 557
    move-object/from16 v5, v54

    .line 558
    .line 559
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 560
    .line 561
    .line 562
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 563
    .line 564
    move-object/from16 v40, v0

    .line 565
    .line 566
    const-string v1, "SINT64_LIST"

    .line 567
    .line 568
    const/16 v2, 0x22

    .line 569
    .line 570
    const/16 v3, 0x22

    .line 571
    .line 572
    move-object/from16 v5, v55

    .line 573
    .line 574
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 575
    .line 576
    .line 577
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 578
    .line 579
    move-object/from16 v41, v0

    .line 580
    .line 581
    const-string v43, "DOUBLE_LIST_PACKED"

    .line 582
    .line 583
    const/16 v44, 0x23

    .line 584
    .line 585
    const/16 v45, 0x23

    .line 586
    .line 587
    sget-object v56, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    .line 588
    .line 589
    move-object/from16 v42, v0

    .line 590
    .line 591
    move-object/from16 v46, v56

    .line 592
    .line 593
    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 594
    .line 595
    .line 596
    sput-object v0, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 597
    .line 598
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 599
    .line 600
    move-object/from16 v42, v0

    .line 601
    .line 602
    const-string v1, "FLOAT_LIST_PACKED"

    .line 603
    .line 604
    const/16 v2, 0x24

    .line 605
    .line 606
    const/16 v3, 0x24

    .line 607
    .line 608
    move-object/from16 v4, v56

    .line 609
    .line 610
    move-object/from16 v5, v48

    .line 611
    .line 612
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 613
    .line 614
    .line 615
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 616
    .line 617
    move-object/from16 v43, v0

    .line 618
    .line 619
    const-string v1, "INT64_LIST_PACKED"

    .line 620
    .line 621
    const/16 v2, 0x25

    .line 622
    .line 623
    const/16 v3, 0x25

    .line 624
    .line 625
    move-object/from16 v5, v55

    .line 626
    .line 627
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 628
    .line 629
    .line 630
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 631
    .line 632
    move-object/from16 v44, v0

    .line 633
    .line 634
    const-string v1, "UINT64_LIST_PACKED"

    .line 635
    .line 636
    const/16 v2, 0x26

    .line 637
    .line 638
    const/16 v3, 0x26

    .line 639
    .line 640
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 641
    .line 642
    .line 643
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 644
    .line 645
    move-object/from16 v45, v0

    .line 646
    .line 647
    const-string v1, "INT32_LIST_PACKED"

    .line 648
    .line 649
    const/16 v2, 0x27

    .line 650
    .line 651
    const/16 v3, 0x27

    .line 652
    .line 653
    move-object/from16 v5, v54

    .line 654
    .line 655
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 656
    .line 657
    .line 658
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 659
    .line 660
    move-object/from16 v46, v0

    .line 661
    .line 662
    const-string v1, "FIXED64_LIST_PACKED"

    .line 663
    .line 664
    const/16 v2, 0x28

    .line 665
    .line 666
    const/16 v3, 0x28

    .line 667
    .line 668
    move-object/from16 v5, v55

    .line 669
    .line 670
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 671
    .line 672
    .line 673
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 674
    .line 675
    move-object/from16 v47, v0

    .line 676
    .line 677
    const-string v1, "FIXED32_LIST_PACKED"

    .line 678
    .line 679
    const/16 v2, 0x29

    .line 680
    .line 681
    const/16 v3, 0x29

    .line 682
    .line 683
    move-object/from16 v5, v54

    .line 684
    .line 685
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 686
    .line 687
    .line 688
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 689
    .line 690
    move-object/from16 v48, v0

    .line 691
    .line 692
    const-string v1, "BOOL_LIST_PACKED"

    .line 693
    .line 694
    const/16 v2, 0x2a

    .line 695
    .line 696
    const/16 v3, 0x2a

    .line 697
    .line 698
    move-object/from16 v5, v49

    .line 699
    .line 700
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 701
    .line 702
    .line 703
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 704
    .line 705
    move-object/from16 v49, v0

    .line 706
    .line 707
    const-string v1, "UINT32_LIST_PACKED"

    .line 708
    .line 709
    const/16 v2, 0x2b

    .line 710
    .line 711
    const/16 v3, 0x2b

    .line 712
    .line 713
    move-object/from16 v5, v54

    .line 714
    .line 715
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 716
    .line 717
    .line 718
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 719
    .line 720
    move-object/from16 v50, v0

    .line 721
    .line 722
    const-string v1, "ENUM_LIST_PACKED"

    .line 723
    .line 724
    const/16 v2, 0x2c

    .line 725
    .line 726
    const/16 v3, 0x2c

    .line 727
    .line 728
    move-object/from16 v5, v51

    .line 729
    .line 730
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 731
    .line 732
    .line 733
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 734
    .line 735
    move-object/from16 v51, v0

    .line 736
    .line 737
    const-string v1, "SFIXED32_LIST_PACKED"

    .line 738
    .line 739
    const/16 v2, 0x2d

    .line 740
    .line 741
    const/16 v3, 0x2d

    .line 742
    .line 743
    move-object/from16 v5, v54

    .line 744
    .line 745
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 749
    .line 750
    move-object/from16 v52, v0

    .line 751
    .line 752
    const-string v1, "SFIXED64_LIST_PACKED"

    .line 753
    .line 754
    const/16 v2, 0x2e

    .line 755
    .line 756
    const/16 v3, 0x2e

    .line 757
    .line 758
    move-object/from16 v5, v55

    .line 759
    .line 760
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 764
    .line 765
    move-object/from16 v53, v0

    .line 766
    .line 767
    const-string v1, "SINT32_LIST_PACKED"

    .line 768
    .line 769
    const/16 v2, 0x2f

    .line 770
    .line 771
    const/16 v3, 0x2f

    .line 772
    .line 773
    move-object/from16 v5, v54

    .line 774
    .line 775
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 776
    .line 777
    .line 778
    new-instance v57, Lcom/google/protobuf/FieldType;

    .line 779
    .line 780
    move-object/from16 v54, v57

    .line 781
    .line 782
    const-string v1, "SINT64_LIST_PACKED"

    .line 783
    .line 784
    const/16 v2, 0x30

    .line 785
    .line 786
    const/16 v3, 0x30

    .line 787
    .line 788
    move-object/from16 v0, v57

    .line 789
    .line 790
    move-object/from16 v5, v55

    .line 791
    .line 792
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 793
    .line 794
    .line 795
    sput-object v57, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 796
    .line 797
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 798
    .line 799
    move-object/from16 v55, v0

    .line 800
    .line 801
    const-string v57, "GROUP_LIST"

    .line 802
    .line 803
    const/16 v58, 0x31

    .line 804
    .line 805
    const/16 v59, 0x31

    .line 806
    .line 807
    move-object/from16 v56, v0

    .line 808
    .line 809
    invoke-direct/range {v56 .. v61}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 810
    .line 811
    .line 812
    sput-object v0, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    .line 813
    .line 814
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 815
    .line 816
    move-object/from16 v56, v0

    .line 817
    .line 818
    const-string v63, "MAP"

    .line 819
    .line 820
    const/16 v64, 0x32

    .line 821
    .line 822
    const/16 v65, 0x32

    .line 823
    .line 824
    sget-object v66, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    .line 825
    .line 826
    sget-object v67, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    .line 827
    .line 828
    move-object/from16 v62, v0

    .line 829
    .line 830
    invoke-direct/range {v62 .. v67}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 831
    .line 832
    .line 833
    sput-object v0, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    .line 834
    .line 835
    filled-new-array/range {v6 .. v56}, [Lcom/google/protobuf/FieldType;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    sput-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 840
    .line 841
    invoke-static {}, Lcom/google/protobuf/FieldType;->values()[Lcom/google/protobuf/FieldType;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    array-length v1, v0

    .line 846
    new-array v1, v1, [Lcom/google/protobuf/FieldType;

    .line 847
    .line 848
    sput-object v1, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 849
    .line 850
    array-length v1, v0

    .line 851
    const/4 v2, 0x0

    .line 852
    :goto_0
    if-ge v2, v1, :cond_0

    .line 853
    .line 854
    aget-object v3, v0, v2

    .line 855
    .line 856
    sget-object v4, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 857
    .line 858
    iget v5, v3, Lcom/google/protobuf/FieldType;->id:I

    .line 859
    .line 860
    aput-object v3, v4, v5

    .line 861
    .line 862
    add-int/lit8 v2, v2, 0x1

    .line 863
    .line 864
    goto :goto_0

    .line 865
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType$Collection;",
            "Lcom/google/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    .line 9
    .line 10
    sget-object p1, Lcom/google/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    .line 11
    .line 12
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    aget p1, p1, p2

    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    const/4 p3, 0x1

    .line 20
    if-eq p1, p3, :cond_1

    .line 21
    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 40
    .line 41
    :goto_0
    sget-object p1, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    .line 42
    .line 43
    if-ne p4, p1, :cond_2

    .line 44
    .line 45
    sget-object p1, Lcom/google/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    .line 46
    .line 47
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    aget p1, p1, p4

    .line 52
    .line 53
    if-eq p1, p3, :cond_2

    .line 54
    .line 55
    if-eq p1, p2, :cond_2

    .line 56
    .line 57
    const/4 p2, 0x3

    .line 58
    if-eq p1, p2, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p3, 0x0

    .line 62
    :goto_1
    iput-boolean p3, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    .line 63
    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/FieldType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/protobuf/FieldType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/FieldType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/protobuf/FieldType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final id()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public final isList()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/FieldType$Collection;->isList()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isMap()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    .line 2
    .line 3
    sget-object v0, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method
