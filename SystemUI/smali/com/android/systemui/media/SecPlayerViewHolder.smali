.class public final Lcom/android/systemui/media/SecPlayerViewHolder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public albumThumbnail:Landroid/widget/ImageView;

.field public albumView:Landroid/widget/ImageView;

.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public artistText:Landroid/widget/TextView;

.field public budsButtonCollapsed:Landroid/widget/ImageButton;

.field public budsButtonExpanded:Landroid/widget/ImageButton;

.field public cancelText:Landroid/widget/TextView;

.field public final collapsedActionButtons$delegate:Lkotlin/Lazy;

.field public collapsedActionButtonsContainer:Landroid/widget/LinearLayout;

.field public dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

.field public elapsedTimeView:Landroid/widget/TextView;

.field public expandIcon:Landroid/widget/ImageView;

.field public final expandedActionButtons$delegate:Lkotlin/Lazy;

.field public expandedActionButtonsContainer:Landroid/widget/LinearLayout;

.field public header:Landroid/widget/LinearLayout;

.field public mediaOutputText:Landroid/widget/TextView;

.field public optionButtons:Landroid/view/View;

.field public options:Landroid/view/View;

.field public optionsAppIcon:Landroid/widget/ImageView;

.field public optionsAppTitle:Landroid/widget/TextView;

.field public player:Landroid/widget/LinearLayout;

.field public playerView:Landroid/view/View;

.field public progressBarPrimaryColor:I

.field public progressBarSecondaryColor:I

.field public progressInfo:Landroid/widget/LinearLayout;

.field public remove:Landroid/view/View;

.field public removeText:Landroid/widget/TextView;

.field public seamlessText:Landroid/widget/TextView;

.field public seekBar:Landroid/widget/SeekBar;

.field public titleArtistView:Landroid/widget/LinearLayout;

.field public titleText:Landroid/widget/TextView;

