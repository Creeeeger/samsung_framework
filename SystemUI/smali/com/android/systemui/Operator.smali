.class public final Lcom/android/systemui/Operator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final QUICK_IS_ACG_BRANDING:Z

.field public static final QUICK_IS_AIO_BRANDING:Z

.field public static final QUICK_IS_APP_BRANDING:Z

.field public static final QUICK_IS_ATT_BRANDING:Z

.field public static final QUICK_IS_BRI_BRANDING:Z

.field public static final QUICK_IS_BST_BRANDING:Z

.field public static final QUICK_IS_CCT_BRANDING:Z

.field public static final QUICK_IS_CHA_BRANDING:Z

.field public static final QUICK_IS_CHC_BRANDING:Z

.field public static final QUICK_IS_CHM_BRANDING:Z

.field public static final QUICK_IS_CHU_BRANDING:Z

.field public static final QUICK_IS_CSP_BRANDING:Z

.field public static final QUICK_IS_CTC_BRANDING:Z

.field public static final QUICK_IS_DCM_BRANDING:Z

.field public static final QUICK_IS_FKR_BRANDING:Z

.field public static final QUICK_IS_KDI_BRANDING:Z

.field public static final QUICK_IS_KOO_BRANDING:Z

.field public static final QUICK_IS_KTT_BRANDING:Z

.field public static final QUICK_IS_LDU_BRANDING:Z

.field public static final QUICK_IS_LGT_BRANDING:Z

.field public static final QUICK_IS_LRA_BRANDING:Z

.field public static final QUICK_IS_MTR_BRANDING:Z

.field public static final QUICK_IS_OJT_BRANDING:Z

.field public static final QUICK_IS_RKT_BRANDING:Z

.field public static final QUICK_IS_SBM_BRANDING:Z

.field public static final QUICK_IS_SKT_BRANDING:Z

.field public static final QUICK_IS_SPR_BRANDING:Z

.field public static final QUICK_IS_TFN_BRANDING:Z

.field public static final QUICK_IS_TFV_BRANDING:Z

.field public static final QUICK_IS_TGY_BRANDING:Z

.field public static final QUICK_IS_TMB_BRANDING:Z

.field public static final QUICK_IS_USC_BRANDING:Z

.field public static final QUICK_IS_VMU_BRANDING:Z

.field public static final QUICK_IS_VPP_BRANDING:Z

.field public static final QUICK_IS_VZW_BRANDING:Z

.field public static final QUICK_IS_XAA_BRANDING:Z

.field public static final QUICK_IS_XAR_BRANDING:Z

.field public static final QUICK_IS_XAS_BRANDING:Z

.field public static final QUICK_IS_XJP_BRANDING:Z

.field public static final QUICK_IS_XNX_BRANDING:Z

