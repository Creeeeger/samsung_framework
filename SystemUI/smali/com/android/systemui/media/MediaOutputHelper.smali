.class public final Lcom/android/systemui/media/MediaOutputHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mediaHost:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/MediaOutputHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaOutputHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/SecMediaHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/MediaOutputHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Context;ZLcom/android/systemui/media/MediaType;Ljava/lang/String;Landroid/widget/TextView;Landroid/media/session/MediaSession$Token;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.mdx.quickboard.ACTION_OPEN_MEDIA_PANEL"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.samsung.android.mdx.quickboard"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/media/MediaOutputHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 14
    .line 15
    if-nez p4, :cond_4

    .line 16
    .line 17
    iget-object p4, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    check-cast p4, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p4, :cond_3

    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget v2, p4, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    .line 39
    .line 40
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v3, p4, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    .line 51
    .line 52
    if-gt v2, v3, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;

    .line 68
    .line 69
    invoke-direct {v3, p4}, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;-><init>(Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;

    .line 77
    .line 78
    invoke-direct {v3, p4}, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;-><init>(Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-interface {p4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move-object p4, v1

    .line 97
    :goto_0
    if-eqz p4, :cond_2

    .line 98
    .line 99
    invoke-virtual {p4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    check-cast p4, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    move-object p4, v1

    .line 107
    :goto_2
    if-eqz p4, :cond_3

    .line 108
    .line 109
    iget-object p4, p4, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move-object p4, v1

    .line 113
    :goto_3
    if-nez p4, :cond_4

    .line 114
    .line 115
    const-string p4, ""

    .line 116
    .line 117
    :cond_4
    const-string v1, "getCpPackage: "

    .line 118
    .line 119
    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "MediaOutputHelper"

    .line 124
    .line 125
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    const-string v1, "extra_cp_package"

    .line 129
    .line 130
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 140
    .line 141
    if-eqz p0, :cond_9

    .line 142
    .line 143
    new-instance p4, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v3, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 153
    .line 154
    invoke-direct {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1;-><init>(Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 160
    .line 161
    .line 162
    new-instance v4, Lkotlin/sequences/TransformingSequence;

    .line 163
    .line 164
    invoke-direct {v4, v3, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$2;->INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$2;

    .line 168
    .line 169
    invoke-static {v4, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    new-instance v3, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 174
    .line 175
    invoke-direct {v3, v1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 176
    .line 177
    .line 178
    :goto_4
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Ljava/util/Optional;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object p4

    .line 209
    :cond_6
    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 230
    .line 231
    if-eqz v3, :cond_6

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 238
    .line 239
    const/16 p4, 0xa

    .line 240
    .line 241
    invoke-static {v1, p4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 242
    .line 243
    .line 244
    move-result p4

    .line 245
    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 263
    .line 264
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_8
    new-instance p4, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {p4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_9
    new-instance p4, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v1, "getCpList: "

    .line 284
    .line 285
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    const-string p0, "extra_cp_list"

    .line 299
    .line 300
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    new-instance p0, Landroid/graphics/Rect;

    .line 304
    .line 305
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p5, p0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 309
    .line 310
    .line 311
    new-instance p4, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string p5, "getButtonRect: "

    .line 314
    .line 315
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p4

    .line 325
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    const-string p4, "extra_button_rect"

    .line 329
    .line 330
    invoke-virtual {v0, p4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    if-nez p2, :cond_a

    .line 334
    .line 335
    const/4 p0, 0x0

    .line 336
    goto :goto_8

    .line 337
    :cond_a
    sget-object p0, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    .line 338
    .line 339
    if-ne p3, p0, :cond_b

    .line 340
    .line 341
    const/16 p0, 0x14

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_b
    const/4 p0, 0x1

    .line 345
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string p3, "getFrom: "

    .line 348
    .line 349
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    const-string p2, "extra_from"

    .line 363
    .line 364
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    .line 366
    .line 367
    if-eqz p6, :cond_c

    .line 368
    .line 369
    const-string p0, "extra_token"

    .line 370
    .line 371
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 372
    .line 373
    .line 374
    :cond_c
    const/high16 p0, 0x10000000

    .line 375
    .line 376
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 380
    .line 381
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 382
    .line 383
    .line 384
    return-void
.end method
