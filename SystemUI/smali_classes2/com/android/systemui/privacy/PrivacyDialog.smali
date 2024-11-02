.class public final Lcom/android/systemui/privacy/PrivacyDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final clickListener:Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

.field public final dismissListeners:Ljava/util/List;

.field public final dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final iconColorSolid:I

.field public final list:Ljava/util/List;

.field public mBlurView:Landroid/widget/ImageView;

.field public mDialogTopMargin:I

.field public mDialogTranslateX:I

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final phonecall:Ljava/lang/String;

.field public qsExpanded:Z

.field public rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;",
            "Lkotlin/jvm/functions/Function4;",
            ")V"
        }
    .end annotation

    .line 1
    const v0, 0x7f140280

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    .line 8
    .line 9
    new-instance p2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    .line 15
    .line 16
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const p2, 0x7f0604b4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->iconColorSolid:I

    .line 32
    .line 33
    const p2, 0x7f130c62

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    const p2, 0x7f130f56

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->phonecall:Ljava/lang/String;

    .line 47
    .line 48
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    .line 49
    .line 50
    invoke-direct {p1, p3}, Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;-><init>(Lkotlin/jvm/functions/Function4;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->clickListener:Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f070e64

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const v6, 0x7f070bf0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    mul-float/2addr v5, v0

    .line 57
    float-to-int v0, v5

    .line 58
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const v6, 0x7f07124b

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    add-int/2addr v5, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 88
    .line 89
    if-ne v0, v4, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 133
    .line 134
    if-ne v0, v1, :cond_2

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const v5, 0x7f0711a2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    move v5, v3

    .line 153
    :goto_0
    add-int/2addr p1, v5

    .line 154
    iput p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget v5, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    .line 194
    .line 195
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget v5, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTranslateX:I

    .line 202
    .line 203
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 204
    .line 205
    invoke-virtual {p1, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const v5, 0x7f06093d

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 249
    .line 250
    if-ne v0, v4, :cond_3

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const v5, 0x7f070e5b

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    goto :goto_1

    .line 268
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->qsExpanded:Z

    .line 269
    .line 270
    if-eqz v0, :cond_4

    .line 271
    .line 272
    move v0, v3

    .line 273
    goto :goto_1

    .line 274
    :cond_4
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    mul-int/2addr v0, v1

    .line 309
    sub-int/2addr v2, v0

    .line 310
    const/4 v0, -0x2

    .line 311
    invoke-virtual {p1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 312
    .line 313
    .line 314
    const v0, 0x7f140010

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 318
    .line 319
    .line 320
    const/16 v0, 0x31

    .line 321
    .line 322
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 323
    .line 324
    .line 325
    :cond_5
    const p1, 0x7f0d0372

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 329
    .line 330
    .line 331
    const p1, 0x7f0a0122

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Landroid/widget/ImageView;

    .line 339
    .line 340
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mBlurView:Landroid/widget/ImageView;

    .line 341
    .line 342
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    const-string/jumbo v0, "persona"

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 354
    .line 355
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 356
    .line 357
    const p1, 0x7f0a08e5

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    check-cast p1, Landroid/view/ViewGroup;

    .line 365
    .line 366
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    .line 367
    .line 368
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    const/4 v2, 0x0

    .line 379
    if-eqz v0, :cond_16

    .line 380
    .line 381
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 386
    .line 387
    iget-object v5, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    .line 388
    .line 389
    if-nez v5, :cond_6

    .line 390
    .line 391
    move-object v5, v2

    .line 392
    :cond_6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    iget-object v7, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    .line 401
    .line 402
    if-nez v7, :cond_7

    .line 403
    .line 404
    move-object v7, v2

    .line 405
    :cond_7
    const v8, 0x7f0d0373

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v8, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    check-cast v6, Landroid/view/ViewGroup;

    .line 413
    .line 414
    iget-object v7, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 415
    .line 416
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    sget-object v9, Lcom/android/systemui/privacy/PrivacyDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 421
    .line 422
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    aget v7, v9, v7

    .line 427
    .line 428
    if-eq v7, v4, :cond_b

    .line 429
    .line 430
    if-eq v7, v1, :cond_a

    .line 431
    .line 432
    const/4 v9, 0x3

    .line 433
    if-eq v7, v9, :cond_9

    .line 434
    .line 435
    const/4 v9, 0x4

    .line 436
    if-ne v7, v9, :cond_8

    .line 437
    .line 438
    const v7, 0x7f080d5e

    .line 439
    .line 440
    .line 441
    goto :goto_3

    .line 442
    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 443
    .line 444
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 445
    .line 446
    .line 447
    throw p0

    .line 448
    :cond_9
    const v7, 0x7f080f75

    .line 449
    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_a
    const v7, 0x7f080f73

    .line 453
    .line 454
    .line 455
    goto :goto_3

    .line 456
    :cond_b
    const v7, 0x7f080f74

    .line 457
    .line 458
    .line 459
    :goto_3
    invoke-virtual {v8, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    .line 464
    .line 465
    const v8, 0x7f0a04a2

    .line 466
    .line 467
    .line 468
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    iget v10, p0, Lcom/android/systemui/privacy/PrivacyDialog;->iconColorSolid:I

    .line 473
    .line 474
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    check-cast v8, Landroid/widget/ImageView;

    .line 482
    .line 483
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    iget-object v9, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 491
    .line 492
    invoke-virtual {v9, v7}, Lcom/android/systemui/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    iget-boolean v7, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 500
    .line 501
    if-eqz v7, :cond_c

    .line 502
    .line 503
    const v7, 0x7f130f58

    .line 504
    .line 505
    .line 506
    goto :goto_4

    .line 507
    :cond_c
    const v7, 0x7f130f57

    .line 508
    .line 509
    .line 510
    :goto_4
    iget-boolean v8, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 511
    .line 512
    if-eqz v8, :cond_d

    .line 513
    .line 514
    iget-object v9, p0, Lcom/android/systemui/privacy/PrivacyDialog;->phonecall:Ljava/lang/String;

    .line 515
    .line 516
    goto :goto_5

    .line 517
    :cond_d
    iget-object v9, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 518
    .line 519
    :goto_5
    iget v10, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 520
    .line 521
    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 522
    .line 523
    .line 524
    move-result v11

    .line 525
    iget-boolean v12, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    .line 526
    .line 527
    if-nez v12, :cond_e

    .line 528
    .line 529
    if-eqz v11, :cond_10

    .line 530
    .line 531
    :cond_e
    iget-object v11, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 532
    .line 533
    if-nez v11, :cond_f

    .line 534
    .line 535
    move-object v11, v2

    .line 536
    :cond_f
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object v12

    .line 540
    invoke-virtual {v11, v10, v12}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v10

    .line 544
    if-eqz v10, :cond_10

    .line 545
    .line 546
    const-string v11, "("

    .line 547
    .line 548
    const-string v12, ")"

    .line 549
    .line 550
    invoke-static {v11, v10, v12}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v10

    .line 554
    filled-new-array {v9, v10}, [Ljava/lang/CharSequence;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    :cond_10
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 563
    .line 564
    .line 565
    move-result-object v10

    .line 566
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    invoke-virtual {v10, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    iget-object v9, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 575
    .line 576
    iget-object v10, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 577
    .line 578
    if-eqz v9, :cond_11

    .line 579
    .line 580
    if-eqz v10, :cond_11

    .line 581
    .line 582
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    const v11, 0x7f130c60

    .line 587
    .line 588
    .line 589
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v9

    .line 593
    invoke-virtual {v2, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    goto :goto_6

    .line 598
    :cond_11
    if-eqz v9, :cond_12

    .line 599
    .line 600
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    const v10, 0x7f130c5f

    .line 605
    .line 606
    .line 607
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    invoke-virtual {v2, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    goto :goto_6

    .line 616
    :cond_12
    if-eqz v10, :cond_13

    .line 617
    .line 618
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    const v9, 0x7f130c61

    .line 623
    .line 624
    .line 625
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v10

    .line 629
    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    :cond_13
    :goto_6
    if-eqz v2, :cond_14

    .line 634
    .line 635
    const-string v9, " "

    .line 636
    .line 637
    filled-new-array {v7, v9, v2}, [Ljava/lang/CharSequence;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 642
    .line 643
    .line 644
    move-result-object v7

    .line 645
    :cond_14
    const v2, 0x7f0a0bb7

    .line 646
    .line 647
    .line 648
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    check-cast v2, Landroid/widget/TextView;

    .line 653
    .line 654
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    if-nez v8, :cond_15

    .line 661
    .line 662
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->clickListener:Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    .line 663
    .line 664
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    .line 666
    .line 667
    :cond_15
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    .line 669
    .line 670
    goto/16 :goto_2

    .line 671
    .line 672
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    .line 673
    .line 674
    if-nez p1, :cond_17

    .line 675
    .line 676
    goto :goto_7

    .line 677
    :cond_17
    move-object v2, p1

    .line 678
    :goto_7
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 679
    .line 680
    .line 681
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$4;

    .line 682
    .line 683
    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$4;-><init>(Lcom/android/systemui/privacy/PrivacyDialog;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 687
    .line 688
    .line 689
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->shadeQsExpansionListener:Lcom/android/systemui/privacy/PrivacyDialogController$shadeQsExpansionListener$1;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyDialogDismissed()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 55
    .line 56
    sget-object v2, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    .line 57
    .line 58
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    iput-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method
