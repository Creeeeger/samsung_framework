.class Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ddar/DualDarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualDARClientAgentService"
.end annotation


# instance fields
.field private mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string p1, "dual_dar_response"

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "ORIGINATING_SECURE_CLIENT_ID"

    .line 20
    .line 21
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, -0x1

    .line 32
    sparse-switch v3, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :sswitch_0
    const-string v3, "CLEAR_RESET_PASSWORD_TOKEN"

    .line 38
    .line 39
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    const/4 p2, 0x7

    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :sswitch_1
    const-string v3, "ON_PASSWORD2_AUTH"

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    const/4 p2, 0x4

    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :sswitch_2
    const-string v3, "ON_BRINGUP"

    .line 60
    .line 61
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_0

    .line 66
    .line 67
    move p2, v2

    .line 68
    goto :goto_1

    .line 69
    :sswitch_3
    const-string v3, "ON_DEVICE_OWNER_PROVISIONING"

    .line 70
    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    move p2, v4

    .line 78
    goto :goto_1

    .line 79
    :sswitch_4
    const-string v3, "ON_WORKSPACE_CREATION"

    .line 80
    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_0

    .line 86
    .line 87
    const/4 p2, 0x2

    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string v3, "ON_DATA_LOCK_STATE_CHANGE"

    .line 90
    .line 91
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_0

    .line 96
    .line 97
    const/16 p2, 0xa

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :sswitch_6
    const-string v3, "RESET_PASSWORD_WITH_TOKEN"

    .line 101
    .line 102
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_0

    .line 107
    .line 108
    const/16 p2, 0x8

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :sswitch_7
    const-string v3, "IS_SUPPORTED"

    .line 112
    .line 113
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_0

    .line 118
    .line 119
    const/16 p2, 0x9

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :sswitch_8
    const-string v3, "ON_PASSWORD2_CHANGE"

    .line 123
    .line 124
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_0

    .line 129
    .line 130
    const/4 p2, 0x5

    .line 131
    goto :goto_1

    .line 132
    :sswitch_9
    const-string v3, "SET_RESET_PASSWORD_TOKEN"

    .line 133
    .line 134
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_0

    .line 139
    .line 140
    const/4 p2, 0x6

    .line 141
    goto :goto_1

    .line 142
    :sswitch_a
    const-string v3, "ON_WORKSPACE_DESTROY"

    .line 143
    .line 144
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    if-eqz p2, :cond_0

    .line 149
    .line 150
    const/4 p2, 0x3

    .line 151
    goto :goto_1

    .line 152
    :cond_0
    :goto_0
    move p2, v5

    .line 153
    :goto_1
    const-string v3, "RESET_PASSWORD_TOKEN"

    .line 154
    .line 155
    const-string v6, "NEW_PASSWORD"

    .line 156
    .line 157
    const-string v7, "EXISTING_PASSWORD"

    .line 158
    .line 159
    const-string v8, "RESET_PASSWORD_TOKEN_HANDLE"

    .line 160
    .line 161
    const-string v9, "user_id"

    .line 162
    .line 163
    packed-switch p2, :pswitch_data_0

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_0
    :try_start_1
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    const-string v1, "is_data_locked"

    .line 173
    .line 174
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 179
    .line 180
    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :pswitch_1
    const-string p2, "FEATURE"

    .line 189
    .line 190
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 195
    .line 196
    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :pswitch_2
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 213
    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 227
    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 237
    .line 238
    move v4, p2

    .line 239
    move-object v5, v10

    .line 240
    move-object v8, p3

    .line 241
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    invoke-static {v10}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 246
    .line 247
    .line 248
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :pswitch_3
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 268
    .line 269
    invoke-interface {p0, p2, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :pswitch_4
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 285
    .line 286
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 295
    .line 296
    .line 297
    move-result-wide v6

    .line 298
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 299
    .line 300
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 309
    .line 310
    move v4, p2

    .line 311
    move-object v5, v10

    .line 312
    move-object v8, p3

    .line 313
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    invoke-static {v10}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 318
    .line 319
    .line 320
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :pswitch_5
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 336
    .line 337
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 346
    .line 347
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 356
    .line 357
    invoke-interface {p0, p2, v3, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    .line 358
    .line 359
    .line 360
    move-result p0

    .line 361
    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 362
    .line 363
    .line 364
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    .line 372
    .line 373
    goto :goto_2

    .line 374
    :pswitch_6
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 379
    .line 380
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 381
    .line 382
    .line 383
    move-result-object p3

    .line 384
    invoke-virtual {v3, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    .line 385
    .line 386
    .line 387
    move-result-object p3

    .line 388
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 389
    .line 390
    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    .line 402
    .line 403
    goto :goto_2

    .line 404
    :pswitch_7
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result p2

    .line 408
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 409
    .line 410
    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    .line 411
    .line 412
    .line 413
    move-result p0

    .line 414
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    .line 419
    .line 420
    goto :goto_2

    .line 421
    :pswitch_8
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    move-result p2

    .line 425
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 426
    .line 427
    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    .line 428
    .line 429
    .line 430
    move-result p0

    .line 431
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    .line 436
    .line 437
    goto :goto_2

    .line 438
    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    .line 439
    .line 440
    invoke-interface {p0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    .line 441
    .line 442
    .line 443
    move-result p0

    .line 444
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    .line 446
    .line 447
    goto :goto_2

    .line 448
    :catch_0
    move-exception p0

    .line 449
    const-string p2, "DualDarClientManager"

    .line 450
    .line 451
    const-string p3, "Failed to decrypt function params or complete the function invocation"

    .line 452
    .line 453
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    .line 461
    .line 462
    :goto_2
    return-object v0

    .line 463
    :sswitch_data_0
    .sparse-switch
        -0x6b189c50 -> :sswitch_a
        -0x5bcb73de -> :sswitch_9
        -0x43c5e5a8 -> :sswitch_8
        -0x3c070447 -> :sswitch_7
        -0x40f8dcc -> :sswitch_6
        0x156556dd -> :sswitch_5
        0x36e621c9 -> :sswitch_4
        0x481c6342 -> :sswitch_3
        0x4f85492d -> :sswitch_2
        0x54a37250 -> :sswitch_1
        0x60847f17 -> :sswitch_0
    .end sparse-switch

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
