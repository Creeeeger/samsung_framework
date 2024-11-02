.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

.field public final synthetic f$1:Landroid/telephony/PinResult;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    .line 13
    check-cast v3, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getResult()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    move v4, v6

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v5

    .line 26
    :goto_0
    invoke-virtual {v3, v6, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 30
    .line 31
    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    const/16 v4, 0x8

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v4, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " attemptsRemaining="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "KeyguardSecSimPinViewController"

    .line 80
    .line 81
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getResult()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 98
    .line 99
    iput-boolean v6, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 100
    .line 101
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SIM_UNLOCK_TOAST:Z

    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const v2, 0x7f130977

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 130
    .line 131
    iget-object v3, v3, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 132
    .line 133
    invoke-interface {v1, v2, v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 134
    .line 135
    .line 136
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    .line 143
    .line 144
    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_c

    .line 151
    .line 152
    const-string v1, "ForceHideSoftInput"

    .line 153
    .line 154
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_3
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 167
    .line 168
    iput-boolean v5, v2, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getResult()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-ne v2, v6, :cond_b

    .line 175
    .line 176
    const-string/jumbo v2, "verifyPasswordAndUnlock : PIN_RESULT_TYPE_INCORRECT"

    .line 177
    .line 178
    .line 179
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_4

    .line 187
    .line 188
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 191
    .line 192
    const-string v2, ""

    .line 193
    .line 194
    invoke-virtual {v1, v2, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :cond_4
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_LGU_USIM_TEXT:Z

    .line 200
    .line 201
    if-eqz v2, :cond_6

    .line 202
    .line 203
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 204
    .line 205
    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 206
    .line 207
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimEmbedded()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-nez v2, :cond_6

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    rsub-int/lit8 v1, v1, 0x3

    .line 218
    .line 219
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 220
    .line 221
    iget-object v3, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 222
    .line 223
    if-ne v1, v6, :cond_5

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const v2, 0x7f130898

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_1

    .line 237
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const v2, 0x7f130899

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :goto_1
    invoke-virtual {v3, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_6
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    .line 254
    .line 255
    if-eqz v2, :cond_7

    .line 256
    .line 257
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 258
    .line 259
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const v3, 0x7f13088d

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_7
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-ne v2, v6, :cond_9

    .line 286
    .line 287
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 288
    .line 289
    if-eqz v1, :cond_8

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 292
    .line 293
    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const v3, 0x7f1307f6

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_8
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 311
    .line 312
    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const v3, 0x7f130913

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_9
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 330
    .line 331
    if-eqz v2, :cond_a

    .line 332
    .line 333
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 334
    .line 335
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 336
    .line 337
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const v3, 0x7f1307f7

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_a
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 357
    .line 358
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 359
    .line 360
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    const v3, 0x7f130914

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_b
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 380
    .line 381
    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    const v3, 0x7f13090e

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 395
    .line 396
    .line 397
    :cond_c
    :goto_2
    if-eqz p0, :cond_d

    .line 398
    .line 399
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 400
    .line 401
    .line 402
    :cond_d
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 403
    .line 404
    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 406
    .line 407
    return-void
.end method
