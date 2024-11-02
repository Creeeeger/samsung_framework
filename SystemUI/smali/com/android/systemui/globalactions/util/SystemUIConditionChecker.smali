.class public final Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# instance fields
.field public final mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-class v2, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 22
    .line 23
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :goto_0
    xor-int/2addr p1, v3

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    :goto_1
    move p1, v4

    .line 50
    :goto_2
    move v3, v4

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_1
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 66
    .line 67
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 72
    .line 73
    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/16 v2, 0xf

    .line 82
    .line 83
    if-ne v1, v2, :cond_0

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 105
    .line 106
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 111
    .line 112
    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 113
    .line 114
    if-eqz v1, :cond_0

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/16 v2, 0x11

    .line 121
    .line 122
    if-ne v1, v2, :cond_0

    .line 123
    .line 124
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    const/16 v5, 0x10

    .line 142
    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 146
    .line 147
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 152
    .line 153
    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 154
    .line 155
    if-eqz v1, :cond_0

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v1, v5, :cond_0

    .line 162
    .line 163
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    goto :goto_0

    .line 170
    :cond_4
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 183
    .line 184
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eq p1, v5, :cond_5

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_COVER"

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_6

    .line 211
    .line 212
    const-string/jumbo v1, "mini_open"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_6

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_6
    move v3, v4

    .line 223
    goto :goto_4

    .line 224
    :cond_7
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    const-class v2, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 235
    .line 236
    if-eqz v1, :cond_a

    .line 237
    .line 238
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 239
    .line 240
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 245
    .line 246
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    const/4 v1, 0x0

    .line 259
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_8

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_8
    :goto_3
    move v3, v4

    .line 271
    :cond_9
    :goto_4
    move p1, v3

    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :cond_a
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_b

    .line 285
    .line 286
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 287
    .line 288
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 293
    .line 294
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_b
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_c

    .line 317
    .line 318
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 319
    .line 320
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 325
    .line 326
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_c
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_d

    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 351
    .line 352
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    .line 357
    .line 358
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSafeModeAllowed()Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    goto/16 :goto_2

    .line 369
    .line 370
    :cond_d
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_e

    .line 381
    .line 382
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 383
    .line 384
    const-class v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 385
    .line 386
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 391
    .line 392
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    goto/16 :goto_2

    .line 399
    .line 400
    :cond_e
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    const-class v2, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 411
    .line 412
    if-eqz v1, :cond_f

    .line 413
    .line 414
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 415
    .line 416
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 421
    .line 422
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 423
    .line 424
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :cond_f
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_10

    .line 441
    .line 442
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 443
    .line 444
    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    .line 449
    .line 450
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 451
    .line 452
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerMenuLockedState()Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    goto/16 :goto_2

    .line 457
    .line 458
    :cond_10
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 459
    .line 460
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_11

    .line 469
    .line 470
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 471
    .line 472
    const-class v1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    .line 473
    .line 474
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    check-cast p1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    .line 479
    .line 480
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 481
    .line 482
    invoke-virtual {p1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    goto/16 :goto_2

    .line 487
    .line 488
    :cond_11
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_13

    .line 499
    .line 500
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 501
    .line 502
    const-class v1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    .line 503
    .line 504
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    check-cast p1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    .line 509
    .line 510
    iget-object p1, p1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    .line 511
    .line 512
    const-string v1, "com.android.settings"

    .line 513
    .line 514
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    if-eqz p1, :cond_8

    .line 519
    .line 520
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-nez v1, :cond_8

    .line 525
    .line 526
    const-string v1, "function_key_setting"

    .line 527
    .line 528
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    if-nez v2, :cond_12

    .line 533
    .line 534
    goto/16 :goto_3

    .line 535
    .line 536
    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    const-string v5, "hide"

    .line 541
    .line 542
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-nez v2, :cond_9

    .line 547
    .line 548
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    const-string v1, "grayout"

    .line 553
    .line 554
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-eqz p1, :cond_8

    .line 559
    .line 560
    goto/16 :goto_4

    .line 561
    .line 562
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 563
    .line 564
    invoke-interface {v1, p1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    :goto_5
    if-nez v3, :cond_14

    .line 569
    .line 570
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 571
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string v2, "["

    .line 575
    .line 576
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v0, "] "

    .line 587
    .line 588
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    const-string v1, "SystemUIConditionChecker"

    .line 599
    .line 600
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    :cond_14
    return p1
.end method
