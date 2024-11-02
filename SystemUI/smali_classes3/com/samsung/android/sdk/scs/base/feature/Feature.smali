.class public final Lcom/samsung/android/sdk/scs/base/feature/Feature;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SUPPORTED_SBIS_FEATURES:Ljava/util/List;

.field public static final SUPPORTED_SIVS_FEATURES:Ljava/util/List;

.field public static final sinceVersionMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    const-string v0, "FEATURE_SPEECH_RECOGNITION"

    .line 2
    .line 3
    const-string v1, "FEATURE_SPEAKER_DIARISATION"

    .line 4
    .line 5
    const-string v2, "FEATURE_AI_GEN_SUMMARY"

    .line 6
    .line 7
    const-string v3, "FEATURE_AI_GEN_TRANSLATION"

    .line 8
    .line 9
    const-string v4, "FEATURE_AI_GEN_TONE"

    .line 10
    .line 11
    const-string v5, "FEATURE_AI_GEN_CORRECTION"

    .line 12
    .line 13
    const-string v6, "FEATURE_AI_GEN_SMART_COVER"

    .line 14
    .line 15
    const-string v7, "FEATURE_AI_GEN_SMART_REPLY"

    .line 16
    .line 17
    const-string v8, "FEATURE_AI_GEN_EMOJI_AUGMENTATION"

    .line 18
    .line 19
    const-string v9, "FEATURE_AI_GEN_NOTES_ORGANIZATION"

    .line 20
    .line 21
    const-string v10, "FEATURE_AI_GEN_SMART_CAPTURE"

    .line 22
    .line 23
    const-string v11, "FEATURE_AI_GEN_GENERIC"

    .line 24
    .line 25
    const-string v12, "FEATURE_AI_GEN_USAGE"

    .line 26
    .line 27
    const-string v13, "FEATURE_NEURAL_TRANSLATION"

    .line 28
    .line 29
    const-string v14, "FEATURE_LANGUAGE_LIST_IDENTIFICATION"

    .line 30
    .line 31
    const-string v15, "FEATURE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE"

    .line 32
    .line 33
    const-string v16, "FEATURE_SIVS_CLASSIFICATION"

    .line 34
    .line 35
    const-string v17, "FEATURE_SIVS_CONFIGURATION"

    .line 36
    .line 37
    const-string v18, "FEATURE_SIVS_EXTRACTION"

    .line 38
    .line 39
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    .line 48
    .line 49
    const-string v0, "FEATURE_AI_LEX_RANK"

    .line 50
    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sput-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SBIS_FEATURES:Ljava/util/List;

    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "FEATURE_IMAGE_GET_BOUNDARIES"

    .line 72
    .line 73
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v3, "FEATURE_IMAGE_GET_LARGEST_BOUNDARY"

    .line 77
    .line 78
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x2

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v4, "FEATURE_IMAGE_UPSCALE"

    .line 87
    .line 88
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v4, "FEATURE_SUGGESTION_SUGGEST_KEYWORD"

    .line 92
    .line 93
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v4, "FEATURE_SUGGESTION_SUGGEST_APP_CATEGORY"

    .line 97
    .line 98
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const/4 v4, 0x3

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string v5, "FEATURE_SUGGESTION_SUGGEST_APP_CATEGORY_DETAILS"

    .line 107
    .line 108
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v5, "FEATURE_SUGGESTION_SUGGEST_FOLDER_NAME"

    .line 112
    .line 113
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v5, "FEATURE_TEXT_GET_ENTITY"

    .line 117
    .line 118
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/16 v5, 0x9

    .line 122
    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const-string v6, "FEATURE_TEXT_GET_ENTITY_DATETIME_NUMERAL"

    .line 128
    .line 129
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string v6, "FEATURE_TEXT_GET_ENTITY_PHONE_NUMBER"

    .line 133
    .line 134
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const/16 v6, 0xa

    .line 138
    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    const-string v7, "FEATURE_TEXT_GET_ENTITY_POI"

    .line 144
    .line 145
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v6, "FEATURE_TEXT_GET_ENTITY_BANK"

    .line 149
    .line 150
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const/16 v6, 0xf

    .line 154
    .line 155
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_MAPPABLE"

    .line 160
    .line 161
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_RELATIVE"

    .line 165
    .line 166
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    const/16 v6, 0x11

    .line 170
    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v7, "FEATURE_TEXT_GET_ENTITY_IS_SPECIAL_DAY"

    .line 176
    .line 177
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const/16 v6, 0x12

    .line 181
    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    const-string v7, "FEATURE_TEXT_GET_ENTITY_HAS_YEAR_MONTH_DAY"

    .line 187
    .line 188
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    const/16 v7, 0x10

    .line 192
    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    const-string v8, "FEATURE_TEXT_GET_ENTITY_UPI_ID"

    .line 198
    .line 199
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    const/16 v7, 0x14

    .line 203
    .line 204
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    const-string v8, "FEATURE_TEXT_GET_ENTITY_UNIT"

    .line 209
    .line 210
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const/16 v7, 0xd

    .line 214
    .line 215
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    const-string v8, "FEATURE_TEXT_GET_EVENT"

    .line 220
    .line 221
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    const-string v7, "FEATURE_TEXT_GET_EVENT_HAS_YEAR_MONTH_DAY"

    .line 225
    .line 226
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const/16 v6, 0x15

    .line 230
    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const-string v7, "FEATURE_TEXT_GET_EVENT_INDEX"

    .line 236
    .line 237
    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    const-string v6, "FEATURE_TEXT_GET_KEY_PHRASE"

    .line 241
    .line 242
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    const/16 v4, 0xb

    .line 246
    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    const-string v6, "FEATURE_TEXT_GET_KEY_PHRASE_EVENT_TITLE"

    .line 252
    .line 253
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const/4 v4, 0x5

    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    const-string v6, "FEATURE_TEXT_GET_DOCUMENT_CATEGORY"

    .line 262
    .line 263
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const-string v4, "FEATURE_TEXT_GET_BNLP"

    .line 267
    .line 268
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    const/16 v3, 0xc

    .line 272
    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    const-string v4, "FEATURE_TEXT_GET_BNLP_TOKEN"

    .line 278
    .line 279
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    const-string v3, "FEATURE_TEXT_DETECT_LANGUAGE"

    .line 283
    .line 284
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    const/16 v3, 0x13

    .line 288
    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    const-string v4, "FEATURE_TEXT_CONVERT_UNIT"

    .line 294
    .line 295
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string v3, "FEATURE_NATURAL_LANGUAGE_QUERY"

    .line 299
    .line 300
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    const-string v3, "FEATURE_SPEECH_RECOGNITION"

    .line 304
    .line 305
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst;->SINCE_SPEECH_RECOGNITION:Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    const-string v3, "FEATURE_SPEAKER_DIARISATION"

    .line 311
    .line 312
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst;->SINCE_SPEAKER_DIARISATION:Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    const-string v3, "FEATURE_AI_GEN_SUMMARY"

    .line 318
    .line 319
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SUMMARY:Ljava/lang/Integer;

    .line 320
    .line 321
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    const-string v3, "FEATURE_AI_GEN_TRANSLATION"

    .line 325
    .line 326
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_TRANSLATION:Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const-string v3, "FEATURE_AI_GEN_TONE"

    .line 332
    .line 333
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_TONE:Ljava/lang/Integer;

    .line 334
    .line 335
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    const-string v3, "FEATURE_AI_GEN_CORRECTION"

    .line 339
    .line 340
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_CORRECTION:Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const-string v3, "FEATURE_AI_GEN_SMART_COVER"

    .line 346
    .line 347
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SMART_COVER:Ljava/lang/Integer;

    .line 348
    .line 349
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    const-string v3, "FEATURE_AI_GEN_SMART_REPLY"

    .line 353
    .line 354
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SMART_REPLY:Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    const-string v3, "FEATURE_AI_GEN_EMOJI_AUGMENTATION"

    .line 360
    .line 361
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_EMOJI_AUGMENTATION:Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    const-string v3, "FEATURE_AI_GEN_NOTES_ORGANIZATION"

    .line 367
    .line 368
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_NOTES_ORGANIZATION:Ljava/lang/Integer;

    .line 369
    .line 370
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    const-string v3, "FEATURE_AI_GEN_SMART_CAPTURE"

    .line 374
    .line 375
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SMART_CAPTURE:Ljava/lang/Integer;

    .line 376
    .line 377
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const-string v3, "FEATURE_AI_GEN_GENERIC"

    .line 381
    .line 382
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_GENERIC:Ljava/lang/Integer;

    .line 383
    .line 384
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    const-string v3, "FEATURE_NEURAL_TRANSLATION"

    .line 388
    .line 389
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;->SINCE_NEURAL_TRANSLATION:Ljava/lang/Integer;

    .line 390
    .line 391
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    const-string v3, "FEATURE_LANGUAGE_LIST_IDENTIFICATION"

    .line 395
    .line 396
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;->SINCE_LANGUAGE_LIST_IDENTIFICATION:Ljava/lang/Integer;

    .line 397
    .line 398
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    const-string v3, "FEATURE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE"

    .line 402
    .line 403
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;->SINCE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE:Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    const-string v3, "FEATURE_SIVS_CLASSIFICATION"

    .line 409
    .line 410
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_SIVS_CLASSIFICATION:Ljava/lang/Integer;

    .line 411
    .line 412
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    const-string v3, "FEATURE_SIVS_EXTRACTION"

    .line 416
    .line 417
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_SIVS_EXTRACTION:Ljava/lang/Integer;

    .line 418
    .line 419
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    const-string v3, "FEATURE_SIVS_CONFIGURATION"

    .line 423
    .line 424
    sget-object v4, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_SIVS_CONFIGURATION:Ljava/lang/Integer;

    .line 425
    .line 426
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    const-string v0, "FEATURE_AI_GEN_USAGE"

    .line 433
    .line 434
    sget-object v2, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_USAGE:Ljava/lang/Integer;

    .line 435
    .line 436
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    sput-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    .line 444
    .line 445
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
