.class public final Lcom/android/keyguard/KeyguardUCMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final syncObj:Ljava/lang/Object;


# instance fields
.field public mAgentID:Ljava/lang/String;

.field public mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

.field public mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

.field public mChildSafeMsg:Ljava/lang/String;

.field public mError:I

.field public mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

.field public mIsSupportBiometricForUCM:Z

.field public mMISCInfo:Ljava/lang/String;

.field public mPinMaxLength:I

.field public mPinMinLength:I

.field public mPinText:Ljava/lang/String;

.field public mPukMaxLength:I

.field public mPukMinLength:I

.field public mPukSupported:Z

.field public mPukText:Ljava/lang/String;

.field public mRemainingAttempts:I

.field public final mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

.field public mStatus:I

.field public final mUCMAgent:Landroid/widget/TextView;

.field public final mUCMMiscTagValue:Landroid/widget/TextView;

.field public mUnlockOngoing:Z

.field public mUnlockProgressDialog:Landroid/app/ProgressDialog;

.field public final mVendorName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mgeneratePassword(Lcom/android/keyguard/KeyguardUCMViewController;I)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "generatePassword called"

    .line 5
    .line 6
    const-string v1, "KeyguardUCMPinView"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x83

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Do not need to get password"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1, v0, p0, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo p0, "mUcmBinder == null"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object v2
.end method

