.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->$this_apply:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 7
    .line 8
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_12

    .line 13
    .line 14
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    .line 15
    .line 16
    const-string v6, "com.samsung.android.action.INTELLIGENCE_SERVICE_SETTINGS_START_INTENT"

    .line 17
    .line 18
    const-string v7, "S.S.N."

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v3, "checkAndExecuteSuggestResponses() : execute sa sign in"

    .line 23
    .line 24
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    const-string v3, "checkAndExecuteSuggestResponses() : execute child account announce"

    .line 37
    .line 38
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v3, v2, :cond_1

    .line 52
    .line 53
    move v3, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v3, v4

    .line 56
    :goto_0
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 66
    .line 67
    :cond_3
    iget v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->childGraduateAge:I

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const v7, 0x7f11001f

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-direct {v5, v6, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_4
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    .line 109
    .line 110
    if-nez v3, :cond_5

    .line 111
    .line 112
    const-string v3, "checkAndExecuteSuggestResponses() : execute galaxy ai confirm"

    .line 113
    .line 114
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_5
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 123
    .line 124
    if-eqz v3, :cond_9

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPreventOnlineProcessing()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 133
    .line 134
    if-eqz v3, :cond_8

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-ne v3, v2, :cond_6

    .line 143
    .line 144
    move v3, v2

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    move v3, v4

    .line 147
    :goto_1
    if-eqz v3, :cond_7

    .line 148
    .line 149
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    .line 154
    .line 155
    .line 156
    :cond_7
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 157
    .line 158
    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const v5, 0x7f131104

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const v6, 0x7f131102

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;

    .line 189
    .line 190
    invoke-direct {v6, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 191
    .line 192
    .line 193
    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-direct {v7, v8, v3, v5, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    iput-object v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :cond_9
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    .line 210
    .line 211
    if-nez v6, :cond_11

    .line 212
    .line 213
    const-string v6, "checkAndExecuteSuggestResponses() : execute suggest replies setting on"

    .line 214
    .line 215
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 219
    .line 220
    if-eqz v6, :cond_c

    .line 221
    .line 222
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 223
    .line 224
    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-ne v6, v2, :cond_a

    .line 229
    .line 230
    move v6, v2

    .line 231
    goto :goto_2

    .line 232
    :cond_a
    move v6, v4

    .line 233
    :goto_2
    if-eqz v6, :cond_b

    .line 234
    .line 235
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 236
    .line 237
    if-eqz v6, :cond_b

    .line 238
    .line 239
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    .line 240
    .line 241
    .line 242
    :cond_b
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 243
    .line 244
    :cond_c
    if-eqz v3, :cond_10

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    const v6, 0x7f0d046f

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    const v6, 0x7f0a0a77

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Landroid/widget/TextView;

    .line 269
    .line 270
    const v7, 0x7f0a0a75

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    check-cast v7, Landroid/widget/Button;

    .line 278
    .line 279
    const v8, 0x7f0a0a73

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Landroid/widget/Button;

    .line 287
    .line 288
    const v9, 0x7f1310ef

    .line 289
    .line 290
    .line 291
    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    const-string v10, "%1$s"

    .line 298
    .line 299
    invoke-static {v9, v10}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    const-string v11, "%2$s"

    .line 304
    .line 305
    invoke-static {v10, v11}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    const-string v11, "%3$s"

    .line 310
    .line 311
    invoke-static {v9, v11}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    const-string v12, "%4$s"

    .line 316
    .line 317
    invoke-static {v11, v12}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    new-instance v12, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    new-instance v10, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;

    .line 333
    .line 334
    invoke-direct {v10, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 335
    .line 336
    .line 337
    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForTermsAndConditions$1;

    .line 338
    .line 339
    invoke-direct {v11, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForTermsAndConditions$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 340
    .line 341
    .line 342
    new-instance v13, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    sget v10, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    .line 354
    .line 355
    const-string v10, ""

    .line 356
    .line 357
    filled-new-array {v10, v10, v10, v10}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    const/4 v11, 0x4

    .line 362
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    const/16 v10, 0x258

    .line 371
    .line 372
    invoke-static {v5, v10, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    invoke-virtual {v10}, Landroid/graphics/Typeface;->getStyle()I

    .line 377
    .line 378
    .line 379
    move-result v10

    .line 380
    new-instance v11, Landroid/text/SpannableString;

    .line 381
    .line 382
    invoke-direct {v11, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v12

    .line 389
    move v14, v4

    .line 390
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    if-eqz v15, :cond_f

    .line 395
    .line 396
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    add-int/lit8 v16, v14, 0x1

    .line 401
    .line 402
    if-ltz v14, :cond_e

    .line 403
    .line 404
    check-cast v15, Ljava/lang/String;

    .line 405
    .line 406
    const/4 v2, 0x6

    .line 407
    invoke-static {v11, v15, v4, v4, v2}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    add-int/2addr v15, v2

    .line 416
    if-ltz v2, :cond_d

    .line 417
    .line 418
    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-gt v15, v4, :cond_d

    .line 423
    .line 424
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    const/16 v14, 0x21

    .line 429
    .line 430
    invoke-virtual {v11, v4, v2, v15, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 431
    .line 432
    .line 433
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 434
    .line 435
    invoke-direct {v4, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v11, v4, v2, v15, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 439
    .line 440
    .line 441
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 442
    .line 443
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    const v14, 0x7f06086f

    .line 448
    .line 449
    .line 450
    invoke-virtual {v5, v14}, Landroid/content/Context;->getColor(I)I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 455
    .line 456
    .line 457
    const/16 v5, 0x21

    .line 458
    .line 459
    invoke-virtual {v11, v4, v2, v15, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 460
    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_d
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    :goto_4
    move/from16 v14, v16

    .line 467
    .line 468
    const/4 v2, 0x1

    .line 469
    const/4 v4, 0x0

    .line 470
    const/4 v5, 0x0

    .line 471
    goto :goto_3

    .line 472
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 473
    .line 474
    .line 475
    const/4 v2, 0x0

    .line 476
    throw v2

    .line 477
    :cond_f
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 485
    .line 486
    .line 487
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;

    .line 488
    .line 489
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    .line 494
    .line 495
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;

    .line 496
    .line 497
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    .line 502
    .line 503
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;

    .line 504
    .line 505
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V

    .line 506
    .line 507
    .line 508
    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$dismissRunnable$1;

    .line 509
    .line 510
    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$dismissRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 511
    .line 512
    .line 513
    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    invoke-direct {v5, v6, v3, v2, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 520
    .line 521
    .line 522
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 523
    .line 524
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    .line 525
    .line 526
    .line 527
    goto :goto_5

    .line 528
    :cond_10
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    const v3, 0x7f1310fe

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;

    .line 544
    .line 545
    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 546
    .line 547
    .line 548
    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 549
    .line 550
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-direct {v4, v5, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 555
    .line 556
    .line 557
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 558
    .line 559
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    .line 560
    .line 561
    .line 562
    :cond_11
    :goto_5
    const/4 v3, 0x1

    .line 563
    goto :goto_8

    .line 564
    :cond_12
    move v3, v2

    .line 565
    move-object v2, v5

    .line 566
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 567
    .line 568
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    const v4, 0x7f07133a

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 584
    .line 585
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    .line 586
    .line 587
    if-nez v4, :cond_13

    .line 588
    .line 589
    move-object v5, v2

    .line 590
    goto :goto_6

    .line 591
    :cond_13
    move-object v5, v4

    .line 592
    :goto_6
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    int-to-float v1, v1

    .line 597
    add-float/2addr v2, v1

    .line 598
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 599
    .line 600
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 601
    .line 602
    if-eqz v1, :cond_14

    .line 603
    .line 604
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 605
    .line 606
    if-eqz v1, :cond_14

    .line 607
    .line 608
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    goto :goto_7

    .line 613
    :cond_14
    const/4 v1, 0x0

    .line 614
    :goto_7
    int-to-float v1, v1

    .line 615
    sub-float/2addr v2, v1

    .line 616
    float-to-int v1, v2

    .line 617
    if-nez v1, :cond_15

    .line 618
    .line 619
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 620
    .line 621
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showAIReply()V

    .line 622
    .line 623
    .line 624
    goto :goto_8

    .line 625
    :cond_15
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 626
    .line 627
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 628
    .line 629
    if-eqz v2, :cond_16

    .line 630
    .line 631
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 632
    .line 633
    if-eqz v2, :cond_16

    .line 634
    .line 635
    const/4 v4, 0x0

    .line 636
    invoke-virtual {v2, v4, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    .line 637
    .line 638
    .line 639
    goto :goto_9

    .line 640
    :cond_16
    :goto_8
    const/4 v4, 0x0

    .line 641
    :goto_9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->$this_apply:Landroid/widget/ImageView;

    .line 642
    .line 643
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    const/high16 v1, 0x3f800000    # 1.0f

    .line 648
    .line 649
    cmpg-float v0, v0, v1

    .line 650
    .line 651
    if-nez v0, :cond_17

    .line 652
    .line 653
    move v2, v3

    .line 654
    goto :goto_a

    .line 655
    :cond_17
    move v2, v4

    .line 656
    :goto_a
    if-eqz v2, :cond_18

    .line 657
    .line 658
    const-string v0, "active"

    .line 659
    .line 660
    goto :goto_b

    .line 661
    :cond_18
    const-string v0, "dimmed"

    .line 662
    .line 663
    :goto_b
    const-string/jumbo v1, "type"

    .line 664
    .line 665
    .line 666
    const-string v2, "QPN102"

    .line 667
    .line 668
    const-string v3, "QPNE0217"

    .line 669
    .line 670
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    return-void
.end method
