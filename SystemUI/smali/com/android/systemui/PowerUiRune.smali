.class public final Lcom/android/systemui/PowerUiRune;
.super Lcom/android/systemui/Rune;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ADAPTIVE_PROTECTION_NOTIFICATION:Z

.field public static final AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

.field public static final AUDIO_SUPPORT_SITUATION_EXTENSION:Z

.field public static final BATTERY_CHARGING_ESTIMATE_TIME:Z

.field public static final BATTERY_PROTECTION:Z

.field public static final BATTERY_PROTECTION_NOTIFICATION:Z

.field public static final BATTERY_PROTECTION_TIPS_NOTIFICATION:Z

.field public static final BATTERY_SWELLING_NOTICE:Z

.field public static final CHN_SMART_MANAGER:Z

.field public static final COVER_DISPLAY_LARGE_SCREEN:Z

.field public static final FULL_BATTERY_CHECK:Z

.field public static final GPU_BLUR_SUPPORTED:Z

.field public static final HV_CHARGER_ENABLE_POPUP:Z

.field public static final INCOMPATIBLE_CHARGER_CHECK:Z

.field public static final INIT_LTC_TIME_CHANGED:Z

.field public static final IS_LDU_OR_UNPACK_BINARY:Z

.field public static final KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

.field public static final LOW_BATTTERY_SOUND_THEME:Z

.field public static final POLICY_CHARGING_NOTIFICATION:Z

.field public static final PROTECT_BATTERY_CUTOFF:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_CHN:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_VZW:Z

.field public static final TIPS_NOTIFICATION:Z

.field public static final TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

.field public static final TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

.field public static final WINDOW_BLUR_SUPPORTED:Z

.field public static final WIRELESS_CHARGING:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CscFeature_SystemUI_ConfigQuickSettingPopup"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 18
    .line 19
    const-string v4, "com.samsung.android.sm"

    .line 20
    .line 21
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "com.samsung.android.sm_cn"

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    .line 32
    .line 33
    new-instance v1, Ljava/io/File;

    .line 34
    .line 35
    const-string v3, "/sys/class/power_supply/battery/time_to_full_now"

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    .line 45
    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    .line 57
    .line 58
    new-instance v3, Ljava/io/File;

    .line 59
    .line 60
    const-string v4, "/sys/class/sec/led/led_pattern"

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x1

    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    if-nez v3, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v4, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    move v4, v6

    .line 83
    :goto_1
    sput-boolean v4, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    .line 84
    .line 85
    const-string v4, "VZW"

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    const-string v3, "ATT"

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    const-string v3, "SPR"

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    const-string v3, "TMB"

    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move v3, v5

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    :goto_2
    move v3, v6

    .line 123
    :goto_3
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->FULL_BATTERY_CHECK:Z

    .line 124
    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string v7, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_LOW_TEMP_SLOW_CHARGED_POPUP"

    .line 130
    .line 131
    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    xor-int/2addr v3, v6

    .line 136
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    .line 143
    .line 144
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    .line 149
    .line 150
    const-string/jumbo v3, "ro.csc.country_code"

    .line 151
    .line 152
    .line 153
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v4, "China"

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_CHN:Z

    .line 164
    .line 165
    const-string v3, "DCM"

    .line 166
    .line 167
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_4

    .line 172
    .line 173
    const-string v3, "KDI"

    .line 174
    .line 175
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_4

    .line 180
    .line 181
    const-string v3, "SBM"

    .line 182
    .line 183
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_4

    .line 188
    .line 189
    const-string v3, "XJP"

    .line 190
    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->HV_CHARGER_ENABLE_POPUP:Z

    .line 205
    .line 206
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v3, "TRUE"

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_SUPPORT_SITUATION_EXTENSION:Z

    .line 223
    .line 224
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->WIRELESS_CHARGING:Z

    .line 235
    .line 236
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isLDUSKU()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_6

    .line 241
    .line 242
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v3, "CscFeature_Common_EnableLiveDemo"

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_6

    .line 253
    .line 254
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    .line 259
    .line 260
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_5

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_5
    move v0, v5

    .line 268
    goto :goto_5

    .line 269
    :cond_6
    :goto_4
    move v0, v6

    .line 270
    :goto_5
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->IS_LDU_OR_UNPACK_BINARY:Z

    .line 271
    .line 272
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 273
    .line 274
    const v3, 0x1d524

    .line 275
    .line 276
    .line 277
    if-lt v0, v3, :cond_7

    .line 278
    .line 279
    move v0, v6

    .line 280
    goto :goto_6

    .line 281
    :cond_7
    move v0, v5

    .line 282
    :goto_6
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->LOW_BATTTERY_SOUND_THEME:Z

    .line 283
    .line 284
    const-string/jumbo v0, "user"

    .line 285
    .line 286
    .line 287
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_8

    .line 294
    .line 295
    const-string/jumbo v0, "persist.debug.subdisplay_test_mode"

    .line 296
    .line 297
    .line 298
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    and-int/2addr v0, v6

    .line 303
    if-eqz v0, :cond_8

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    :goto_7
    const-string v0, "WATCHFACE"

    .line 317
    .line 318
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    .line 323
    .line 324
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v3, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    .line 329
    .line 330
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    .line 335
    .line 336
    const-string/jumbo v0, "ro.surface_flinger.protected_contents"

    .line 337
    .line 338
    .line 339
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    const-string v4, "1"

    .line 344
    .line 345
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_a

    .line 350
    .line 351
    const-string/jumbo v3, "true"

    .line 352
    .line 353
    .line 354
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_9

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_9
    move v0, v5

    .line 366
    goto :goto_9

    .line 367
    :cond_a
    :goto_8
    move v0, v6

    .line 368
    :goto_9
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->GPU_BLUR_SUPPORTED:Z

    .line 369
    .line 370
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_DISABLE_HEADSET_CHARGING_SOUND"

    .line 375
    .line 376
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

    .line 381
    .line 382
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    .line 383
    .line 384
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->INIT_LTC_TIME_CHANGED:Z

    .line 385
    .line 386
    const-string v0, "LARGESCREEN"

    .line 387
    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    .line 393
    .line 394
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 395
    .line 396
    const v2, 0x24a54

    .line 397
    .line 398
    .line 399
    if-lt v0, v2, :cond_b

    .line 400
    .line 401
    move v0, v6

    .line 402
    goto :goto_a

    .line 403
    :cond_b
    move v0, v5

    .line 404
    :goto_a
    if-eqz v0, :cond_c

    .line 405
    .line 406
    if-eqz v1, :cond_c

    .line 407
    .line 408
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY"

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-nez v0, :cond_c

    .line 419
    .line 420
    move v0, v6

    .line 421
    goto :goto_b

    .line 422
    :cond_c
    move v0, v5

    .line 423
    :goto_b
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION:Z

    .line 424
    .line 425
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 426
    .line 427
    const v2, 0x249f0

    .line 428
    .line 429
    .line 430
    if-lt v1, v2, :cond_d

    .line 431
    .line 432
    move v5, v6

    .line 433
    :cond_d
    sput-boolean v5, Lcom/android/systemui/PowerUiRune;->POLICY_CHARGING_NOTIFICATION:Z

    .line 434
    .line 435
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    .line 436
    .line 437
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 438
    .line 439
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 440
    .line 441
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_TIPS_NOTIFICATION:Z

    .line 442
    .line 443
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