.method public static -$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "\n("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "0x%08X"

    .line 20
    .line 21
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ")"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    packed-switch p1, :pswitch_data_1

    .line 41
    .line 42
    .line 43
    const v4, 0x7f1309e6

    .line 44
    .line 45
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 47
    .line 48
    .line 49
    packed-switch p1, :pswitch_data_2

    .line 50
    .line 51
    .line 52
    packed-switch p1, :pswitch_data_3

    .line 53
    .line 54
    .line 55
    packed-switch p1, :pswitch_data_4

    .line 56
    .line 57
    .line 58
    packed-switch p1, :pswitch_data_5

    .line 59
    .line 60
    .line 61
    packed-switch p1, :pswitch_data_6

    .line 62
    .line 63
    .line 64
    const/high16 v5, 0x8000000

    .line 65
    .line 66
    if-ge v5, p1, :cond_0

    .line 67
    .line 68
    const/high16 v5, 0x8010000

    .line 69
    .line 70
    if-le v5, p1, :cond_0

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    add-int/lit8 p0, p0, -0x4

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    goto :goto_0

    .line 128
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    goto :goto_0

    .line 152
    :pswitch_0
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const v1, 0x7f1309dd

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    goto :goto_0

    .line 179
    :pswitch_1
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const v1, 0x7f1309db

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    goto :goto_0

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const v1, 0x7f1309e7

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    :goto_0
    return-object p0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x1fff -> :sswitch_1
        0x1000100 -> :sswitch_2
        0x1000200 -> :sswitch_2
        0x1000300 -> :sswitch_2
        0x1000400 -> :sswitch_2
        0x2000201 -> :sswitch_2
        0x8000000 -> :sswitch_0
        0x9000000 -> :sswitch_1
        0xc000100 -> :sswitch_1
        0xc000200 -> :sswitch_1
    .end sparse-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :pswitch_data_2
    .packed-switch 0x2000101
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :pswitch_data_3
    .packed-switch 0x2000301
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :pswitch_data_4
    .packed-switch 0x2000401
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :pswitch_data_5
    .packed-switch 0x2000501
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :pswitch_data_6
    .packed-switch 0x3000000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static -$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f110017

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static -$$Nest$mverifyPIN(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)[I
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "errorCode : "

    .line 5
    .line 6
    const-string/jumbo v1, "remainCnt : "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "state : "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "verifyPIN called"

    .line 13
    .line 14
    .line 15
    const-string v4, "KeyguardUCMPinView"

    .line 16
    .line 17
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    filled-new-array {v3, v3, v3}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    const-string p0, "failed to get UCM service"

    .line 32
    .line 33
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-interface {v6, v9, v7, p1, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v6, "lockscreen_message"

    .line 49
    .line 50
    const-string v7, ""

    .line 51
    .line 52
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v6, "state"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    iput v6, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 66
    .line 67
    const-string/jumbo v6, "remainCnt"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    iput v6, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 75
    .line 76
    const-string v6, "errorresponse"

    .line 77
    .line 78
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 132
    .line 133
    const/16 v1, 0x83

    .line 134
    .line 135
    if-ne v0, v1, :cond_1

    .line 136
    .line 137
    const-string v0, "PIN verification succeed"

    .line 138
    .line 139
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    const-string v0, "PIN verification failed"

    .line 144
    .line 145
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 149
    .line 150
    aput v0, v5, v9

    .line 151
    .line 152
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    aput p0, v5, v0

    .line 156
    .line 157
    const/4 p0, 0x2

    .line 158
    aput p1, v5, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :goto_1
    return-object v5
.end method

.method public static -$$Nest$mverifyPUK(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "errorCode : "

    .line 5
    .line 6
    const-string/jumbo v1, "remainCnt : "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "state : "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "verifyPUK called"

    .line 13
    .line 14
    .line 15
    const-string v4, "KeyguardUCMPinView"

    .line 16
    .line 17
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    filled-new-array {v3, v3, v3}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const/4 v6, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-lez v8, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move-object v7, v6

    .line 45
    :goto_1
    if-nez p2, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-lez v9, :cond_3

    .line 61
    .line 62
    move-object v6, v8

    .line 63
    :cond_3
    :goto_2
    const/4 v8, 0x0

    .line 64
    if-eqz v7, :cond_8

    .line 65
    .line 66
    if-nez v6, :cond_4

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v6, :cond_5

    .line 75
    .line 76
    const-string p0, "failed to get UCM service"

    .line 77
    .line 78
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    aput v3, v5, v8

    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-interface {v6, v7, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string/jumbo p2, "state"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 101
    .line 102
    const-string/jumbo p2, "remainCnt"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 110
    .line 111
    const-string p2, "errorresponse"

    .line 112
    .line 113
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 140
    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 167
    .line 168
    const/16 v0, 0x83

    .line 169
    .line 170
    if-eq p2, v0, :cond_7

    .line 171
    .line 172
    const/16 v0, 0x84

    .line 173
    .line 174
    if-eq p2, v0, :cond_6

    .line 175
    .line 176
    const-string p2, "PUK verification failed : BLOCKED"

    .line 177
    .line 178
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    const-string p2, "PUK verification succeed : LOCKED"

    .line 183
    .line 184
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    const-string p2, "PUK verification succeed : UNLOCKED"

    .line 189
    .line 190
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :goto_3
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 194
    .line 195
    aput p2, v5, v8

    .line 196
    .line 197
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 198
    .line 199
    const/4 p2, 0x1

    .line 200
    aput p0, v5, p2

    .line 201
    .line 202
    const/4 p0, 0x2

    .line 203
    aput p1, v5, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_8
    :goto_4
    aput v3, v5, v8

    .line 212
    .line 213
    :goto_5
    return-object v5
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    .line 15
    .line 16
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 17
    .line 18
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    .line 19
    .line 20
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    .line 21
    .line 22
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    .line 23
    .line 24
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    .line 25
    .line 26
    const/4 p3, -0x1

    .line 27
    iput p3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 28
    .line 29
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    .line 30
    .line 31
    new-instance p3, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 32
    .line 33
    invoke-direct {p3, p0, p2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 41
    .line 42
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_0

    .line 47
    .line 48
    const-string p2, "KeyguardUCMPinView"

    .line 49
    .line 50
    const-string p3, "failed to get UCM service"

    .line 51
    .line 52
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    invoke-interface {p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p2

    .line 66
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    move-object p2, p1

    .line 70
    :goto_0
    if-eqz p2, :cond_1

    .line 71
    .line 72
    const-string p3, ""

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-nez p3, :cond_1

    .line 79
    .line 80
    const-string/jumbo p3, "none"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_1

    .line 88
    .line 89
    move-object p1, p2

    .line 90
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mVendorName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getVendorID()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 96
    .line 97
    check-cast p1, Lcom/android/keyguard/KeyguardUCMView;

    .line 98
    .line 99
    const p2, 0x7f0a0c64

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 111
    .line 112
    check-cast p1, Lcom/android/keyguard/KeyguardUCMView;

    .line 113
    .line 114
    const p2, 0x7f0a0c63

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz p0, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const/16 p0, 0x8

    .line 134
    .line 135
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void
.end method

.method public static getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 3

    .line 1
    const-string v0, "com.samsung.ucs.ucsservice"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v1, "KeyguardUCMPinView"

    .line 14
    .line 15
    const-string v2, "failed to get UCM service"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getCSUri()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mVendorName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "getCSUri returns : "

    .line 10
    .line 11
    const-string v1, "KeyguardUCMPinView"

    .line 12
    .line 13
    invoke-static {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final getPasswordTextByString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getSecurityViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a055a

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 2

    .line 1
    const-string v0, "KeyguardUCMPinView"

    .line 2
    .line 3
    const-string v1, "getUnlockProgressDialog called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/app/ProgressDialog;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const v1, 0x7f1309e1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const v1, 0x7f1309e9

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-object v0, p1

    .line 76
    check-cast v0, Landroid/view/Window;

    .line 77
    .line 78
    const/16 v0, 0x7d9

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 84
    .line 85
    return-object p0
.end method

.method public final getVendorID()V
    .locals 5

    .line 1
    const-string v0, "mAgentID : "

    .line 2
    .line 3
    const-string v1, "KeyguardUCMPinView"

    .line 4
    .line 5
    const-string v2, "getVendorID() called"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "failed to get UCM service"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-string p0, "failed to get agentInfo"

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const-string v3, "id"

    .line 39
    .line 40
    const-string v4, ""

    .line 41
    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iput-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    .line 47
    .line 48
    const-string v3, "isPUKSupported"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    .line 56
    .line 57
    const-string v3, "isSupportBiometricForUCM"

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", mPukSupported : "

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onPasswordChecked "

    .line 2
    .line 3
    .line 4
    const-string v1, " / "

    .line 5
    .line 6
    invoke-static {v0, p3, v1, p2, v1}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string p4, "KeyguardUCMPinView"

    .line 24
    .line 25
    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 p3, 0x0

    .line 35
    const/4 p4, 0x1

    .line 36
    invoke-interface {p2, p1, p3, p4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 44
    .line 45
    invoke-interface {p2, p1, p0, p4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const p2, 0x7f1309e2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KeyguardUCMPinView"

    .line 5
    .line 6
    const-string/jumbo v1, "onPause called"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final resetState()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KeyguardUCMPinView"

    .line 5
    .line 6
    const-string/jumbo v1, "resetState called"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getVendorID()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const-string v0, "KeyguardUCMPinView"

    .line 39
    .line 40
    const-string v2, "getStatusAndShowingDialog"

    .line 41
    .line 42
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    new-array p0, p0, [Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    aput-object v3, p0, v1

    .line 65
    .line 66
    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    .line 68
    .line 69
    :cond_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "KeyguardUCMPinView"

    .line 6
    .line 7
    const-string/jumbo p1, "setMessageSecurityMessageDisplay mMessageAreaController is null"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 9

    .line 1
    const-string v0, "KeyguardUCMPinView"

    .line 2
    .line 3
    const-string/jumbo v1, "verifyPasswordAndUnlock override called"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_a

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-gtz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v3, "StateMachine.getState called"

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget v2, v2, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    packed-switch v2, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "unknown status nothings to do"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 58
    .line 59
    invoke-virtual {v5, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v1, "StateMachine.verifyPUKAndUpdateUI called"

    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    .line 73
    .line 74
    const/16 v5, 0x85

    .line 75
    .line 76
    if-eq v1, v5, :cond_2

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 81
    .line 82
    const v5, 0x7f1309e4

    .line 83
    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 86
    .line 87
    if-eq v1, v4, :cond_8

    .line 88
    .line 89
    const/4 v7, 0x3

    .line 90
    if-eq v1, v2, :cond_7

    .line 91
    .line 92
    if-eq v1, v7, :cond_3

    .line 93
    .line 94
    move v5, v3

    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const-string v1, "confirmPin called"

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v1, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    move v1, v4

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    move v1, v3

    .line 122
    :goto_0
    if-eqz v1, :cond_6

    .line 123
    .line 124
    const/4 v1, 0x4

    .line 125
    iput v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 126
    .line 127
    const-string/jumbo p0, "verifyPUKAndUnlock called"

    .line 128
    .line 129
    .line 130
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object p0, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 134
    .line 135
    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 138
    .line 139
    .line 140
    iput-boolean v4, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 141
    .line 142
    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 147
    .line 148
    .line 149
    iget-object p0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 150
    .line 151
    if-nez p0, :cond_5

    .line 152
    .line 153
    new-instance p0, Lcom/android/keyguard/KeyguardUCMViewController$2;

    .line 154
    .line 155
    iget-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPukText:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v1, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {p0, v6, v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$2;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object p0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 165
    .line 166
    .line 167
    :cond_5
    const p0, 0x7f1309e9

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 172
    .line 173
    const v3, 0x7f1309de

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    .line 182
    .line 183
    iput v7, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 184
    .line 185
    const p0, 0x7f1309dc

    .line 186
    .line 187
    .line 188
    :goto_1
    move v5, v3

    .line 189
    move v3, p0

    .line 190
    goto :goto_2

    .line 191
    :cond_8
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPukText:Ljava/lang/String;

    .line 196
    .line 197
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 198
    .line 199
    move v8, v5

    .line 200
    move v5, v3

    .line 201
    move v3, v8

    .line 202
    :goto_2
    iget-object p0, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 203
    .line 204
    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    .line 205
    .line 206
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 207
    .line 208
    .line 209
    if-eqz v3, :cond_a

    .line 210
    .line 211
    if-eqz v5, :cond_9

    .line 212
    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v0, "\n"

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {v6, p0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_9
    invoke-virtual {v6}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {v6, p0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :pswitch_1
    const-string/jumbo v2, "verifyPINAndUnlock called"

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 272
    .line 273
    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    .line 274
    .line 275
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 276
    .line 277
    .line 278
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 279
    .line 280
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 288
    .line 289
    if-nez v0, :cond_a

    .line 290
    .line 291
    new-instance v0, Lcom/android/keyguard/KeyguardUCMViewController$1;

    .line 292
    .line 293
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$1;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 299
    .line 300
    .line 301
    :cond_a
    :goto_3
    return-void

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
