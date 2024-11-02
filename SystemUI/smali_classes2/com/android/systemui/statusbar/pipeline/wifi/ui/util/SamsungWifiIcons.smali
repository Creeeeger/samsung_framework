.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

.field public static final WIFI_ACTIVITY:[I

.field public static final WIFI_ICON_6G:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_6GE:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_7G:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_KT_GIGA:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_LGT:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_WIFI_CALLING:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_SIGNAL_STRENGTH_SAMSUNG:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 8
    .line 9
    const v0, 0x7f08120d

    .line 10
    .line 11
    .line 12
    const v1, 0x7f08120e

    .line 13
    .line 14
    .line 15
    const v2, 0x7f08120f

    .line 16
    .line 17
    .line 18
    const v3, 0x7f081210

    .line 19
    .line 20
    .line 21
    const v4, 0x7f081211

    .line 22
    .line 23
    .line 24
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const v6, 0x7f081213

    .line 29
    .line 30
    .line 31
    const v7, 0x7f081214

    .line 32
    .line 33
    .line 34
    const v8, 0x7f081212

    .line 35
    .line 36
    .line 37
    const v9, 0x7f081215

    .line 38
    .line 39
    .line 40
    const v10, 0x7f081216

    .line 41
    .line 42
    .line 43
    filled-new-array {v8, v6, v7, v9, v10}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    filled-new-array {v5, v6}, [[I

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    sput-object v5, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_SAMSUNG:[[I

    .line 52
    .line 53
    const v5, 0x7f08122a

    .line 54
    .line 55
    .line 56
    const v6, 0x7f08121a

    .line 57
    .line 58
    .line 59
    const v7, 0x7f08122b

    .line 60
    .line 61
    .line 62
    const v8, 0x7f08121b

    .line 63
    .line 64
    .line 65
    filled-new-array {v5, v6, v7, v8}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sput-object v5, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ACTIVITY:[I

    .line 70
    .line 71
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const v7, 0x7f0811ff

    .line 76
    .line 77
    .line 78
    const v8, 0x7f081200

    .line 79
    .line 80
    .line 81
    const v9, 0x7f0811fe

    .line 82
    .line 83
    .line 84
    const v10, 0x7f081201

    .line 85
    .line 86
    .line 87
    const v11, 0x7f081202

    .line 88
    .line 89
    .line 90
    filled-new-array {v9, v7, v8, v10, v11}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    filled-new-array {v6, v7}, [[I

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    new-instance v6, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 99
    .line 100
    const-string v10, "Wi-Fi 6G icons"

    .line 101
    .line 102
    sget-object v7, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 103
    .line 104
    sget-object v8, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 105
    .line 106
    const v20, 0x10805c5

    .line 107
    .line 108
    .line 109
    const v21, 0x10805c5

    .line 110
    .line 111
    .line 112
    const v22, 0x10805c5

    .line 113
    .line 114
    .line 115
    const v23, 0x10805c5

    .line 116
    .line 117
    .line 118
    const v24, 0x7f1300da

    .line 119
    .line 120
    .line 121
    const v14, 0x10805c5

    .line 122
    .line 123
    .line 124
    const v15, 0x10805c5

    .line 125
    .line 126
    .line 127
    const v16, 0x10805c5

    .line 128
    .line 129
    .line 130
    const v17, 0x10805c5

    .line 131
    .line 132
    .line 133
    const v18, 0x7f1300da

    .line 134
    .line 135
    .line 136
    move-object v9, v6

    .line 137
    move-object v12, v7

    .line 138
    move-object v13, v8

    .line 139
    move-object/from16 v19, v5

    .line 140
    .line 141
    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 142
    .line 143
    .line 144
    sput-object v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6G:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 145
    .line 146
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const v9, 0x7f081204

    .line 151
    .line 152
    .line 153
    const v10, 0x7f081205

    .line 154
    .line 155
    .line 156
    const v11, 0x7f081203

    .line 157
    .line 158
    .line 159
    const v12, 0x7f081206

    .line 160
    .line 161
    .line 162
    const v13, 0x7f081207

    .line 163
    .line 164
    .line 165
    filled-new-array {v11, v9, v10, v12, v13}, [I

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    filled-new-array {v6, v9}, [[I

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    new-instance v6, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 174
    .line 175
    const-string v10, "Wi-Fi 6Ge icons"

    .line 176
    .line 177
    move-object v9, v6

    .line 178
    move-object v12, v7

    .line 179
    move-object v13, v8

    .line 180
    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 181
    .line 182
    .line 183
    sput-object v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6GE:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 184
    .line 185
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const v1, 0x7f081209

    .line 190
    .line 191
    .line 192
    const v2, 0x7f08120a

    .line 193
    .line 194
    .line 195
    const v3, 0x7f081208

    .line 196
    .line 197
    .line 198
    const v4, 0x7f08120b

    .line 199
    .line 200
    .line 201
    const v6, 0x7f08120c

    .line 202
    .line 203
    .line 204
    filled-new-array {v3, v1, v2, v4, v6}, [I

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    filled-new-array {v0, v1}, [[I

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 213
    .line 214
    const-string v10, "Wi-Fi 7G icons"

    .line 215
    .line 216
    move-object v9, v0

    .line 217
    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 218
    .line 219
    .line 220
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_7G:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 221
    .line 222
    const v0, 0x7f08121c

    .line 223
    .line 224
    .line 225
    const v1, 0x7f08121d

    .line 226
    .line 227
    .line 228
    const v2, 0x7f08121e

    .line 229
    .line 230
    .line 231
    const v3, 0x7f08121f

    .line 232
    .line 233
    .line 234
    const v4, 0x7f081220

    .line 235
    .line 236
    .line 237
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    filled-new-array {v6, v0}, [[I

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 250
    .line 251
    const-string v10, "KT Giga Wi-Fi icon"

    .line 252
    .line 253
    move-object v9, v0

    .line 254
    move/from16 v14, v20

    .line 255
    .line 256
    move/from16 v15, v21

    .line 257
    .line 258
    move/from16 v16, v22

    .line 259
    .line 260
    move/from16 v18, v24

    .line 261
    .line 262
    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 263
    .line 264
    .line 265
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_KT_GIGA:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 266
    .line 267
    const v0, 0x7f081228

    .line 268
    .line 269
    .line 270
    const v1, 0x7f081226

    .line 271
    .line 272
    .line 273
    const v2, 0x7f081229

    .line 274
    .line 275
    .line 276
    const v3, 0x7f081227

    .line 277
    .line 278
    .line 279
    filled-new-array {v0, v1, v2, v3}, [I

    .line 280
    .line 281
    .line 282
    move-result-object v22

    .line 283
    const v0, 0x7f081221

    .line 284
    .line 285
    .line 286
    const v1, 0x7f081222

    .line 287
    .line 288
    .line 289
    const v2, 0x7f081223

    .line 290
    .line 291
    .line 292
    const v3, 0x7f081224

    .line 293
    .line 294
    .line 295
    const v4, 0x7f081225

    .line 296
    .line 297
    .line 298
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    filled-new-array {v6, v0}, [[I

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 311
    .line 312
    const-string v13, "LGT Wi-Fi icon"

    .line 313
    .line 314
    const v18, 0x10805c5

    .line 315
    .line 316
    .line 317
    const v19, 0x10805c5

    .line 318
    .line 319
    .line 320
    const v21, 0x7f1300da

    .line 321
    .line 322
    .line 323
    move-object v12, v0

    .line 324
    move-object v15, v7

    .line 325
    move-object/from16 v16, v8

    .line 326
    .line 327
    invoke-direct/range {v12 .. v22}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 328
    .line 329
    .line 330
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_LGT:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 331
    .line 332
    const v0, 0x7f08122c

    .line 333
    .line 334
    .line 335
    const v1, 0x7f08122d

    .line 336
    .line 337
    .line 338
    const v2, 0x7f08122e

    .line 339
    .line 340
    .line 341
    const v3, 0x7f08122f

    .line 342
    .line 343
    .line 344
    const v4, 0x7f081230

    .line 345
    .line 346
    .line 347
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    filled-new-array {v6, v0}, [[I

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 360
    .line 361
    const-string v10, "Wi-Fi calling Wi-Fi icons"

    .line 362
    .line 363
    const v14, 0x10805c5

    .line 364
    .line 365
    .line 366
    const v15, 0x10805c5

    .line 367
    .line 368
    .line 369
    const v16, 0x10805c5

    .line 370
    .line 371
    .line 372
    const v18, 0x7f1300da

    .line 373
    .line 374
    .line 375
    move-object v9, v0

    .line 376
    move-object v12, v7

    .line 377
    move-object v13, v8

    .line 378
    move/from16 v17, v23

    .line 379
    .line 380
    move-object/from16 v19, v5

    .line 381
    .line 382
    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 383
    .line 384
    .line 385
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_WIFI_CALLING:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 386
    .line 387
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
