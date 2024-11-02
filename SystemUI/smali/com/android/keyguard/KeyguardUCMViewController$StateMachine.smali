.class public final Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mRound:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;)V

    return-void
.end method


# virtual methods
.method public final getDetailErrorMessage(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "getDetailErrorMessage errorCode : "

    .line 2
    .line 3
    const-string v1, "KeyguardUCMPinView"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const p1, 0x7f1309e8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "exception in getDetailErrorMessage : "

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 66
    .line 67
    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_2
    return-object v0
.end method

.method public final setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-string v4, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    .line 10
    .line 11
    const-string v5, " Error : "

    .line 12
    .line 13
    const-string v6, "KeyguardUCMPinView"

    .line 14
    .line 15
    invoke-static {v4, v1, v5, v2, v6}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 19
    .line 20
    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iput v1, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    .line 25
    .line 26
    const/4 v7, 0x5

    .line 27
    const/4 v8, -0x1

    .line 28
    const/16 v9, 0x8

    .line 29
    .line 30
    if-eq v1, v8, :cond_12

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    iget-object v10, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 34
    .line 35
    const v11, 0x7f130a0a

    .line 36
    .line 37
    .line 38
    const v12, 0x7f130904

    .line 39
    .line 40
    .line 41
    const/16 v13, 0x20

    .line 42
    .line 43
    const/4 v14, 0x0

    .line 44
    const-string v15, "\n"

    .line 45
    .line 46
    packed-switch v1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "unknown status nothing to do"

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :pswitch_0
    const-string/jumbo v1, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v10, v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    const/16 v1, 0x21

    .line 79
    .line 80
    if-ne v2, v1, :cond_1

    .line 81
    .line 82
    iget v3, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 83
    .line 84
    if-gtz v3, :cond_1

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const v2, 0x7f1309e5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    if-ne v2, v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const v2, 0x7f1309e3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 116
    .line 117
    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    if-nez v2, :cond_3

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const v2, 0x7f13095c

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 147
    .line 148
    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    if-ne v2, v13, :cond_4

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v4, v14}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 186
    iput v1, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const v2, 0x7f130a92

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    const-string/jumbo v1, "pinExpireMessage"

    .line 201
    .line 202
    .line 203
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iput v7, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 207
    .line 208
    :goto_1
    iget-object v0, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-lez v0, :cond_6

    .line 217
    .line 218
    iget-object v0, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 224
    .line 225
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :pswitch_1
    const-string/jumbo v1, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    .line 236
    .line 237
    .line 238
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_8

    .line 250
    .line 251
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    .line 252
    .line 253
    if-eqz v1, :cond_7

    .line 254
    .line 255
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-virtual {v10, v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 260
    .line 261
    .line 262
    :cond_7
    iget-object v5, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_8
    if-ne v2, v13, :cond_9

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 280
    .line 281
    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    goto :goto_2

    .line 293
    :cond_9
    if-nez v2, :cond_a

    .line 294
    .line 295
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 308
    .line 309
    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    :cond_a
    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 324
    .line 325
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    iput v14, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 329
    .line 330
    goto/16 :goto_4

    .line 331
    .line 332
    :pswitch_2
    const-string/jumbo v1, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    .line 333
    .line 334
    .line 335
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    if-eqz p3, :cond_c

    .line 339
    .line 340
    if-nez v2, :cond_b

    .line 341
    .line 342
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v0, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iget v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 355
    .line 356
    invoke-static {v4, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    :cond_b
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_c
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 372
    .line 373
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    iput v14, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 377
    .line 378
    if-nez v2, :cond_11

    .line 379
    .line 380
    if-nez v3, :cond_d

    .line 381
    .line 382
    const-string v0, "failed to get the generatePassword values"

    .line 383
    .line 384
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const v1, 0x7f1309e8

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_d
    const-string v1, "bytearrayresponse"

    .line 403
    .line 404
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const-string v2, "errorresponse"

    .line 409
    .line 410
    const/4 v5, -0x1

    .line 411
    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v1, :cond_10

    .line 416
    .line 417
    array-length v3, v1

    .line 418
    if-gtz v3, :cond_e

    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_e
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iget-object v2, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 426
    .line 427
    if-eqz v2, :cond_f

    .line 428
    .line 429
    invoke-virtual {v2, v14}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 430
    .line 431
    .line 432
    :cond_f
    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    new-instance v2, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;

    .line 437
    .line 438
    invoke-direct {v2, v4, v0}, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V

    .line 439
    .line 440
    .line 441
    invoke-static {v10, v1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iput-object v0, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_10
    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 453
    .line 454
    .line 455
    goto :goto_4

    .line 456
    :cond_11
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 457
    .line 458
    .line 459
    goto :goto_4

    .line 460
    :cond_12
    const-string/jumbo v1, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    .line 461
    .line 462
    .line 463
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    .line 471
    .line 472
    .line 473
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 474
    .line 475
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    .line 477
    .line 478
    iput v7, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    .line 479
    .line 480
    :goto_4
    return-void

    .line 481
    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