.field public totalTimeView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/SecPlayerViewHolder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecPlayerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/android/systemui/media/MediaType;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxPrimaryColor:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarPrimaryColor:I

    .line 12
    .line 13
    sget v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxSecondaryColor:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarSecondaryColor:I

    .line 16
    .line 17
    const v0, 0x7f0a0962

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a0963

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f0a0964

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f0a0965

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const v4, 0x7f0a0966

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lcom/android/systemui/media/SecPlayerViewHolder$collapsedActionButtons$2;->INSTANCE:Lcom/android/systemui/media/SecPlayerViewHolder$collapsedActionButtons$2;

    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapsedActionButtons$delegate:Lkotlin/Lazy;

    .line 67
    .line 68
    sget-object v1, Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;->INSTANCE:Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getLayout()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const p2, 0x7f0a09aa

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 96
    .line 97
    const p2, 0x7f0a0967

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Landroid/widget/ImageView;

    .line 105
    .line 106
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    .line 107
    .line 108
    const p2, 0x7f0a0992

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/widget/ImageView;

    .line 116
    .line 117
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 118
    .line 119
    const p2, 0x7f0a096a

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appName:Landroid/widget/TextView;

    .line 129
    .line 130
    const p2, 0x7f0a0990

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    .line 140
    .line 141
    const p2, 0x7f0a064f

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->header:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    const p2, 0x7f0a0991

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/TextView;

    .line 160
    .line 161
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    .line 162
    .line 163
    const p2, 0x7f0a099e

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Landroid/widget/TextView;

    .line 171
    .line 172
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    .line 173
    .line 174
    const p2, 0x7f0a096d

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 184
    .line 185
    const p2, 0x7f0a099d

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/widget/TextView;

    .line 193
    .line 194
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 195
    .line 196
    const p2, 0x7f0a09a0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    check-cast p2, Landroid/widget/SeekBar;

    .line 204
    .line 205
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 206
    .line 207
    const p2, 0x7f0a09a1

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    check-cast p2, Landroid/widget/TextView;

    .line 215
    .line 216
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 217
    .line 218
    const p2, 0x7f0a0066

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    check-cast p2, Landroid/widget/LinearLayout;

    .line 226
    .line 227
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapsedActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 228
    .line 229
    const p2, 0x7f0a0067

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    check-cast p2, Landroid/widget/LinearLayout;

    .line 237
    .line 238
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    const p3, 0x7f0a01e5

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    check-cast p2, Landroid/widget/ImageButton;

    .line 252
    .line 253
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonCollapsed:Landroid/widget/ImageButton;

    .line 254
    .line 255
    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 256
    .line 257
    const/4 v1, 0x0

    .line 258
    if-eqz p2, :cond_0

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_0
    move-object p2, v1

    .line 262
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Landroid/widget/ImageButton;

    .line 267
    .line 268
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonExpanded:Landroid/widget/ImageButton;

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    if-eqz p3, :cond_2

    .line 279
    .line 280
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p3

    .line 284
    check-cast p3, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result p3

    .line 290
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapsedActionButtons$delegate:Lkotlin/Lazy;

    .line 291
    .line 292
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/util/SparseArray;

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    .line 310
    .line 311
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Landroid/util/SparseArray;

    .line 316
    .line 317
    iget-object v2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 318
    .line 319
    if-eqz v2, :cond_1

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_1
    move-object v2, v1

    .line 323
    :goto_2
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_2
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportSquiggly()Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    if-eqz p2, :cond_5

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    const p3, 0x7f060564

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    iget-object p3, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    .line 349
    .line 350
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p3

    .line 354
    check-cast p3, Landroid/util/SparseArray;

    .line 355
    .line 356
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    const/4 v2, 0x0

    .line 361
    :goto_3
    if-ge v2, v0, :cond_3

    .line 362
    .line 363
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    check-cast v3, Landroid/widget/ImageButton;

    .line 371
    .line 372
    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 373
    .line 374
    .line 375
    add-int/lit8 v2, v2, 0x1

    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonExpanded:Landroid/widget/ImageButton;

    .line 379
    .line 380
    if-eqz p3, :cond_4

    .line 381
    .line 382
    move-object v1, p3

    .line 383
    :cond_4
    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 384
    .line 385
    .line 386
    :cond_5
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    if-eqz p2, :cond_6

    .line 391
    .line 392
    const p2, 0x7f0a0969

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    check-cast p2, Landroid/widget/ImageView;

    .line 400
    .line 401
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumThumbnail:Landroid/widget/ImageView;

    .line 402
    .line 403
    const p2, 0x7f0a064d

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    check-cast p2, Landroid/widget/ImageView;

    .line 411
    .line 412
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 413
    .line 414
    const p2, 0x7f0a09ab

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    check-cast p2, Landroid/widget/LinearLayout;

    .line 422
    .line 423
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    .line 424
    .line 425
    const p2, 0x7f0a09a8

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    check-cast p2, Landroid/widget/LinearLayout;

    .line 433
    .line 434
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressInfo:Landroid/widget/LinearLayout;

    .line 435
    .line 436
    const p2, 0x7f0a09ae

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object p2

    .line 443
    check-cast p2, Landroid/widget/LinearLayout;

    .line 444
    .line 445
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleArtistView:Landroid/widget/LinearLayout;

    .line 446
    .line 447
    :cond_6
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportSettings()Z

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    if-eqz p2, :cond_7

    .line 452
    .line 453
    const p2, 0x7f0a096c

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    check-cast p2, Landroid/widget/TextView;

    .line 461
    .line 462
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    .line 463
    .line 464
    const p2, 0x7f0a086b

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object p2

    .line 471
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    .line 472
    .line 473
    const p2, 0x7f0a09a3

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    check-cast p2, Landroid/widget/ImageView;

    .line 481
    .line 482
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    .line 483
    .line 484
    const p2, 0x7f0a09a4

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    check-cast p2, Landroid/widget/TextView;

    .line 492
    .line 493
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    .line 494
    .line 495
    const p2, 0x7f0a09a5

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object p2

    .line 502
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionButtons:Landroid/view/View;

    .line 503
    .line 504
    const p2, 0x7f0a09a6

    .line 505
    .line 506
    .line 507
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->remove:Landroid/view/View;

    .line 512
    .line 513
    const p2, 0x7f0a09ac

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    check-cast p1, Landroid/widget/TextView;

    .line 521
    .line 522
    iput-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    .line 523
    .line 524
    :cond_7
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportSquiggly()Z

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    if-eqz p1, :cond_8

    .line 529
    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    const/16 p2, 0x32

    .line 535
    .line 536
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 544
    .line 545
    .line 546
    move-result-object p2

    .line 547
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 548
    .line 549
    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 550
    .line 551
    new-instance p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 552
    .line 553
    invoke-direct {p0, p1}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;-><init>(Landroid/widget/SeekBar;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 560
    .line 561
    .line 562
    move-result-object p0

    .line 563
    const p2, 0x7f080f6e

    .line 564
    .line 565
    .line 566
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 571
    .line 572
    .line 573
    :cond_8
    return-void
.end method


# virtual methods
.method public final getActionButton(IZ)Landroid/widget/ImageButton;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/SparseArray;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapsedActionButtons$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/util/SparseArray;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/widget/ImageButton;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final getAlbumView()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getCollapsedActionButtonsContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->collapsedActionButtonsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method
