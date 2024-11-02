.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final carrierIconOverrides:Ljava/util/HashMap;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

.field public final overridesAMX:Ljava/util/HashMap;

.field public final overridesATT:Ljava/util/HashMap;

.field public final overridesChina:Ljava/util/HashMap;

.field public final overridesKTT:Ljava/util/HashMap;

.field public final overridesTMO:Ljava/util/HashMap;

.field public final overridesUSCC:Ljava/util/HashMap;

.field public final overridesVZW:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Landroid/telephony/TelephonyManager;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    .line 13
    .line 14
    move-object/from16 v1, p3

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 23
    .line 24
    new-instance v4, Lkotlin/Pair;

    .line 25
    .line 26
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 34
    .line 35
    new-instance v6, Lkotlin/Pair;

    .line 36
    .line 37
    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 41
    .line 42
    iget-object v5, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 45
    .line 46
    new-instance v8, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-direct {v8, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    filled-new-array {v4, v6, v8}, [Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesUSCC:Ljava/util/HashMap;

    .line 60
    .line 61
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 66
    .line 67
    new-instance v6, Lkotlin/Pair;

    .line 68
    .line 69
    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 73
    .line 74
    iget-object v7, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 75
    .line 76
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 77
    .line 78
    new-instance v9, Lkotlin/Pair;

    .line 79
    .line 80
    invoke-direct {v9, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 84
    .line 85
    iget-object v7, v13, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v10, Lkotlin/Pair;

    .line 88
    .line 89
    invoke-direct {v10, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v7, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 93
    .line 94
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 95
    .line 96
    new-instance v11, Lkotlin/Pair;

    .line 97
    .line 98
    invoke-direct {v11, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 102
    .line 103
    iget-object v7, v14, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 104
    .line 105
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_E_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 106
    .line 107
    new-instance v12, Lkotlin/Pair;

    .line 108
    .line 109
    invoke-direct {v12, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v7, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 113
    .line 114
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 115
    .line 116
    new-instance v15, Lkotlin/Pair;

    .line 117
    .line 118
    invoke-direct {v15, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v7, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 122
    .line 123
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 124
    .line 125
    move-object/from16 p1, v14

    .line 126
    .line 127
    new-instance v14, Lkotlin/Pair;

    .line 128
    .line 129
    invoke-direct {v14, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    move-object v7, v9

    .line 133
    move-object v8, v10

    .line 134
    move-object v9, v11

    .line 135
    move-object v10, v12

    .line 136
    move-object v11, v15

    .line 137
    move-object v12, v14

    .line 138
    filled-new-array/range {v6 .. v12}, [Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    .line 147
    .line 148
    iget-object v6, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 149
    .line 150
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 151
    .line 152
    new-instance v14, Lkotlin/Pair;

    .line 153
    .line 154
    invoke-direct {v14, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 158
    .line 159
    iget-object v7, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 160
    .line 161
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->E_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 162
    .line 163
    new-instance v15, Lkotlin/Pair;

    .line 164
    .line 165
    invoke-direct {v15, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 169
    .line 170
    iget-object v8, v7, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 171
    .line 172
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 173
    .line 174
    new-instance v10, Lkotlin/Pair;

    .line 175
    .line 176
    invoke-direct {v10, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 180
    .line 181
    iget-object v9, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 182
    .line 183
    sget-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 184
    .line 185
    new-instance v12, Lkotlin/Pair;

    .line 186
    .line 187
    invoke-direct {v12, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 191
    .line 192
    iget-object v11, v9, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 193
    .line 194
    move-object/from16 p2, v9

    .line 195
    .line 196
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->H_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 197
    .line 198
    move-object/from16 p3, v7

    .line 199
    .line 200
    new-instance v7, Lkotlin/Pair;

    .line 201
    .line 202
    invoke-direct {v7, v11, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 206
    .line 207
    iget-object v11, v9, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 208
    .line 209
    move-object/from16 v26, v9

    .line 210
    .line 211
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 212
    .line 213
    move-object/from16 v27, v6

    .line 214
    .line 215
    new-instance v6, Lkotlin/Pair;

    .line 216
    .line 217
    invoke-direct {v6, v11, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget-object v9, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 221
    .line 222
    sget-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 223
    .line 224
    move-object/from16 v28, v5

    .line 225
    .line 226
    new-instance v5, Lkotlin/Pair;

    .line 227
    .line 228
    invoke-direct {v5, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    iget-object v9, v13, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 232
    .line 233
    move-object/from16 v29, v13

    .line 234
    .line 235
    new-instance v13, Lkotlin/Pair;

    .line 236
    .line 237
    invoke-direct {v13, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iget-object v9, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 241
    .line 242
    move-object/from16 v30, v4

    .line 243
    .line 244
    new-instance v4, Lkotlin/Pair;

    .line 245
    .line 246
    invoke-direct {v4, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 250
    .line 251
    move-object/from16 v31, v1

    .line 252
    .line 253
    iget-object v1, v9, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 254
    .line 255
    move-object/from16 v32, v9

    .line 256
    .line 257
    new-instance v9, Lkotlin/Pair;

    .line 258
    .line 259
    invoke-direct {v9, v1, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 263
    .line 264
    sget-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 265
    .line 266
    move-object/from16 v33, v2

    .line 267
    .line 268
    new-instance v2, Lkotlin/Pair;

    .line 269
    .line 270
    invoke-direct {v2, v1, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 274
    .line 275
    sget-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW_UWB:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 276
    .line 277
    move-object/from16 v34, v3

    .line 278
    .line 279
    new-instance v3, Lkotlin/Pair;

    .line 280
    .line 281
    invoke-direct {v3, v1, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v16, v10

    .line 285
    .line 286
    move-object/from16 v17, v12

    .line 287
    .line 288
    move-object/from16 v18, v7

    .line 289
    .line 290
    move-object/from16 v19, v6

    .line 291
    .line 292
    move-object/from16 v20, v5

    .line 293
    .line 294
    move-object/from16 v21, v13

    .line 295
    .line 296
    move-object/from16 v22, v4

    .line 297
    .line 298
    move-object/from16 v23, v9

    .line 299
    .line 300
    move-object/from16 v24, v2

    .line 301
    .line 302
    move-object/from16 v25, v3

    .line 303
    .line 304
    filled-new-array/range {v14 .. v25}, [Lkotlin/Pair;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesVZW:Ljava/util/HashMap;

    .line 313
    .line 314
    iget-object v1, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 315
    .line 316
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 317
    .line 318
    new-instance v3, Lkotlin/Pair;

    .line 319
    .line 320
    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    move-object/from16 v1, v31

    .line 324
    .line 325
    iget-object v2, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 326
    .line 327
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 328
    .line 329
    new-instance v5, Lkotlin/Pair;

    .line 330
    .line 331
    invoke-direct {v5, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    move-object/from16 v2, v30

    .line 335
    .line 336
    iget-object v4, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 337
    .line 338
    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 339
    .line 340
    new-instance v7, Lkotlin/Pair;

    .line 341
    .line 342
    invoke-direct {v7, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v4, v33

    .line 346
    .line 347
    iget-object v6, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 348
    .line 349
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_TMO:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 350
    .line 351
    new-instance v10, Lkotlin/Pair;

    .line 352
    .line 353
    invoke-direct {v10, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    move-object/from16 v6, v34

    .line 357
    .line 358
    iget-object v6, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 359
    .line 360
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_TMO_UC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 361
    .line 362
    new-instance v11, Lkotlin/Pair;

    .line 363
    .line 364
    invoke-direct {v11, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    filled-new-array {v3, v5, v7, v10, v11}, [Lkotlin/Pair;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    iput-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    .line 376
    .line 377
    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 378
    .line 379
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 380
    .line 381
    new-instance v5, Lkotlin/Pair;

    .line 382
    .line 383
    invoke-direct {v5, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v1, v32

    .line 387
    .line 388
    iget-object v3, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 389
    .line 390
    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 391
    .line 392
    new-instance v7, Lkotlin/Pair;

    .line 393
    .line 394
    invoke-direct {v7, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v3, v29

    .line 398
    .line 399
    iget-object v9, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 400
    .line 401
    new-instance v10, Lkotlin/Pair;

    .line 402
    .line 403
    invoke-direct {v10, v9, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    move-object/from16 v6, p1

    .line 407
    .line 408
    iget-object v6, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 409
    .line 410
    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_PLUS_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 411
    .line 412
    new-instance v11, Lkotlin/Pair;

    .line 413
    .line 414
    invoke-direct {v11, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    filled-new-array {v5, v7, v10, v11}, [Lkotlin/Pair;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    .line 426
    .line 427
    iget-object v5, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 428
    .line 429
    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 430
    .line 431
    new-instance v7, Lkotlin/Pair;

    .line 432
    .line 433
    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 437
    .line 438
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 439
    .line 440
    new-instance v6, Lkotlin/Pair;

    .line 441
    .line 442
    invoke-direct {v6, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    iget-object v2, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 446
    .line 447
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 448
    .line 449
    new-instance v5, Lkotlin/Pair;

    .line 450
    .line 451
    invoke-direct {v5, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    iget-object v2, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 455
    .line 456
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 457
    .line 458
    new-instance v4, Lkotlin/Pair;

    .line 459
    .line 460
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 464
    .line 465
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 466
    .line 467
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 468
    .line 469
    new-instance v9, Lkotlin/Pair;

    .line 470
    .line 471
    invoke-direct {v9, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    filled-new-array {v7, v6, v5, v4, v9}, [Lkotlin/Pair;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    iput-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesKTT:Ljava/util/HashMap;

    .line 483
    .line 484
    move-object/from16 v2, v28

    .line 485
    .line 486
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 487
    .line 488
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 489
    .line 490
    new-instance v9, Lkotlin/Pair;

    .line 491
    .line 492
    invoke-direct {v9, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    move-object/from16 v2, v27

    .line 496
    .line 497
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 498
    .line 499
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->E_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 500
    .line 501
    new-instance v10, Lkotlin/Pair;

    .line 502
    .line 503
    invoke-direct {v10, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    move-object/from16 v2, p3

    .line 507
    .line 508
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 509
    .line 510
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 511
    .line 512
    new-instance v11, Lkotlin/Pair;

    .line 513
    .line 514
    invoke-direct {v11, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 518
    .line 519
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 520
    .line 521
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 522
    .line 523
    new-instance v12, Lkotlin/Pair;

    .line 524
    .line 525
    invoke-direct {v12, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    iget-object v2, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 529
    .line 530
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 531
    .line 532
    new-instance v13, Lkotlin/Pair;

    .line 533
    .line 534
    invoke-direct {v13, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v2, p2

    .line 538
    .line 539
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 540
    .line 541
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->H_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 542
    .line 543
    new-instance v14, Lkotlin/Pair;

    .line 544
    .line 545
    invoke-direct {v14, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    move-object/from16 v2, v26

    .line 549
    .line 550
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 551
    .line 552
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 553
    .line 554
    new-instance v15, Lkotlin/Pair;

    .line 555
    .line 556
    invoke-direct {v15, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 560
    .line 561
    iget-object v2, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 562
    .line 563
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 564
    .line 565
    new-instance v4, Lkotlin/Pair;

    .line 566
    .line 567
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 571
    .line 572
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 573
    .line 574
    new-instance v3, Lkotlin/Pair;

    .line 575
    .line 576
    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 580
    .line 581
    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 582
    .line 583
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 584
    .line 585
    new-instance v5, Lkotlin/Pair;

    .line 586
    .line 587
    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 591
    .line 592
    iget-object v1, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 593
    .line 594
    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5GA_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 595
    .line 596
    new-instance v6, Lkotlin/Pair;

    .line 597
    .line 598
    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v16, v4

    .line 602
    .line 603
    move-object/from16 v17, v3

    .line 604
    .line 605
    move-object/from16 v18, v5

    .line 606
    .line 607
    move-object/from16 v19, v6

    .line 608
    .line 609
    filled-new-array/range {v9 .. v19}, [Lkotlin/Pair;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    .line 618
    .line 619
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesVZW:Ljava/util/HashMap;

    .line 620
    .line 621
    new-instance v2, Lkotlin/Pair;

    .line 622
    .line 623
    const-string v3, "VZW"

    .line 624
    .line 625
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesVZW:Ljava/util/HashMap;

    .line 629
    .line 630
    new-instance v3, Lkotlin/Pair;

    .line 631
    .line 632
    const-string v4, "VZW_OPEN"

    .line 633
    .line 634
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    .line 638
    .line 639
    new-instance v4, Lkotlin/Pair;

    .line 640
    .line 641
    const-string v5, "TMB"

    .line 642
    .line 643
    invoke-direct {v4, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    .line 647
    .line 648
    new-instance v5, Lkotlin/Pair;

    .line 649
    .line 650
    const-string v6, "TMB_OPEN"

    .line 651
    .line 652
    invoke-direct {v5, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    .line 654
    .line 655
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    .line 656
    .line 657
    new-instance v6, Lkotlin/Pair;

    .line 658
    .line 659
    const-string v7, "TMK"

    .line 660
    .line 661
    invoke-direct {v6, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    .line 665
    .line 666
    new-instance v7, Lkotlin/Pair;

    .line 667
    .line 668
    const-string v8, "TMK_OPEN"

    .line 669
    .line 670
    invoke-direct {v7, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    .line 674
    .line 675
    new-instance v8, Lkotlin/Pair;

    .line 676
    .line 677
    const-string v9, "ASR"

    .line 678
    .line 679
    invoke-direct {v8, v9, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    .line 683
    .line 684
    new-instance v9, Lkotlin/Pair;

    .line 685
    .line 686
    const-string v10, "CDR"

    .line 687
    .line 688
    invoke-direct {v9, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    .line 692
    .line 693
    new-instance v10, Lkotlin/Pair;

    .line 694
    .line 695
    const-string v11, "AMX"

    .line 696
    .line 697
    invoke-direct {v10, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    .line 701
    .line 702
    new-instance v11, Lkotlin/Pair;

    .line 703
    .line 704
    const-string v12, "PCT"

    .line 705
    .line 706
    invoke-direct {v11, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    .line 710
    .line 711
    new-instance v12, Lkotlin/Pair;

    .line 712
    .line 713
    const-string v13, "TCE"

    .line 714
    .line 715
    invoke-direct {v12, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesKTT:Ljava/util/HashMap;

    .line 719
    .line 720
    new-instance v13, Lkotlin/Pair;

    .line 721
    .line 722
    const-string v14, "KTT"

    .line 723
    .line 724
    invoke-direct {v13, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    .line 728
    .line 729
    new-instance v14, Lkotlin/Pair;

    .line 730
    .line 731
    const-string v15, "CHC"

    .line 732
    .line 733
    invoke-direct {v14, v15, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    .line 737
    .line 738
    new-instance v15, Lkotlin/Pair;

    .line 739
    .line 740
    move-object/from16 p1, v14

    .line 741
    .line 742
    const-string v14, "CHM"

    .line 743
    .line 744
    invoke-direct {v15, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    .line 748
    .line 749
    new-instance v14, Lkotlin/Pair;

    .line 750
    .line 751
    move-object/from16 p2, v15

    .line 752
    .line 753
    const-string v15, "CTC"

    .line 754
    .line 755
    invoke-direct {v14, v15, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    .line 759
    .line 760
    new-instance v15, Lkotlin/Pair;

    .line 761
    .line 762
    move-object/from16 p3, v14

    .line 763
    .line 764
    const-string v14, "CHU"

    .line 765
    .line 766
    invoke-direct {v15, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    .line 770
    .line 771
    new-instance v14, Lkotlin/Pair;

    .line 772
    .line 773
    move-object/from16 v16, v15

    .line 774
    .line 775
    const-string v15, "ATT"

    .line 776
    .line 777
    invoke-direct {v14, v15, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    .line 781
    .line 782
    new-instance v15, Lkotlin/Pair;

    .line 783
    .line 784
    move-object/from16 v17, v14

    .line 785
    .line 786
    const-string v14, "ATT_OPEN"

    .line 787
    .line 788
    invoke-direct {v15, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    .line 792
    .line 793
    new-instance v14, Lkotlin/Pair;

    .line 794
    .line 795
    move-object/from16 v18, v15

    .line 796
    .line 797
    const-string v15, "AIO"

    .line 798
    .line 799
    invoke-direct {v14, v15, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    .line 803
    .line 804
    new-instance v15, Lkotlin/Pair;

    .line 805
    .line 806
    move-object/from16 v19, v14

    .line 807
    .line 808
    const-string v14, "AIO_OPEN"

    .line 809
    .line 810
    invoke-direct {v15, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesUSCC:Ljava/util/HashMap;

    .line 814
    .line 815
    new-instance v14, Lkotlin/Pair;

    .line 816
    .line 817
    move-object/from16 v20, v15

    .line 818
    .line 819
    const-string v15, "USC"

    .line 820
    .line 821
    invoke-direct {v14, v15, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesUSCC:Ljava/util/HashMap;

    .line 825
    .line 826
    new-instance v15, Lkotlin/Pair;

    .line 827
    .line 828
    move-object/from16 v21, v14

    .line 829
    .line 830
    const-string v14, "USC_OPEN"

    .line 831
    .line 832
    invoke-direct {v15, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 833
    .line 834
    .line 835
    move-object/from16 v1, p3

    .line 836
    .line 837
    move-object/from16 v22, v21

    .line 838
    .line 839
    move-object/from16 v21, v19

    .line 840
    .line 841
    move-object/from16 v19, v17

    .line 842
    .line 843
    move-object/from16 v14, p1

    .line 844
    .line 845
    move-object/from16 v24, v15

    .line 846
    .line 847
    move-object/from16 v17, v16

    .line 848
    .line 849
    move-object/from16 v23, v20

    .line 850
    .line 851
    move-object/from16 v20, v18

    .line 852
    .line 853
    move-object/from16 v15, p2

    .line 854
    .line 855
    move-object/from16 v16, v1

    .line 856
    .line 857
    move-object/from16 v18, v19

    .line 858
    .line 859
    move-object/from16 v19, v20

    .line 860
    .line 861
    move-object/from16 v20, v21

    .line 862
    .line 863
    move-object/from16 v21, v23

    .line 864
    .line 865
    move-object/from16 v23, v24

    .line 866
    .line 867
    filled-new-array/range {v2 .. v23}, [Lkotlin/Pair;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierIconOverrides:Ljava/util/HashMap;

    .line 876
    .line 877
    return-void
.end method


# virtual methods
.method public final mapIconSets(I)Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 12
    .line 13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 22
    .line 23
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 32
    .line 33
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 42
    .line 43
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x7

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 60
    .line 61
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x5

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x6

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const/16 v6, 0xc

    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const/16 v6, 0xe

    .line 90
    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const/16 v6, 0x11

    .line 99
    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_HSPA_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 108
    .line 109
    new-array v7, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 112
    .line 113
    invoke-interface {p0, v6, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_0

    .line 118
    .line 119
    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    move-object v7, v5

    .line 123
    :goto_0
    const/16 v8, 0x8

    .line 124
    .line 125
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const/16 v8, 0x9

    .line 133
    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const/16 v8, 0xa

    .line 142
    .line 143
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const/16 v7, 0xf

    .line 151
    .line 152
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    new-array v8, v1, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-interface {p0, v6, p1, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_1

    .line 163
    .line 164
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 165
    .line 166
    :cond_1
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 170
    .line 171
    new-array v6, v1, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-interface {p0, v5, p1, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    const/16 v6, 0xd

    .line 178
    .line 179
    if-eqz v5, :cond_3

    .line 180
    .line 181
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 186
    .line 187
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_CA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 195
    .line 196
    new-array v7, v1, [Ljava/lang/Object;

    .line 197
    .line 198
    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_2

    .line 203
    .line 204
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_2
    move-object v5, v6

    .line 208
    :goto_1
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_3
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_4G_PLUS_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 220
    .line 221
    new-array v7, v1, [Ljava/lang/Object;

    .line 222
    .line 223
    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_4

    .line 228
    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 234
    .line 235
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 251
    .line 252
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_CA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 260
    .line 261
    new-array v7, v1, [Ljava/lang/Object;

    .line 262
    .line 263
    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_6

    .line 268
    .line 269
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_4_HALF_G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 270
    .line 271
    new-array v7, v1, [Ljava/lang/Object;

    .line 272
    .line 273
    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_5

    .line 278
    .line 279
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_5
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_6
    move-object v5, v6

    .line 286
    :goto_2
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    :goto_3
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ONE_SHAPED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 301
    .line 302
    new-array v4, v1, [Ljava/lang/Object;

    .line 303
    .line 304
    invoke-interface {p0, v3, p1, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_7

    .line 309
    .line 310
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 314
    .line 315
    new-array v5, v1, [Ljava/lang/Object;

    .line 316
    .line 317
    invoke-interface {p0, v4, p1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-eqz v4, :cond_8

    .line 322
    .line 323
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_ENLARGED_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_8
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 327
    .line 328
    :goto_4
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const/16 v2, 0x14

    .line 332
    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    new-array v4, v1, [Ljava/lang/Object;

    .line 338
    .line 339
    invoke-interface {p0, v3, p1, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_9

    .line 344
    .line 345
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 349
    .line 350
    new-array v5, v1, [Ljava/lang/Object;

    .line 351
    .line 352
    invoke-interface {p0, v4, p1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_a

    .line 357
    .line 358
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_a
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 362
    .line 363
    :goto_5
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    const/16 v2, 0x3e7

    .line 367
    .line 368
    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    new-array v4, v1, [Ljava/lang/Object;

    .line 373
    .line 374
    invoke-interface {p0, v3, p1, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_b

    .line 379
    .line 380
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 384
    .line 385
    new-array v1, v1, [Ljava/lang/Object;

    .line 386
    .line 387
    invoke-interface {p0, v3, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    if-eqz p0, :cond_c

    .line 392
    .line 393
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_c
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 397
    .line 398
    :goto_6
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    return-object v0
.end method

.method public final useGlobal5gIcon(I)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CSC_MATCHED_SIM:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 7
    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 11
    .line 12
    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    return v1
.end method
