.class public final Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# static fields
.field public static final VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "user"

    .line 2
    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "persist.debug.subdisplay_test_mode"

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    and-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    sput-object v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final isEnabled(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "SF_EFFECT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_BLUR:Z

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const-string v0, "CAPTURED_BLUR"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_CAPTURED_BLUR:Z

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    const-string v0, "NAV_BAR"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x11101f2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    const-string v0, "SAFETY_CARE"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_3
    const-string v0, "SCOVER"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isCoverSupported()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_4
    const-string v0, "DATA_MODE"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_5
    const-string v0, "DEMO_MODE"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v1, 0x1

    .line 109
    const/4 v2, 0x0

    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v3, "CscFeature_Common_EnableLiveDemo"

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_a

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_a

    .line 131
    .line 132
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 133
    .line 134
    const-string/jumbo v0, "ril.product_code"

    .line 135
    .line 136
    .line 137
    const-string v3, ""

    .line 138
    .line 139
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v4, 0xb

    .line 148
    .line 149
    if-ge v3, v4, :cond_6

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    const/16 v3, 0xa

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    const/16 v5, 0x38

    .line 159
    .line 160
    if-eq v4, v5, :cond_8

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/16 v3, 0x39

    .line 167
    .line 168
    if-ne v0, v3, :cond_7

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_7
    :goto_0
    move v0, v2

    .line 172
    goto :goto_2

    .line 173
    :cond_8
    :goto_1
    move v0, v1

    .line 174
    :goto_2
    if-eqz v0, :cond_16

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    const-string v0, "LOCK_DOWN_MODE"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    :cond_a
    :goto_3
    move v0, v1

    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :cond_b
    const-string v0, "FORCE_RESTART_MESSAGE"

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_c

    .line 195
    .line 196
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v1, "CscFeature_Framework_SupportForceRestartGlobalAction"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    goto/16 :goto_4

    .line 207
    .line 208
    :cond_c
    const-string v0, "FINGERPRINT_IN_DISPLAY"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_d

    .line 215
    .line 216
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 217
    .line 218
    if-nez v0, :cond_a

    .line 219
    .line 220
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    .line 221
    .line 222
    if-eqz v0, :cond_16

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_d
    const-string v0, "SUPPORT_SIDE_KEY"

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_e

    .line 232
    .line 233
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :cond_e
    const-string v0, "POWER_OFF_LOCK"

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_f

    .line 252
    .line 253
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v1, "CscFeature_SystemUI_SupportPowerOffLock"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_f
    const-string v0, "FRONT_LARGE_COVER_DISPLAY"

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    const-string v3, "LARGESCREEN"

    .line 272
    .line 273
    if-eqz v0, :cond_10

    .line 274
    .line 275
    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :cond_10
    const-string v0, "FRONT_COVER_DISPLAY"

    .line 284
    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_11

    .line 290
    .line 291
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_16

    .line 302
    .line 303
    sget-object v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_16

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_11
    const-string v0, "DESKTOP_MODE"

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_12

    .line 319
    .line 320
    goto/16 :goto_3

    .line 321
    .line 322
    :cond_12
    const-string v0, "KNOX_SDK"

    .line 323
    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_13

    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :cond_13
    const-string v0, "KNOX_CONTAINER"

    .line 333
    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_14

    .line 339
    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :cond_14
    const-string v0, "KNOX_DEVICE_MANAGER"

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_15

    .line 349
    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :cond_15
    const-string v0, "RESERVE_BATTERY_MODE"

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_16

    .line 359
    .line 360
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const-string v3, "CscFeature_Common_ConfigYuva"

    .line 365
    .line 366
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    if-eqz v0, :cond_16

    .line 371
    .line 372
    const-string/jumbo v3, "powerplanning"

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_16

    .line 380
    .line 381
    const-string/jumbo v3, "reserve"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_16

    .line 389
    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :cond_16
    move v0, v2

    .line 393
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 394
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v2, "["

    .line 398
    .line 399
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string p1, "] "

    .line 406
    .line 407
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    const-string v1, "GlobalActionFeatures"

    .line 418
    .line 419
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    return v0
.end method
