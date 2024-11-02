.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-eqz v0, :cond_15

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_15

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string/jumbo v4, "phone"

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v6, "android.telephony.extra.SLOT_INDEX"

    .line 24
    .line 25
    const-string v7, "LatinNetworkNameProvider"

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, -0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :sswitch_0
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string v2, "CB is being cleared on slot="

    .line 50
    .line 51
    invoke-static {v2, v0, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v8, v10

    .line 66
    :cond_2
    :goto_0
    if-nez v8, :cond_3

    .line 67
    .line 68
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    .line 88
    .line 89
    if-eqz v0, :cond_15

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->updateCarrierInfo(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :sswitch_1
    const-string v3, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_4
    const-string v2, "network_manually_selected"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "network_manually_selected_phone_id"

    .line 117
    .line 118
    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v2, :cond_15

    .line 123
    .line 124
    if-ltz v0, :cond_15

    .line 125
    .line 126
    iput-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :sswitch_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :cond_5
    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    const-string/jumbo v3, "ss"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eq v2, v9, :cond_6

    .line 152
    .line 153
    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    const-string v3, "ABSENT"

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    .line 199
    .line 200
    if-eqz v0, :cond_15

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->updateCarrierInfo(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :sswitch_3
    const-string v0, "android.location.MODE_CHANGED"

    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_8

    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->registerLocationListener()V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :sswitch_4
    const-string v3, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_9

    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :cond_9
    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    const-string v3, "android.telephony.extra.SHOW_SPN"

    .line 241
    .line 242
    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    const-string v3, "android.telephony.extra.SPN"

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    const-string v3, "android.telephony.extra.DATA_SPN"

    .line 253
    .line 254
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    const-string v3, "android.telephony.extra.SHOW_PLMN"

    .line 259
    .line 260
    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    const-string v3, "android.telephony.extra.PLMN"

    .line 265
    .line 266
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    const-string/jumbo v3, "showEpdg"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 274
    .line 275
    .line 276
    move-result v17

    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 281
    .line 282
    move-object v11, v0

    .line 283
    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/shade/carrier/NetworkNameInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 284
    .line 285
    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 291
    .line 292
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string/jumbo v3, "updateNetworkName ["

    .line 298
    .line 299
    .line 300
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v2, "] "

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    goto/16 :goto_5

    .line 322
    .line 323
    :sswitch_5
    const-string v3, "android.telephony.action.AREA_INFO_UPDATED"

    .line 324
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_a

    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :cond_a
    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    const-string v3, "enable"

    .line 338
    .line 339
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 344
    .line 345
    if-ne v2, v9, :cond_c

    .line 346
    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 356
    .line 357
    if-eqz v0, :cond_b

    .line 358
    .line 359
    iget-object v5, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 360
    .line 361
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v3, "[INVALID_SIM_SLOT_INDEX] slotId="

    .line 364
    .line 365
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v2, " plmn="

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    iput-boolean v10, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->showCBMsg:Z

    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_c
    if-nez v0, :cond_d

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastCBClear(I)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 406
    .line 407
    if-eqz v0, :cond_10

    .line 408
    .line 409
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 410
    .line 411
    if-eqz v0, :cond_10

    .line 412
    .line 413
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 414
    .line 415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    if-eqz v4, :cond_10

    .line 424
    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    check-cast v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 437
    .line 438
    iget-boolean v0, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    .line 439
    .line 440
    if-eqz v0, :cond_10

    .line 441
    .line 442
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    .line 443
    .line 444
    if-eqz v0, :cond_e

    .line 445
    .line 446
    :try_start_0
    invoke-interface {v0, v2}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .line 452
    goto :goto_2

    .line 453
    :catch_0
    move-exception v0

    .line 454
    const-string v4, "Can\'t get cell broadcast msg on channel 50"

    .line 455
    .line 456
    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .line 458
    .line 459
    :cond_e
    const-string v0, ""

    .line 460
    .line 461
    :goto_2
    iget-object v4, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    .line 462
    .line 463
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    xor-int/2addr v0, v8

    .line 475
    if-eqz v0, :cond_10

    .line 476
    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 486
    .line 487
    if-eqz v0, :cond_f

    .line 488
    .line 489
    iget-object v5, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 490
    .line 491
    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v3, "CellBroadcast Message arrived. Slot="

    .line 500
    .line 501
    const-string v4, " PLMN="

    .line 502
    .line 503
    const-string v6, " CbMsg="

    .line 504
    .line 505
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    iput-boolean v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->showCBMsg:Z

    .line 520
    .line 521
    :cond_10
    :goto_3
    iget-object v0, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    .line 522
    .line 523
    if-eqz v0, :cond_15

    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->updateCarrierInfo(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_5

    .line 533
    .line 534
    :sswitch_6
    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 535
    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-nez v2, :cond_11

    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :cond_11
    const-string/jumbo v2, "slot"

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_15

    .line 563
    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    if-eqz v0, :cond_12

    .line 569
    .line 570
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    :cond_12
    if-eqz v5, :cond_15

    .line 575
    .line 576
    new-instance v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 577
    .line 578
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    .line 579
    .line 580
    .line 581
    move-result v12

    .line 582
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    .line 583
    .line 584
    .line 585
    move-result v13

    .line 586
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    .line 587
    .line 588
    .line 589
    move-result v14

    .line 590
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    .line 591
    .line 592
    .line 593
    move-result v15

    .line 594
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-nez v3, :cond_13

    .line 599
    .line 600
    move/from16 v16, v8

    .line 601
    .line 602
    goto :goto_4

    .line 603
    :cond_13
    move/from16 v16, v10

    .line 604
    .line 605
    :goto_4
    move-object v11, v0

    .line 606
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/shade/carrier/ServiceStateInfo;-><init>(IIZZZ)V

    .line 607
    .line 608
    .line 609
    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 610
    .line 611
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    check-cast v4, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 620
    .line 621
    if-eqz v4, :cond_14

    .line 622
    .line 623
    iget v5, v4, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    .line 624
    .line 625
    iget v4, v4, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    .line 626
    .line 627
    invoke-static {v5, v4}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    if-eqz v4, :cond_14

    .line 632
    .line 633
    iget v4, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    .line 634
    .line 635
    iget v5, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    .line 636
    .line 637
    invoke-static {v4, v5}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    .line 638
    .line 639
    .line 640
    move-result v4

    .line 641
    if-nez v4, :cond_14

    .line 642
    .line 643
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastCBClear(I)V

    .line 644
    .line 645
    .line 646
    :cond_14
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eq v4, v0, :cond_15

    .line 662
    .line 663
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    const-string v3, "There\'s changes in Subscriptions "

    .line 670
    .line 671
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string v3, " -> "

    .line 678
    .line 679
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->unregisterLocationListener()V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->registerLocationListener()V

    .line 696
    .line 697
    .line 698
    :cond_15
    :goto_5
    return-void

    .line 699
    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_6
        -0x4549d447 -> :sswitch_5
        -0x2264170f -> :sswitch_4
        -0x1e7960ae -> :sswitch_3
        -0xdb21ee7 -> :sswitch_2
        -0xae47595 -> :sswitch_1
        0x4742679e -> :sswitch_0
    .end sparse-switch
.end method
