.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController$3;Landroid/telephony/PinResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    const-string v5, "KeyguardSecSimPukViewController"

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    .line 63
    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 66
    .line 67
    .line 68
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 69
    .line 70
    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 72
    .line 73
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 74
    .line 75
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SIM_UNLOCK_TOAST:Z

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const v1, 0x7f130975

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const v6, 0x7f130894

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    .line 110
    .line 111
    if-nez v6, :cond_2

    .line 112
    .line 113
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const v8, 0x7f14055e

    .line 120
    .line 121
    .line 122
    invoke-direct {v6, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 129
    .line 130
    .line 131
    const v1, 0x7f130c57

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const/16 v3, 0x7d9

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_10

    .line 171
    .line 172
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    .line 173
    .line 174
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    .line 179
    .line 180
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_4

    .line 187
    .line 188
    const-string p0, "ForceHideSoftInput"

    .line 189
    .line 190
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 198
    .line 199
    .line 200
    :cond_4
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 211
    .line 212
    iget-object v3, v3, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 213
    .line 214
    invoke-interface {p0, v1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_5
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 220
    .line 221
    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    const v6, 0x7f13090f

    .line 228
    .line 229
    .line 230
    if-ne v1, v4, :cond_f

    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 233
    .line 234
    iget-object v7, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 237
    .line 238
    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    const-class v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 248
    .line 249
    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 254
    .line 255
    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimEmbedded()Z

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    if-nez v8, :cond_6

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const v4, 0x7f130917

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_6
    const/16 v10, 0xa

    .line 275
    .line 276
    const v11, 0x7f13089a

    .line 277
    .line 278
    .line 279
    const v12, 0x7f130892

    .line 280
    .line 281
    .line 282
    if-le v8, v4, :cond_a

    .line 283
    .line 284
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_LGU_USIM_TEXT:Z

    .line 285
    .line 286
    if-eqz v4, :cond_7

    .line 287
    .line 288
    if-nez v9, :cond_7

    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    rsub-int/lit8 v4, v8, 0xa

    .line 295
    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto/16 :goto_3

    .line 313
    .line 314
    :cond_7
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 315
    .line 316
    if-eqz v4, :cond_8

    .line 317
    .line 318
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    rsub-int/lit8 v4, v8, 0xa

    .line 323
    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v1, v12, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :cond_8
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 343
    .line 344
    if-eqz v4, :cond_9

    .line 345
    .line 346
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    const v6, 0x7f1307fb

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :cond_9
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    const v6, 0x7f13097f

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    goto :goto_3

    .line 387
    :cond_a
    if-ne v8, v4, :cond_e

    .line 388
    .line 389
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_LGU_USIM_TEXT:Z

    .line 390
    .line 391
    if-eqz v4, :cond_b

    .line 392
    .line 393
    if-nez v9, :cond_b

    .line 394
    .line 395
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    rsub-int/lit8 v4, v8, 0xa

    .line 400
    .line 401
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    goto :goto_3

    .line 418
    :cond_b
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 419
    .line 420
    if-eqz v4, :cond_c

    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    rsub-int/lit8 v4, v8, 0xa

    .line 427
    .line 428
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v1, v12, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    goto :goto_3

    .line 445
    :cond_c
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 446
    .line 447
    if-eqz v4, :cond_d

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    const v4, 0x7f1307fa

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    goto :goto_3

    .line 461
    :cond_d
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const v4, 0x7f13097e

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    goto :goto_3

    .line 473
    :cond_e
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v6, "getPukPasswordErrorMessage: attemptsRemaining="

    .line 484
    .line 485
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v6, " displayMessage="

    .line 492
    .line 493
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    const-string v6, "KeyguardSimPukView"

    .line 504
    .line 505
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    invoke-virtual {v7, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 509
    .line 510
    .line 511
    goto :goto_4

    .line 512
    :cond_f
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 513
    .line 514
    iget-object v4, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 515
    .line 516
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v4, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 525
    .line 526
    .line 527
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string/jumbo v3, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    .line 530
    .line 531
    .line 532
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 536
    .line 537
    .line 538
    move-result p0

    .line 539
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 550
    .line 551
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 552
    .line 553
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    .line 554
    .line 555
    .line 556
    :cond_10
    :goto_5
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 557
    .line 558
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 559
    .line 560
    return-void
.end method
