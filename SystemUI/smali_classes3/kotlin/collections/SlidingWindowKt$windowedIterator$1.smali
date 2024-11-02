.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/collections/SlidingWindowKt$windowedIterator$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 2
    .line 3
    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 4
    .line 5
    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    .line 2
    .line 3
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 4
    .line 5
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 6
    .line 7
    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 8
    .line 9
    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    .line 10
    .line 11
    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, 0x1

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    if-eq v2, v9, :cond_4

    .line 17
    .line 18
    if-eq v2, v8, :cond_3

    .line 19
    .line 20
    if-eq v2, v7, :cond_2

    .line 21
    .line 22
    if-eq v2, v6, :cond_1

    .line 23
    .line 24
    if-ne v2, v5, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    iget-object v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lkotlin/collections/RingBuffer;

    .line 38
    .line 39
    iget-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Lkotlin/sequences/SequenceScope;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_e

    .line 47
    .line 48
    :cond_2
    iget-object v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Ljava/util/Iterator;

    .line 51
    .line 52
    iget-object v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v8, Lkotlin/collections/RingBuffer;

    .line 55
    .line 56
    iget-object v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v10, Lkotlin/sequences/SequenceScope;

    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_b

    .line 64
    .line 65
    :cond_3
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_f

    .line 69
    .line 70
    :cond_4
    iget v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 71
    .line 72
    iget-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Ljava/util/Iterator;

    .line 75
    .line 76
    iget-object v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Ljava/util/ArrayList;

    .line 79
    .line 80
    iget-object v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v6, Lkotlin/sequences/SequenceScope;

    .line 83
    .line 84
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move v12, v2

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lkotlin/sequences/SequenceScope;

    .line 95
    .line 96
    iget v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 97
    .line 98
    const/16 v11, 0x400

    .line 99
    .line 100
    if-le v10, v11, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    move v11, v10

    .line 104
    :goto_1
    iget v12, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 105
    .line 106
    sub-int/2addr v12, v10

    .line 107
    if-ltz v12, :cond_d

    .line 108
    .line 109
    new-instance v5, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    iget-object v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 115
    .line 116
    move-object/from16 v16, v6

    .line 117
    .line 118
    move-object v6, v2

    .line 119
    move v2, v4

    .line 120
    move-object/from16 v4, v16

    .line 121
    .line 122
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_b

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    if-lez v2, :cond_8

    .line 133
    .line 134
    add-int/lit8 v2, v2, -0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    iget v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 145
    .line 146
    if-ne v7, v10, :cond_7

    .line 147
    .line 148
    iput-object v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 153
    .line 154
    iput v12, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 155
    .line 156
    iput v9, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 157
    .line 158
    invoke-virtual {v6, v5, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-ne v2, v1, :cond_9

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_9
    :goto_3
    iget-boolean v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    .line 166
    .line 167
    if-eqz v2, :cond_a

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    .line 174
    .line 175
    iget v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 176
    .line 177
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    move-object v5, v2

    .line 181
    :goto_4
    move v2, v12

    .line 182
    goto :goto_2

    .line 183
    :cond_b
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    xor-int/2addr v2, v9

    .line 188
    if-eqz v2, :cond_1b

    .line 189
    .line 190
    iget-boolean v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    .line 191
    .line 192
    if-nez v2, :cond_c

    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    iget v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 199
    .line 200
    if-ne v2, v4, :cond_1b

    .line 201
    .line 202
    :cond_c
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 207
    .line 208
    iput v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 209
    .line 210
    invoke-virtual {v6, v5, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-ne v0, v1, :cond_1b

    .line 215
    .line 216
    return-object v1

    .line 217
    :cond_d
    new-instance v8, Lkotlin/collections/RingBuffer;

    .line 218
    .line 219
    invoke-direct {v8, v11}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 220
    .line 221
    .line 222
    iget-object v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 223
    .line 224
    move-object/from16 v16, v10

    .line 225
    .line 226
    move-object v10, v2

    .line 227
    move-object/from16 v2, v16

    .line 228
    .line 229
    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_17

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    iget v13, v8, Lkotlin/collections/RingBuffer;->capacity:I

    .line 244
    .line 245
    if-ne v12, v13, :cond_f

    .line 246
    .line 247
    move v12, v9

    .line 248
    goto :goto_6

    .line 249
    :cond_f
    move v12, v4

    .line 250
    :goto_6
    if-nez v12, :cond_16

    .line 251
    .line 252
    iget-object v12, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    .line 253
    .line 254
    iget v14, v8, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 255
    .line 256
    iget v15, v8, Lkotlin/collections/RingBuffer;->size:I

    .line 257
    .line 258
    add-int/2addr v14, v15

    .line 259
    rem-int/2addr v14, v13

    .line 260
    aput-object v11, v12, v14

    .line 261
    .line 262
    add-int/lit8 v15, v15, 0x1

    .line 263
    .line 264
    iput v15, v8, Lkotlin/collections/RingBuffer;->size:I

    .line 265
    .line 266
    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    iget v12, v8, Lkotlin/collections/RingBuffer;->capacity:I

    .line 271
    .line 272
    if-ne v11, v12, :cond_10

    .line 273
    .line 274
    move v11, v9

    .line 275
    goto :goto_7

    .line 276
    :cond_10
    move v11, v4

    .line 277
    :goto_7
    if-eqz v11, :cond_e

    .line 278
    .line 279
    iget v11, v8, Lkotlin/collections/RingBuffer;->size:I

    .line 280
    .line 281
    iget v13, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 282
    .line 283
    if-ge v11, v13, :cond_13

    .line 284
    .line 285
    shr-int/lit8 v11, v12, 0x1

    .line 286
    .line 287
    add-int/2addr v12, v11

    .line 288
    add-int/2addr v12, v9

    .line 289
    if-le v12, v13, :cond_11

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_11
    move v13, v12

    .line 293
    :goto_8
    iget v11, v8, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 294
    .line 295
    if-nez v11, :cond_12

    .line 296
    .line 297
    iget-object v11, v8, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    .line 298
    .line 299
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    goto :goto_9

    .line 304
    :cond_12
    new-array v11, v13, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-virtual {v8, v11}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    :goto_9
    new-instance v12, Lkotlin/collections/RingBuffer;

    .line 311
    .line 312
    iget v8, v8, Lkotlin/collections/RingBuffer;->size:I

    .line 313
    .line 314
    invoke-direct {v12, v11, v8}, Lkotlin/collections/RingBuffer;-><init>([Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    move-object v8, v12

    .line 318
    goto :goto_5

    .line 319
    :cond_13
    iget-boolean v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    .line 320
    .line 321
    if-eqz v11, :cond_14

    .line 322
    .line 323
    move-object v11, v8

    .line 324
    goto :goto_a

    .line 325
    :cond_14
    new-instance v11, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .line 329
    .line 330
    :goto_a
    iput-object v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 331
    .line 332
    iput-object v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 335
    .line 336
    iput v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 337
    .line 338
    invoke-virtual {v10, v11, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    if-ne v11, v1, :cond_15

    .line 343
    .line 344
    return-object v1

    .line 345
    :cond_15
    :goto_b
    iget v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 346
    .line 347
    invoke-virtual {v8, v11}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 352
    .line 353
    const-string v1, "ring buffer is full"

    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_17
    iget-boolean v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    .line 360
    .line 361
    if-eqz v2, :cond_1b

    .line 362
    .line 363
    move-object v2, v8

    .line 364
    move-object v4, v10

    .line 365
    :goto_c
    iget v7, v2, Lkotlin/collections/RingBuffer;->size:I

    .line 366
    .line 367
    iget v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 368
    .line 369
    if-le v7, v8, :cond_1a

    .line 370
    .line 371
    iget-boolean v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    .line 372
    .line 373
    if-eqz v7, :cond_18

    .line 374
    .line 375
    move-object v7, v2

    .line 376
    goto :goto_d

    .line 377
    :cond_18
    new-instance v7, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .line 381
    .line 382
    :goto_d
    iput-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 387
    .line 388
    iput v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 389
    .line 390
    invoke-virtual {v4, v7, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    if-ne v7, v1, :cond_19

    .line 395
    .line 396
    return-object v1

    .line 397
    :cond_19
    :goto_e
    iget v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 398
    .line 399
    invoke-virtual {v2, v7}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 400
    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_1a
    invoke-virtual {v2}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    xor-int/2addr v6, v9

    .line 408
    if-eqz v6, :cond_1b

    .line 409
    .line 410
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 411
    .line 412
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 413
    .line 414
    iput-object v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    .line 415
    .line 416
    iput v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 417
    .line 418
    invoke-virtual {v4, v2, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-ne v0, v1, :cond_1b

    .line 423
    .line 424
    return-object v1

    .line 425
    :cond_1b
    :goto_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 426
    .line 427
    return-object v0
.end method