.field public static final smartManagerPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

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
    const-string v1, "VZW"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    .line 20
    .line 21
    const-string v1, "ATT"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 28
    .line 29
    const-string v1, "AIO"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    .line 36
    .line 37
    const-string v1, "APP"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_APP_BRANDING:Z

    .line 44
    .line 45
    const-string v1, "TMB"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    .line 52
    .line 53
    const-string v1, "MTR"

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_MTR_BRANDING:Z

    .line 60
    .line 61
    const-string v1, "SPR"

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    .line 68
    .line 69
    const-string v1, "VMU"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VMU_BRANDING:Z

    .line 76
    .line 77
    const-string v1, "BST"

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_BST_BRANDING:Z

    .line 84
    .line 85
    const-string v1, "XAS"

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAS_BRANDING:Z

    .line 92
    .line 93
    const-string v1, "USC"

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_USC_BRANDING:Z

    .line 100
    .line 101
    const-string v1, "LRA"

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LRA_BRANDING:Z

    .line 108
    .line 109
    const-string v1, "TFN"

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    .line 116
    .line 117
    const-string v1, "CCT"

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    .line 124
    .line 125
    const-string v1, "CHA"

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    .line 132
    .line 133
    const-string v1, "ACG"

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ACG_BRANDING:Z

    .line 140
    .line 141
    const-string v1, "CSP"

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CSP_BRANDING:Z

    .line 148
    .line 149
    const-string v1, "XAR"

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAR_BRANDING:Z

    .line 156
    .line 157
    const-string v1, "XAA"

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAA_BRANDING:Z

    .line 164
    .line 165
    const-string v1, "XNX"

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XNX_BRANDING:Z

    .line 172
    .line 173
    const-string v1, "TFV"

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TFV_BRANDING:Z

    .line 180
    .line 181
    const-string v1, "FKR"

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_FKR_BRANDING:Z

    .line 188
    .line 189
    const-string v1, "VPP"

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VPP_BRANDING:Z

    .line 196
    .line 197
    const-string v1, "OJT"

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_OJT_BRANDING:Z

    .line 204
    .line 205
    const-string v1, "PAP"

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LDU_BRANDING:Z

    .line 212
    .line 213
    const-string v1, "CHM"

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    .line 220
    .line 221
    const-string v1, "CTC"

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    .line 228
    .line 229
    const-string v1, "CHC"

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    .line 236
    .line 237
    const-string v1, "CHU"

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    .line 244
    .line 245
    const-string v1, "BRI"

    .line 246
    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    .line 252
    .line 253
    const-string v1, "TGY"

    .line 254
    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    .line 260
    .line 261
    const-string v1, "SKT"

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    .line 268
    .line 269
    const-string v1, "KTT"

    .line 270
    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    .line 276
    .line 277
    const-string v1, "LGT"

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    .line 284
    .line 285
    const-string v1, "KOO"

    .line 286
    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    .line 292
    .line 293
    const-string v1, "DCM"

    .line 294
    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    .line 300
    .line 301
    const-string v1, "KDI"

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KDI_BRANDING:Z

    .line 308
    .line 309
    const-string v1, "SBM"

    .line 310
    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SBM_BRANDING:Z

    .line 316
    .line 317
    const-string v1, "XJP"

    .line 318
    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XJP_BRANDING:Z

    .line 324
    .line 325
    const-string v1, "RKT"

    .line 326
    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    sput-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_RKT_BRANDING:Z

    .line 332
    .line 333
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 338
    .line 339
    const-string v3, "com.samsung.android.sm"

    .line 340
    .line 341
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    sput-object v0, Lcom/android/systemui/Operator;->smartManagerPackageName:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const-string v1, "CscFeature_Common_ConfigPco"

    .line 352
    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageIdForMobileDataOnOffPopup(Z)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const p0, 0x7f130b3d

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    sget p0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 16
    .line 17
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const p0, 0x7f130b3c

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const p0, 0x7f130b3b

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const p0, 0x7f130b3a

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const p0, 0x7f130b45

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    const p0, 0x7f130b43

    .line 47
    .line 48
    .line 49
    :goto_0
    return p0
.end method

.method public static getMessageIdMobileDataOff()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f130b37

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x7f130b36

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const v0, 0x7f130b38

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const v0, 0x7f130b39

    .line 28
    .line 29
    .line 30
    :goto_0
    return v0
.end method

.method public static isChinaQsTileBranding()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public static isKoreaQsTileBranding()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public static isUSAQsTileBranding()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_APP_BRANDING:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_MTR_BRANDING:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VMU_BRANDING:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_BST_BRANDING:Z

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAS_BRANDING:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_USC_BRANDING:Z

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LRA_BRANDING:Z

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ACG_BRANDING:Z

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CSP_BRANDING:Z

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAR_BRANDING:Z

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAA_BRANDING:Z

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 81
    :goto_1
    return v0
.end method

.method public static shouldSupportMobileDataNotDisableVolteCall()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VPP_BRANDING:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFV_BRANDING:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_FKR_BRANDING:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_APP_BRANDING:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    return v0
.end method

.method public static supportNetworkInfoAtMultisimBar()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CountryISO"

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
    const-string v3, "US"

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "CA"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    return v0
.end method
