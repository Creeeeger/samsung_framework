.class final Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_15

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_8

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 31
    .line 32
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->toggleKeyboardShortcutsMenu(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_8

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 59
    .line 60
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 89
    .line 90
    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->animateExpandNotificationsPanel()V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 95
    .line 96
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 115
    .line 116
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 117
    .line 118
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 119
    .line 120
    if-eqz v4, :cond_0

    .line 121
    .line 122
    move v4, v2

    .line 123
    goto :goto_4

    .line 124
    :cond_0
    move v4, v1

    .line 125
    :goto_4
    invoke-interface {v0, v3, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->animateCollapsePanels(IZ)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 132
    .line 133
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 134
    .line 135
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 154
    .line 155
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 156
    .line 157
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 158
    .line 159
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 160
    .line 161
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->setWindowState(III)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 168
    .line 169
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 170
    .line 171
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 172
    .line 173
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 174
    .line 175
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_8

    .line 188
    .line 189
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 194
    .line 195
    invoke-interface {v1, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->abortTransient(II)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 202
    .line 203
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 204
    .line 205
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 206
    .line 207
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 208
    .line 209
    if-ne p1, v2, :cond_1

    .line 210
    .line 211
    move v1, v2

    .line 212
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 213
    .line 214
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_8

    .line 227
    .line 228
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-interface {p1, v0, v3, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->showTransient(IILjava/lang/Boolean;)V

    .line 239
    .line 240
    .line 241
    goto :goto_7

    .line 242
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 243
    .line 244
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 245
    .line 246
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_8

    .line 259
    .line 260
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 265
    .line 266
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->onFocusedDisplayChanged(I)V

    .line 267
    .line 268
    .line 269
    goto :goto_8

    .line 270
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 273
    .line 274
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 275
    .line 276
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_8

    .line 289
    .line 290
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 295
    .line 296
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 297
    .line 298
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 299
    .line 300
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 301
    .line 302
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->disable(III)V

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 307
    .line 308
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_8

    .line 321
    .line 322
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 327
    .line 328
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v1, Landroid/view/KeyEvent;

    .line 331
    .line 332
    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 339
    .line 340
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 341
    .line 342
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_8

    .line 355
    .line 356
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 361
    .line 362
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 363
    .line 364
    move-object v11, v3

    .line 365
    check-cast v11, [Lcom/android/internal/view/AppearanceRegion;

    .line 366
    .line 367
    array-length v12, v11

    .line 368
    move v13, v1

    .line 369
    :goto_b
    if-ge v13, v12, :cond_2

    .line 370
    .line 371
    aget-object v3, v11, v13

    .line 372
    .line 373
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 374
    .line 375
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 376
    .line 377
    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 382
    .line 383
    if-ne v3, v2, :cond_3

    .line 384
    .line 385
    move v3, v2

    .line 386
    goto :goto_c

    .line 387
    :cond_3
    move v3, v1

    .line 388
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 393
    .line 394
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 395
    .line 396
    if-ne v3, v2, :cond_4

    .line 397
    .line 398
    move v3, v2

    .line 399
    goto :goto_d

    .line 400
    :cond_4
    move v3, v1

    .line 401
    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 406
    .line 407
    move-object v10, v3

    .line 408
    check-cast v10, Ljava/lang/String;

    .line 409
    .line 410
    move-object v3, v0

    .line 411
    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->onSystemBarAttributesChanged(IILandroid/graphics/Rect;Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    add-int/lit8 v13, v13, 0x1

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 418
    .line 419
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_8

    .line 432
    .line 433
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 438
    .line 439
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v1, Landroid/view/KeyEvent;

    .line 442
    .line 443
    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 444
    .line 445
    .line 446
    goto :goto_e

    .line 447
    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 448
    .line 449
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    if-eqz p1, :cond_8

    .line 462
    .line 463
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 468
    .line 469
    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->toggleRecentApps()V

    .line 470
    .line 471
    .line 472
    goto :goto_f

    .line 473
    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 474
    .line 475
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_8

    .line 488
    .line 489
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 494
    .line 495
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 496
    .line 497
    if-eqz v3, :cond_5

    .line 498
    .line 499
    move v3, v2

    .line 500
    goto :goto_11

    .line 501
    :cond_5
    move v3, v1

    .line 502
    :goto_11
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 503
    .line 504
    if-eqz v4, :cond_6

    .line 505
    .line 506
    move v4, v2

    .line 507
    goto :goto_12

    .line 508
    :cond_6
    move v4, v1

    .line 509
    :goto_12
    invoke-interface {v0, v3, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->hideRecentApps(ZZ)V

    .line 510
    .line 511
    .line 512
    goto :goto_10

    .line 513
    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    .line 514
    .line 515
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-eqz v0, :cond_8

    .line 528
    .line 529
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    .line 534
    .line 535
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 536
    .line 537
    if-eqz v3, :cond_7

    .line 538
    .line 539
    move v3, v2

    .line 540
    goto :goto_14

    .line 541
    :cond_7
    move v3, v1

    .line 542
    :goto_14
    invoke-interface {v0, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->showRecentApps(Z)V

    .line 543
    .line 544
    .line 545
    goto :goto_13

    .line 546
    :cond_8
    :goto_15
    return-void

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
