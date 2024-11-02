.class public final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/high16 v3, -0x10000

    .line 8
    .line 9
    and-int/2addr v2, v3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    sparse-switch v2, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_65

    .line 16
    .line 17
    :sswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 20
    .line 21
    move v2, v3

    .line 22
    :goto_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 23
    .line 24
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ge v2, v5, :cond_21

    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 35
    .line 36
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 45
    .line 46
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    move v6, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move v6, v3

    .line 53
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 58
    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    move v7, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move v7, v3

    .line 64
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startSearcleByHomeKey(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_3
    :sswitch_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ge v3, v2, :cond_21

    .line 85
    .line 86
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 97
    .line 98
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v4, Landroid/view/KeyEvent;

    .line 101
    .line 102
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :sswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 111
    .line 112
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ge v3, v2, :cond_2

    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 135
    .line 136
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 137
    .line 138
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v5, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v6, Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v3, v3, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_65

    .line 160
    .line 161
    :sswitch_3
    move v2, v3

    .line 162
    :goto_5
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 163
    .line 164
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-ge v2, v5, :cond_21

    .line 173
    .line 174
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 175
    .line 176
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 185
    .line 186
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 187
    .line 188
    if-eqz v6, :cond_3

    .line 189
    .line 190
    move v6, v4

    .line 191
    goto :goto_6

    .line 192
    :cond_3
    move v6, v3

    .line 193
    :goto_6
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 194
    .line 195
    if-eqz v7, :cond_4

    .line 196
    .line 197
    move v7, v4

    .line 198
    goto :goto_7

    .line 199
    :cond_4
    move v7, v3

    .line 200
    :goto_7
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifyRequestedSystemKey(ZZ)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :goto_8
    :sswitch_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-ge v3, v1, :cond_21

    .line 217
    .line 218
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 229
    .line 230
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->resetScheduleAutoHide()V

    .line 231
    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :goto_9
    :sswitch_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 237
    .line 238
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-ge v3, v2, :cond_21

    .line 247
    .line 248
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 249
    .line 250
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 259
    .line 260
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v4, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifyRequestedGameToolsWin(Z)V

    .line 269
    .line 270
    .line 271
    add-int/lit8 v3, v3, 0x1

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :sswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 277
    .line 278
    :goto_a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 279
    .line 280
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-ge v3, v2, :cond_5

    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 291
    .line 292
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 301
    .line 302
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v4, Ljava/lang/String;

    .line 305
    .line 306
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v5, Landroid/widget/RemoteViews;

    .line 309
    .line 310
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 311
    .line 312
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 313
    .line 314
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v3, v3, 0x1

    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_65

    .line 324
    .line 325
    :goto_b
    :sswitch_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 326
    .line 327
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-ge v3, v1, :cond_21

    .line 336
    .line 337
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 338
    .line 339
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    add-int/lit8 v3, v3, 0x1

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :sswitch_8
    move v2, v3

    .line 356
    :goto_c
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 357
    .line 358
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-ge v2, v5, :cond_21

    .line 367
    .line 368
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 369
    .line 370
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 379
    .line 380
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 381
    .line 382
    if-eqz v6, :cond_6

    .line 383
    .line 384
    move v6, v4

    .line 385
    goto :goto_d

    .line 386
    :cond_6
    move v6, v3

    .line 387
    :goto_d
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 388
    .line 389
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setBlueLightFilter(ZI)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v2, v2, 0x1

    .line 393
    .line 394
    goto :goto_c

    .line 395
    :goto_e
    :sswitch_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-ge v3, v1, :cond_21

    .line 406
    .line 407
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 408
    .line 409
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    add-int/lit8 v3, v3, 0x1

    .line 423
    .line 424
    goto :goto_e

    .line 425
    :goto_f
    :sswitch_a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 426
    .line 427
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-ge v3, v2, :cond_21

    .line 436
    .line 437
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 438
    .line 439
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 448
    .line 449
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v4, Landroid/view/KeyEvent;

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    add-int/lit8 v3, v3, 0x1

    .line 457
    .line 458
    goto :goto_f

    .line 459
    :goto_10
    :sswitch_b
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 460
    .line 461
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-ge v3, v2, :cond_21

    .line 470
    .line 471
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 472
    .line 473
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 482
    .line 483
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 484
    .line 485
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFlashlightKeyPressed(I)V

    .line 486
    .line 487
    .line 488
    add-int/lit8 v3, v3, 0x1

    .line 489
    .line 490
    goto :goto_10

    .line 491
    :goto_11
    :sswitch_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 492
    .line 493
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-ge v3, v1, :cond_21

    .line 502
    .line 503
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 504
    .line 505
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 514
    .line 515
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleTaskbar()V

    .line 516
    .line 517
    .line 518
    add-int/lit8 v3, v3, 0x1

    .line 519
    .line 520
    goto :goto_11

    .line 521
    :sswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 524
    .line 525
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v1, Ljava/lang/String;

    .line 528
    .line 529
    :goto_12
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 530
    .line 531
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-ge v3, v2, :cond_21

    .line 540
    .line 541
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 542
    .line 543
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 552
    .line 553
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showMediaOutputSwitcher(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    add-int/lit8 v3, v3, 0x1

    .line 557
    .line 558
    goto :goto_12

    .line 559
    :goto_13
    :sswitch_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 560
    .line 561
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-ge v3, v2, :cond_21

    .line 570
    .line 571
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 572
    .line 573
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 582
    .line 583
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v4, Ljava/lang/Boolean;

    .line 586
    .line 587
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->enterStageSplitFromRunningApp(Z)V

    .line 592
    .line 593
    .line 594
    add-int/lit8 v3, v3, 0x1

    .line 595
    .line 596
    goto :goto_13

    .line 597
    :goto_14
    :sswitch_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 598
    .line 599
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-ge v3, v1, :cond_21

    .line 608
    .line 609
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 610
    .line 611
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 620
    .line 621
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->goToFullscreenFromSplit()V

    .line 622
    .line 623
    .line 624
    add-int/lit8 v3, v3, 0x1

    .line 625
    .line 626
    goto :goto_14

    .line 627
    :goto_15
    :sswitch_10
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 628
    .line 629
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-ge v3, v2, :cond_21

    .line 638
    .line 639
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 640
    .line 641
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 650
    .line 651
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v4, Ljava/lang/Integer;

    .line 654
    .line 655
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRearDisplayDialog(I)V

    .line 660
    .line 661
    .line 662
    add-int/lit8 v3, v3, 0x1

    .line 663
    .line 664
    goto :goto_15

    .line 665
    :sswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v1, Landroid/content/ComponentName;

    .line 668
    .line 669
    :goto_16
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 670
    .line 671
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    if-ge v3, v2, :cond_21

    .line 680
    .line 681
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 682
    .line 683
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 692
    .line 693
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 694
    .line 695
    .line 696
    add-int/lit8 v3, v3, 0x1

    .line 697
    .line 698
    goto :goto_16

    .line 699
    :sswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v1, Landroid/media/INearbyMediaDevicesProvider;

    .line 702
    .line 703
    :goto_17
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 704
    .line 705
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-ge v3, v2, :cond_21

    .line 714
    .line 715
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 716
    .line 717
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 726
    .line 727
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 728
    .line 729
    .line 730
    add-int/lit8 v3, v3, 0x1

    .line 731
    .line 732
    goto :goto_17

    .line 733
    :sswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast v1, Landroid/media/INearbyMediaDevicesProvider;

    .line 736
    .line 737
    :goto_18
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 738
    .line 739
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-ge v3, v2, :cond_21

    .line 748
    .line 749
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 750
    .line 751
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 760
    .line 761
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 762
    .line 763
    .line 764
    add-int/lit8 v3, v3, 0x1

    .line 765
    .line 766
    goto :goto_18

    .line 767
    :sswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 770
    .line 771
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 772
    .line 773
    check-cast v2, Ljava/lang/Integer;

    .line 774
    .line 775
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 782
    .line 783
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 786
    .line 787
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v6, Ljava/lang/CharSequence;

    .line 790
    .line 791
    :goto_19
    iget-object v7, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 792
    .line 793
    invoke-static {v7}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 794
    .line 795
    .line 796
    move-result-object v7

    .line 797
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 798
    .line 799
    .line 800
    move-result v7

    .line 801
    if-ge v3, v7, :cond_7

    .line 802
    .line 803
    iget-object v7, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 804
    .line 805
    invoke-static {v7}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v7

    .line 813
    check-cast v7, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 814
    .line 815
    invoke-interface {v7, v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 816
    .line 817
    .line 818
    add-int/lit8 v3, v3, 0x1

    .line 819
    .line 820
    goto :goto_19

    .line 821
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_65

    .line 825
    .line 826
    :sswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 827
    .line 828
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 829
    .line 830
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 831
    .line 832
    check-cast v2, Ljava/lang/Integer;

    .line 833
    .line 834
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 839
    .line 840
    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 841
    .line 842
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast v5, Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    .line 845
    .line 846
    :goto_1a
    iget-object v6, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 847
    .line 848
    invoke-static {v6}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    if-ge v3, v6, :cond_8

    .line 857
    .line 858
    iget-object v6, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 859
    .line 860
    invoke-static {v6}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 861
    .line 862
    .line 863
    move-result-object v6

    .line 864
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v6

    .line 868
    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 869
    .line 870
    invoke-interface {v6, v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 871
    .line 872
    .line 873
    add-int/lit8 v3, v3, 0x1

    .line 874
    .line 875
    goto :goto_1a

    .line 876
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_65

    .line 880
    .line 881
    :goto_1b
    :sswitch_16
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 882
    .line 883
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 888
    .line 889
    .line 890
    move-result v2

    .line 891
    if-ge v3, v2, :cond_21

    .line 892
    .line 893
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 894
    .line 895
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 904
    .line 905
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 906
    .line 907
    check-cast v4, Landroid/hardware/biometrics/IBiometricContextListener;

    .line 908
    .line 909
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 910
    .line 911
    .line 912
    add-int/lit8 v3, v3, 0x1

    .line 913
    .line 914
    goto :goto_1b

    .line 915
    :sswitch_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v1, Ljava/lang/String;

    .line 918
    .line 919
    :goto_1c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 920
    .line 921
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 926
    .line 927
    .line 928
    move-result v2

    .line 929
    if-ge v3, v2, :cond_21

    .line 930
    .line 931
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 932
    .line 933
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 942
    .line 943
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    add-int/lit8 v3, v3, 0x1

    .line 947
    .line 948
    goto :goto_1c

    .line 949
    :sswitch_18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 952
    .line 953
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v2, Landroid/content/ComponentName;

    .line 956
    .line 957
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 958
    .line 959
    move-object v10, v4

    .line 960
    check-cast v10, Ljava/lang/CharSequence;

    .line 961
    .line 962
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 963
    .line 964
    move-object v11, v4

    .line 965
    check-cast v11, Ljava/lang/CharSequence;

    .line 966
    .line 967
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 968
    .line 969
    move-object v12, v4

    .line 970
    check-cast v12, Landroid/graphics/drawable/Icon;

    .line 971
    .line 972
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 973
    .line 974
    move-object v13, v4

    .line 975
    check-cast v13, Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 976
    .line 977
    :goto_1d
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 978
    .line 979
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 980
    .line 981
    .line 982
    move-result-object v4

    .line 983
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 984
    .line 985
    .line 986
    move-result v4

    .line 987
    if-ge v3, v4, :cond_9

    .line 988
    .line 989
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 990
    .line 991
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 992
    .line 993
    .line 994
    move-result-object v4

    .line 995
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v4

    .line 999
    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1000
    .line 1001
    move-object v5, v2

    .line 1002
    move-object v6, v10

    .line 1003
    move-object v7, v11

    .line 1004
    move-object v8, v12

    .line 1005
    move-object v9, v13

    .line 1006
    invoke-interface/range {v4 .. v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1007
    .line 1008
    .line 1009
    add-int/lit8 v3, v3, 0x1

    .line 1010
    .line 1011
    goto :goto_1d

    .line 1012
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_65

    .line 1016
    .line 1017
    :goto_1e
    :sswitch_19
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1018
    .line 1019
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1024
    .line 1025
    .line 1026
    move-result v2

    .line 1027
    if-ge v3, v2, :cond_21

    .line 1028
    .line 1029
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1030
    .line 1031
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v2

    .line 1035
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v2

    .line 1039
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1040
    .line 1041
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1042
    .line 1043
    check-cast v4, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 1044
    .line 1045
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1046
    .line 1047
    .line 1048
    add-int/lit8 v3, v3, 0x1

    .line 1049
    .line 1050
    goto :goto_1e

    .line 1051
    :sswitch_1a
    move v2, v3

    .line 1052
    :goto_1f
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1053
    .line 1054
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v5

    .line 1058
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1059
    .line 1060
    .line 1061
    move-result v5

    .line 1062
    if-ge v2, v5, :cond_21

    .line 1063
    .line 1064
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1065
    .line 1066
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v5

    .line 1070
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v5

    .line 1074
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1075
    .line 1076
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1077
    .line 1078
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1079
    .line 1080
    if-eqz v7, :cond_a

    .line 1081
    .line 1082
    move v7, v4

    .line 1083
    goto :goto_20

    .line 1084
    :cond_a
    move v7, v3

    .line 1085
    :goto_20
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1086
    .line 1087
    .line 1088
    add-int/lit8 v2, v2, 0x1

    .line 1089
    .line 1090
    goto :goto_1f

    .line 1091
    :goto_21
    :sswitch_1b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1092
    .line 1093
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    if-ge v3, v1, :cond_21

    .line 1102
    .line 1103
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1104
    .line 1105
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1114
    .line 1115
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onEmergencyActionLaunchGestureDetected()V

    .line 1116
    .line 1117
    .line 1118
    add-int/lit8 v3, v3, 0x1

    .line 1119
    .line 1120
    goto :goto_21

    .line 1121
    :goto_22
    :sswitch_1c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1122
    .line 1123
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1128
    .line 1129
    .line 1130
    move-result v2

    .line 1131
    if-ge v3, v2, :cond_21

    .line 1132
    .line 1133
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1134
    .line 1135
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1144
    .line 1145
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1146
    .line 1147
    check-cast v4, Ljava/lang/Boolean;

    .line 1148
    .line 1149
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v4

    .line 1153
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestWindowMagnificationConnection(Z)V

    .line 1154
    .line 1155
    .line 1156
    add-int/lit8 v3, v3, 0x1

    .line 1157
    .line 1158
    goto :goto_22

    .line 1159
    :sswitch_1d
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1160
    .line 1161
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1170
    .line 1171
    .line 1172
    move-result v2

    .line 1173
    if-eqz v2, :cond_21

    .line 1174
    .line 1175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v2

    .line 1179
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1180
    .line 1181
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1182
    .line 1183
    check-cast v3, Ljava/lang/Boolean;

    .line 1184
    .line 1185
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v3

    .line 1189
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->suppressAmbientDisplay(Z)V

    .line 1190
    .line 1191
    .line 1192
    goto :goto_23

    .line 1193
    :goto_24
    :sswitch_1e
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1194
    .line 1195
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1200
    .line 1201
    .line 1202
    move-result v2

    .line 1203
    if-ge v3, v2, :cond_21

    .line 1204
    .line 1205
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1206
    .line 1207
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1216
    .line 1217
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v4, Ljava/lang/Boolean;

    .line 1220
    .line 1221
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v4

    .line 1225
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onTracingStateChanged(Z)V

    .line 1226
    .line 1227
    .line 1228
    add-int/lit8 v3, v3, 0x1

    .line 1229
    .line 1230
    goto :goto_24

    .line 1231
    :sswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1232
    .line 1233
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1234
    .line 1235
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v2, Ljava/lang/String;

    .line 1238
    .line 1239
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1240
    .line 1241
    check-cast v1, Landroid/os/IBinder;

    .line 1242
    .line 1243
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1244
    .line 1245
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1254
    .line 1255
    .line 1256
    move-result v3

    .line 1257
    if-eqz v3, :cond_21

    .line 1258
    .line 1259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v3

    .line 1263
    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1264
    .line 1265
    invoke-interface {v3, v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_25

    .line 1269
    :sswitch_20
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1270
    .line 1271
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1272
    .line 1273
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1274
    .line 1275
    check-cast v2, Ljava/lang/String;

    .line 1276
    .line 1277
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1278
    .line 1279
    move-object v12, v3

    .line 1280
    check-cast v12, Landroid/os/IBinder;

    .line 1281
    .line 1282
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1283
    .line 1284
    move-object v13, v3

    .line 1285
    check-cast v13, Ljava/lang/CharSequence;

    .line 1286
    .line 1287
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1288
    .line 1289
    move-object v14, v3

    .line 1290
    check-cast v14, Landroid/os/IBinder;

    .line 1291
    .line 1292
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1293
    .line 1294
    move-object v15, v3

    .line 1295
    check-cast v15, Landroid/app/ITransientNotificationCallback;

    .line 1296
    .line 1297
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1298
    .line 1299
    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1300
    .line 1301
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1302
    .line 1303
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1304
    .line 1305
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1314
    .line 1315
    .line 1316
    move-result v3

    .line 1317
    if-eqz v3, :cond_21

    .line 1318
    .line 1319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v3

    .line 1323
    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1324
    .line 1325
    move v4, v11

    .line 1326
    move-object v5, v2

    .line 1327
    move-object v6, v12

    .line 1328
    move-object v7, v13

    .line 1329
    move-object v8, v14

    .line 1330
    move v9, v10

    .line 1331
    move/from16 v16, v10

    .line 1332
    .line 1333
    move-object v10, v15

    .line 1334
    move/from16 v17, v11

    .line 1335
    .line 1336
    move v11, v1

    .line 1337
    invoke-interface/range {v3 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1338
    .line 1339
    .line 1340
    move/from16 v10, v16

    .line 1341
    .line 1342
    move/from16 v11, v17

    .line 1343
    .line 1344
    goto :goto_26

    .line 1345
    :goto_27
    :sswitch_21
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1346
    .line 1347
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v2

    .line 1351
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1352
    .line 1353
    .line 1354
    move-result v2

    .line 1355
    if-ge v3, v2, :cond_21

    .line 1356
    .line 1357
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1358
    .line 1359
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v2

    .line 1367
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1368
    .line 1369
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1370
    .line 1371
    check-cast v4, Ljava/lang/Boolean;

    .line 1372
    .line 1373
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1374
    .line 1375
    .line 1376
    move-result v4

    .line 1377
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissInattentiveSleepWarning(Z)V

    .line 1378
    .line 1379
    .line 1380
    add-int/lit8 v3, v3, 0x1

    .line 1381
    .line 1382
    goto :goto_27

    .line 1383
    :goto_28
    :sswitch_22
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1384
    .line 1385
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v1

    .line 1389
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    if-ge v3, v1, :cond_21

    .line 1394
    .line 1395
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1396
    .line 1397
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v1

    .line 1401
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v1

    .line 1405
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1406
    .line 1407
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showInattentiveSleepWarning()V

    .line 1408
    .line 1409
    .line 1410
    add-int/lit8 v3, v3, 0x1

    .line 1411
    .line 1412
    goto :goto_28

    .line 1413
    :sswitch_23
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1414
    .line 1415
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1416
    .line 1417
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1418
    .line 1419
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1420
    .line 1421
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1422
    .line 1423
    .line 1424
    :goto_29
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1425
    .line 1426
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v1

    .line 1430
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1431
    .line 1432
    .line 1433
    move-result v1

    .line 1434
    if-ge v3, v1, :cond_21

    .line 1435
    .line 1436
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1437
    .line 1438
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v1

    .line 1446
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1447
    .line 1448
    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->abortTransient(II)V

    .line 1449
    .line 1450
    .line 1451
    add-int/lit8 v3, v3, 0x1

    .line 1452
    .line 1453
    goto :goto_29

    .line 1454
    :sswitch_24
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1455
    .line 1456
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1457
    .line 1458
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1459
    .line 1460
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1461
    .line 1462
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1463
    .line 1464
    if-eqz v6, :cond_b

    .line 1465
    .line 1466
    goto :goto_2a

    .line 1467
    :cond_b
    move v4, v3

    .line 1468
    :goto_2a
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1469
    .line 1470
    .line 1471
    :goto_2b
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1472
    .line 1473
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v1

    .line 1477
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1478
    .line 1479
    .line 1480
    move-result v1

    .line 1481
    if-ge v3, v1, :cond_21

    .line 1482
    .line 1483
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1484
    .line 1485
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v1

    .line 1489
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1494
    .line 1495
    invoke-interface {v1, v2, v5, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTransient(IIZ)V

    .line 1496
    .line 1497
    .line 1498
    add-int/lit8 v3, v3, 0x1

    .line 1499
    .line 1500
    goto :goto_2b

    .line 1501
    :sswitch_25
    move v2, v3

    .line 1502
    :goto_2c
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1503
    .line 1504
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v5

    .line 1508
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1509
    .line 1510
    .line 1511
    move-result v5

    .line 1512
    if-ge v2, v5, :cond_21

    .line 1513
    .line 1514
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1515
    .line 1516
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v5

    .line 1520
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v5

    .line 1524
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1525
    .line 1526
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1527
    .line 1528
    if-lez v6, :cond_c

    .line 1529
    .line 1530
    move v6, v4

    .line 1531
    goto :goto_2d

    .line 1532
    :cond_c
    move v6, v3

    .line 1533
    :goto_2d
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    .line 1534
    .line 1535
    .line 1536
    add-int/lit8 v2, v2, 0x1

    .line 1537
    .line 1538
    goto :goto_2c

    .line 1539
    :goto_2e
    :sswitch_26
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1540
    .line 1541
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v1

    .line 1545
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1546
    .line 1547
    .line 1548
    move-result v1

    .line 1549
    if-ge v3, v1, :cond_21

    .line 1550
    .line 1551
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1552
    .line 1553
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v1

    .line 1561
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1562
    .line 1563
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    .line 1564
    .line 1565
    .line 1566
    add-int/lit8 v3, v3, 0x1

    .line 1567
    .line 1568
    goto :goto_2e

    .line 1569
    :goto_2f
    :sswitch_27
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1570
    .line 1571
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1576
    .line 1577
    .line 1578
    move-result v2

    .line 1579
    if-ge v3, v2, :cond_21

    .line 1580
    .line 1581
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1582
    .line 1583
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v2

    .line 1587
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v2

    .line 1591
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1592
    .line 1593
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1594
    .line 1595
    check-cast v4, Ljava/lang/Boolean;

    .line 1596
    .line 1597
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1598
    .line 1599
    .line 1600
    move-result v4

    .line 1601
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    .line 1602
    .line 1603
    .line 1604
    add-int/lit8 v3, v3, 0x1

    .line 1605
    .line 1606
    goto :goto_2f

    .line 1607
    :goto_30
    :sswitch_28
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1608
    .line 1609
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v2

    .line 1613
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1614
    .line 1615
    .line 1616
    move-result v2

    .line 1617
    if-ge v3, v2, :cond_21

    .line 1618
    .line 1619
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1620
    .line 1621
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v2

    .line 1625
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v2

    .line 1629
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1630
    .line 1631
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1632
    .line 1633
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    .line 1634
    .line 1635
    .line 1636
    add-int/lit8 v3, v3, 0x1

    .line 1637
    .line 1638
    goto :goto_30

    .line 1639
    :sswitch_29
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1640
    .line 1641
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1642
    .line 1643
    :goto_31
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1644
    .line 1645
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v2

    .line 1649
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1650
    .line 1651
    .line 1652
    move-result v2

    .line 1653
    if-ge v3, v2, :cond_d

    .line 1654
    .line 1655
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1656
    .line 1657
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v2

    .line 1661
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v2

    .line 1665
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1666
    .line 1667
    iget-wide v4, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1668
    .line 1669
    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideAuthenticationDialog(J)V

    .line 1670
    .line 1671
    .line 1672
    add-int/lit8 v3, v3, 0x1

    .line 1673
    .line 1674
    goto :goto_31

    .line 1675
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1676
    .line 1677
    .line 1678
    goto/16 :goto_65

    .line 1679
    .line 1680
    :sswitch_2a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1681
    .line 1682
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1683
    .line 1684
    :goto_32
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1685
    .line 1686
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v2

    .line 1690
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1691
    .line 1692
    .line 1693
    move-result v2

    .line 1694
    if-ge v3, v2, :cond_e

    .line 1695
    .line 1696
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1697
    .line 1698
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v2

    .line 1702
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v2

    .line 1706
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1707
    .line 1708
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1709
    .line 1710
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1711
    .line 1712
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1713
    .line 1714
    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(III)V

    .line 1715
    .line 1716
    .line 1717
    add-int/lit8 v3, v3, 0x1

    .line 1718
    .line 1719
    goto :goto_32

    .line 1720
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1721
    .line 1722
    .line 1723
    goto/16 :goto_65

    .line 1724
    .line 1725
    :sswitch_2b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1726
    .line 1727
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1728
    .line 1729
    :goto_33
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1730
    .line 1731
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v2

    .line 1735
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1736
    .line 1737
    .line 1738
    move-result v2

    .line 1739
    if-ge v3, v2, :cond_f

    .line 1740
    .line 1741
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1742
    .line 1743
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v2

    .line 1747
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v2

    .line 1751
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1752
    .line 1753
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1754
    .line 1755
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1756
    .line 1757
    check-cast v5, Ljava/lang/String;

    .line 1758
    .line 1759
    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(ILjava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    add-int/lit8 v3, v3, 0x1

    .line 1763
    .line 1764
    goto :goto_33

    .line 1765
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1766
    .line 1767
    .line 1768
    goto/16 :goto_65

    .line 1769
    .line 1770
    :sswitch_2c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1771
    .line 1772
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1773
    .line 1774
    :goto_34
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1775
    .line 1776
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v2

    .line 1780
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1781
    .line 1782
    .line 1783
    move-result v2

    .line 1784
    if-ge v3, v2, :cond_10

    .line 1785
    .line 1786
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1787
    .line 1788
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v2

    .line 1792
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v2

    .line 1796
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1797
    .line 1798
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1799
    .line 1800
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated(I)V

    .line 1801
    .line 1802
    .line 1803
    add-int/lit8 v3, v3, 0x1

    .line 1804
    .line 1805
    goto :goto_34

    .line 1806
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1807
    .line 1808
    .line 1809
    goto/16 :goto_65

    .line 1810
    .line 1811
    :sswitch_2d
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1812
    .line 1813
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmHandler(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$H;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v2

    .line 1817
    const/high16 v4, 0x2a0000

    .line 1818
    .line 1819
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1820
    .line 1821
    .line 1822
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1823
    .line 1824
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmHandler(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$H;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v2

    .line 1828
    const/high16 v4, 0x290000

    .line 1829
    .line 1830
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1831
    .line 1832
    .line 1833
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1834
    .line 1835
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmHandler(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$H;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v2

    .line 1839
    const/high16 v4, 0x280000

    .line 1840
    .line 1841
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1842
    .line 1843
    .line 1844
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1845
    .line 1846
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1847
    .line 1848
    :goto_35
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1849
    .line 1850
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v2

    .line 1854
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1855
    .line 1856
    .line 1857
    move-result v2

    .line 1858
    if-ge v3, v2, :cond_11

    .line 1859
    .line 1860
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1861
    .line 1862
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v2

    .line 1866
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v2

    .line 1870
    move-object v4, v2

    .line 1871
    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1872
    .line 1873
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1874
    .line 1875
    move-object v5, v2

    .line 1876
    check-cast v5, Landroid/hardware/biometrics/PromptInfo;

    .line 1877
    .line 1878
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1879
    .line 1880
    move-object v6, v2

    .line 1881
    check-cast v6, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 1882
    .line 1883
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1884
    .line 1885
    move-object v7, v2

    .line 1886
    check-cast v7, [I

    .line 1887
    .line 1888
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1889
    .line 1890
    check-cast v2, Ljava/lang/Boolean;

    .line 1891
    .line 1892
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1893
    .line 1894
    .line 1895
    move-result v8

    .line 1896
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1897
    .line 1898
    check-cast v2, Ljava/lang/Boolean;

    .line 1899
    .line 1900
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1901
    .line 1902
    .line 1903
    move-result v9

    .line 1904
    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1905
    .line 1906
    iget-wide v11, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1907
    .line 1908
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 1909
    .line 1910
    move-object v13, v2

    .line 1911
    check-cast v13, Ljava/lang/String;

    .line 1912
    .line 1913
    iget-wide v14, v1, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 1914
    .line 1915
    invoke-interface/range {v4 .. v15}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1916
    .line 1917
    .line 1918
    add-int/lit8 v3, v3, 0x1

    .line 1919
    .line 1920
    goto :goto_35

    .line 1921
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_65

    .line 1925
    .line 1926
    :sswitch_2e
    move v2, v3

    .line 1927
    :goto_36
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1928
    .line 1929
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v5

    .line 1933
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1934
    .line 1935
    .line 1936
    move-result v5

    .line 1937
    if-ge v2, v5, :cond_21

    .line 1938
    .line 1939
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1940
    .line 1941
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v5

    .line 1945
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v5

    .line 1949
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1950
    .line 1951
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1952
    .line 1953
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1954
    .line 1955
    if-eqz v7, :cond_12

    .line 1956
    .line 1957
    move v7, v4

    .line 1958
    goto :goto_37

    .line 1959
    :cond_12
    move v7, v3

    .line 1960
    :goto_37
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    .line 1961
    .line 1962
    .line 1963
    add-int/lit8 v2, v2, 0x1

    .line 1964
    .line 1965
    goto :goto_36

    .line 1966
    :sswitch_2f
    move v2, v3

    .line 1967
    :goto_38
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1968
    .line 1969
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v5

    .line 1973
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1974
    .line 1975
    .line 1976
    move-result v5

    .line 1977
    if-ge v2, v5, :cond_21

    .line 1978
    .line 1979
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1980
    .line 1981
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v5

    .line 1985
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v5

    .line 1989
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1990
    .line 1991
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1992
    .line 1993
    if-eqz v6, :cond_13

    .line 1994
    .line 1995
    move v6, v4

    .line 1996
    goto :goto_39

    .line 1997
    :cond_13
    move v6, v3

    .line 1998
    :goto_39
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    .line 1999
    .line 2000
    .line 2001
    add-int/lit8 v2, v2, 0x1

    .line 2002
    .line 2003
    goto :goto_38

    .line 2004
    :sswitch_30
    move v2, v3

    .line 2005
    :goto_3a
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2006
    .line 2007
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v5

    .line 2011
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2012
    .line 2013
    .line 2014
    move-result v5

    .line 2015
    if-ge v2, v5, :cond_21

    .line 2016
    .line 2017
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2018
    .line 2019
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v5

    .line 2023
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v5

    .line 2027
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2028
    .line 2029
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2030
    .line 2031
    if-eqz v6, :cond_14

    .line 2032
    .line 2033
    move v6, v4

    .line 2034
    goto :goto_3b

    .line 2035
    :cond_14
    move v6, v3

    .line 2036
    :goto_3b
    iget-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2037
    .line 2038
    check-cast v7, Ljava/lang/String;

    .line 2039
    .line 2040
    invoke-interface {v5, v7, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(Ljava/lang/String;Z)V

    .line 2041
    .line 2042
    .line 2043
    add-int/lit8 v2, v2, 0x1

    .line 2044
    .line 2045
    goto :goto_3a

    .line 2046
    :goto_3c
    :sswitch_31
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2047
    .line 2048
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v1

    .line 2052
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2053
    .line 2054
    .line 2055
    move-result v1

    .line 2056
    if-ge v3, v1, :cond_21

    .line 2057
    .line 2058
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2059
    .line 2060
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v1

    .line 2064
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v1

    .line 2068
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2069
    .line 2070
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    .line 2071
    .line 2072
    .line 2073
    add-int/lit8 v3, v3, 0x1

    .line 2074
    .line 2075
    goto :goto_3c

    .line 2076
    :goto_3d
    :sswitch_32
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2077
    .line 2078
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v2

    .line 2082
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2083
    .line 2084
    .line 2085
    move-result v2

    .line 2086
    if-ge v3, v2, :cond_21

    .line 2087
    .line 2088
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2089
    .line 2090
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v2

    .line 2094
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v2

    .line 2098
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2099
    .line 2100
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2101
    .line 2102
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu(I)V

    .line 2103
    .line 2104
    .line 2105
    add-int/lit8 v3, v3, 0x1

    .line 2106
    .line 2107
    goto :goto_3d

    .line 2108
    :goto_3e
    :sswitch_33
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2109
    .line 2110
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2111
    .line 2112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2113
    .line 2114
    .line 2115
    move-result v2

    .line 2116
    if-ge v3, v2, :cond_21

    .line 2117
    .line 2118
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2119
    .line 2120
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v2

    .line 2124
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v2

    .line 2128
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2129
    .line 2130
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2131
    .line 2132
    check-cast v4, Landroid/view/KeyEvent;

    .line 2133
    .line 2134
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 2135
    .line 2136
    .line 2137
    add-int/lit8 v3, v3, 0x1

    .line 2138
    .line 2139
    goto :goto_3e

    .line 2140
    :goto_3f
    :sswitch_34
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2141
    .line 2142
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2143
    .line 2144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2145
    .line 2146
    .line 2147
    move-result v1

    .line 2148
    if-ge v3, v1, :cond_21

    .line 2149
    .line 2150
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2151
    .line 2152
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v1

    .line 2156
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v1

    .line 2160
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2161
    .line 2162
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    .line 2163
    .line 2164
    .line 2165
    add-int/lit8 v3, v3, 0x1

    .line 2166
    .line 2167
    goto :goto_3f

    .line 2168
    :goto_40
    :sswitch_35
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2169
    .line 2170
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2171
    .line 2172
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2173
    .line 2174
    .line 2175
    move-result v2

    .line 2176
    if-ge v3, v2, :cond_21

    .line 2177
    .line 2178
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2179
    .line 2180
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v2

    .line 2184
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v2

    .line 2188
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2189
    .line 2190
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2191
    .line 2192
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    .line 2193
    .line 2194
    .line 2195
    add-int/lit8 v3, v3, 0x1

    .line 2196
    .line 2197
    goto :goto_40

    .line 2198
    :goto_41
    :sswitch_36
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2199
    .line 2200
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2201
    .line 2202
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2203
    .line 2204
    .line 2205
    move-result v1

    .line 2206
    if-ge v3, v1, :cond_21

    .line 2207
    .line 2208
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2209
    .line 2210
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v1

    .line 2214
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v1

    .line 2218
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2219
    .line 2220
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    .line 2221
    .line 2222
    .line 2223
    add-int/lit8 v3, v3, 0x1

    .line 2224
    .line 2225
    goto :goto_41

    .line 2226
    :goto_42
    :sswitch_37
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2227
    .line 2228
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2229
    .line 2230
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2231
    .line 2232
    .line 2233
    move-result v2

    .line 2234
    if-ge v3, v2, :cond_21

    .line 2235
    .line 2236
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2237
    .line 2238
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v2

    .line 2242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v2

    .line 2246
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2247
    .line 2248
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2249
    .line 2250
    check-cast v4, Landroid/content/ComponentName;

    .line 2251
    .line 2252
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    .line 2253
    .line 2254
    .line 2255
    add-int/lit8 v3, v3, 0x1

    .line 2256
    .line 2257
    goto :goto_42

    .line 2258
    :goto_43
    :sswitch_38
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2259
    .line 2260
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2261
    .line 2262
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2263
    .line 2264
    .line 2265
    move-result v2

    .line 2266
    if-ge v3, v2, :cond_21

    .line 2267
    .line 2268
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2269
    .line 2270
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v2

    .line 2274
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v2

    .line 2278
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2279
    .line 2280
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2281
    .line 2282
    check-cast v4, Landroid/content/ComponentName;

    .line 2283
    .line 2284
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    .line 2285
    .line 2286
    .line 2287
    add-int/lit8 v3, v3, 0x1

    .line 2288
    .line 2289
    goto :goto_43

    .line 2290
    :goto_44
    :sswitch_39
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2291
    .line 2292
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2293
    .line 2294
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2295
    .line 2296
    .line 2297
    move-result v2

    .line 2298
    if-ge v3, v2, :cond_21

    .line 2299
    .line 2300
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2301
    .line 2302
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v2

    .line 2306
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v2

    .line 2310
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2311
    .line 2312
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2313
    .line 2314
    check-cast v4, Landroid/content/ComponentName;

    .line 2315
    .line 2316
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    .line 2317
    .line 2318
    .line 2319
    add-int/lit8 v3, v3, 0x1

    .line 2320
    .line 2321
    goto :goto_44

    .line 2322
    :goto_45
    :sswitch_3a
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2323
    .line 2324
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2325
    .line 2326
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2327
    .line 2328
    .line 2329
    move-result v1

    .line 2330
    if-ge v3, v1, :cond_21

    .line 2331
    .line 2332
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2333
    .line 2334
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v1

    .line 2338
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2339
    .line 2340
    .line 2341
    move-result-object v1

    .line 2342
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2343
    .line 2344
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    .line 2345
    .line 2346
    .line 2347
    add-int/lit8 v3, v3, 0x1

    .line 2348
    .line 2349
    goto :goto_45

    .line 2350
    :goto_46
    :sswitch_3b
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2351
    .line 2352
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2353
    .line 2354
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2355
    .line 2356
    .line 2357
    move-result v2

    .line 2358
    if-ge v3, v2, :cond_21

    .line 2359
    .line 2360
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2361
    .line 2362
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v2

    .line 2366
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v2

    .line 2370
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2371
    .line 2372
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2373
    .line 2374
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    .line 2375
    .line 2376
    .line 2377
    add-int/lit8 v3, v3, 0x1

    .line 2378
    .line 2379
    goto :goto_46

    .line 2380
    :goto_47
    :sswitch_3c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2381
    .line 2382
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2383
    .line 2384
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2385
    .line 2386
    .line 2387
    move-result v2

    .line 2388
    if-ge v3, v2, :cond_21

    .line 2389
    .line 2390
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2391
    .line 2392
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v2

    .line 2396
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v2

    .line 2400
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2401
    .line 2402
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2403
    .line 2404
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    .line 2405
    .line 2406
    .line 2407
    add-int/lit8 v3, v3, 0x1

    .line 2408
    .line 2409
    goto :goto_47

    .line 2410
    :goto_48
    :sswitch_3d
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2411
    .line 2412
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2413
    .line 2414
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2415
    .line 2416
    .line 2417
    move-result v2

    .line 2418
    if-ge v3, v2, :cond_21

    .line 2419
    .line 2420
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2421
    .line 2422
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v2

    .line 2426
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v2

    .line 2430
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2431
    .line 2432
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2433
    .line 2434
    check-cast v4, Landroid/os/Bundle;

    .line 2435
    .line 2436
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    .line 2437
    .line 2438
    .line 2439
    add-int/lit8 v3, v3, 0x1

    .line 2440
    .line 2441
    goto :goto_48

    .line 2442
    :goto_49
    :sswitch_3e
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2443
    .line 2444
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2445
    .line 2446
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2447
    .line 2448
    .line 2449
    move-result v1

    .line 2450
    if-ge v3, v1, :cond_21

    .line 2451
    .line 2452
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2453
    .line 2454
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2455
    .line 2456
    .line 2457
    move-result-object v1

    .line 2458
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2459
    .line 2460
    .line 2461
    move-result-object v1

    .line 2462
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2463
    .line 2464
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    .line 2465
    .line 2466
    .line 2467
    add-int/lit8 v3, v3, 0x1

    .line 2468
    .line 2469
    goto :goto_49

    .line 2470
    :sswitch_3f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2471
    .line 2472
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2473
    .line 2474
    move v2, v3

    .line 2475
    :goto_4a
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2476
    .line 2477
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v5

    .line 2481
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2482
    .line 2483
    .line 2484
    move-result v5

    .line 2485
    if-ge v2, v5, :cond_21

    .line 2486
    .line 2487
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2488
    .line 2489
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v5

    .line 2493
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v5

    .line 2497
    move-object v6, v5

    .line 2498
    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2499
    .line 2500
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2501
    .line 2502
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2503
    .line 2504
    check-cast v5, Ljava/lang/Long;

    .line 2505
    .line 2506
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 2507
    .line 2508
    .line 2509
    move-result-wide v8

    .line 2510
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2511
    .line 2512
    check-cast v5, Ljava/lang/Long;

    .line 2513
    .line 2514
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 2515
    .line 2516
    .line 2517
    move-result-wide v10

    .line 2518
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2519
    .line 2520
    if-eqz v5, :cond_15

    .line 2521
    .line 2522
    move v12, v4

    .line 2523
    goto :goto_4b

    .line 2524
    :cond_15
    move v12, v3

    .line 2525
    :goto_4b
    invoke-interface/range {v6 .. v12}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(IJJZ)V

    .line 2526
    .line 2527
    .line 2528
    add-int/lit8 v2, v2, 0x1

    .line 2529
    .line 2530
    goto :goto_4a

    .line 2531
    :goto_4c
    :sswitch_40
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2532
    .line 2533
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2534
    .line 2535
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2536
    .line 2537
    .line 2538
    move-result v2

    .line 2539
    if-ge v3, v2, :cond_21

    .line 2540
    .line 2541
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2542
    .line 2543
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v2

    .line 2547
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v2

    .line 2551
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2552
    .line 2553
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2554
    .line 2555
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    .line 2556
    .line 2557
    .line 2558
    add-int/lit8 v3, v3, 0x1

    .line 2559
    .line 2560
    goto :goto_4c

    .line 2561
    :sswitch_41
    move v2, v3

    .line 2562
    :goto_4d
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2563
    .line 2564
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v5

    .line 2568
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2569
    .line 2570
    .line 2571
    move-result v5

    .line 2572
    if-ge v2, v5, :cond_21

    .line 2573
    .line 2574
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2575
    .line 2576
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2577
    .line 2578
    .line 2579
    move-result-object v5

    .line 2580
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v5

    .line 2584
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2585
    .line 2586
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2587
    .line 2588
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 2589
    .line 2590
    if-eqz v7, :cond_16

    .line 2591
    .line 2592
    move v7, v4

    .line 2593
    goto :goto_4e

    .line 2594
    :cond_16
    move v7, v3

    .line 2595
    :goto_4e
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    .line 2596
    .line 2597
    .line 2598
    add-int/lit8 v2, v2, 0x1

    .line 2599
    .line 2600
    goto :goto_4d

    .line 2601
    :goto_4f
    :sswitch_42
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2602
    .line 2603
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2604
    .line 2605
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2606
    .line 2607
    .line 2608
    move-result v2

    .line 2609
    if-ge v3, v2, :cond_21

    .line 2610
    .line 2611
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2612
    .line 2613
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2614
    .line 2615
    .line 2616
    move-result-object v2

    .line 2617
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2618
    .line 2619
    .line 2620
    move-result-object v2

    .line 2621
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2622
    .line 2623
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2624
    .line 2625
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    .line 2626
    .line 2627
    .line 2628
    add-int/lit8 v3, v3, 0x1

    .line 2629
    .line 2630
    goto :goto_4f

    .line 2631
    :sswitch_43
    move v2, v3

    .line 2632
    :goto_50
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2633
    .line 2634
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2635
    .line 2636
    .line 2637
    move-result-object v5

    .line 2638
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2639
    .line 2640
    .line 2641
    move-result v5

    .line 2642
    if-ge v2, v5, :cond_21

    .line 2643
    .line 2644
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2645
    .line 2646
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v5

    .line 2650
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v5

    .line 2654
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2655
    .line 2656
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2657
    .line 2658
    if-eqz v6, :cond_17

    .line 2659
    .line 2660
    move v6, v4

    .line 2661
    goto :goto_51

    .line 2662
    :cond_17
    move v6, v3

    .line 2663
    :goto_51
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 2664
    .line 2665
    if-eqz v7, :cond_18

    .line 2666
    .line 2667
    move v7, v4

    .line 2668
    goto :goto_52

    .line 2669
    :cond_18
    move v7, v3

    .line 2670
    :goto_52
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    .line 2671
    .line 2672
    .line 2673
    add-int/lit8 v2, v2, 0x1

    .line 2674
    .line 2675
    goto :goto_50

    .line 2676
    :sswitch_44
    move v2, v3

    .line 2677
    :goto_53
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2678
    .line 2679
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2680
    .line 2681
    .line 2682
    move-result-object v5

    .line 2683
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2684
    .line 2685
    .line 2686
    move-result v5

    .line 2687
    if-ge v2, v5, :cond_21

    .line 2688
    .line 2689
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2690
    .line 2691
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2692
    .line 2693
    .line 2694
    move-result-object v5

    .line 2695
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v5

    .line 2699
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2700
    .line 2701
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 2702
    .line 2703
    if-eqz v6, :cond_19

    .line 2704
    .line 2705
    move v6, v4

    .line 2706
    goto :goto_54

    .line 2707
    :cond_19
    move v6, v3

    .line 2708
    :goto_54
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    .line 2709
    .line 2710
    .line 2711
    add-int/lit8 v2, v2, 0x1

    .line 2712
    .line 2713
    goto :goto_53

    .line 2714
    :goto_55
    :sswitch_45
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2715
    .line 2716
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2717
    .line 2718
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2719
    .line 2720
    .line 2721
    move-result v2

    .line 2722
    if-ge v3, v2, :cond_21

    .line 2723
    .line 2724
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2725
    .line 2726
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v2

    .line 2730
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2731
    .line 2732
    .line 2733
    move-result-object v2

    .line 2734
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2735
    .line 2736
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2737
    .line 2738
    iget v5, v1, Landroid/os/Message;->arg2:I

    .line 2739
    .line 2740
    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    .line 2742
    check-cast v6, Ljava/lang/Integer;

    .line 2743
    .line 2744
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 2745
    .line 2746
    .line 2747
    move-result v6

    .line 2748
    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    .line 2749
    .line 2750
    .line 2751
    add-int/lit8 v3, v3, 0x1

    .line 2752
    .line 2753
    goto :goto_55

    .line 2754
    :goto_56
    :sswitch_46
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2755
    .line 2756
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2757
    .line 2758
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2759
    .line 2760
    .line 2761
    move-result v1

    .line 2762
    if-ge v3, v1, :cond_21

    .line 2763
    .line 2764
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2765
    .line 2766
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2767
    .line 2768
    .line 2769
    move-result-object v1

    .line 2770
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2771
    .line 2772
    .line 2773
    move-result-object v1

    .line 2774
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2775
    .line 2776
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    .line 2777
    .line 2778
    .line 2779
    add-int/lit8 v3, v3, 0x1

    .line 2780
    .line 2781
    goto :goto_56

    .line 2782
    :goto_57
    :sswitch_47
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2783
    .line 2784
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2785
    .line 2786
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2787
    .line 2788
    .line 2789
    move-result v1

    .line 2790
    if-ge v3, v1, :cond_21

    .line 2791
    .line 2792
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2793
    .line 2794
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v1

    .line 2798
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2799
    .line 2800
    .line 2801
    move-result-object v1

    .line 2802
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2803
    .line 2804
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    .line 2805
    .line 2806
    .line 2807
    add-int/lit8 v3, v3, 0x1

    .line 2808
    .line 2809
    goto :goto_57

    .line 2810
    :goto_58
    :sswitch_48
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2811
    .line 2812
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2813
    .line 2814
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2815
    .line 2816
    .line 2817
    move-result v1

    .line 2818
    if-ge v3, v1, :cond_21

    .line 2819
    .line 2820
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2821
    .line 2822
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v1

    .line 2826
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v1

    .line 2830
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2831
    .line 2832
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    .line 2833
    .line 2834
    .line 2835
    add-int/lit8 v3, v3, 0x1

    .line 2836
    .line 2837
    goto :goto_58

    .line 2838
    :sswitch_49
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2839
    .line 2840
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2841
    .line 2842
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2843
    .line 2844
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2845
    .line 2846
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2847
    .line 2848
    move-object v7, v0

    .line 2849
    check-cast v7, Landroid/os/IBinder;

    .line 2850
    .line 2851
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2852
    .line 2853
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2854
    .line 2855
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 2856
    .line 2857
    if-eqz v0, :cond_1a

    .line 2858
    .line 2859
    move v10, v4

    .line 2860
    goto :goto_59

    .line 2861
    :cond_1a
    move v10, v3

    .line 2862
    :goto_59
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$mhandleShowImeButton(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZ)V

    .line 2863
    .line 2864
    .line 2865
    goto/16 :goto_65

    .line 2866
    .line 2867
    :goto_5a
    :sswitch_4a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2868
    .line 2869
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2870
    .line 2871
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2872
    .line 2873
    .line 2874
    move-result v2

    .line 2875
    if-ge v3, v2, :cond_21

    .line 2876
    .line 2877
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2878
    .line 2879
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2880
    .line 2881
    .line 2882
    move-result-object v2

    .line 2883
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2884
    .line 2885
    .line 2886
    move-result-object v2

    .line 2887
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2888
    .line 2889
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 2890
    .line 2891
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    .line 2892
    .line 2893
    .line 2894
    add-int/lit8 v3, v3, 0x1

    .line 2895
    .line 2896
    goto :goto_5a

    .line 2897
    :sswitch_4b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2898
    .line 2899
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2900
    .line 2901
    move v2, v3

    .line 2902
    :goto_5b
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2903
    .line 2904
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2905
    .line 2906
    .line 2907
    move-result-object v5

    .line 2908
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2909
    .line 2910
    .line 2911
    move-result v5

    .line 2912
    if-ge v2, v5, :cond_1c

    .line 2913
    .line 2914
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2915
    .line 2916
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2917
    .line 2918
    .line 2919
    move-result-object v5

    .line 2920
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2921
    .line 2922
    .line 2923
    move-result-object v5

    .line 2924
    move-object v6, v5

    .line 2925
    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2926
    .line 2927
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2928
    .line 2929
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2930
    .line 2931
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2932
    .line 2933
    move-object v9, v5

    .line 2934
    check-cast v9, [Lcom/android/internal/view/AppearanceRegion;

    .line 2935
    .line 2936
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2937
    .line 2938
    if-ne v5, v4, :cond_1b

    .line 2939
    .line 2940
    move v10, v4

    .line 2941
    goto :goto_5c

    .line 2942
    :cond_1b
    move v10, v3

    .line 2943
    :goto_5c
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 2944
    .line 2945
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 2946
    .line 2947
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2948
    .line 2949
    move-object v13, v5

    .line 2950
    check-cast v13, Ljava/lang/String;

    .line 2951
    .line 2952
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2953
    .line 2954
    move-object v14, v5

    .line 2955
    check-cast v14, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2956
    .line 2957
    invoke-interface/range {v6 .. v14}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 2958
    .line 2959
    .line 2960
    add-int/lit8 v2, v2, 0x1

    .line 2961
    .line 2962
    goto :goto_5b

    .line 2963
    :cond_1c
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2964
    .line 2965
    .line 2966
    goto/16 :goto_65

    .line 2967
    .line 2968
    :goto_5d
    :sswitch_4c
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2969
    .line 2970
    iget-object v2, v2, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2971
    .line 2972
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2973
    .line 2974
    .line 2975
    move-result v2

    .line 2976
    if-ge v3, v2, :cond_21

    .line 2977
    .line 2978
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2979
    .line 2980
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 2981
    .line 2982
    .line 2983
    move-result-object v2

    .line 2984
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2985
    .line 2986
    .line 2987
    move-result-object v2

    .line 2988
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 2989
    .line 2990
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2991
    .line 2992
    check-cast v4, Ljava/lang/String;

    .line 2993
    .line 2994
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 2995
    .line 2996
    .line 2997
    add-int/lit8 v3, v3, 0x1

    .line 2998
    .line 2999
    goto :goto_5d

    .line 3000
    :sswitch_4d
    move v2, v3

    .line 3001
    :goto_5e
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3002
    .line 3003
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3004
    .line 3005
    .line 3006
    move-result-object v5

    .line 3007
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 3008
    .line 3009
    .line 3010
    move-result v5

    .line 3011
    if-ge v2, v5, :cond_21

    .line 3012
    .line 3013
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3014
    .line 3015
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3016
    .line 3017
    .line 3018
    move-result-object v5

    .line 3019
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3020
    .line 3021
    .line 3022
    move-result-object v5

    .line 3023
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 3024
    .line 3025
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 3026
    .line 3027
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 3028
    .line 3029
    if-eqz v7, :cond_1d

    .line 3030
    .line 3031
    move v7, v4

    .line 3032
    goto :goto_5f

    .line 3033
    :cond_1d
    move v7, v3

    .line 3034
    :goto_5f
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    .line 3035
    .line 3036
    .line 3037
    add-int/lit8 v2, v2, 0x1

    .line 3038
    .line 3039
    goto :goto_5e

    .line 3040
    :goto_60
    :sswitch_4e
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3041
    .line 3042
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 3043
    .line 3044
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 3045
    .line 3046
    .line 3047
    move-result v1

    .line 3048
    if-ge v3, v1, :cond_21

    .line 3049
    .line 3050
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3051
    .line 3052
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3053
    .line 3054
    .line 3055
    move-result-object v1

    .line 3056
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3057
    .line 3058
    .line 3059
    move-result-object v1

    .line 3060
    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 3061
    .line 3062
    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    .line 3063
    .line 3064
    .line 3065
    add-int/lit8 v3, v3, 0x1

    .line 3066
    .line 3067
    goto :goto_60

    .line 3068
    :sswitch_4f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3069
    .line 3070
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3071
    .line 3072
    move v2, v3

    .line 3073
    :goto_61
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3074
    .line 3075
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3076
    .line 3077
    .line 3078
    move-result-object v5

    .line 3079
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 3080
    .line 3081
    .line 3082
    move-result v5

    .line 3083
    if-ge v2, v5, :cond_21

    .line 3084
    .line 3085
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3086
    .line 3087
    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3088
    .line 3089
    .line 3090
    move-result-object v5

    .line 3091
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3092
    .line 3093
    .line 3094
    move-result-object v5

    .line 3095
    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 3096
    .line 3097
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3098
    .line 3099
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3100
    .line 3101
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3102
    .line 3103
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 3104
    .line 3105
    if-eqz v9, :cond_1e

    .line 3106
    .line 3107
    move v9, v4

    .line 3108
    goto :goto_62

    .line 3109
    :cond_1e
    move v9, v3

    .line 3110
    :goto_62
    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    .line 3111
    .line 3112
    .line 3113
    add-int/lit8 v2, v2, 0x1

    .line 3114
    .line 3115
    goto :goto_61

    .line 3116
    :sswitch_50
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 3117
    .line 3118
    if-eq v2, v4, :cond_20

    .line 3119
    .line 3120
    const/4 v4, 0x2

    .line 3121
    if-eq v2, v4, :cond_1f

    .line 3122
    .line 3123
    goto :goto_65

    .line 3124
    :cond_1f
    :goto_63
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3125
    .line 3126
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3127
    .line 3128
    .line 3129
    move-result-object v2

    .line 3130
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 3131
    .line 3132
    .line 3133
    move-result v2

    .line 3134
    if-ge v3, v2, :cond_21

    .line 3135
    .line 3136
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3137
    .line 3138
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3139
    .line 3140
    .line 3141
    move-result-object v2

    .line 3142
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3143
    .line 3144
    .line 3145
    move-result-object v2

    .line 3146
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 3147
    .line 3148
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3149
    .line 3150
    check-cast v4, Ljava/lang/String;

    .line 3151
    .line 3152
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    .line 3153
    .line 3154
    .line 3155
    add-int/lit8 v3, v3, 0x1

    .line 3156
    .line 3157
    goto :goto_63

    .line 3158
    :cond_20
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3159
    .line 3160
    check-cast v1, Landroid/util/Pair;

    .line 3161
    .line 3162
    :goto_64
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3163
    .line 3164
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3165
    .line 3166
    .line 3167
    move-result-object v2

    .line 3168
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 3169
    .line 3170
    .line 3171
    move-result v2

    .line 3172
    if-ge v3, v2, :cond_21

    .line 3173
    .line 3174
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 3175
    .line 3176
    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 3177
    .line 3178
    .line 3179
    move-result-object v2

    .line 3180
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3181
    .line 3182
    .line 3183
    move-result-object v2

    .line 3184
    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 3185
    .line 3186
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3187
    .line 3188
    check-cast v4, Ljava/lang/String;

    .line 3189
    .line 3190
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3191
    .line 3192
    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 3193
    .line 3194
    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 3195
    .line 3196
    .line 3197
    add-int/lit8 v3, v3, 0x1

    .line 3198
    .line 3199
    goto :goto_64

    .line 3200
    :cond_21
    :goto_65
    return-void

    .line 3201
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_50
        0x20000 -> :sswitch_4f
        0x30000 -> :sswitch_4e
        0x40000 -> :sswitch_4d
        0x50000 -> :sswitch_4c
        0x60000 -> :sswitch_4b
        0x70000 -> :sswitch_4a
        0x80000 -> :sswitch_49
        0x90000 -> :sswitch_48
        0xa0000 -> :sswitch_47
        0xb0000 -> :sswitch_46
        0xc0000 -> :sswitch_45
        0xd0000 -> :sswitch_44
        0xe0000 -> :sswitch_43
        0x120000 -> :sswitch_42
        0x130000 -> :sswitch_41
        0x140000 -> :sswitch_40
        0x150000 -> :sswitch_3f
        0x160000 -> :sswitch_3e
        0x170000 -> :sswitch_3d
        0x180000 -> :sswitch_3c
        0x190000 -> :sswitch_3b
        0x1a0000 -> :sswitch_3a
        0x1b0000 -> :sswitch_39
        0x1c0000 -> :sswitch_38
        0x1d0000 -> :sswitch_37
        0x1e0000 -> :sswitch_36
        0x1f0000 -> :sswitch_35
        0x200000 -> :sswitch_34
        0x210000 -> :sswitch_33
        0x220000 -> :sswitch_32
        0x230000 -> :sswitch_31
        0x240000 -> :sswitch_30
        0x250000 -> :sswitch_2f
        0x260000 -> :sswitch_2e
        0x270000 -> :sswitch_2d
        0x280000 -> :sswitch_2c
        0x290000 -> :sswitch_2b
        0x2a0000 -> :sswitch_2a
        0x2b0000 -> :sswitch_29
        0x2c0000 -> :sswitch_28
        0x2d0000 -> :sswitch_27
        0x2e0000 -> :sswitch_26
        0x2f0000 -> :sswitch_25
        0x300000 -> :sswitch_24
        0x310000 -> :sswitch_23
        0x320000 -> :sswitch_22
        0x330000 -> :sswitch_21
        0x340000 -> :sswitch_20
        0x350000 -> :sswitch_1f
        0x360000 -> :sswitch_1e
        0x370000 -> :sswitch_1d
        0x380000 -> :sswitch_1c
        0x3a0000 -> :sswitch_1b
        0x3b0000 -> :sswitch_1a
        0x3c0000 -> :sswitch_19
        0x3d0000 -> :sswitch_18
        0x3e0000 -> :sswitch_17
        0x3f0000 -> :sswitch_16
        0x400000 -> :sswitch_15
        0x410000 -> :sswitch_14
        0x420000 -> :sswitch_13
        0x430000 -> :sswitch_12
        0x440000 -> :sswitch_11
        0x450000 -> :sswitch_10
        0x460000 -> :sswitch_f
        0x470000 -> :sswitch_e
        0x480000 -> :sswitch_d
        0x490000 -> :sswitch_c
        0x4a0000 -> :sswitch_b
        0x650000 -> :sswitch_a
        0x660000 -> :sswitch_9
        0x670000 -> :sswitch_8
        0x710000 -> :sswitch_7
        0x790000 -> :sswitch_6
        0x7a0000 -> :sswitch_5
        0x7b0000 -> :sswitch_4
        0x7c0000 -> :sswitch_3
        0x7d0000 -> :sswitch_2
        0x7e0000 -> :sswitch_4f
        0x850000 -> :sswitch_1
        0x8c0000 -> :sswitch_0
    .end sparse-switch
.end method
