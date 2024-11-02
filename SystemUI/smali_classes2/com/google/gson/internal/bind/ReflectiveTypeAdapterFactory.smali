.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    iget-object v1, v13, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 8
    .line 9
    const-class v14, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v14, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v15, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-object v15

    .line 19
    :cond_0
    iget-object v11, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 20
    .line 21
    invoke-virtual {v11, v13}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    new-instance v9, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    .line 26
    .line 27
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    :cond_1
    move-object v14, v8

    .line 39
    move-object/from16 v33, v9

    .line 40
    .line 41
    move-object/from16 v34, v10

    .line 42
    .line 43
    goto/16 :goto_b

    .line 44
    .line 45
    :cond_2
    move-object v7, v1

    .line 46
    move-object v6, v13

    .line 47
    :goto_0
    if-eq v7, v14, :cond_1

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    array-length v4, v5

    .line 54
    const/4 v3, 0x0

    .line 55
    move v2, v3

    .line 56
    :goto_1
    iget-object v1, v6, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 57
    .line 58
    if-ge v2, v4, :cond_f

    .line 59
    .line 60
    aget-object v15, v5, v2

    .line 61
    .line 62
    move-object/from16 v16, v14

    .line 63
    .line 64
    const/4 v14, 0x1

    .line 65
    invoke-virtual {v0, v15, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v17

    .line 69
    invoke-virtual {v0, v15, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v18

    .line 73
    if-nez v17, :cond_3

    .line 74
    .line 75
    if-nez v18, :cond_3

    .line 76
    .line 77
    move/from16 v21, v2

    .line 78
    .line 79
    move/from16 v25, v3

    .line 80
    .line 81
    move/from16 v22, v4

    .line 82
    .line 83
    move-object/from16 v30, v5

    .line 84
    .line 85
    move-object/from16 v31, v6

    .line 86
    .line 87
    move-object/from16 v32, v7

    .line 88
    .line 89
    move-object v14, v8

    .line 90
    move-object/from16 v33, v9

    .line 91
    .line 92
    move-object/from16 v34, v10

    .line 93
    .line 94
    move-object/from16 v23, v11

    .line 95
    .line 96
    goto/16 :goto_a

    .line 97
    .line 98
    :cond_3
    :try_start_0
    invoke-virtual {v15, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v14, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v7, v3, v14}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    const-class v1, Lcom/google/gson/annotations/SerializedName;

    .line 115
    .line 116
    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/google/gson/annotations/SerializedName;

    .line 121
    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 125
    .line 126
    invoke-interface {v1, v15}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    move/from16 v21, v2

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move/from16 v21, v2

    .line 146
    .line 147
    array-length v2, v1

    .line 148
    if-nez v2, :cond_5

    .line 149
    .line 150
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_2
    move/from16 v22, v4

    .line 155
    .line 156
    const/16 v20, 0x1

    .line 157
    .line 158
    move-object v4, v1

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 161
    .line 162
    move/from16 v22, v4

    .line 163
    .line 164
    array-length v4, v1

    .line 165
    const/16 v20, 0x1

    .line 166
    .line 167
    add-int/lit8 v4, v4, 0x1

    .line 168
    .line 169
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    array-length v3, v1

    .line 176
    const/4 v4, 0x0

    .line 177
    :goto_3
    if-ge v4, v3, :cond_6

    .line 178
    .line 179
    move/from16 v23, v3

    .line 180
    .line 181
    aget-object v3, v1, v4

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    add-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    move/from16 v3, v23

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    move-object v4, v2

    .line 192
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    const/4 v1, 0x0

    .line 197
    const/4 v2, 0x0

    .line 198
    :goto_5
    if-ge v2, v3, :cond_d

    .line 199
    .line 200
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v23

    .line 204
    move-object/from16 v13, v23

    .line 205
    .line 206
    check-cast v13, Ljava/lang/String;

    .line 207
    .line 208
    move-object/from16 v23, v10

    .line 209
    .line 210
    if-eqz v2, :cond_7

    .line 211
    .line 212
    const/16 v17, 0x0

    .line 213
    .line 214
    :cond_7
    new-instance v10, Lcom/google/gson/reflect/TypeToken;

    .line 215
    .line 216
    invoke-direct {v10, v14}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v24, v1

    .line 220
    .line 221
    iget-object v1, v10, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 222
    .line 223
    move/from16 v25, v2

    .line 224
    .line 225
    instance-of v2, v1, Ljava/lang/Class;

    .line 226
    .line 227
    if-eqz v2, :cond_8

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_8

    .line 234
    .line 235
    move/from16 v26, v20

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    const/16 v26, 0x0

    .line 239
    .line 240
    :goto_6
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 241
    .line 242
    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 247
    .line 248
    if-eqz v1, :cond_9

    .line 249
    .line 250
    iget-object v2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v11, v12, v10, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    goto :goto_7

    .line 260
    :cond_9
    const/4 v1, 0x0

    .line 261
    :goto_7
    if-eqz v1, :cond_a

    .line 262
    .line 263
    move/from16 v27, v20

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_a
    const/16 v27, 0x0

    .line 267
    .line 268
    :goto_8
    if-nez v1, :cond_b

    .line 269
    .line 270
    invoke-virtual {v12, v10}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    :cond_b
    move-object/from16 v28, v1

    .line 275
    .line 276
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 277
    .line 278
    move-object/from16 v0, v24

    .line 279
    .line 280
    move-object v1, v2

    .line 281
    move-object v12, v2

    .line 282
    move/from16 v24, v25

    .line 283
    .line 284
    move-object/from16 v2, p0

    .line 285
    .line 286
    move/from16 v19, v3

    .line 287
    .line 288
    const/16 v25, 0x0

    .line 289
    .line 290
    move-object v3, v13

    .line 291
    move-object/from16 v29, v4

    .line 292
    .line 293
    move/from16 v4, v17

    .line 294
    .line 295
    move-object/from16 v30, v5

    .line 296
    .line 297
    move/from16 v5, v18

    .line 298
    .line 299
    move-object/from16 v31, v6

    .line 300
    .line 301
    move-object v6, v15

    .line 302
    move-object/from16 v32, v7

    .line 303
    .line 304
    move/from16 v7, v27

    .line 305
    .line 306
    move-object/from16 v27, v14

    .line 307
    .line 308
    move-object v14, v8

    .line 309
    move-object/from16 v8, v28

    .line 310
    .line 311
    move-object/from16 v33, v9

    .line 312
    .line 313
    move-object/from16 v9, p1

    .line 314
    .line 315
    move-object/from16 v34, v23

    .line 316
    .line 317
    move-object/from16 v23, v11

    .line 318
    .line 319
    move/from16 v11, v26

    .line 320
    .line 321
    invoke-direct/range {v1 .. v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    check-cast v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 329
    .line 330
    if-nez v0, :cond_c

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_c
    move-object v1, v0

    .line 334
    :goto_9
    add-int/lit8 v2, v24, 0x1

    .line 335
    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    move-object/from16 v12, p1

    .line 339
    .line 340
    move-object/from16 v13, p2

    .line 341
    .line 342
    move-object v8, v14

    .line 343
    move/from16 v3, v19

    .line 344
    .line 345
    move-object/from16 v11, v23

    .line 346
    .line 347
    move-object/from16 v14, v27

    .line 348
    .line 349
    move-object/from16 v4, v29

    .line 350
    .line 351
    move-object/from16 v5, v30

    .line 352
    .line 353
    move-object/from16 v6, v31

    .line 354
    .line 355
    move-object/from16 v7, v32

    .line 356
    .line 357
    move-object/from16 v9, v33

    .line 358
    .line 359
    move-object/from16 v10, v34

    .line 360
    .line 361
    goto/16 :goto_5

    .line 362
    .line 363
    :cond_d
    move-object v0, v1

    .line 364
    move-object/from16 v30, v5

    .line 365
    .line 366
    move-object/from16 v31, v6

    .line 367
    .line 368
    move-object/from16 v32, v7

    .line 369
    .line 370
    move-object v14, v8

    .line 371
    move-object/from16 v33, v9

    .line 372
    .line 373
    move-object/from16 v34, v10

    .line 374
    .line 375
    move-object/from16 v23, v11

    .line 376
    .line 377
    const/16 v25, 0x0

    .line 378
    .line 379
    if-nez v0, :cond_e

    .line 380
    .line 381
    :goto_a
    add-int/lit8 v2, v21, 0x1

    .line 382
    .line 383
    move-object/from16 v0, p0

    .line 384
    .line 385
    move-object/from16 v12, p1

    .line 386
    .line 387
    move-object/from16 v13, p2

    .line 388
    .line 389
    move-object v8, v14

    .line 390
    move-object/from16 v14, v16

    .line 391
    .line 392
    move/from16 v4, v22

    .line 393
    .line 394
    move-object/from16 v11, v23

    .line 395
    .line 396
    move/from16 v3, v25

    .line 397
    .line 398
    move-object/from16 v5, v30

    .line 399
    .line 400
    move-object/from16 v6, v31

    .line 401
    .line 402
    move-object/from16 v7, v32

    .line 403
    .line 404
    move-object/from16 v9, v33

    .line 405
    .line 406
    move-object/from16 v10, v34

    .line 407
    .line 408
    const/4 v15, 0x0

    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 412
    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    move-object/from16 v3, p2

    .line 419
    .line 420
    iget-object v3, v3, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v3, " declares multiple JSON fields named "

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    move-object v1, v0

    .line 445
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 446
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v3, "Failed making field \'"

    .line 450
    .line 451
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v3, "#"

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v3, "\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type"

    .line 478
    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-direct {v0, v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    .line 488
    .line 489
    throw v0

    .line 490
    :cond_f
    move-object/from16 v32, v7

    .line 491
    .line 492
    move-object/from16 v33, v9

    .line 493
    .line 494
    move-object/from16 v34, v10

    .line 495
    .line 496
    move-object/from16 v23, v11

    .line 497
    .line 498
    move-object v3, v13

    .line 499
    move-object/from16 v16, v14

    .line 500
    .line 501
    move-object v14, v8

    .line 502
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    new-instance v2, Ljava/util/HashMap;

    .line 507
    .line 508
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 509
    .line 510
    .line 511
    move-object/from16 v4, v32

    .line 512
    .line 513
    invoke-static {v1, v4, v0, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    new-instance v6, Lcom/google/gson/reflect/TypeToken;

    .line 518
    .line 519
    invoke-direct {v6, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 520
    .line 521
    .line 522
    iget-object v7, v6, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 523
    .line 524
    move-object/from16 v0, p0

    .line 525
    .line 526
    move-object/from16 v12, p1

    .line 527
    .line 528
    move-object v13, v3

    .line 529
    move-object v8, v14

    .line 530
    move-object/from16 v14, v16

    .line 531
    .line 532
    move-object/from16 v11, v23

    .line 533
    .line 534
    move-object/from16 v9, v33

    .line 535
    .line 536
    move-object/from16 v10, v34

    .line 537
    .line 538
    const/4 v15, 0x0

    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :goto_b
    move-object/from16 v1, v33

    .line 542
    .line 543
    move-object/from16 v0, v34

    .line 544
    .line 545
    invoke-direct {v1, v0, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    .line 546
    .line 547
    .line 548
    return-object v1
.end method

.method public final excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    .line 16
    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    if-nez v0, :cond_b

    .line 22
    .line 23
    iget v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    and-int/2addr v0, v3

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    iget-wide v3, p0, Lcom/google/gson/internal/Excluder;->version:D

    .line 34
    .line 35
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 36
    .line 37
    cmpl-double v0, v3, v5

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-class v0, Lcom/google/gson/annotations/Since;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/google/gson/annotations/Since;

    .line 48
    .line 49
    const-class v3, Lcom/google/gson/annotations/Until;

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/google/gson/annotations/Until;

    .line 56
    .line 57
    invoke-virtual {p0, v0, v3}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 72
    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    and-int/lit8 v0, v0, 0x8

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    move v0, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move v0, v1

    .line 96
    :goto_1
    if-nez v0, :cond_5

    .line 97
    .line 98
    move v0, v2

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move v0, v1

    .line 101
    :goto_2
    if-eqz v0, :cond_6

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    :goto_3
    move p0, v2

    .line 115
    goto :goto_6

    .line 116
    :cond_7
    if-eqz p2, :cond_8

    .line 117
    .line 118
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 122
    .line 123
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_a

    .line 128
    .line 129
    new-instance p2, Lcom/google/gson/FieldAttributes;

    .line 130
    .line 131
    invoke-direct {p2, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_9

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const/4 p0, 0x0

    .line 153
    throw p0

    .line 154
    :cond_a
    :goto_5
    move p0, v1

    .line 155
    :goto_6
    if-nez p0, :cond_b

    .line 156
    .line 157
    move v1, v2

    .line 158
    :cond_b
    return v1
.end method
