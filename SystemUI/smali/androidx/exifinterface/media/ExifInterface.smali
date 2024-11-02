.class public final Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field public static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEBUG:Z

.field public static final EXIF_ASCII_PREFIX:[B

.field public static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field public static final HEIF_BRAND_HEIC:[B

.field public static final HEIF_BRAND_MIF1:[B

.field public static final HEIF_TYPE_FTYP:[B

.field public static final IDENTIFIER_EXIF_APP1:[B

.field public static final IDENTIFIER_XMP_APP1:[B

.field public static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field public static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field public static final JPEG_SIGNATURE:[B

.field public static final ORF_MAKER_NOTE_HEADER_1:[B

.field public static final ORF_MAKER_NOTE_HEADER_2:[B

.field public static final PNG_CHUNK_TYPE_EXIF:[B

.field public static final PNG_CHUNK_TYPE_IEND:[B

.field public static final PNG_CHUNK_TYPE_IHDR:[B

.field public static final PNG_SIGNATURE:[B

.field public static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final WEBP_CHUNK_TYPE_ANIM:[B

.field public static final WEBP_CHUNK_TYPE_ANMF:[B

.field public static final WEBP_CHUNK_TYPE_EXIF:[B

.field public static final WEBP_CHUNK_TYPE_VP8:[B

.field public static final WEBP_CHUNK_TYPE_VP8L:[B

.field public static final WEBP_CHUNK_TYPE_VP8X:[B

.field public static final WEBP_SIGNATURE_1:[B

.field public static final WEBP_SIGNATURE_2:[B

.field public static final WEBP_VP8_SIGNATURE:[B

.field public static final sExifPointerTagMap:Ljava/util/HashMap;

.field public static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field public static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field public static final sTagSetForCompatibility:Ljava/util/HashSet;


# instance fields
.field public mAreThumbnailStripsConsecutive:Z

.field public mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field public final mAttributes:[Ljava/util/HashMap;

.field public final mAttributesOffsets:Ljava/util/Set;

.field public mExifByteOrder:Ljava/nio/ByteOrder;

.field public mFilename:Ljava/lang/String;

.field public mHasThumbnail:Z

.field public mHasThumbnailStrips:Z

.field public final mIsExifDataOnly:Z

.field public mMimeType:I

.field public mOffsetToExifData:I

.field public mOrfMakerNoteOffset:I

.field public mOrfThumbnailLength:I

.field public mOrfThumbnailOffset:I

.field public mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field public mThumbnailBytes:[B

.field public mThumbnailCompression:I

.field public mThumbnailLength:I

.field public mThumbnailOffset:I

.field public mXmpIsFromSeparateMarker:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 138

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ExifInterface"

    .line 7
    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sput-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    filled-new-array {v3, v5, v1, v7}, [Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const/4 v9, 0x7

    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const/4 v11, 0x4

    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    const/4 v13, 0x5

    .line 53
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    filled-new-array {v8, v10, v12, v14}, [Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    filled-new-array {v6, v6, v6}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 69
    .line 70
    filled-new-array {v6}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 75
    .line 76
    new-array v12, v0, [B

    .line 77
    .line 78
    fill-array-data v12, :array_0

    .line 79
    .line 80
    .line 81
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 82
    .line 83
    new-array v12, v11, [B

    .line 84
    .line 85
    fill-array-data v12, :array_1

    .line 86
    .line 87
    .line 88
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 89
    .line 90
    new-array v12, v11, [B

    .line 91
    .line 92
    fill-array-data v12, :array_2

    .line 93
    .line 94
    .line 95
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 96
    .line 97
    new-array v12, v11, [B

    .line 98
    .line 99
    fill-array-data v12, :array_3

    .line 100
    .line 101
    .line 102
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 103
    .line 104
    new-array v12, v4, [B

    .line 105
    .line 106
    fill-array-data v12, :array_4

    .line 107
    .line 108
    .line 109
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 110
    .line 111
    const/16 v12, 0xa

    .line 112
    .line 113
    new-array v15, v12, [B

    .line 114
    .line 115
    fill-array-data v15, :array_5

    .line 116
    .line 117
    .line 118
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 119
    .line 120
    new-array v15, v6, [B

    .line 121
    .line 122
    fill-array-data v15, :array_6

    .line 123
    .line 124
    .line 125
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 126
    .line 127
    new-array v15, v11, [B

    .line 128
    .line 129
    fill-array-data v15, :array_7

    .line 130
    .line 131
    .line 132
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 133
    .line 134
    new-array v15, v11, [B

    .line 135
    .line 136
    fill-array-data v15, :array_8

    .line 137
    .line 138
    .line 139
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 140
    .line 141
    new-array v15, v11, [B

    .line 142
    .line 143
    fill-array-data v15, :array_9

    .line 144
    .line 145
    .line 146
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 147
    .line 148
    new-array v15, v11, [B

    .line 149
    .line 150
    fill-array-data v15, :array_a

    .line 151
    .line 152
    .line 153
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 154
    .line 155
    new-array v15, v11, [B

    .line 156
    .line 157
    fill-array-data v15, :array_b

    .line 158
    .line 159
    .line 160
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 161
    .line 162
    new-array v15, v11, [B

    .line 163
    .line 164
    fill-array-data v15, :array_c

    .line 165
    .line 166
    .line 167
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 168
    .line 169
    new-array v15, v0, [B

    .line 170
    .line 171
    fill-array-data v15, :array_d

    .line 172
    .line 173
    .line 174
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 175
    .line 176
    const-string v15, "VP8X"

    .line 177
    .line 178
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 187
    .line 188
    const-string v12, "VP8L"

    .line 189
    .line 190
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 199
    .line 200
    const-string v12, "VP8 "

    .line 201
    .line 202
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 211
    .line 212
    const-string v12, "ANIM"

    .line 213
    .line 214
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 223
    .line 224
    const-string v12, "ANMF"

    .line 225
    .line 226
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 235
    .line 236
    const-string v16, ""

    .line 237
    .line 238
    const-string v17, "BYTE"

    .line 239
    .line 240
    const-string v18, "STRING"

    .line 241
    .line 242
    const-string v19, "USHORT"

    .line 243
    .line 244
    const-string v20, "ULONG"

    .line 245
    .line 246
    const-string v21, "URATIONAL"

    .line 247
    .line 248
    const-string v22, "SBYTE"

    .line 249
    .line 250
    const-string v23, "UNDEFINED"

    .line 251
    .line 252
    const-string v24, "SSHORT"

    .line 253
    .line 254
    const-string v25, "SLONG"

    .line 255
    .line 256
    const-string v26, "SRATIONAL"

    .line 257
    .line 258
    const-string v27, "SINGLE"

    .line 259
    .line 260
    const-string v28, "DOUBLE"

    .line 261
    .line 262
    const-string v29, "IFD"

    .line 263
    .line 264
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 269
    .line 270
    const/16 v12, 0xe

    .line 271
    .line 272
    new-array v15, v12, [I

    .line 273
    .line 274
    fill-array-data v15, :array_e

    .line 275
    .line 276
    .line 277
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 278
    .line 279
    new-array v15, v6, [B

    .line 280
    .line 281
    fill-array-data v15, :array_f

    .line 282
    .line 283
    .line 284
    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 285
    .line 286
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 287
    .line 288
    move-object/from16 v16, v15

    .line 289
    .line 290
    const-string v12, "NewSubfileType"

    .line 291
    .line 292
    const/16 v6, 0xfe

    .line 293
    .line 294
    invoke-direct {v15, v12, v6, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 295
    .line 296
    .line 297
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 298
    .line 299
    move-object/from16 v17, v15

    .line 300
    .line 301
    const-string v6, "SubfileType"

    .line 302
    .line 303
    const/16 v2, 0xff

    .line 304
    .line 305
    invoke-direct {v15, v6, v2, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 306
    .line 307
    .line 308
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 309
    .line 310
    move-object/from16 v18, v15

    .line 311
    .line 312
    const-string v2, "ImageWidth"

    .line 313
    .line 314
    const/16 v9, 0x100

    .line 315
    .line 316
    invoke-direct {v15, v2, v9, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 317
    .line 318
    .line 319
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 320
    .line 321
    move-object/from16 v19, v2

    .line 322
    .line 323
    const-string v15, "ImageLength"

    .line 324
    .line 325
    const/16 v9, 0x101

    .line 326
    .line 327
    invoke-direct {v2, v15, v9, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 328
    .line 329
    .line 330
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 331
    .line 332
    move-object/from16 v20, v2

    .line 333
    .line 334
    const-string v15, "BitsPerSample"

    .line 335
    .line 336
    const/16 v9, 0x102

    .line 337
    .line 338
    invoke-direct {v2, v15, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 339
    .line 340
    .line 341
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 342
    .line 343
    move-object/from16 v21, v2

    .line 344
    .line 345
    const-string v15, "Compression"

    .line 346
    .line 347
    const/16 v9, 0x103

    .line 348
    .line 349
    invoke-direct {v2, v15, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 350
    .line 351
    .line 352
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 353
    .line 354
    move-object/from16 v22, v2

    .line 355
    .line 356
    const-string v9, "PhotometricInterpretation"

    .line 357
    .line 358
    const/16 v15, 0x106

    .line 359
    .line 360
    invoke-direct {v2, v9, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 361
    .line 362
    .line 363
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 364
    .line 365
    move-object/from16 v23, v2

    .line 366
    .line 367
    const-string v9, "ImageDescription"

    .line 368
    .line 369
    const/16 v15, 0x10e

    .line 370
    .line 371
    invoke-direct {v2, v9, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 372
    .line 373
    .line 374
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 375
    .line 376
    move-object/from16 v24, v2

    .line 377
    .line 378
    const-string v9, "Make"

    .line 379
    .line 380
    const/16 v15, 0x10f

    .line 381
    .line 382
    invoke-direct {v2, v9, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 383
    .line 384
    .line 385
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 386
    .line 387
    move-object/from16 v25, v2

    .line 388
    .line 389
    const-string v9, "Model"

    .line 390
    .line 391
    const/16 v15, 0x110

    .line 392
    .line 393
    invoke-direct {v2, v9, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 394
    .line 395
    .line 396
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 397
    .line 398
    move-object/from16 v26, v2

    .line 399
    .line 400
    const-string v9, "StripOffsets"

    .line 401
    .line 402
    const/16 v15, 0x111

    .line 403
    .line 404
    invoke-direct {v2, v9, v15, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 405
    .line 406
    .line 407
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 408
    .line 409
    move-object/from16 v27, v2

    .line 410
    .line 411
    const-string v15, "Orientation"

    .line 412
    .line 413
    const/16 v4, 0x112

    .line 414
    .line 415
    invoke-direct {v2, v15, v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 416
    .line 417
    .line 418
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 419
    .line 420
    move-object/from16 v28, v2

    .line 421
    .line 422
    const-string v4, "SamplesPerPixel"

    .line 423
    .line 424
    const/16 v15, 0x115

    .line 425
    .line 426
    invoke-direct {v2, v4, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 427
    .line 428
    .line 429
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 430
    .line 431
    move-object/from16 v29, v2

    .line 432
    .line 433
    const-string v4, "RowsPerStrip"

    .line 434
    .line 435
    const/16 v15, 0x116

    .line 436
    .line 437
    invoke-direct {v2, v4, v15, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 438
    .line 439
    .line 440
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 441
    .line 442
    move-object/from16 v30, v2

    .line 443
    .line 444
    const-string v4, "StripByteCounts"

    .line 445
    .line 446
    const/16 v15, 0x117

    .line 447
    .line 448
    invoke-direct {v2, v4, v15, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 449
    .line 450
    .line 451
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 452
    .line 453
    move-object/from16 v31, v2

    .line 454
    .line 455
    const-string v4, "XResolution"

    .line 456
    .line 457
    const/16 v15, 0x11a

    .line 458
    .line 459
    invoke-direct {v2, v4, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 460
    .line 461
    .line 462
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 463
    .line 464
    move-object/from16 v32, v2

    .line 465
    .line 466
    const-string v4, "YResolution"

    .line 467
    .line 468
    const/16 v15, 0x11b

    .line 469
    .line 470
    invoke-direct {v2, v4, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 471
    .line 472
    .line 473
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 474
    .line 475
    move-object/from16 v33, v2

    .line 476
    .line 477
    const-string v4, "PlanarConfiguration"

    .line 478
    .line 479
    const/16 v15, 0x11c

    .line 480
    .line 481
    invoke-direct {v2, v4, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 482
    .line 483
    .line 484
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 485
    .line 486
    move-object/from16 v34, v2

    .line 487
    .line 488
    const-string v4, "ResolutionUnit"

    .line 489
    .line 490
    const/16 v15, 0x128

    .line 491
    .line 492
    invoke-direct {v2, v4, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 493
    .line 494
    .line 495
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 496
    .line 497
    move-object/from16 v35, v2

    .line 498
    .line 499
    const-string v4, "TransferFunction"

    .line 500
    .line 501
    const/16 v15, 0x12d

    .line 502
    .line 503
    invoke-direct {v2, v4, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 504
    .line 505
    .line 506
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 507
    .line 508
    move-object/from16 v36, v2

    .line 509
    .line 510
    const-string v4, "Software"

    .line 511
    .line 512
    const/16 v15, 0x131

    .line 513
    .line 514
    invoke-direct {v2, v4, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 515
    .line 516
    .line 517
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 518
    .line 519
    move-object/from16 v37, v2

    .line 520
    .line 521
    const-string v4, "DateTime"

    .line 522
    .line 523
    const/16 v15, 0x132

    .line 524
    .line 525
    invoke-direct {v2, v4, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 526
    .line 527
    .line 528
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 529
    .line 530
    move-object/from16 v38, v2

    .line 531
    .line 532
    const-string v4, "Artist"

    .line 533
    .line 534
    const/16 v15, 0x13b

    .line 535
    .line 536
    invoke-direct {v2, v4, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 537
    .line 538
    .line 539
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 540
    .line 541
    move-object/from16 v39, v2

    .line 542
    .line 543
    const-string v4, "WhitePoint"

    .line 544
    .line 545
    const/16 v15, 0x13e

    .line 546
    .line 547
    invoke-direct {v2, v4, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 548
    .line 549
    .line 550
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 551
    .line 552
    move-object/from16 v40, v2

    .line 553
    .line 554
    const-string v4, "PrimaryChromaticities"

    .line 555
    .line 556
    const/16 v15, 0x13f

    .line 557
    .line 558
    invoke-direct {v2, v4, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 559
    .line 560
    .line 561
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 562
    .line 563
    move-object/from16 v41, v2

    .line 564
    .line 565
    const-string v4, "SubIFDPointer"

    .line 566
    .line 567
    const/16 v15, 0x14a

    .line 568
    .line 569
    invoke-direct {v2, v4, v15, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 570
    .line 571
    .line 572
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 573
    .line 574
    move-object/from16 v42, v2

    .line 575
    .line 576
    const-string v15, "JPEGInterchangeFormat"

    .line 577
    .line 578
    const/16 v5, 0x201

    .line 579
    .line 580
    invoke-direct {v2, v15, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 581
    .line 582
    .line 583
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 584
    .line 585
    move-object/from16 v43, v2

    .line 586
    .line 587
    const-string v5, "JPEGInterchangeFormatLength"

    .line 588
    .line 589
    const/16 v15, 0x202

    .line 590
    .line 591
    invoke-direct {v2, v5, v15, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 592
    .line 593
    .line 594
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 595
    .line 596
    move-object/from16 v44, v2

    .line 597
    .line 598
    const-string v5, "YCbCrCoefficients"

    .line 599
    .line 600
    const/16 v15, 0x211

    .line 601
    .line 602
    invoke-direct {v2, v5, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 603
    .line 604
    .line 605
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 606
    .line 607
    move-object/from16 v45, v2

    .line 608
    .line 609
    const-string v5, "YCbCrSubSampling"

    .line 610
    .line 611
    const/16 v15, 0x212

    .line 612
    .line 613
    invoke-direct {v2, v5, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 614
    .line 615
    .line 616
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 617
    .line 618
    move-object/from16 v46, v2

    .line 619
    .line 620
    const-string v5, "YCbCrPositioning"

    .line 621
    .line 622
    const/16 v15, 0x213

    .line 623
    .line 624
    invoke-direct {v2, v5, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 625
    .line 626
    .line 627
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 628
    .line 629
    move-object/from16 v47, v2

    .line 630
    .line 631
    const-string v5, "ReferenceBlackWhite"

    .line 632
    .line 633
    const/16 v15, 0x214

    .line 634
    .line 635
    invoke-direct {v2, v5, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 636
    .line 637
    .line 638
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 639
    .line 640
    move-object/from16 v48, v2

    .line 641
    .line 642
    const-string v5, "Copyright"

    .line 643
    .line 644
    const v15, 0x8298

    .line 645
    .line 646
    .line 647
    const/4 v0, 0x2

    .line 648
    invoke-direct {v2, v5, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 649
    .line 650
    .line 651
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 652
    .line 653
    move-object/from16 v49, v0

    .line 654
    .line 655
    const-string v2, "ExifIFDPointer"

    .line 656
    .line 657
    const v5, 0x8769

    .line 658
    .line 659
    .line 660
    invoke-direct {v0, v2, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 661
    .line 662
    .line 663
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 664
    .line 665
    move-object/from16 v50, v0

    .line 666
    .line 667
    const-string v15, "GPSInfoIFDPointer"

    .line 668
    .line 669
    const v5, 0x8825

    .line 670
    .line 671
    .line 672
    invoke-direct {v0, v15, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 673
    .line 674
    .line 675
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 676
    .line 677
    move-object/from16 v51, v0

    .line 678
    .line 679
    const-string v5, "SensorTopBorder"

    .line 680
    .line 681
    invoke-direct {v0, v5, v11, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 682
    .line 683
    .line 684
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 685
    .line 686
    move-object/from16 v52, v0

    .line 687
    .line 688
    const-string v5, "SensorLeftBorder"

    .line 689
    .line 690
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 691
    .line 692
    .line 693
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 694
    .line 695
    move-object/from16 v53, v0

    .line 696
    .line 697
    const-string v5, "SensorBottomBorder"

    .line 698
    .line 699
    const/4 v13, 0x6

    .line 700
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 701
    .line 702
    .line 703
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 704
    .line 705
    move-object/from16 v54, v0

    .line 706
    .line 707
    const-string v5, "SensorRightBorder"

    .line 708
    .line 709
    const/4 v13, 0x7

    .line 710
    invoke-direct {v0, v5, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 711
    .line 712
    .line 713
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 714
    .line 715
    move-object/from16 v55, v0

    .line 716
    .line 717
    const-string v5, "ISO"

    .line 718
    .line 719
    const/16 v11, 0x17

    .line 720
    .line 721
    const/4 v13, 0x3

    .line 722
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 723
    .line 724
    .line 725
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 726
    .line 727
    move-object/from16 v56, v0

    .line 728
    .line 729
    const-string v5, "JpgFromRaw"

    .line 730
    .line 731
    const/16 v11, 0x2e

    .line 732
    .line 733
    const/4 v13, 0x7

    .line 734
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 735
    .line 736
    .line 737
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 738
    .line 739
    move-object/from16 v57, v0

    .line 740
    .line 741
    const-string v5, "Xmp"

    .line 742
    .line 743
    const/16 v11, 0x2bc

    .line 744
    .line 745
    const/4 v13, 0x1

    .line 746
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 747
    .line 748
    .line 749
    filled-new-array/range {v16 .. v57}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 750
    .line 751
    .line 752
    move-result-object v63

    .line 753
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 754
    .line 755
    move-object/from16 v64, v0

    .line 756
    .line 757
    const-string v5, "ExposureTime"

    .line 758
    .line 759
    const v11, 0x829a

    .line 760
    .line 761
    .line 762
    const/4 v13, 0x5

    .line 763
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 764
    .line 765
    .line 766
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 767
    .line 768
    move-object/from16 v65, v0

    .line 769
    .line 770
    const-string v5, "FNumber"

    .line 771
    .line 772
    const v11, 0x829d

    .line 773
    .line 774
    .line 775
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 776
    .line 777
    .line 778
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 779
    .line 780
    move-object/from16 v66, v0

    .line 781
    .line 782
    const-string v5, "ExposureProgram"

    .line 783
    .line 784
    const v11, 0x8822

    .line 785
    .line 786
    .line 787
    const/4 v13, 0x3

    .line 788
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 789
    .line 790
    .line 791
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 792
    .line 793
    move-object/from16 v67, v0

    .line 794
    .line 795
    const-string v5, "SpectralSensitivity"

    .line 796
    .line 797
    const v11, 0x8824

    .line 798
    .line 799
    .line 800
    const/4 v13, 0x2

    .line 801
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 802
    .line 803
    .line 804
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 805
    .line 806
    move-object/from16 v68, v0

    .line 807
    .line 808
    const-string v5, "PhotographicSensitivity"

    .line 809
    .line 810
    const v11, 0x8827

    .line 811
    .line 812
    .line 813
    const/4 v13, 0x3

    .line 814
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 815
    .line 816
    .line 817
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 818
    .line 819
    move-object/from16 v69, v0

    .line 820
    .line 821
    const-string v5, "OECF"

    .line 822
    .line 823
    const v11, 0x8828

    .line 824
    .line 825
    .line 826
    const/4 v13, 0x7

    .line 827
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 828
    .line 829
    .line 830
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 831
    .line 832
    move-object/from16 v70, v0

    .line 833
    .line 834
    const-string v5, "SensitivityType"

    .line 835
    .line 836
    const v11, 0x8830

    .line 837
    .line 838
    .line 839
    const/4 v13, 0x3

    .line 840
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 841
    .line 842
    .line 843
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 844
    .line 845
    move-object/from16 v71, v0

    .line 846
    .line 847
    const-string v5, "StandardOutputSensitivity"

    .line 848
    .line 849
    const v11, 0x8831

    .line 850
    .line 851
    .line 852
    const/4 v13, 0x4

    .line 853
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 854
    .line 855
    .line 856
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 857
    .line 858
    move-object/from16 v72, v0

    .line 859
    .line 860
    const-string v5, "RecommendedExposureIndex"

    .line 861
    .line 862
    const v11, 0x8832

    .line 863
    .line 864
    .line 865
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 866
    .line 867
    .line 868
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 869
    .line 870
    move-object/from16 v73, v0

    .line 871
    .line 872
    const-string v5, "ISOSpeed"

    .line 873
    .line 874
    const v11, 0x8833

    .line 875
    .line 876
    .line 877
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 878
    .line 879
    .line 880
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 881
    .line 882
    move-object/from16 v74, v0

    .line 883
    .line 884
    const-string v5, "ISOSpeedLatitudeyyy"

    .line 885
    .line 886
    const v11, 0x8834

    .line 887
    .line 888
    .line 889
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 890
    .line 891
    .line 892
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 893
    .line 894
    move-object/from16 v75, v0

    .line 895
    .line 896
    const-string v5, "ISOSpeedLatitudezzz"

    .line 897
    .line 898
    const v11, 0x8835

    .line 899
    .line 900
    .line 901
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 902
    .line 903
    .line 904
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 905
    .line 906
    move-object/from16 v76, v0

    .line 907
    .line 908
    const-string v5, "ExifVersion"

    .line 909
    .line 910
    const v11, 0x9000

    .line 911
    .line 912
    .line 913
    const/4 v13, 0x2

    .line 914
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 915
    .line 916
    .line 917
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 918
    .line 919
    move-object/from16 v77, v0

    .line 920
    .line 921
    const-string v5, "DateTimeOriginal"

    .line 922
    .line 923
    const v11, 0x9003

    .line 924
    .line 925
    .line 926
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 927
    .line 928
    .line 929
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 930
    .line 931
    move-object/from16 v78, v0

    .line 932
    .line 933
    const-string v5, "DateTimeDigitized"

    .line 934
    .line 935
    const v11, 0x9004

    .line 936
    .line 937
    .line 938
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 939
    .line 940
    .line 941
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 942
    .line 943
    move-object/from16 v79, v0

    .line 944
    .line 945
    const-string v5, "OffsetTime"

    .line 946
    .line 947
    const v11, 0x9010

    .line 948
    .line 949
    .line 950
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 951
    .line 952
    .line 953
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 954
    .line 955
    move-object/from16 v80, v0

    .line 956
    .line 957
    const-string v5, "OffsetTimeOriginal"

    .line 958
    .line 959
    const v11, 0x9011

    .line 960
    .line 961
    .line 962
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 963
    .line 964
    .line 965
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 966
    .line 967
    move-object/from16 v81, v0

    .line 968
    .line 969
    const-string v5, "OffsetTimeDigitized"

    .line 970
    .line 971
    const v11, 0x9012

    .line 972
    .line 973
    .line 974
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 975
    .line 976
    .line 977
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 978
    .line 979
    move-object/from16 v82, v0

    .line 980
    .line 981
    const-string v5, "ComponentsConfiguration"

    .line 982
    .line 983
    const v11, 0x9101

    .line 984
    .line 985
    .line 986
    const/4 v13, 0x7

    .line 987
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 988
    .line 989
    .line 990
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 991
    .line 992
    move-object/from16 v83, v0

    .line 993
    .line 994
    const-string v5, "CompressedBitsPerPixel"

    .line 995
    .line 996
    const v11, 0x9102

    .line 997
    .line 998
    .line 999
    const/4 v13, 0x5

    .line 1000
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1004
    .line 1005
    move-object/from16 v84, v0

    .line 1006
    .line 1007
    const-string v5, "ShutterSpeedValue"

    .line 1008
    .line 1009
    const v11, 0x9201

    .line 1010
    .line 1011
    .line 1012
    const/16 v13, 0xa

    .line 1013
    .line 1014
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1015
    .line 1016
    .line 1017
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1018
    .line 1019
    move-object/from16 v85, v0

    .line 1020
    .line 1021
    const-string v5, "ApertureValue"

    .line 1022
    .line 1023
    const v11, 0x9202

    .line 1024
    .line 1025
    .line 1026
    const/4 v13, 0x5

    .line 1027
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1028
    .line 1029
    .line 1030
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1031
    .line 1032
    move-object/from16 v86, v0

    .line 1033
    .line 1034
    const-string v5, "BrightnessValue"

    .line 1035
    .line 1036
    const v11, 0x9203

    .line 1037
    .line 1038
    .line 1039
    const/16 v13, 0xa

    .line 1040
    .line 1041
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1045
    .line 1046
    move-object/from16 v87, v0

    .line 1047
    .line 1048
    const-string v5, "ExposureBiasValue"

    .line 1049
    .line 1050
    const v11, 0x9204

    .line 1051
    .line 1052
    .line 1053
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1054
    .line 1055
    .line 1056
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1057
    .line 1058
    move-object/from16 v88, v0

    .line 1059
    .line 1060
    const-string v5, "MaxApertureValue"

    .line 1061
    .line 1062
    const v11, 0x9205

    .line 1063
    .line 1064
    .line 1065
    const/4 v13, 0x5

    .line 1066
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1070
    .line 1071
    move-object/from16 v89, v0

    .line 1072
    .line 1073
    const-string v5, "SubjectDistance"

    .line 1074
    .line 1075
    const v11, 0x9206

    .line 1076
    .line 1077
    .line 1078
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1079
    .line 1080
    .line 1081
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1082
    .line 1083
    move-object/from16 v90, v0

    .line 1084
    .line 1085
    const-string v5, "MeteringMode"

    .line 1086
    .line 1087
    const v11, 0x9207

    .line 1088
    .line 1089
    .line 1090
    const/4 v13, 0x3

    .line 1091
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1095
    .line 1096
    move-object/from16 v91, v0

    .line 1097
    .line 1098
    const-string v5, "LightSource"

    .line 1099
    .line 1100
    const v11, 0x9208

    .line 1101
    .line 1102
    .line 1103
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1107
    .line 1108
    move-object/from16 v92, v0

    .line 1109
    .line 1110
    const-string v5, "Flash"

    .line 1111
    .line 1112
    const v11, 0x9209

    .line 1113
    .line 1114
    .line 1115
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1116
    .line 1117
    .line 1118
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1119
    .line 1120
    move-object/from16 v93, v0

    .line 1121
    .line 1122
    const-string v5, "FocalLength"

    .line 1123
    .line 1124
    const v11, 0x920a

    .line 1125
    .line 1126
    .line 1127
    const/4 v13, 0x5

    .line 1128
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1129
    .line 1130
    .line 1131
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1132
    .line 1133
    move-object/from16 v94, v0

    .line 1134
    .line 1135
    const-string v5, "SubjectArea"

    .line 1136
    .line 1137
    const v11, 0x9214

    .line 1138
    .line 1139
    .line 1140
    const/4 v13, 0x3

    .line 1141
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1142
    .line 1143
    .line 1144
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1145
    .line 1146
    move-object/from16 v95, v0

    .line 1147
    .line 1148
    const-string v5, "MakerNote"

    .line 1149
    .line 1150
    const v11, 0x927c

    .line 1151
    .line 1152
    .line 1153
    const/4 v13, 0x7

    .line 1154
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1155
    .line 1156
    .line 1157
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1158
    .line 1159
    move-object/from16 v96, v0

    .line 1160
    .line 1161
    const-string v5, "UserComment"

    .line 1162
    .line 1163
    const v11, 0x9286

    .line 1164
    .line 1165
    .line 1166
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1167
    .line 1168
    .line 1169
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1170
    .line 1171
    move-object/from16 v97, v0

    .line 1172
    .line 1173
    const-string v5, "SubSecTime"

    .line 1174
    .line 1175
    const v11, 0x9290

    .line 1176
    .line 1177
    .line 1178
    const/4 v13, 0x2

    .line 1179
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1180
    .line 1181
    .line 1182
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1183
    .line 1184
    move-object/from16 v98, v0

    .line 1185
    .line 1186
    const-string v5, "SubSecTimeOriginal"

    .line 1187
    .line 1188
    const v11, 0x9291

    .line 1189
    .line 1190
    .line 1191
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1192
    .line 1193
    .line 1194
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1195
    .line 1196
    move-object/from16 v99, v0

    .line 1197
    .line 1198
    const-string v5, "SubSecTimeDigitized"

    .line 1199
    .line 1200
    const v11, 0x9292

    .line 1201
    .line 1202
    .line 1203
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1204
    .line 1205
    .line 1206
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1207
    .line 1208
    move-object/from16 v100, v0

    .line 1209
    .line 1210
    const-string v5, "FlashpixVersion"

    .line 1211
    .line 1212
    const v11, 0xa000

    .line 1213
    .line 1214
    .line 1215
    const/4 v13, 0x7

    .line 1216
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1217
    .line 1218
    .line 1219
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1220
    .line 1221
    move-object/from16 v101, v0

    .line 1222
    .line 1223
    const-string v5, "ColorSpace"

    .line 1224
    .line 1225
    const v11, 0xa001

    .line 1226
    .line 1227
    .line 1228
    const/4 v13, 0x3

    .line 1229
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1230
    .line 1231
    .line 1232
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1233
    .line 1234
    move-object/from16 v102, v0

    .line 1235
    .line 1236
    const-string v5, "PixelXDimension"

    .line 1237
    .line 1238
    const v11, 0xa002

    .line 1239
    .line 1240
    .line 1241
    move-object/from16 v16, v7

    .line 1242
    .line 1243
    const/4 v7, 0x4

    .line 1244
    invoke-direct {v0, v5, v11, v13, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1245
    .line 1246
    .line 1247
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1248
    .line 1249
    move-object/from16 v103, v0

    .line 1250
    .line 1251
    const-string v5, "PixelYDimension"

    .line 1252
    .line 1253
    const v11, 0xa003

    .line 1254
    .line 1255
    .line 1256
    invoke-direct {v0, v5, v11, v13, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1260
    .line 1261
    move-object/from16 v104, v0

    .line 1262
    .line 1263
    const-string v5, "RelatedSoundFile"

    .line 1264
    .line 1265
    const v11, 0xa004

    .line 1266
    .line 1267
    .line 1268
    const/4 v13, 0x2

    .line 1269
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1270
    .line 1271
    .line 1272
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1273
    .line 1274
    move-object/from16 v105, v0

    .line 1275
    .line 1276
    const-string v5, "InteroperabilityIFDPointer"

    .line 1277
    .line 1278
    const v11, 0xa005

    .line 1279
    .line 1280
    .line 1281
    invoke-direct {v0, v5, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1282
    .line 1283
    .line 1284
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1285
    .line 1286
    move-object/from16 v106, v0

    .line 1287
    .line 1288
    const-string v5, "FlashEnergy"

    .line 1289
    .line 1290
    const v7, 0xa20b

    .line 1291
    .line 1292
    .line 1293
    const/4 v11, 0x5

    .line 1294
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1295
    .line 1296
    .line 1297
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1298
    .line 1299
    move-object/from16 v107, v0

    .line 1300
    .line 1301
    const-string v5, "SpatialFrequencyResponse"

    .line 1302
    .line 1303
    const v7, 0xa20c

    .line 1304
    .line 1305
    .line 1306
    const/4 v13, 0x7

    .line 1307
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1308
    .line 1309
    .line 1310
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1311
    .line 1312
    move-object/from16 v108, v0

    .line 1313
    .line 1314
    const-string v5, "FocalPlaneXResolution"

    .line 1315
    .line 1316
    const v7, 0xa20e

    .line 1317
    .line 1318
    .line 1319
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1320
    .line 1321
    .line 1322
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1323
    .line 1324
    move-object/from16 v109, v0

    .line 1325
    .line 1326
    const-string v5, "FocalPlaneYResolution"

    .line 1327
    .line 1328
    const v7, 0xa20f

    .line 1329
    .line 1330
    .line 1331
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1332
    .line 1333
    .line 1334
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1335
    .line 1336
    move-object/from16 v110, v0

    .line 1337
    .line 1338
    const-string v5, "FocalPlaneResolutionUnit"

    .line 1339
    .line 1340
    const v7, 0xa210

    .line 1341
    .line 1342
    .line 1343
    const/4 v11, 0x3

    .line 1344
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1345
    .line 1346
    .line 1347
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1348
    .line 1349
    move-object/from16 v111, v0

    .line 1350
    .line 1351
    const-string v5, "SubjectLocation"

    .line 1352
    .line 1353
    const v7, 0xa214

    .line 1354
    .line 1355
    .line 1356
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1357
    .line 1358
    .line 1359
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1360
    .line 1361
    move-object/from16 v112, v0

    .line 1362
    .line 1363
    const-string v5, "ExposureIndex"

    .line 1364
    .line 1365
    const v7, 0xa215

    .line 1366
    .line 1367
    .line 1368
    const/4 v13, 0x5

    .line 1369
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1370
    .line 1371
    .line 1372
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1373
    .line 1374
    move-object/from16 v113, v0

    .line 1375
    .line 1376
    const-string v5, "SensingMethod"

    .line 1377
    .line 1378
    const v7, 0xa217

    .line 1379
    .line 1380
    .line 1381
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1382
    .line 1383
    .line 1384
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1385
    .line 1386
    move-object/from16 v114, v0

    .line 1387
    .line 1388
    const-string v5, "FileSource"

    .line 1389
    .line 1390
    const v7, 0xa300

    .line 1391
    .line 1392
    .line 1393
    const/4 v11, 0x7

    .line 1394
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1395
    .line 1396
    .line 1397
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1398
    .line 1399
    move-object/from16 v115, v0

    .line 1400
    .line 1401
    const-string v5, "SceneType"

    .line 1402
    .line 1403
    const v7, 0xa301

    .line 1404
    .line 1405
    .line 1406
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1407
    .line 1408
    .line 1409
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1410
    .line 1411
    move-object/from16 v116, v0

    .line 1412
    .line 1413
    const-string v5, "CFAPattern"

    .line 1414
    .line 1415
    const v7, 0xa302

    .line 1416
    .line 1417
    .line 1418
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1419
    .line 1420
    .line 1421
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1422
    .line 1423
    move-object/from16 v117, v0

    .line 1424
    .line 1425
    const-string v5, "CustomRendered"

    .line 1426
    .line 1427
    const v7, 0xa401

    .line 1428
    .line 1429
    .line 1430
    const/4 v11, 0x3

    .line 1431
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1432
    .line 1433
    .line 1434
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1435
    .line 1436
    move-object/from16 v118, v0

    .line 1437
    .line 1438
    const-string v5, "ExposureMode"

    .line 1439
    .line 1440
    const v7, 0xa402

    .line 1441
    .line 1442
    .line 1443
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1444
    .line 1445
    .line 1446
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1447
    .line 1448
    move-object/from16 v119, v0

    .line 1449
    .line 1450
    const-string v5, "WhiteBalance"

    .line 1451
    .line 1452
    const v7, 0xa403

    .line 1453
    .line 1454
    .line 1455
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1456
    .line 1457
    .line 1458
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1459
    .line 1460
    move-object/from16 v120, v0

    .line 1461
    .line 1462
    const-string v5, "DigitalZoomRatio"

    .line 1463
    .line 1464
    const v7, 0xa404

    .line 1465
    .line 1466
    .line 1467
    const/4 v13, 0x5

    .line 1468
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1469
    .line 1470
    .line 1471
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1472
    .line 1473
    move-object/from16 v121, v0

    .line 1474
    .line 1475
    const-string v5, "FocalLengthIn35mmFilm"

    .line 1476
    .line 1477
    const v7, 0xa405

    .line 1478
    .line 1479
    .line 1480
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1481
    .line 1482
    .line 1483
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1484
    .line 1485
    move-object/from16 v122, v0

    .line 1486
    .line 1487
    const-string v5, "SceneCaptureType"

    .line 1488
    .line 1489
    const v7, 0xa406

    .line 1490
    .line 1491
    .line 1492
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1493
    .line 1494
    .line 1495
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1496
    .line 1497
    move-object/from16 v123, v0

    .line 1498
    .line 1499
    const-string v5, "GainControl"

    .line 1500
    .line 1501
    const v7, 0xa407

    .line 1502
    .line 1503
    .line 1504
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1505
    .line 1506
    .line 1507
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1508
    .line 1509
    move-object/from16 v124, v0

    .line 1510
    .line 1511
    const-string v5, "Contrast"

    .line 1512
    .line 1513
    const v7, 0xa408

    .line 1514
    .line 1515
    .line 1516
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1517
    .line 1518
    .line 1519
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1520
    .line 1521
    move-object/from16 v125, v0

    .line 1522
    .line 1523
    const-string v5, "Saturation"

    .line 1524
    .line 1525
    const v7, 0xa409

    .line 1526
    .line 1527
    .line 1528
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1529
    .line 1530
    .line 1531
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1532
    .line 1533
    move-object/from16 v126, v0

    .line 1534
    .line 1535
    const-string v5, "Sharpness"

    .line 1536
    .line 1537
    const v7, 0xa40a

    .line 1538
    .line 1539
    .line 1540
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1541
    .line 1542
    .line 1543
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1544
    .line 1545
    move-object/from16 v127, v0

    .line 1546
    .line 1547
    const-string v5, "DeviceSettingDescription"

    .line 1548
    .line 1549
    const v7, 0xa40b

    .line 1550
    .line 1551
    .line 1552
    const/4 v13, 0x7

    .line 1553
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1554
    .line 1555
    .line 1556
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1557
    .line 1558
    move-object/from16 v128, v0

    .line 1559
    .line 1560
    const-string v5, "SubjectDistanceRange"

    .line 1561
    .line 1562
    const v7, 0xa40c

    .line 1563
    .line 1564
    .line 1565
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1566
    .line 1567
    .line 1568
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1569
    .line 1570
    move-object/from16 v129, v0

    .line 1571
    .line 1572
    const-string v5, "ImageUniqueID"

    .line 1573
    .line 1574
    const v7, 0xa420

    .line 1575
    .line 1576
    .line 1577
    const/4 v11, 0x2

    .line 1578
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1579
    .line 1580
    .line 1581
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1582
    .line 1583
    move-object/from16 v130, v0

    .line 1584
    .line 1585
    const-string v5, "CameraOwnerName"

    .line 1586
    .line 1587
    const v7, 0xa430

    .line 1588
    .line 1589
    .line 1590
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1591
    .line 1592
    .line 1593
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1594
    .line 1595
    move-object/from16 v131, v0

    .line 1596
    .line 1597
    const-string v5, "BodySerialNumber"

    .line 1598
    .line 1599
    const v7, 0xa431

    .line 1600
    .line 1601
    .line 1602
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1603
    .line 1604
    .line 1605
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1606
    .line 1607
    move-object/from16 v132, v0

    .line 1608
    .line 1609
    const-string v5, "LensSpecification"

    .line 1610
    .line 1611
    const v7, 0xa432

    .line 1612
    .line 1613
    .line 1614
    const/4 v13, 0x5

    .line 1615
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1616
    .line 1617
    .line 1618
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1619
    .line 1620
    move-object/from16 v133, v0

    .line 1621
    .line 1622
    const-string v5, "LensMake"

    .line 1623
    .line 1624
    const v7, 0xa433

    .line 1625
    .line 1626
    .line 1627
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1628
    .line 1629
    .line 1630
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1631
    .line 1632
    move-object/from16 v134, v0

    .line 1633
    .line 1634
    const-string v5, "LensModel"

    .line 1635
    .line 1636
    const v7, 0xa434

    .line 1637
    .line 1638
    .line 1639
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1640
    .line 1641
    .line 1642
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1643
    .line 1644
    move-object/from16 v135, v0

    .line 1645
    .line 1646
    const-string v5, "Gamma"

    .line 1647
    .line 1648
    const v7, 0xa500

    .line 1649
    .line 1650
    .line 1651
    const/4 v11, 0x5

    .line 1652
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1653
    .line 1654
    .line 1655
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1656
    .line 1657
    move-object/from16 v136, v0

    .line 1658
    .line 1659
    const-string v5, "DNGVersion"

    .line 1660
    .line 1661
    const v7, 0xc612

    .line 1662
    .line 1663
    .line 1664
    const/4 v11, 0x1

    .line 1665
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1666
    .line 1667
    .line 1668
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1669
    .line 1670
    move-object/from16 v137, v0

    .line 1671
    .line 1672
    const-string v5, "DefaultCropSize"

    .line 1673
    .line 1674
    const v7, 0xc620

    .line 1675
    .line 1676
    .line 1677
    const/4 v11, 0x4

    .line 1678
    const/4 v13, 0x3

    .line 1679
    invoke-direct {v0, v5, v7, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1680
    .line 1681
    .line 1682
    filled-new-array/range {v64 .. v137}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v59

    .line 1686
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1687
    .line 1688
    move-object/from16 v17, v0

    .line 1689
    .line 1690
    const-string v5, "GPSVersionID"

    .line 1691
    .line 1692
    const/4 v7, 0x0

    .line 1693
    const/4 v11, 0x1

    .line 1694
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1695
    .line 1696
    .line 1697
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1698
    .line 1699
    move-object/from16 v18, v0

    .line 1700
    .line 1701
    const-string v5, "GPSLatitudeRef"

    .line 1702
    .line 1703
    const/4 v13, 0x2

    .line 1704
    invoke-direct {v0, v5, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1705
    .line 1706
    .line 1707
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1708
    .line 1709
    move-object/from16 v19, v0

    .line 1710
    .line 1711
    const-string v5, "GPSLatitude"

    .line 1712
    .line 1713
    const/16 v7, 0xa

    .line 1714
    .line 1715
    const/4 v11, 0x5

    .line 1716
    invoke-direct {v0, v5, v13, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1717
    .line 1718
    .line 1719
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1720
    .line 1721
    move-object/from16 v20, v0

    .line 1722
    .line 1723
    const-string v5, "GPSLongitudeRef"

    .line 1724
    .line 1725
    const/4 v7, 0x3

    .line 1726
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1727
    .line 1728
    .line 1729
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1730
    .line 1731
    move-object/from16 v21, v0

    .line 1732
    .line 1733
    const-string v5, "GPSLongitude"

    .line 1734
    .line 1735
    const/4 v7, 0x4

    .line 1736
    const/16 v13, 0xa

    .line 1737
    .line 1738
    invoke-direct {v0, v5, v7, v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1739
    .line 1740
    .line 1741
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1742
    .line 1743
    move-object/from16 v22, v0

    .line 1744
    .line 1745
    const-string v5, "GPSAltitudeRef"

    .line 1746
    .line 1747
    const/4 v7, 0x1

    .line 1748
    invoke-direct {v0, v5, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1749
    .line 1750
    .line 1751
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1752
    .line 1753
    move-object/from16 v23, v0

    .line 1754
    .line 1755
    const-string v5, "GPSAltitude"

    .line 1756
    .line 1757
    const/4 v7, 0x6

    .line 1758
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1759
    .line 1760
    .line 1761
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1762
    .line 1763
    move-object/from16 v24, v0

    .line 1764
    .line 1765
    const-string v5, "GPSTimeStamp"

    .line 1766
    .line 1767
    const/4 v7, 0x7

    .line 1768
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1769
    .line 1770
    .line 1771
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1772
    .line 1773
    move-object/from16 v25, v0

    .line 1774
    .line 1775
    const-string v5, "GPSSatellites"

    .line 1776
    .line 1777
    const/16 v7, 0x8

    .line 1778
    .line 1779
    const/4 v11, 0x2

    .line 1780
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1781
    .line 1782
    .line 1783
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1784
    .line 1785
    move-object/from16 v26, v0

    .line 1786
    .line 1787
    const-string v5, "GPSStatus"

    .line 1788
    .line 1789
    const/16 v7, 0x9

    .line 1790
    .line 1791
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1792
    .line 1793
    .line 1794
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1795
    .line 1796
    move-object/from16 v27, v0

    .line 1797
    .line 1798
    const-string v5, "GPSMeasureMode"

    .line 1799
    .line 1800
    const/16 v7, 0xa

    .line 1801
    .line 1802
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1803
    .line 1804
    .line 1805
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1806
    .line 1807
    move-object/from16 v28, v0

    .line 1808
    .line 1809
    const-string v5, "GPSDOP"

    .line 1810
    .line 1811
    const/16 v7, 0xb

    .line 1812
    .line 1813
    const/4 v13, 0x5

    .line 1814
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1815
    .line 1816
    .line 1817
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1818
    .line 1819
    move-object/from16 v29, v0

    .line 1820
    .line 1821
    const-string v5, "GPSSpeedRef"

    .line 1822
    .line 1823
    const/16 v7, 0xc

    .line 1824
    .line 1825
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1826
    .line 1827
    .line 1828
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1829
    .line 1830
    move-object/from16 v30, v0

    .line 1831
    .line 1832
    const-string v5, "GPSSpeed"

    .line 1833
    .line 1834
    const/16 v7, 0xd

    .line 1835
    .line 1836
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1837
    .line 1838
    .line 1839
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1840
    .line 1841
    move-object/from16 v31, v0

    .line 1842
    .line 1843
    const-string v5, "GPSTrackRef"

    .line 1844
    .line 1845
    const/16 v7, 0xe

    .line 1846
    .line 1847
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1848
    .line 1849
    .line 1850
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1851
    .line 1852
    move-object/from16 v32, v0

    .line 1853
    .line 1854
    const-string v5, "GPSTrack"

    .line 1855
    .line 1856
    const/16 v7, 0xf

    .line 1857
    .line 1858
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1859
    .line 1860
    .line 1861
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1862
    .line 1863
    move-object/from16 v33, v0

    .line 1864
    .line 1865
    const-string v5, "GPSImgDirectionRef"

    .line 1866
    .line 1867
    const/16 v7, 0x10

    .line 1868
    .line 1869
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1870
    .line 1871
    .line 1872
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1873
    .line 1874
    move-object/from16 v34, v0

    .line 1875
    .line 1876
    const-string v5, "GPSImgDirection"

    .line 1877
    .line 1878
    const/16 v7, 0x11

    .line 1879
    .line 1880
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1881
    .line 1882
    .line 1883
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1884
    .line 1885
    move-object/from16 v35, v0

    .line 1886
    .line 1887
    const-string v5, "GPSMapDatum"

    .line 1888
    .line 1889
    const/16 v7, 0x12

    .line 1890
    .line 1891
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1892
    .line 1893
    .line 1894
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1895
    .line 1896
    move-object/from16 v36, v0

    .line 1897
    .line 1898
    const-string v5, "GPSDestLatitudeRef"

    .line 1899
    .line 1900
    const/16 v7, 0x13

    .line 1901
    .line 1902
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1903
    .line 1904
    .line 1905
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1906
    .line 1907
    move-object/from16 v37, v0

    .line 1908
    .line 1909
    const-string v5, "GPSDestLatitude"

    .line 1910
    .line 1911
    const/16 v7, 0x14

    .line 1912
    .line 1913
    const/4 v13, 0x5

    .line 1914
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1915
    .line 1916
    .line 1917
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1918
    .line 1919
    move-object/from16 v38, v0

    .line 1920
    .line 1921
    const-string v5, "GPSDestLongitudeRef"

    .line 1922
    .line 1923
    const/16 v7, 0x15

    .line 1924
    .line 1925
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1926
    .line 1927
    .line 1928
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1929
    .line 1930
    move-object/from16 v39, v0

    .line 1931
    .line 1932
    const-string v5, "GPSDestLongitude"

    .line 1933
    .line 1934
    const/16 v7, 0x16

    .line 1935
    .line 1936
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1937
    .line 1938
    .line 1939
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1940
    .line 1941
    move-object/from16 v40, v0

    .line 1942
    .line 1943
    const-string v5, "GPSDestBearingRef"

    .line 1944
    .line 1945
    const/16 v7, 0x17

    .line 1946
    .line 1947
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1948
    .line 1949
    .line 1950
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1951
    .line 1952
    move-object/from16 v41, v0

    .line 1953
    .line 1954
    const-string v5, "GPSDestBearing"

    .line 1955
    .line 1956
    const/16 v7, 0x18

    .line 1957
    .line 1958
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1959
    .line 1960
    .line 1961
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1962
    .line 1963
    move-object/from16 v42, v0

    .line 1964
    .line 1965
    const-string v5, "GPSDestDistanceRef"

    .line 1966
    .line 1967
    const/16 v7, 0x19

    .line 1968
    .line 1969
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1970
    .line 1971
    .line 1972
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1973
    .line 1974
    move-object/from16 v43, v0

    .line 1975
    .line 1976
    const-string v5, "GPSDestDistance"

    .line 1977
    .line 1978
    const/16 v7, 0x1a

    .line 1979
    .line 1980
    invoke-direct {v0, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1981
    .line 1982
    .line 1983
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1984
    .line 1985
    move-object/from16 v44, v0

    .line 1986
    .line 1987
    const-string v5, "GPSProcessingMethod"

    .line 1988
    .line 1989
    const/16 v7, 0x1b

    .line 1990
    .line 1991
    const/4 v11, 0x7

    .line 1992
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1993
    .line 1994
    .line 1995
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1996
    .line 1997
    move-object/from16 v45, v0

    .line 1998
    .line 1999
    const-string v5, "GPSAreaInformation"

    .line 2000
    .line 2001
    const/16 v7, 0x1c

    .line 2002
    .line 2003
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2004
    .line 2005
    .line 2006
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2007
    .line 2008
    move-object/from16 v46, v0

    .line 2009
    .line 2010
    const-string v5, "GPSDateStamp"

    .line 2011
    .line 2012
    const/16 v7, 0x1d

    .line 2013
    .line 2014
    const/4 v11, 0x2

    .line 2015
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2016
    .line 2017
    .line 2018
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2019
    .line 2020
    move-object/from16 v47, v0

    .line 2021
    .line 2022
    const-string v5, "GPSDifferential"

    .line 2023
    .line 2024
    const/16 v7, 0x1e

    .line 2025
    .line 2026
    const/4 v11, 0x3

    .line 2027
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2028
    .line 2029
    .line 2030
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2031
    .line 2032
    move-object/from16 v48, v0

    .line 2033
    .line 2034
    const-string v5, "GPSHPositioningError"

    .line 2035
    .line 2036
    const/16 v7, 0x1f

    .line 2037
    .line 2038
    const/4 v11, 0x5

    .line 2039
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2040
    .line 2041
    .line 2042
    filled-new-array/range {v17 .. v48}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v60

    .line 2046
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2047
    .line 2048
    const-string v5, "InteroperabilityIndex"

    .line 2049
    .line 2050
    const/4 v7, 0x1

    .line 2051
    const/4 v11, 0x2

    .line 2052
    invoke-direct {v0, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2053
    .line 2054
    .line 2055
    filled-new-array {v0}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v61

    .line 2059
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2060
    .line 2061
    move-object/from16 v64, v0

    .line 2062
    .line 2063
    const/4 v5, 0x4

    .line 2064
    const/16 v7, 0xfe

    .line 2065
    .line 2066
    invoke-direct {v0, v12, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2067
    .line 2068
    .line 2069
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2070
    .line 2071
    move-object/from16 v65, v0

    .line 2072
    .line 2073
    const/16 v7, 0xff

    .line 2074
    .line 2075
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2076
    .line 2077
    .line 2078
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2079
    .line 2080
    move-object/from16 v66, v0

    .line 2081
    .line 2082
    const-string v6, "ThumbnailImageWidth"

    .line 2083
    .line 2084
    const/4 v7, 0x3

    .line 2085
    const/16 v11, 0x100

    .line 2086
    .line 2087
    invoke-direct {v0, v6, v11, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2088
    .line 2089
    .line 2090
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2091
    .line 2092
    move-object/from16 v67, v0

    .line 2093
    .line 2094
    const-string v6, "ThumbnailImageLength"

    .line 2095
    .line 2096
    const/16 v11, 0x101

    .line 2097
    .line 2098
    invoke-direct {v0, v6, v11, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2099
    .line 2100
    .line 2101
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2102
    .line 2103
    move-object/from16 v68, v0

    .line 2104
    .line 2105
    const-string v5, "BitsPerSample"

    .line 2106
    .line 2107
    const/16 v6, 0x102

    .line 2108
    .line 2109
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2110
    .line 2111
    .line 2112
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2113
    .line 2114
    move-object/from16 v69, v0

    .line 2115
    .line 2116
    const-string v5, "Compression"

    .line 2117
    .line 2118
    const/16 v6, 0x103

    .line 2119
    .line 2120
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2121
    .line 2122
    .line 2123
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2124
    .line 2125
    move-object/from16 v70, v0

    .line 2126
    .line 2127
    const-string v5, "PhotometricInterpretation"

    .line 2128
    .line 2129
    const/16 v6, 0x106

    .line 2130
    .line 2131
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2132
    .line 2133
    .line 2134
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2135
    .line 2136
    move-object/from16 v71, v0

    .line 2137
    .line 2138
    const-string v5, "ImageDescription"

    .line 2139
    .line 2140
    const/16 v6, 0x10e

    .line 2141
    .line 2142
    const/4 v7, 0x2

    .line 2143
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2144
    .line 2145
    .line 2146
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2147
    .line 2148
    move-object/from16 v72, v0

    .line 2149
    .line 2150
    const-string v5, "Make"

    .line 2151
    .line 2152
    const/16 v6, 0x10f

    .line 2153
    .line 2154
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2155
    .line 2156
    .line 2157
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2158
    .line 2159
    move-object/from16 v73, v0

    .line 2160
    .line 2161
    const-string v5, "Model"

    .line 2162
    .line 2163
    const/16 v6, 0x110

    .line 2164
    .line 2165
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2166
    .line 2167
    .line 2168
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2169
    .line 2170
    move-object/from16 v74, v0

    .line 2171
    .line 2172
    const/4 v5, 0x3

    .line 2173
    const/4 v6, 0x4

    .line 2174
    const/16 v7, 0x111

    .line 2175
    .line 2176
    invoke-direct {v0, v9, v7, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2177
    .line 2178
    .line 2179
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2180
    .line 2181
    move-object/from16 v75, v0

    .line 2182
    .line 2183
    const-string v6, "ThumbnailOrientation"

    .line 2184
    .line 2185
    const/16 v7, 0x112

    .line 2186
    .line 2187
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2188
    .line 2189
    .line 2190
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2191
    .line 2192
    move-object/from16 v76, v0

    .line 2193
    .line 2194
    const-string v6, "SamplesPerPixel"

    .line 2195
    .line 2196
    const/16 v7, 0x115

    .line 2197
    .line 2198
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2199
    .line 2200
    .line 2201
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2202
    .line 2203
    move-object/from16 v77, v0

    .line 2204
    .line 2205
    const-string v6, "RowsPerStrip"

    .line 2206
    .line 2207
    const/16 v7, 0x116

    .line 2208
    .line 2209
    const/4 v11, 0x4

    .line 2210
    invoke-direct {v0, v6, v7, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2211
    .line 2212
    .line 2213
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2214
    .line 2215
    move-object/from16 v78, v0

    .line 2216
    .line 2217
    const-string v6, "StripByteCounts"

    .line 2218
    .line 2219
    const/16 v7, 0x117

    .line 2220
    .line 2221
    invoke-direct {v0, v6, v7, v5, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2222
    .line 2223
    .line 2224
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2225
    .line 2226
    move-object/from16 v79, v0

    .line 2227
    .line 2228
    const-string v5, "XResolution"

    .line 2229
    .line 2230
    const/16 v6, 0x11a

    .line 2231
    .line 2232
    const/4 v7, 0x5

    .line 2233
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2234
    .line 2235
    .line 2236
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2237
    .line 2238
    move-object/from16 v80, v0

    .line 2239
    .line 2240
    const-string v5, "YResolution"

    .line 2241
    .line 2242
    const/16 v6, 0x11b

    .line 2243
    .line 2244
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2245
    .line 2246
    .line 2247
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2248
    .line 2249
    move-object/from16 v81, v0

    .line 2250
    .line 2251
    const-string v5, "PlanarConfiguration"

    .line 2252
    .line 2253
    const/16 v6, 0x11c

    .line 2254
    .line 2255
    const/4 v7, 0x3

    .line 2256
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2257
    .line 2258
    .line 2259
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2260
    .line 2261
    move-object/from16 v82, v0

    .line 2262
    .line 2263
    const-string v5, "ResolutionUnit"

    .line 2264
    .line 2265
    const/16 v6, 0x128

    .line 2266
    .line 2267
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2268
    .line 2269
    .line 2270
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2271
    .line 2272
    move-object/from16 v83, v0

    .line 2273
    .line 2274
    const-string v5, "TransferFunction"

    .line 2275
    .line 2276
    const/16 v6, 0x12d

    .line 2277
    .line 2278
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2279
    .line 2280
    .line 2281
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2282
    .line 2283
    move-object/from16 v84, v0

    .line 2284
    .line 2285
    const-string v5, "Software"

    .line 2286
    .line 2287
    const/16 v6, 0x131

    .line 2288
    .line 2289
    const/4 v7, 0x2

    .line 2290
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2291
    .line 2292
    .line 2293
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2294
    .line 2295
    move-object/from16 v85, v0

    .line 2296
    .line 2297
    const-string v5, "DateTime"

    .line 2298
    .line 2299
    const/16 v6, 0x132

    .line 2300
    .line 2301
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2302
    .line 2303
    .line 2304
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2305
    .line 2306
    move-object/from16 v86, v0

    .line 2307
    .line 2308
    const-string v5, "Artist"

    .line 2309
    .line 2310
    const/16 v6, 0x13b

    .line 2311
    .line 2312
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2313
    .line 2314
    .line 2315
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2316
    .line 2317
    move-object/from16 v87, v0

    .line 2318
    .line 2319
    const-string v5, "WhitePoint"

    .line 2320
    .line 2321
    const/16 v6, 0x13e

    .line 2322
    .line 2323
    const/4 v7, 0x5

    .line 2324
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2325
    .line 2326
    .line 2327
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2328
    .line 2329
    move-object/from16 v88, v0

    .line 2330
    .line 2331
    const-string v5, "PrimaryChromaticities"

    .line 2332
    .line 2333
    const/16 v6, 0x13f

    .line 2334
    .line 2335
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2336
    .line 2337
    .line 2338
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2339
    .line 2340
    move-object/from16 v89, v0

    .line 2341
    .line 2342
    const/4 v5, 0x4

    .line 2343
    const/16 v6, 0x14a

    .line 2344
    .line 2345
    invoke-direct {v0, v4, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2346
    .line 2347
    .line 2348
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2349
    .line 2350
    move-object/from16 v90, v0

    .line 2351
    .line 2352
    const-string v6, "JPEGInterchangeFormat"

    .line 2353
    .line 2354
    const/16 v7, 0x201

    .line 2355
    .line 2356
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2357
    .line 2358
    .line 2359
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2360
    .line 2361
    move-object/from16 v91, v0

    .line 2362
    .line 2363
    const-string v6, "JPEGInterchangeFormatLength"

    .line 2364
    .line 2365
    const/16 v7, 0x202

    .line 2366
    .line 2367
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2368
    .line 2369
    .line 2370
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2371
    .line 2372
    move-object/from16 v92, v0

    .line 2373
    .line 2374
    const-string v5, "YCbCrCoefficients"

    .line 2375
    .line 2376
    const/16 v6, 0x211

    .line 2377
    .line 2378
    const/4 v7, 0x5

    .line 2379
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2380
    .line 2381
    .line 2382
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2383
    .line 2384
    move-object/from16 v93, v0

    .line 2385
    .line 2386
    const-string v5, "YCbCrSubSampling"

    .line 2387
    .line 2388
    const/16 v6, 0x212

    .line 2389
    .line 2390
    const/4 v7, 0x3

    .line 2391
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2392
    .line 2393
    .line 2394
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2395
    .line 2396
    move-object/from16 v94, v0

    .line 2397
    .line 2398
    const-string v5, "YCbCrPositioning"

    .line 2399
    .line 2400
    const/16 v6, 0x213

    .line 2401
    .line 2402
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2403
    .line 2404
    .line 2405
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2406
    .line 2407
    move-object/from16 v95, v0

    .line 2408
    .line 2409
    const-string v5, "ReferenceBlackWhite"

    .line 2410
    .line 2411
    const/16 v6, 0x214

    .line 2412
    .line 2413
    const/4 v7, 0x5

    .line 2414
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2415
    .line 2416
    .line 2417
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2418
    .line 2419
    move-object/from16 v96, v0

    .line 2420
    .line 2421
    const-string v5, "Copyright"

    .line 2422
    .line 2423
    const v6, 0x8298

    .line 2424
    .line 2425
    .line 2426
    const/4 v7, 0x2

    .line 2427
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2428
    .line 2429
    .line 2430
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2431
    .line 2432
    move-object/from16 v97, v0

    .line 2433
    .line 2434
    const/4 v5, 0x4

    .line 2435
    const v6, 0x8769

    .line 2436
    .line 2437
    .line 2438
    invoke-direct {v0, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2439
    .line 2440
    .line 2441
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2442
    .line 2443
    move-object/from16 v98, v0

    .line 2444
    .line 2445
    const v6, 0x8825

    .line 2446
    .line 2447
    .line 2448
    invoke-direct {v0, v15, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2449
    .line 2450
    .line 2451
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2452
    .line 2453
    move-object/from16 v99, v0

    .line 2454
    .line 2455
    const-string v6, "DNGVersion"

    .line 2456
    .line 2457
    const v7, 0xc612

    .line 2458
    .line 2459
    .line 2460
    const/4 v11, 0x1

    .line 2461
    invoke-direct {v0, v6, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2462
    .line 2463
    .line 2464
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2465
    .line 2466
    move-object/from16 v100, v0

    .line 2467
    .line 2468
    const-string v6, "DefaultCropSize"

    .line 2469
    .line 2470
    const v7, 0xc620

    .line 2471
    .line 2472
    .line 2473
    const/4 v11, 0x3

    .line 2474
    invoke-direct {v0, v6, v7, v11, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2475
    .line 2476
    .line 2477
    filled-new-array/range {v64 .. v100}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v62

    .line 2481
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2482
    .line 2483
    const/16 v6, 0x111

    .line 2484
    .line 2485
    invoke-direct {v0, v9, v6, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2486
    .line 2487
    .line 2488
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2489
    .line 2490
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2491
    .line 2492
    const-string v6, "ThumbnailImage"

    .line 2493
    .line 2494
    const/4 v7, 0x7

    .line 2495
    const/16 v9, 0x100

    .line 2496
    .line 2497
    invoke-direct {v0, v6, v9, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2498
    .line 2499
    .line 2500
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2501
    .line 2502
    const-string v7, "CameraSettingsIFDPointer"

    .line 2503
    .line 2504
    const/16 v9, 0x2020

    .line 2505
    .line 2506
    invoke-direct {v6, v7, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2507
    .line 2508
    .line 2509
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2510
    .line 2511
    const-string v9, "ImageProcessingIFDPointer"

    .line 2512
    .line 2513
    const/16 v11, 0x2040

    .line 2514
    .line 2515
    invoke-direct {v7, v9, v11, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2516
    .line 2517
    .line 2518
    filled-new-array {v0, v6, v7}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2519
    .line 2520
    .line 2521
    move-result-object v64

    .line 2522
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2523
    .line 2524
    const-string v6, "PreviewImageStart"

    .line 2525
    .line 2526
    const/16 v7, 0x101

    .line 2527
    .line 2528
    invoke-direct {v0, v6, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2529
    .line 2530
    .line 2531
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2532
    .line 2533
    const-string v7, "PreviewImageLength"

    .line 2534
    .line 2535
    const/16 v9, 0x102

    .line 2536
    .line 2537
    invoke-direct {v6, v7, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2538
    .line 2539
    .line 2540
    filled-new-array {v0, v6}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v65

    .line 2544
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2545
    .line 2546
    const-string v5, "AspectFrame"

    .line 2547
    .line 2548
    const/16 v6, 0x1113

    .line 2549
    .line 2550
    const/4 v7, 0x3

    .line 2551
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2552
    .line 2553
    .line 2554
    filled-new-array {v0}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v66

    .line 2558
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2559
    .line 2560
    const-string v5, "ColorSpace"

    .line 2561
    .line 2562
    const/16 v6, 0x37

    .line 2563
    .line 2564
    invoke-direct {v0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2565
    .line 2566
    .line 2567
    filled-new-array {v0}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2568
    .line 2569
    .line 2570
    move-result-object v67

    .line 2571
    move-object/from16 v58, v63

    .line 2572
    .line 2573
    filled-new-array/range {v58 .. v67}, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v0

    .line 2577
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2578
    .line 2579
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2580
    .line 2581
    const/4 v5, 0x4

    .line 2582
    const/16 v6, 0x14a

    .line 2583
    .line 2584
    invoke-direct {v0, v4, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2585
    .line 2586
    .line 2587
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2588
    .line 2589
    const v6, 0x8769

    .line 2590
    .line 2591
    .line 2592
    invoke-direct {v4, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2593
    .line 2594
    .line 2595
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2596
    .line 2597
    const v6, 0x8825

    .line 2598
    .line 2599
    .line 2600
    invoke-direct {v2, v15, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2601
    .line 2602
    .line 2603
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2604
    .line 2605
    const-string v7, "InteroperabilityIFDPointer"

    .line 2606
    .line 2607
    const v9, 0xa005

    .line 2608
    .line 2609
    .line 2610
    invoke-direct {v6, v7, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2611
    .line 2612
    .line 2613
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2614
    .line 2615
    const-string v7, "CameraSettingsIFDPointer"

    .line 2616
    .line 2617
    const/16 v9, 0x2020

    .line 2618
    .line 2619
    const/4 v11, 0x1

    .line 2620
    invoke-direct {v5, v7, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2621
    .line 2622
    .line 2623
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2624
    .line 2625
    const-string v9, "ImageProcessingIFDPointer"

    .line 2626
    .line 2627
    const/16 v12, 0x2040

    .line 2628
    .line 2629
    invoke-direct {v7, v9, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2630
    .line 2631
    .line 2632
    move-object/from16 v17, v0

    .line 2633
    .line 2634
    move-object/from16 v18, v4

    .line 2635
    .line 2636
    move-object/from16 v19, v2

    .line 2637
    .line 2638
    move-object/from16 v20, v6

    .line 2639
    .line 2640
    move-object/from16 v21, v5

    .line 2641
    .line 2642
    move-object/from16 v22, v7

    .line 2643
    .line 2644
    filled-new-array/range {v17 .. v22}, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2645
    .line 2646
    .line 2647
    move-result-object v0

    .line 2648
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2649
    .line 2650
    const/16 v0, 0xa

    .line 2651
    .line 2652
    new-array v2, v0, [Ljava/util/HashMap;

    .line 2653
    .line 2654
    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2655
    .line 2656
    new-array v0, v0, [Ljava/util/HashMap;

    .line 2657
    .line 2658
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2659
    .line 2660
    new-instance v0, Ljava/util/HashSet;

    .line 2661
    .line 2662
    const-string v2, "DigitalZoomRatio"

    .line 2663
    .line 2664
    const-string v4, "ExposureTime"

    .line 2665
    .line 2666
    const-string v5, "FNumber"

    .line 2667
    .line 2668
    const-string v6, "SubjectDistance"

    .line 2669
    .line 2670
    const-string v7, "GPSTimeStamp"

    .line 2671
    .line 2672
    filled-new-array {v5, v2, v4, v6, v7}, [Ljava/lang/String;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v2

    .line 2676
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v2

    .line 2680
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2681
    .line 2682
    .line 2683
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 2684
    .line 2685
    new-instance v0, Ljava/util/HashMap;

    .line 2686
    .line 2687
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2688
    .line 2689
    .line 2690
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 2691
    .line 2692
    const-string v0, "US-ASCII"

    .line 2693
    .line 2694
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2695
    .line 2696
    .line 2697
    move-result-object v0

    .line 2698
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 2699
    .line 2700
    const-string v2, "Exif\u0000\u0000"

    .line 2701
    .line 2702
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2703
    .line 2704
    .line 2705
    move-result-object v2

    .line 2706
    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 2707
    .line 2708
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 2709
    .line 2710
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2711
    .line 2712
    .line 2713
    move-result-object v0

    .line 2714
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 2715
    .line 2716
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2717
    .line 2718
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2719
    .line 2720
    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss"

    .line 2721
    .line 2722
    .line 2723
    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2724
    .line 2725
    .line 2726
    const-string v4, "UTC"

    .line 2727
    .line 2728
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2729
    .line 2730
    .line 2731
    move-result-object v4

    .line 2732
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2733
    .line 2734
    .line 2735
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2736
    .line 2737
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    .line 2738
    .line 2739
    .line 2740
    invoke-direct {v0, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2741
    .line 2742
    .line 2743
    const-string v2, "UTC"

    .line 2744
    .line 2745
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2746
    .line 2747
    .line 2748
    move-result-object v2

    .line 2749
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2750
    .line 2751
    .line 2752
    const/4 v0, 0x0

    .line 2753
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2754
    .line 2755
    array-length v4, v2

    .line 2756
    if-ge v0, v4, :cond_1

    .line 2757
    .line 2758
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2759
    .line 2760
    new-instance v5, Ljava/util/HashMap;

    .line 2761
    .line 2762
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2763
    .line 2764
    .line 2765
    aput-object v5, v4, v0

    .line 2766
    .line 2767
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2768
    .line 2769
    new-instance v5, Ljava/util/HashMap;

    .line 2770
    .line 2771
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2772
    .line 2773
    .line 2774
    aput-object v5, v4, v0

    .line 2775
    .line 2776
    aget-object v2, v2, v0

    .line 2777
    .line 2778
    array-length v4, v2

    .line 2779
    const/4 v5, 0x0

    .line 2780
    :goto_1
    if-ge v5, v4, :cond_0

    .line 2781
    .line 2782
    aget-object v6, v2, v5

    .line 2783
    .line 2784
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2785
    .line 2786
    aget-object v7, v7, v0

    .line 2787
    .line 2788
    iget v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2789
    .line 2790
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v9

    .line 2794
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    .line 2796
    .line 2797
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2798
    .line 2799
    aget-object v7, v7, v0

    .line 2800
    .line 2801
    iget-object v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 2802
    .line 2803
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2804
    .line 2805
    .line 2806
    add-int/lit8 v5, v5, 0x1

    .line 2807
    .line 2808
    goto :goto_1

    .line 2809
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2810
    .line 2811
    goto :goto_0

    .line 2812
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 2813
    .line 2814
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2815
    .line 2816
    const/4 v4, 0x0

    .line 2817
    aget-object v4, v2, v4

    .line 2818
    .line 2819
    iget v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2820
    .line 2821
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2822
    .line 2823
    .line 2824
    move-result-object v4

    .line 2825
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2826
    .line 2827
    .line 2828
    const/4 v4, 0x1

    .line 2829
    aget-object v4, v2, v4

    .line 2830
    .line 2831
    iget v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2832
    .line 2833
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2834
    .line 2835
    .line 2836
    move-result-object v4

    .line 2837
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    .line 2839
    .line 2840
    const/4 v3, 0x2

    .line 2841
    aget-object v3, v2, v3

    .line 2842
    .line 2843
    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2844
    .line 2845
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v3

    .line 2849
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    .line 2851
    .line 2852
    const/4 v3, 0x3

    .line 2853
    aget-object v3, v2, v3

    .line 2854
    .line 2855
    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2856
    .line 2857
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2858
    .line 2859
    .line 2860
    move-result-object v3

    .line 2861
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    .line 2863
    .line 2864
    const/4 v1, 0x4

    .line 2865
    aget-object v1, v2, v1

    .line 2866
    .line 2867
    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2868
    .line 2869
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2870
    .line 2871
    .line 2872
    move-result-object v1

    .line 2873
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    .line 2875
    .line 2876
    const/4 v1, 0x5

    .line 2877
    aget-object v1, v2, v1

    .line 2878
    .line 2879
    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 2880
    .line 2881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2882
    .line 2883
    .line 2884
    move-result-object v1

    .line 2885
    move-object/from16 v2, v16

    .line 2886
    .line 2887
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    .line 2889
    .line 2890
    const-string v0, ".*[1-9].*"

    .line 2891
    .line 2892
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2893
    .line 2894
    .line 2895
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2896
    .line 2897
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2898
    .line 2899
    .line 2900
    move-result-object v0

    .line 2901
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 2902
    .line 2903
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2904
    .line 2905
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2906
    .line 2907
    .line 2908
    move-result-object v0

    .line 2909
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 2910
    .line 2911
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2912
    .line 2913
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2914
    .line 2915
    .line 2916
    move-result-object v0

    .line 2917
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 2918
    .line 2919
    return-void

    .line 2920
    nop

    .line 2921
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 2940
    .line 2941
    .line 2942
    .line 2943
    .line 2944
    .line 2945
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    nop

    .line 2953
    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    nop

    .line 2963
    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 2964
    .line 2965
    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    .line 2984
    .line 2985
    .line 2986
    .line 2987
    .line 2988
    .line 2989
    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    .line 3002
    .line 3003
    .line 3004
    .line 3005
    .line 3006
    .line 3007
    :array_d
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    .line 3014
    .line 3015
    .line 3016
    .line 3017
    .line 3018
    .line 3019
    .line 3020
    .line 3021
    .line 3022
    .line 3023
    .line 3024
    .line 3025
    .line 3026
    .line 3027
    .line 3028
    .line 3029
    .line 3030
    .line 3031
    .line 3032
    .line 3033
    .line 3034
    .line 3035
    .line 3036
    .line 3037
    .line 3038
    .line 3039
    .line 3040
    .line 3041
    .line 3042
    .line 3043
    .line 3044
    .line 3045
    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 15
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 16
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 18
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 21
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to duplicate file descriptor"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 23
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    .line 24
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 27
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 28
    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    .line 29
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 30
    :cond_2
    throw p0

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fileDescriptor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 35
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 36
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-eqz v1, :cond_1

    .line 39
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 40
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 41
    :cond_1
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_2

    .line 42
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 43
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 44
    :cond_2
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 45
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 47
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 48
    :cond_3
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 49
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 50
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 51
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputStream cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 9
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "filename cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, -0x1

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    aget-object v0, p0, v2

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, v4, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    :goto_0
    array-length v1, p0

    .line 43
    if-ge v3, v1, :cond_8

    .line 44
    .line 45
    aget-object v1, p0, v3

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/lang/Integer;

    .line 66
    .line 67
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v2, v6

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eq v4, v6, :cond_4

    .line 95
    .line 96
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Ljava/lang/Integer;

    .line 99
    .line 100
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Ljava/lang/Integer;

    .line 111
    .line 112
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move v1, v6

    .line 130
    :goto_3
    if-ne v2, v6, :cond_5

    .line 131
    .line 132
    if-ne v1, v6, :cond_5

    .line 133
    .line 134
    new-instance p0, Landroid/util/Pair;

    .line 135
    .line 136
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object p0

    .line 140
    :cond_5
    if-ne v2, v6, :cond_6

    .line 141
    .line 142
    new-instance v0, Landroid/util/Pair;

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    if-ne v1, v6, :cond_7

    .line 153
    .line 154
    new-instance v0, Landroid/util/Pair;

    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    return-object v0

    .line 167
    :cond_9
    const-string v0, "/"

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const-wide/16 v8, 0x0

    .line 174
    .line 175
    if-eqz v1, :cond_f

    .line 176
    .line 177
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    array-length v0, p0

    .line 182
    if-ne v0, v4, :cond_e

    .line 183
    .line 184
    :try_start_0
    aget-object v0, p0, v2

    .line 185
    .line 186
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    double-to-long v0, v0

    .line 191
    aget-object p0, p0, v3

    .line 192
    .line 193
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    double-to-long v2, v2

    .line 198
    cmp-long p0, v0, v8

    .line 199
    .line 200
    const/16 v4, 0xa

    .line 201
    .line 202
    if-ltz p0, :cond_d

    .line 203
    .line 204
    cmp-long p0, v2, v8

    .line 205
    .line 206
    if-gez p0, :cond_a

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_a
    const-wide/32 v8, 0x7fffffff

    .line 210
    .line 211
    .line 212
    cmp-long p0, v0, v8

    .line 213
    .line 214
    const/4 v0, 0x5

    .line 215
    if-gtz p0, :cond_c

    .line 216
    .line 217
    cmp-long p0, v2, v8

    .line 218
    .line 219
    if-lez p0, :cond_b

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_b
    new-instance p0, Landroid/util/Pair;

    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    .line 237
    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    return-object p0

    .line 246
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    .line 247
    .line 248
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 254
    .line 255
    return-object p0

    .line 256
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    .line 257
    .line 258
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-object p0

    .line 262
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    cmp-long v1, v1, v8

    .line 275
    .line 276
    const/4 v2, 0x4

    .line 277
    if-ltz v1, :cond_10

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 280
    .line 281
    .line 282
    move-result-wide v3

    .line 283
    const-wide/32 v10, 0xffff

    .line 284
    .line 285
    .line 286
    cmp-long v1, v3, v10

    .line 287
    .line 288
    if-gtz v1, :cond_10

    .line 289
    .line 290
    new-instance v0, Landroid/util/Pair;

    .line 291
    .line 292
    const/4 v1, 0x3

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-object v0

    .line 305
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 306
    .line 307
    .line 308
    move-result-wide v0

    .line 309
    cmp-long v0, v0, v8

    .line 310
    .line 311
    if-gez v0, :cond_11

    .line 312
    .line 313
    new-instance v0, Landroid/util/Pair;

    .line 314
    .line 315
    const/16 v1, 0x9

    .line 316
    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    return-object v0

    .line 325
    :cond_11
    new-instance v0, Landroid/util/Pair;

    .line 326
    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    .line 333
    .line 334
    return-object v0

    .line 335
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 336
    .line 337
    .line 338
    new-instance p0, Landroid/util/Pair;

    .line 339
    .line 340
    const/16 v0, 0xc

    .line 341
    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    .line 348
    .line 349
    return-object p0

    .line 350
    :catch_2
    new-instance p0, Landroid/util/Pair;

    .line 351
    .line 352
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    return-object p0
.end method

.method public static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catch_0
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "ExifInterface"

    .line 15
    .line 16
    const-string v0, "The file descriptor for the given input is not seekable"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Invalid byte order: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    if-eqz v2, :cond_3

    .line 53
    .line 54
    const-string/jumbo p0, "readExifSegment: Byte Align II"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final addDefaultValuesForCompatibility()V
    .locals 7

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    aget-object v3, v2, v1

    .line 40
    .line 41
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v0, "ImageLength"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    aget-object v3, v2, v1

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    const-string v0, "Orientation"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    aget-object v1, v2, v1

    .line 78
    .line 79
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    const-string v0, "LightSource"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    aget-object v1, v2, v1

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    invoke-static {v4, v5, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v0, "PhotographicSensitivity"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, p1

    .line 24
    :goto_0
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_1
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 27
    .line 28
    array-length v4, v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-ge v3, v4, :cond_3

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 33
    .line 34
    aget-object v4, v4, v3

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move-object v4, v5

    .line 49
    :goto_2
    if-eqz v4, :cond_9

    .line 50
    .line 51
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 60
    .line 61
    invoke-virtual {v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    const-string v0, "GPSTimeStamp"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    const/4 p1, 0x5

    .line 75
    iget v0, v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 76
    .line 77
    if-eq v0, p1, :cond_5

    .line 78
    .line 79
    const/16 p1, 0xa

    .line 80
    .line 81
    if-eq v0, p1, :cond_5

    .line 82
    .line 83
    const-string p0, "GPS Timestamp format is not rational. format="

    .line 84
    .line 85
    invoke-static {p0, v0, v1}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v5

    .line 89
    :cond_5
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 90
    .line 91
    invoke-virtual {v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 96
    .line 97
    if-eqz p0, :cond_7

    .line 98
    .line 99
    array-length p1, p0

    .line 100
    const/4 v0, 0x3

    .line 101
    if-eq p1, v0, :cond_6

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    aget-object p1, p0, v2

    .line 105
    .line 106
    iget-wide v0, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 107
    .line 108
    long-to-float v0, v0

    .line 109
    iget-wide v1, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 110
    .line 111
    long-to-float p1, v1

    .line 112
    div-float/2addr v0, p1

    .line 113
    float-to-int p1, v0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/4 v0, 0x1

    .line 119
    aget-object v0, p0, v0

    .line 120
    .line 121
    iget-wide v1, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 122
    .line 123
    long-to-float v1, v1

    .line 124
    iget-wide v2, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 125
    .line 126
    long-to-float v0, v2

    .line 127
    div-float/2addr v1, v0

    .line 128
    float-to-int v0, v1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/4 v1, 0x2

    .line 134
    aget-object p0, p0, v1

    .line 135
    .line 136
    iget-wide v1, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 137
    .line 138
    long-to-float v1, v1

    .line 139
    iget-wide v2, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 140
    .line 141
    long-to-float p0, v2

    .line 142
    div-float/2addr v1, p0

    .line 143
    float-to-int p0, v1

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const-string p1, "%02d:%02d:%02d"

    .line 153
    .line 154
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v0, "Invalid GPS Timestamp array. array="

    .line 162
    .line 163
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    return-object v5

    .line 181
    :cond_8
    :try_start_0
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 182
    .line 183
    invoke-virtual {v4, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 184
    .line 185
    .line 186
    move-result-wide p0

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-object p0

    .line 192
    :catch_0
    :cond_9
    return-object v5
.end method

.method public final getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Xmp"

    .line 6
    .line 7
    const-string/jumbo v3, "yes"

    .line 8
    .line 9
    .line 10
    const-string v4, "Heif meta: "

    .line 11
    .line 12
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    .line 13
    .line 14
    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$1;

    .line 18
    .line 19
    invoke-direct {v6, v0, v1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 23
    .line 24
    .line 25
    const/16 v6, 0x21

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/16 v7, 0x22

    .line 32
    .line 33
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const/16 v8, 0x1a

    .line 38
    .line 39
    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const/16 v9, 0x11

    .line 44
    .line 45
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    const/16 v3, 0x1d

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/16 v8, 0x1e

    .line 62
    .line 63
    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const/16 v9, 0x1f

    .line 68
    .line 69
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    const/16 v3, 0x12

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const/16 v8, 0x13

    .line 87
    .line 88
    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const/16 v9, 0x18

    .line 93
    .line 94
    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v3, 0x0

    .line 100
    move-object v8, v3

    .line 101
    move-object v9, v8

    .line 102
    :goto_0
    const/4 v10, 0x0

    .line 103
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    :try_start_1
    aget-object v12, v11, v10

    .line 108
    .line 109
    const-string v13, "ImageWidth"

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 116
    .line 117
    invoke-static {v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_2
    if-eqz v8, :cond_3

    .line 125
    .line 126
    aget-object v12, v11, v10

    .line 127
    .line 128
    const-string v13, "ImageLength"

    .line 129
    .line 130
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 135
    .line 136
    invoke-static {v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_3
    const/4 v12, 0x6

    .line 144
    if-eqz v9, :cond_7

    .line 145
    .line 146
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    const/16 v14, 0x5a

    .line 151
    .line 152
    if-eq v13, v14, :cond_6

    .line 153
    .line 154
    const/16 v14, 0xb4

    .line 155
    .line 156
    if-eq v13, v14, :cond_5

    .line 157
    .line 158
    const/16 v14, 0x10e

    .line 159
    .line 160
    if-eq v13, v14, :cond_4

    .line 161
    .line 162
    const/4 v13, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_4
    const/16 v13, 0x8

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    const/4 v13, 0x3

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    move v13, v12

    .line 170
    :goto_1
    aget-object v14, v11, v10

    .line 171
    .line 172
    const-string v15, "Orientation"

    .line 173
    .line 174
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 175
    .line 176
    invoke-static {v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_7
    if-eqz v6, :cond_a

    .line 184
    .line 185
    if-eqz v7, :cond_a

    .line 186
    .line 187
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-le v7, v12, :cond_9

    .line 196
    .line 197
    int-to-long v13, v6

    .line 198
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 199
    .line 200
    .line 201
    new-array v10, v12, [B

    .line 202
    .line 203
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 204
    .line 205
    .line 206
    add-int/2addr v6, v12

    .line 207
    add-int/lit8 v7, v7, -0x6

    .line 208
    .line 209
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 210
    .line 211
    invoke-static {v10, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_8

    .line 216
    .line 217
    new-array v7, v7, [B

    .line 218
    .line 219
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 220
    .line 221
    .line 222
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    invoke-virtual {v0, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 230
    .line 231
    const-string v1, "Invalid identifier"

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 238
    .line 239
    const-string v1, "Invalid exif length"

    .line 240
    .line 241
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_a
    :goto_2
    const/16 v6, 0x29

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    const/16 v7, 0x2a

    .line 252
    .line 253
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    if-eqz v6, :cond_b

    .line 258
    .line 259
    if-eqz v7, :cond_b

    .line 260
    .line 261
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    int-to-long v12, v6

    .line 270
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 271
    .line 272
    .line 273
    new-array v6, v7, [B

    .line 274
    .line 275
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-nez v0, :cond_b

    .line 283
    .line 284
    const/4 v0, 0x0

    .line 285
    aget-object v0, v11, v0

    .line 286
    .line 287
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 288
    .line 289
    const/16 v17, 0x1

    .line 290
    .line 291
    move-object/from16 v16, v1

    .line 292
    .line 293
    move/from16 v18, v7

    .line 294
    .line 295
    move-wide/from16 v19, v12

    .line 296
    .line 297
    move-object/from16 v21, v6

    .line 298
    .line 299
    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    :cond_b
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 306
    .line 307
    if-eqz v0, :cond_c

    .line 308
    .line 309
    const-string v0, "ExifInterface"

    .line 310
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string/jumbo v2, "x"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, ", rotation "

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .line 342
    .line 343
    :cond_c
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    .line 345
    .line 346
    :catch_0
    return-void

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    goto :goto_3

    .line 349
    :catch_1
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 350
    .line 351
    const-string v1, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 358
    .line 359
    .line 360
    :catch_2
    throw v0
.end method

.method public final getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iput-object v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, -0x1

    .line 39
    const-string v7, "Invalid marker: "

    .line 40
    .line 41
    if-ne v5, v6, :cond_18

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const/16 v9, -0x28

    .line 48
    .line 49
    if-ne v8, v9, :cond_17

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    move v7, v5

    .line 53
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, v6, :cond_16

    .line 58
    .line 59
    const/4 v8, 0x1

    .line 60
    add-int/2addr v7, v8

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v11, "Found JPEG segment indicator: "

    .line 70
    .line 71
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    and-int/lit16 v11, v9, 0xff

    .line 75
    .line 76
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_1
    add-int/2addr v7, v8

    .line 91
    const/16 v10, -0x27

    .line 92
    .line 93
    if-eq v9, v10, :cond_15

    .line 94
    .line 95
    const/16 v10, -0x26

    .line 96
    .line 97
    if-ne v9, v10, :cond_2

    .line 98
    .line 99
    goto/16 :goto_c

    .line 100
    .line 101
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    sub-int/2addr v10, v5

    .line 106
    add-int/2addr v7, v5

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v12, "JPEG segment: "

    .line 112
    .line 113
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    and-int/lit16 v12, v9, 0xff

    .line 117
    .line 118
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v12, " (length: "

    .line 126
    .line 127
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v12, v10, 0x2

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v12, ")"

    .line 136
    .line 137
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_3
    const-string v11, "Invalid length"

    .line 148
    .line 149
    if-ltz v10, :cond_14

    .line 150
    .line 151
    const/4 v12, 0x0

    .line 152
    const/16 v13, -0x1f

    .line 153
    .line 154
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 155
    .line 156
    if-eq v9, v13, :cond_7

    .line 157
    .line 158
    const/4 v13, -0x2

    .line 159
    if-eq v9, v13, :cond_6

    .line 160
    .line 161
    packed-switch v9, :pswitch_data_0

    .line 162
    .line 163
    .line 164
    packed-switch v9, :pswitch_data_1

    .line 165
    .line 166
    .line 167
    packed-switch v9, :pswitch_data_2

    .line 168
    .line 169
    .line 170
    packed-switch v9, :pswitch_data_3

    .line 171
    .line 172
    .line 173
    goto/16 :goto_b

    .line 174
    .line 175
    :pswitch_0
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 176
    .line 177
    .line 178
    aget-object v8, v14, v2

    .line 179
    .line 180
    const/4 v9, 0x4

    .line 181
    if-eq v2, v9, :cond_4

    .line 182
    .line 183
    const-string v12, "ImageLength"

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    const-string v12, "ThumbnailImageLength"

    .line 187
    .line 188
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    int-to-long v5, v13

    .line 193
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 194
    .line 195
    invoke-static {v5, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v8, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    aget-object v5, v14, v2

    .line 203
    .line 204
    if-eq v2, v9, :cond_5

    .line 205
    .line 206
    const-string v6, "ImageWidth"

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_5
    const-string v6, "ThumbnailImageWidth"

    .line 210
    .line 211
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    int-to-long v8, v8

    .line 216
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 217
    .line 218
    invoke-static {v8, v9, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    add-int/lit8 v10, v10, -0x5

    .line 226
    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    :cond_6
    new-array v5, v10, [B

    .line 230
    .line 231
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 232
    .line 233
    .line 234
    const-string v6, "UserComment"

    .line 235
    .line 236
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    if-nez v9, :cond_12

    .line 241
    .line 242
    aget-object v8, v14, v8

    .line 243
    .line 244
    new-instance v9, Ljava/lang/String;

    .line 245
    .line 246
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 247
    .line 248
    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    goto/16 :goto_a

    .line 259
    .line 260
    :cond_7
    new-array v5, v10, [B

    .line 261
    .line 262
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 263
    .line 264
    .line 265
    add-int v6, v7, v10

    .line 266
    .line 267
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 268
    .line 269
    if-nez v9, :cond_8

    .line 270
    .line 271
    :goto_3
    move v8, v12

    .line 272
    goto :goto_5

    .line 273
    :cond_8
    array-length v13, v9

    .line 274
    if-ge v10, v13, :cond_9

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    move v13, v12

    .line 278
    :goto_4
    array-length v15, v9

    .line 279
    if-ge v13, v15, :cond_b

    .line 280
    .line 281
    aget-byte v15, v5, v13

    .line 282
    .line 283
    aget-byte v8, v9, v13

    .line 284
    .line 285
    if-eq v15, v8, :cond_a

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 289
    .line 290
    const/4 v8, 0x1

    .line 291
    goto :goto_4

    .line 292
    :cond_b
    const/4 v8, 0x1

    .line 293
    :goto_5
    if-eqz v8, :cond_c

    .line 294
    .line 295
    array-length v8, v9

    .line 296
    invoke-static {v5, v8, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    add-int v7, p2, v7

    .line 301
    .line 302
    array-length v8, v9

    .line 303
    add-int/2addr v7, v8

    .line 304
    iput v7, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 305
    .line 306
    invoke-virtual {v0, v2, v5}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 307
    .line 308
    .line 309
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 310
    .line 311
    invoke-direct {v7, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 315
    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_c
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 319
    .line 320
    if-nez v8, :cond_d

    .line 321
    .line 322
    :goto_6
    move v9, v12

    .line 323
    goto :goto_8

    .line 324
    :cond_d
    array-length v9, v8

    .line 325
    if-ge v10, v9, :cond_e

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_e
    move v9, v12

    .line 329
    :goto_7
    array-length v13, v8

    .line 330
    if-ge v9, v13, :cond_10

    .line 331
    .line 332
    aget-byte v13, v5, v9

    .line 333
    .line 334
    aget-byte v15, v8, v9

    .line 335
    .line 336
    if-eq v13, v15, :cond_f

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_10
    const/4 v9, 0x1

    .line 343
    :goto_8
    if-eqz v9, :cond_11

    .line 344
    .line 345
    array-length v9, v8

    .line 346
    add-int/2addr v9, v7

    .line 347
    array-length v7, v8

    .line 348
    invoke-static {v5, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    const-string v7, "Xmp"

    .line 353
    .line 354
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    if-nez v8, :cond_11

    .line 359
    .line 360
    aget-object v8, v14, v12

    .line 361
    .line 362
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 363
    .line 364
    const/16 v17, 0x1

    .line 365
    .line 366
    array-length v13, v5

    .line 367
    int-to-long v14, v9

    .line 368
    move-object/from16 v16, v10

    .line 369
    .line 370
    move/from16 v18, v13

    .line 371
    .line 372
    move-wide/from16 v19, v14

    .line 373
    .line 374
    move-object/from16 v21, v5

    .line 375
    .line 376
    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    const/4 v5, 0x1

    .line 383
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    .line 384
    .line 385
    :cond_11
    :goto_9
    move v7, v6

    .line 386
    :cond_12
    :goto_a
    move v10, v12

    .line 387
    :goto_b
    if-ltz v10, :cond_13

    .line 388
    .line 389
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 390
    .line 391
    .line 392
    add-int/2addr v7, v10

    .line 393
    const/4 v5, 0x2

    .line 394
    const/4 v6, -0x1

    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 398
    .line 399
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 404
    .line 405
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :cond_15
    :goto_c
    iget-object v0, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 410
    .line 411
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 412
    .line 413
    return-void

    .line 414
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 415
    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v2, "Invalid marker:"

    .line 419
    .line 420
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    and-int/lit16 v2, v8, 0xff

    .line 424
    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v0

    .line 440
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 441
    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    and-int/lit16 v2, v5, 0xff

    .line 448
    .line 449
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_18
    new-instance v0, Ljava/io/IOException;

    .line 465
    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    and-int/lit16 v2, v5, 0xff

    .line 472
    .line 473
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0

    .line 488
    nop

    .line 489
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move v0, v4

    .line 20
    :goto_0
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 21
    .line 22
    array-length v6, v5

    .line 23
    if-ge v0, v6, :cond_1

    .line 24
    .line 25
    aget-byte v6, v3, v0

    .line 26
    .line 27
    aget-byte v5, v5, v0

    .line 28
    .line 29
    if-eq v6, v5, :cond_0

    .line 30
    .line 31
    move v0, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_1
    const/4 v5, 0x4

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return v5

    .line 41
    :cond_2
    const-string v0, "FUJIFILMCCD-RAW"

    .line 42
    .line 43
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move v6, v4

    .line 52
    :goto_2
    array-length v8, v0

    .line 53
    if-ge v6, v8, :cond_4

    .line 54
    .line 55
    aget-byte v8, v3, v6

    .line 56
    .line 57
    aget-byte v9, v0, v6

    .line 58
    .line 59
    if-eq v8, v9, :cond_3

    .line 60
    .line 61
    move v0, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/4 v0, 0x1

    .line 67
    :goto_3
    if-eqz v0, :cond_5

    .line 68
    .line 69
    const/16 v0, 0x9

    .line 70
    .line 71
    return v0

    .line 72
    :cond_5
    :try_start_0
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 73
    .line 74
    invoke-direct {v8, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    int-to-long v9, v0

    .line 82
    new-array v0, v5, [B

    .line 83
    .line 84
    invoke-virtual {v8, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 85
    .line 86
    .line 87
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 88
    .line 89
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_6
    const-wide/16 v11, 0x1

    .line 98
    .line 99
    cmp-long v0, v9, v11

    .line 100
    .line 101
    const-wide/16 v13, 0x8

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    const-wide/16 v15, 0x10

    .line 110
    .line 111
    cmp-long v0, v9, v15

    .line 112
    .line 113
    if-gez v0, :cond_8

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_7
    move-wide v15, v13

    .line 117
    :cond_8
    int-to-long v6, v2

    .line 118
    cmp-long v0, v9, v6

    .line 119
    .line 120
    if-lez v0, :cond_9

    .line 121
    .line 122
    move-wide v9, v6

    .line 123
    :cond_9
    sub-long/2addr v9, v15

    .line 124
    cmp-long v0, v9, v13

    .line 125
    .line 126
    if-gez v0, :cond_a

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_a
    new-array v0, v5, [B

    .line 130
    .line 131
    const-wide/16 v6, 0x0

    .line 132
    .line 133
    move v2, v4

    .line 134
    move v13, v2

    .line 135
    :goto_4
    const-wide/16 v14, 0x4

    .line 136
    .line 137
    div-long v14, v9, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    cmp-long v14, v6, v14

    .line 140
    .line 141
    if-gez v14, :cond_10

    .line 142
    .line 143
    :try_start_2
    invoke-virtual {v8, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    cmp-long v14, v6, v11

    .line 147
    .line 148
    if-nez v14, :cond_b

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_b
    :try_start_3
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 152
    .line 153
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    if-eqz v14, :cond_c

    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    goto :goto_5

    .line 161
    :cond_c
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 162
    .line 163
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 164
    .line 165
    .line 166
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v14, :cond_d

    .line 168
    .line 169
    const/4 v13, 0x1

    .line 170
    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 171
    .line 172
    if-eqz v13, :cond_e

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 175
    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    goto :goto_9

    .line 179
    :cond_e
    :goto_6
    add-long/2addr v6, v11

    .line 180
    goto :goto_4

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto/16 :goto_19

    .line 183
    .line 184
    :catch_0
    move-exception v0

    .line 185
    goto :goto_7

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    const/4 v6, 0x0

    .line 188
    goto/16 :goto_18

    .line 189
    .line 190
    :catch_1
    move-exception v0

    .line 191
    const/4 v8, 0x0

    .line 192
    :goto_7
    :try_start_4
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 193
    .line 194
    if-eqz v2, :cond_f

    .line 195
    .line 196
    const-string v2, "ExifInterface"

    .line 197
    .line 198
    const-string v6, "Exception parsing HEIF file type box."

    .line 199
    .line 200
    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 201
    .line 202
    .line 203
    :cond_f
    if-eqz v8, :cond_11

    .line 204
    .line 205
    :catch_2
    :cond_10
    :goto_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 206
    .line 207
    .line 208
    :cond_11
    move v0, v4

    .line 209
    :goto_9
    if-eqz v0, :cond_12

    .line 210
    .line 211
    const/16 v0, 0xc

    .line 212
    .line 213
    return v0

    .line 214
    :cond_12
    :try_start_5
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 215
    .line 216
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 217
    .line 218
    .line 219
    :try_start_6
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 224
    .line 225
    iput-object v0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 226
    .line 227
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 228
    .line 229
    .line 230
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 231
    const/16 v6, 0x4f52

    .line 232
    .line 233
    if-eq v0, v6, :cond_14

    .line 234
    .line 235
    const/16 v6, 0x5352

    .line 236
    .line 237
    if-ne v0, v6, :cond_13

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_13
    move v0, v4

    .line 241
    goto :goto_b

    .line 242
    :cond_14
    :goto_a
    const/4 v0, 0x1

    .line 243
    :goto_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 244
    .line 245
    .line 246
    goto :goto_d

    .line 247
    :catchall_2
    move-exception v0

    .line 248
    move-object v6, v2

    .line 249
    goto :goto_c

    .line 250
    :catchall_3
    move-exception v0

    .line 251
    const/4 v6, 0x0

    .line 252
    :goto_c
    if-eqz v6, :cond_15

    .line 253
    .line 254
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 255
    .line 256
    .line 257
    :cond_15
    throw v0

    .line 258
    :catch_3
    const/4 v2, 0x0

    .line 259
    :catch_4
    if-eqz v2, :cond_16

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 262
    .line 263
    .line 264
    :cond_16
    move v0, v4

    .line 265
    :goto_d
    if-eqz v0, :cond_17

    .line 266
    .line 267
    const/4 v0, 0x7

    .line 268
    return v0

    .line 269
    :cond_17
    :try_start_7
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 270
    .line 271
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 272
    .line 273
    .line 274
    :try_start_8
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 279
    .line 280
    iput-object v0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 281
    .line 282
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 283
    .line 284
    .line 285
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 286
    const/16 v1, 0x55

    .line 287
    .line 288
    if-ne v0, v1, :cond_18

    .line 289
    .line 290
    const/4 v0, 0x1

    .line 291
    goto :goto_e

    .line 292
    :cond_18
    move v0, v4

    .line 293
    :goto_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 294
    .line 295
    .line 296
    goto :goto_11

    .line 297
    :catchall_4
    move-exception v0

    .line 298
    move-object v6, v2

    .line 299
    goto :goto_f

    .line 300
    :catch_5
    move-object v6, v2

    .line 301
    goto :goto_10

    .line 302
    :catchall_5
    move-exception v0

    .line 303
    const/4 v6, 0x0

    .line 304
    :goto_f
    if-eqz v6, :cond_19

    .line 305
    .line 306
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 307
    .line 308
    .line 309
    :cond_19
    throw v0

    .line 310
    :catch_6
    const/4 v6, 0x0

    .line 311
    :goto_10
    if-eqz v6, :cond_1a

    .line 312
    .line 313
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 314
    .line 315
    .line 316
    :cond_1a
    move v0, v4

    .line 317
    :goto_11
    if-eqz v0, :cond_1b

    .line 318
    .line 319
    const/16 v0, 0xa

    .line 320
    .line 321
    return v0

    .line 322
    :cond_1b
    move v0, v4

    .line 323
    :goto_12
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 324
    .line 325
    array-length v2, v1

    .line 326
    if-ge v0, v2, :cond_1d

    .line 327
    .line 328
    aget-byte v2, v3, v0

    .line 329
    .line 330
    aget-byte v1, v1, v0

    .line 331
    .line 332
    if-eq v2, v1, :cond_1c

    .line 333
    .line 334
    move v0, v4

    .line 335
    goto :goto_13

    .line 336
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 337
    .line 338
    goto :goto_12

    .line 339
    :cond_1d
    const/4 v0, 0x1

    .line 340
    :goto_13
    if-eqz v0, :cond_1e

    .line 341
    .line 342
    const/16 v0, 0xd

    .line 343
    .line 344
    return v0

    .line 345
    :cond_1e
    move v0, v4

    .line 346
    :goto_14
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 347
    .line 348
    array-length v2, v1

    .line 349
    if-ge v0, v2, :cond_20

    .line 350
    .line 351
    aget-byte v2, v3, v0

    .line 352
    .line 353
    aget-byte v1, v1, v0

    .line 354
    .line 355
    if-eq v2, v1, :cond_1f

    .line 356
    .line 357
    goto :goto_16

    .line 358
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    .line 359
    .line 360
    goto :goto_14

    .line 361
    :cond_20
    move v0, v4

    .line 362
    :goto_15
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 363
    .line 364
    array-length v6, v2

    .line 365
    if-ge v0, v6, :cond_22

    .line 366
    .line 367
    array-length v6, v1

    .line 368
    add-int/2addr v6, v0

    .line 369
    add-int/2addr v6, v5

    .line 370
    aget-byte v6, v3, v6

    .line 371
    .line 372
    aget-byte v2, v2, v0

    .line 373
    .line 374
    if-eq v6, v2, :cond_21

    .line 375
    .line 376
    :goto_16
    move v7, v4

    .line 377
    goto :goto_17

    .line 378
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 379
    .line 380
    goto :goto_15

    .line 381
    :cond_22
    const/4 v7, 0x1

    .line 382
    :goto_17
    if-eqz v7, :cond_23

    .line 383
    .line 384
    const/16 v0, 0xe

    .line 385
    .line 386
    return v0

    .line 387
    :cond_23
    return v4

    .line 388
    :catchall_6
    move-exception v0

    .line 389
    move-object v6, v8

    .line 390
    :goto_18
    move-object v8, v6

    .line 391
    :goto_19
    if-eqz v8, :cond_24

    .line 392
    .line 393
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 394
    .line 395
    .line 396
    :cond_24
    throw v0
.end method

.method public final getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-wide/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    const-string v3, "PreviewImageStart"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 88
    .line 89
    aget-object v1, p1, v1

    .line 90
    .line 91
    const-string v3, "PreviewImageLength"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    .line 106
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    aget-object v2, p1, v3

    .line 112
    .line 113
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    const/16 v1, 0x8

    .line 119
    .line 120
    aget-object v1, p1, v1

    .line 121
    .line 122
    const-string v2, "AspectFrame"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    .line 153
    if-le v2, v4, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    .line 158
    aget v1, v1, v0

    .line 159
    .line 160
    if-le v5, v1, :cond_6

    .line 161
    .line 162
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    .line 168
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 173
    .line 174
    invoke-static {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v5, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    aget-object v1, p1, v3

    .line 185
    .line 186
    const-string v2, "ImageWidth"

    .line 187
    .line 188
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    aget-object p1, p1, v3

    .line 192
    .line 193
    const-string v0, "ImageLength"

    .line 194
    .line 195
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string p1, "Invalid aspect frame values. frame="

    .line 202
    .line 203
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string p1, "ExifInterface"

    .line 218
    .line 219
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_6
    :goto_2
    return-void
.end method

.method public final getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getPngAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 32
    .line 33
    .line 34
    array-length v0, v0

    .line 35
    const/4 v1, 0x0

    .line 36
    add-int/2addr v0, v1

    .line 37
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x4

    .line 42
    add-int/2addr v0, v3

    .line 43
    new-array v4, v3, [B

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 46
    .line 47
    .line 48
    add-int/2addr v0, v3

    .line 49
    const/16 v3, 0x10

    .line 50
    .line 51
    if-ne v0, v3, :cond_2

    .line 52
    .line 53
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 54
    .line 55
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 63
    .line 64
    const-string p1, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_1
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 71
    .line 72
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 80
    .line 81
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    new-array v2, v2, [B

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    new-instance v3, Ljava/util/zip/CRC32;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    long-to-int v4, v4

    .line 112
    if-ne v4, p1, :cond_4

    .line 113
    .line 114
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 115
    .line 116
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 120
    .line 121
    .line 122
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 123
    .line 124
    invoke-direct {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    return-void

    .line 131
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, ", calculated CRC value: "

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_5
    add-int/lit8 v2, v2, 0x4

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    add-int/2addr v0, v2

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :catch_0
    new-instance p0, Ljava/io/IOException;

    .line 175
    .line 176
    const-string p1, "Encountered corrupt PNG file."

    .line 177
    .line 178
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public final getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 72
    .line 73
    sub-int v5, v3, v5

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 82
    .line 83
    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    invoke-virtual {p0, v5, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 88
    .line 89
    .line 90
    iget v3, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 91
    .line 92
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    .line 98
    iput-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    const-string/jumbo v3, "numberOfDirectoryEntry: "

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    const/4 v3, 0x0

    .line 113
    move v4, v3

    .line 114
    :goto_0
    if-ge v4, v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 125
    .line 126
    iget v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 127
    .line 128
    if-ne v5, v7, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 145
    .line 146
    invoke-static {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 151
    .line 152
    aget-object v6, p0, v3

    .line 153
    .line 154
    const-string v7, "ImageLength"

    .line 155
    .line 156
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    aget-object p0, p0, v3

    .line 160
    .line 161
    const-string v3, "ImageWidth"

    .line 162
    .line 163
    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    if-eqz v1, :cond_2

    .line 167
    .line 168
    const-string p0, "Updated to length: "

    .line 169
    .line 170
    const-string v1, ", width: "

    .line 171
    .line 172
    invoke-static {p0, v2, v1, p1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    return-void

    .line 176
    :cond_3
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_4
    return-void
.end method

.method public final getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 61
    .line 62
    .line 63
    aget-object p0, p1, v1

    .line 64
    .line 65
    const-string v1, "ColorSpace"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 72
    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 43
    .line 44
    iget-object v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object p0, p1, v0

    .line 57
    .line 58
    const-string v0, "ISO"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aget-object v1, p1, v0

    .line 68
    .line 69
    const-string v2, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v0

    .line 82
    .line 83
    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z
    .locals 6

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "ExifInterface"

    .line 17
    .line 18
    const-string p1, "Given data is not EXIF-only."

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/16 v1, 0x400

    .line 25
    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    move v3, v2

    .line 29
    :goto_0
    array-length v4, v1

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    array-length v4, v1

    .line 33
    mul-int/lit8 v4, v4, 0x2

    .line 34
    .line 35
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    iget-object v4, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 40
    .line 41
    array-length v5, v1

    .line 42
    sub-int/2addr v5, v3

    .line 43
    invoke-virtual {v4, v1, v3, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, -0x1

    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    add-int/2addr v3, v4

    .line 51
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 52
    .line 53
    add-int/2addr v5, v4

    .line 54
    iput v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    array-length v0, v0

    .line 62
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 63
    .line 64
    invoke-virtual {p0, v2, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    return p0
.end method

.method public final getThumbnailBytes()[B
    .locals 8

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 25
    .line 26
    .line 27
    :goto_0
    move-object v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const-string p0, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    move-object v3, v2

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :catch_0
    move-exception p0

    .line 43
    move-object v3, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    new-instance v1, Ljava/io/FileInputStream;

    .line 50
    .line 51
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 58
    .line 59
    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    :try_start_3
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    .line 64
    .line 65
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 68
    .line 69
    .line 70
    new-instance v3, Ljava/io/FileInputStream;

    .line 71
    .line 72
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    .line 74
    .line 75
    move-object v7, v3

    .line 76
    move-object v3, v1

    .line 77
    move-object v1, v7

    .line 78
    :goto_1
    :try_start_4
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 79
    .line 80
    invoke-direct {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .line 82
    .line 83
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 84
    .line 85
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 86
    .line 87
    add-int/2addr v5, v6

    .line 88
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 89
    .line 90
    .line 91
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 92
    .line 93
    new-array v5, v5, [B

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 96
    .line 97
    .line 98
    iput-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 99
    .line 100
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    .line 102
    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    return-object v5

    .line 109
    :catch_1
    move-exception p0

    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    move-object v3, v1

    .line 113
    goto :goto_4

    .line 114
    :catch_2
    move-exception p0

    .line 115
    move-object v3, v1

    .line 116
    move-object v1, v2

    .line 117
    goto :goto_2

    .line 118
    :catchall_2
    move-exception p0

    .line 119
    move-object v3, v2

    .line 120
    goto :goto_4

    .line 121
    :catch_3
    move-exception p0

    .line 122
    move-object v1, v2

    .line 123
    move-object v3, v1

    .line 124
    :goto_2
    :try_start_5
    const-string v4, "Encountered exception while getting thumbnail"

    .line 125
    .line 126
    invoke-static {v0, v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-object v2

    .line 138
    :catchall_3
    move-exception p0

    .line 139
    :goto_3
    move-object v2, v1

    .line 140
    :goto_4
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    .line 142
    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    throw p0
.end method

.method public final getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 44
    .line 45
    .line 46
    array-length v1, v1

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    :goto_0
    const/4 v2, 0x4

    .line 50
    :try_start_0
    new-array v3, v2, [B

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 53
    .line 54
    .line 55
    add-int/2addr v1, v2

    .line 56
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/2addr v1, v2

    .line 61
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    new-array v0, v4, [B

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 72
    .line 73
    .line 74
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 81
    .line 82
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    rem-int/lit8 v2, v4, 0x2

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    if-ne v2, v3, :cond_2

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    :cond_2
    add-int/2addr v1, v4

    .line 97
    if-ne v1, v0, :cond_3

    .line 98
    .line 99
    :goto_1
    return-void

    .line 100
    :cond_3
    if-gt v1, v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 107
    .line 108
    const-string p1, "Encountered WebP file with invalid chunk size"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    new-instance p0, Ljava/io/IOException;

    .line 115
    .line 116
    const-string p1, "Encountered corrupt WebP file."

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_2

    .line 42
    .line 43
    if-lez p2, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    new-array v1, p2, [B

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 69
    .line 70
    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 71
    .line 72
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 73
    .line 74
    :cond_2
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 75
    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    const-string p0, "Setting thumbnail attributes with offset: "

    .line 79
    .line 80
    const-string p1, ", length: "

    .line 81
    .line 82
    const-string v1, "ExifInterface"

    .line 83
    .line 84
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method public final initForFilename(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    move-object v0, v1

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 48
    .line 49
    const-string p1, "filename cannot be null"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final isThumbnail(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/16 p1, 0x200

    .line 34
    .line 35
    if-gt v0, p1, :cond_0

    .line 36
    .line 37
    if-gt p0, p1, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final loadAttributes(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6
    .line 7
    array-length v3, v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v2, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 27
    .line 28
    const/16 v4, 0x1388

    .line 29
    .line 30
    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 38
    .line 39
    move-object p1, v3

    .line 40
    :cond_1
    iget v3, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 41
    .line 42
    const/16 v4, 0xe

    .line 43
    .line 44
    const/16 v5, 0xd

    .line 45
    .line 46
    const/16 v6, 0x9

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    if-eq v3, v7, :cond_3

    .line 50
    .line 51
    if-eq v3, v6, :cond_3

    .line 52
    .line 53
    if-eq v3, v5, :cond_3

    .line 54
    .line 55
    if-ne v3, v4, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v3, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    move v3, v1

    .line 61
    :goto_2
    if-eqz v3, :cond_a

    .line 62
    .line 63
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 64
    .line 65
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z

    .line 71
    .line 72
    .line 73
    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-nez p1, :cond_9

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 77
    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void

    .line 85
    :cond_5
    :try_start_2
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 86
    .line 87
    const/16 v2, 0xc

    .line 88
    .line 89
    if-ne p1, v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/4 v2, 0x7

    .line 96
    if-ne p1, v2, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_7
    const/16 v2, 0xa

    .line 103
    .line 104
    if-ne p1, v2, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 111
    .line 112
    .line 113
    :cond_9
    :goto_3
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 114
    .line 115
    int-to-long v2, p1

    .line 116
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_a
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 124
    .line 125
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .line 127
    .line 128
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 129
    .line 130
    if-ne p1, v7, :cond_b

    .line 131
    .line 132
    invoke-virtual {p0, v2, v1, v1}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_b
    if-ne p1, v5, :cond_c

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_c
    if-ne p1, v6, :cond_d

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_d
    if-ne p1, v4, :cond_e

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .line 152
    .line 153
    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_11

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    goto :goto_5

    .line 161
    :catch_0
    move-exception p1

    .line 162
    if-eqz v0, :cond_10

    .line 163
    .line 164
    :try_start_3
    const-string v1, "ExifInterface"

    .line 165
    .line 166
    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 167
    .line 168
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_6

    .line 172
    :goto_5
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 173
    .line 174
    .line 175
    if-eqz v0, :cond_f

    .line 176
    .line 177
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 178
    .line 179
    .line 180
    :cond_f
    throw p1

    .line 181
    :cond_10
    :goto_6
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 182
    .line 183
    .line 184
    if-eqz v0, :cond_11

    .line 185
    .line 186
    :goto_7
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 187
    .line 188
    .line 189
    :cond_11
    return-void
.end method

.method public final parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    if-eq p0, v1, :cond_1

    .line 21
    .line 22
    const/16 p0, 0x2a

    .line 23
    .line 24
    if-ne v0, p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Invalid start code: "

    .line 32
    .line 33
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    if-lt p0, v0, :cond_3

    .line 58
    .line 59
    add-int/lit8 p0, p0, -0x8

    .line 60
    .line 61
    if-lez p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string v0, "Invalid first Ifd offset: "

    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final printAttributes()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "The size of tag group["

    .line 8
    .line 9
    const-string v3, "]: "

    .line 10
    .line 11
    invoke-static {v2, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v6, "tagName: "

    .line 64
    .line 65
    .line 66
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ", tagType: "

    .line 79
    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ", tagValue: \'"

    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "\'"

    .line 105
    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method public final readExifSegment(I[B)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 14
    .line 15
    check-cast v4, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 25
    .line 26
    const-string v6, "ExifInterface"

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const-string/jumbo v7, "numberOfDirectoryEntry: "

    .line 31
    .line 32
    .line 33
    invoke-static {v7, v3, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    if-gtz v3, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v7, 0x0

    .line 40
    :goto_0
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 41
    .line 42
    if-ge v7, v3, :cond_2f

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    iget v12, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 57
    .line 58
    int-to-long v12, v12

    .line 59
    const-wide/16 v15, 0x4

    .line 60
    .line 61
    add-long/2addr v12, v15

    .line 62
    sget-object v17, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 63
    .line 64
    aget-object v15, v17, v2

    .line 65
    .line 66
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    const/4 v15, 0x5

    .line 79
    new-array v15, v15, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v16

    .line 85
    const/16 v17, 0x0

    .line 86
    .line 87
    aput-object v16, v15, v17

    .line 88
    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    const/16 v20, 0x1

    .line 94
    .line 95
    aput-object v16, v15, v20

    .line 96
    .line 97
    if-eqz v8, :cond_2

    .line 98
    .line 99
    move/from16 v21, v3

    .line 100
    .line 101
    iget-object v3, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move/from16 v21, v3

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    :goto_1
    const/16 v16, 0x2

    .line 108
    .line 109
    aput-object v3, v15, v16

    .line 110
    .line 111
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const/16 v16, 0x3

    .line 116
    .line 117
    aput-object v3, v15, v16

    .line 118
    .line 119
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const/16 v16, 0x4

    .line 124
    .line 125
    aput-object v3, v15, v16

    .line 126
    .line 127
    const-string v3, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 128
    .line 129
    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    move/from16 v21, v3

    .line 138
    .line 139
    const/16 v20, 0x1

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    :goto_2
    if-nez v8, :cond_6

    .line 144
    .line 145
    if-eqz v5, :cond_4

    .line 146
    .line 147
    const-string v3, "Skip the tag entry since tag number is not defined: "

    .line 148
    .line 149
    invoke-static {v3, v10, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    move-object/from16 v23, v4

    .line 153
    .line 154
    move/from16 v22, v7

    .line 155
    .line 156
    :cond_5
    :goto_3
    move-object/from16 v24, v9

    .line 157
    .line 158
    move v7, v10

    .line 159
    goto/16 :goto_a

    .line 160
    .line 161
    :cond_6
    if-lez v11, :cond_15

    .line 162
    .line 163
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 164
    .line 165
    array-length v15, v3

    .line 166
    if-lt v11, v15, :cond_7

    .line 167
    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :cond_7
    iget v15, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 171
    .line 172
    move/from16 v22, v7

    .line 173
    .line 174
    const/4 v7, 0x7

    .line 175
    if-eq v15, v7, :cond_10

    .line 176
    .line 177
    if-ne v11, v7, :cond_8

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_8
    if-eq v15, v11, :cond_10

    .line 181
    .line 182
    iget v7, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 183
    .line 184
    if-ne v7, v11, :cond_9

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_9
    move-object/from16 v23, v4

    .line 188
    .line 189
    const/4 v4, 0x4

    .line 190
    if-eq v15, v4, :cond_a

    .line 191
    .line 192
    if-ne v7, v4, :cond_b

    .line 193
    .line 194
    :cond_a
    const/4 v4, 0x3

    .line 195
    if-ne v11, v4, :cond_b

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_b
    const/16 v4, 0x9

    .line 199
    .line 200
    if-eq v15, v4, :cond_c

    .line 201
    .line 202
    if-ne v7, v4, :cond_d

    .line 203
    .line 204
    :cond_c
    const/16 v4, 0x8

    .line 205
    .line 206
    if-ne v11, v4, :cond_d

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_d
    const/16 v4, 0xc

    .line 210
    .line 211
    if-eq v15, v4, :cond_e

    .line 212
    .line 213
    if-ne v7, v4, :cond_f

    .line 214
    .line 215
    :cond_e
    const/16 v4, 0xb

    .line 216
    .line 217
    if-ne v11, v4, :cond_f

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_f
    move/from16 v4, v17

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_10
    :goto_4
    move-object/from16 v23, v4

    .line 224
    .line 225
    :goto_5
    move/from16 v4, v20

    .line 226
    .line 227
    :goto_6
    if-nez v4, :cond_11

    .line 228
    .line 229
    if-eqz v5, :cond_5

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v4, "Skip the tag entry since data format ("

    .line 234
    .line 235
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 239
    .line 240
    aget-object v4, v4, v11

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v4, ") is unexpected for tag: "

    .line 246
    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v4, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_11
    const/4 v4, 0x7

    .line 257
    if-ne v11, v4, :cond_12

    .line 258
    .line 259
    move-object v4, v9

    .line 260
    move v7, v10

    .line 261
    move v11, v15

    .line 262
    goto :goto_7

    .line 263
    :cond_12
    move-object v4, v9

    .line 264
    move v7, v10

    .line 265
    :goto_7
    int-to-long v9, v14

    .line 266
    aget v3, v3, v11

    .line 267
    .line 268
    move-object/from16 v24, v4

    .line 269
    .line 270
    int-to-long v3, v3

    .line 271
    mul-long/2addr v9, v3

    .line 272
    const-wide/16 v3, 0x0

    .line 273
    .line 274
    cmp-long v3, v9, v3

    .line 275
    .line 276
    if-ltz v3, :cond_14

    .line 277
    .line 278
    const-wide/32 v3, 0x7fffffff

    .line 279
    .line 280
    .line 281
    cmp-long v3, v9, v3

    .line 282
    .line 283
    if-lez v3, :cond_13

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_13
    move/from16 v17, v20

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_14
    :goto_8
    if-eqz v5, :cond_17

    .line 290
    .line 291
    const-string v3, "Skip the tag entry since the number of components is invalid: "

    .line 292
    .line 293
    invoke-static {v3, v14, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_15
    :goto_9
    move-object/from16 v23, v4

    .line 298
    .line 299
    move/from16 v22, v7

    .line 300
    .line 301
    move-object/from16 v24, v9

    .line 302
    .line 303
    move v7, v10

    .line 304
    if-eqz v5, :cond_16

    .line 305
    .line 306
    const-string v3, "Skip the tag entry since data format is invalid: "

    .line 307
    .line 308
    invoke-static {v3, v11, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_16
    :goto_a
    const-wide/16 v9, 0x0

    .line 312
    .line 313
    :cond_17
    :goto_b
    if-nez v17, :cond_18

    .line 314
    .line 315
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 316
    .line 317
    .line 318
    move v2, v5

    .line 319
    move-object/from16 v19, v6

    .line 320
    .line 321
    move-object/from16 v11, v23

    .line 322
    .line 323
    goto/16 :goto_12

    .line 324
    .line 325
    :cond_18
    const-wide/16 v3, 0x4

    .line 326
    .line 327
    cmp-long v3, v9, v3

    .line 328
    .line 329
    const-string v4, "Compression"

    .line 330
    .line 331
    if-lez v3, :cond_1c

    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v5, :cond_19

    .line 338
    .line 339
    const-string/jumbo v15, "seek to data offset: "

    .line 340
    .line 341
    .line 342
    invoke-static {v15, v3, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_19
    iget v15, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 346
    .line 347
    move-wide/from16 v16, v12

    .line 348
    .line 349
    const/4 v12, 0x7

    .line 350
    if-ne v15, v12, :cond_1b

    .line 351
    .line 352
    iget-object v12, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 353
    .line 354
    const-string v13, "MakerNote"

    .line 355
    .line 356
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    if-eqz v12, :cond_1a

    .line 361
    .line 362
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_1a
    const/4 v12, 0x6

    .line 366
    if-ne v2, v12, :cond_1b

    .line 367
    .line 368
    const-string v12, "ThumbnailImage"

    .line 369
    .line 370
    iget-object v13, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v12

    .line 376
    if-eqz v12, :cond_1b

    .line 377
    .line 378
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 379
    .line 380
    iput v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 381
    .line 382
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 383
    .line 384
    const/4 v13, 0x6

    .line 385
    invoke-static {v13, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 386
    .line 387
    .line 388
    move-result-object v12

    .line 389
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 390
    .line 391
    move v15, v14

    .line 392
    int-to-long v13, v13

    .line 393
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 394
    .line 395
    invoke-static {v13, v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 400
    .line 401
    int-to-long v13, v13

    .line 402
    move/from16 v18, v15

    .line 403
    .line 404
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 405
    .line 406
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    const/4 v14, 0x4

    .line 411
    aget-object v15, v24, v14

    .line 412
    .line 413
    invoke-virtual {v15, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    aget-object v12, v24, v14

    .line 417
    .line 418
    const-string v15, "JPEGInterchangeFormat"

    .line 419
    .line 420
    invoke-virtual {v12, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    aget-object v2, v24, v14

    .line 424
    .line 425
    const-string v12, "JPEGInterchangeFormatLength"

    .line 426
    .line 427
    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    goto :goto_d

    .line 431
    :cond_1b
    :goto_c
    move/from16 v18, v14

    .line 432
    .line 433
    :goto_d
    int-to-long v2, v3

    .line 434
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 435
    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_1c
    move-wide/from16 v16, v12

    .line 439
    .line 440
    move/from16 v18, v14

    .line 441
    .line 442
    :goto_e
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 443
    .line 444
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    check-cast v2, Ljava/lang/Integer;

    .line 453
    .line 454
    if-eqz v5, :cond_1d

    .line 455
    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    const-string/jumbo v7, "nextIfdType: "

    .line 459
    .line 460
    .line 461
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v7, " byteCount: "

    .line 468
    .line 469
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    :cond_1d
    if-eqz v2, :cond_28

    .line 483
    .line 484
    const/4 v3, 0x3

    .line 485
    if-eq v11, v3, :cond_21

    .line 486
    .line 487
    const/4 v3, 0x4

    .line 488
    if-eq v11, v3, :cond_20

    .line 489
    .line 490
    const/16 v3, 0x8

    .line 491
    .line 492
    if-eq v11, v3, :cond_1f

    .line 493
    .line 494
    const/16 v3, 0x9

    .line 495
    .line 496
    if-eq v11, v3, :cond_1e

    .line 497
    .line 498
    const/16 v3, 0xd

    .line 499
    .line 500
    if-eq v11, v3, :cond_1e

    .line 501
    .line 502
    const-wide/16 v3, -0x1

    .line 503
    .line 504
    goto :goto_10

    .line 505
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    goto :goto_f

    .line 510
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    goto :goto_f

    .line 515
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    int-to-long v3, v3

    .line 520
    const-wide v9, 0xffffffffL

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    and-long/2addr v3, v9

    .line 526
    goto :goto_10

    .line 527
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    :goto_f
    int-to-long v3, v3

    .line 532
    :goto_10
    if-eqz v5, :cond_22

    .line 533
    .line 534
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 539
    .line 540
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v7

    .line 544
    const-string v8, "Offset: %d, tagName: %s"

    .line 545
    .line 546
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_22
    const-wide/16 v7, 0x0

    .line 554
    .line 555
    cmp-long v7, v3, v7

    .line 556
    .line 557
    const-string v8, ")"

    .line 558
    .line 559
    const/4 v9, -0x1

    .line 560
    if-lez v7, :cond_25

    .line 561
    .line 562
    iget v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 563
    .line 564
    if-eq v7, v9, :cond_23

    .line 565
    .line 566
    int-to-long v10, v7

    .line 567
    cmp-long v7, v3, v10

    .line 568
    .line 569
    if-gez v7, :cond_25

    .line 570
    .line 571
    :cond_23
    long-to-int v7, v3

    .line 572
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    move-object/from16 v15, v23

    .line 577
    .line 578
    invoke-interface {v15, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v7

    .line 582
    if-nez v7, :cond_24

    .line 583
    .line 584
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 592
    .line 593
    .line 594
    goto :goto_11

    .line 595
    :cond_24
    if-eqz v5, :cond_27

    .line 596
    .line 597
    new-instance v7, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    const-string v9, "Skip jump into the IFD since it has already been read: IfdType "

    .line 600
    .line 601
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v2, " (at "

    .line 608
    .line 609
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-static {v7, v8, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    goto :goto_11

    .line 619
    :cond_25
    move-object/from16 v15, v23

    .line 620
    .line 621
    if-eqz v5, :cond_27

    .line 622
    .line 623
    const-string v2, "Skip jump into the IFD since its offset is invalid: "

    .line 624
    .line 625
    invoke-static {v2, v3, v4}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 630
    .line 631
    if-eq v3, v9, :cond_26

    .line 632
    .line 633
    const-string v3, " (total length: "

    .line 634
    .line 635
    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 640
    .line 641
    invoke-static {v2, v3, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    :cond_26
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    :cond_27
    :goto_11
    move-wide/from16 v12, v16

    .line 649
    .line 650
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 651
    .line 652
    .line 653
    move v2, v5

    .line 654
    move-object/from16 v19, v6

    .line 655
    .line 656
    move-object v11, v15

    .line 657
    goto/16 :goto_12

    .line 658
    .line 659
    :cond_28
    move-wide/from16 v12, v16

    .line 660
    .line 661
    move-object/from16 v15, v23

    .line 662
    .line 663
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 664
    .line 665
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 666
    .line 667
    add-int/2addr v2, v3

    .line 668
    long-to-int v3, v9

    .line 669
    new-array v3, v3, [B

    .line 670
    .line 671
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 672
    .line 673
    .line 674
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 675
    .line 676
    int-to-long v9, v2

    .line 677
    move-wide v13, v12

    .line 678
    move-object v12, v7

    .line 679
    move v2, v5

    .line 680
    move-object/from16 v19, v6

    .line 681
    .line 682
    move-wide v5, v13

    .line 683
    move v13, v11

    .line 684
    move/from16 v14, v18

    .line 685
    .line 686
    move-object v11, v15

    .line 687
    move-wide v15, v9

    .line 688
    move-object/from16 v17, v3

    .line 689
    .line 690
    invoke-direct/range {v12 .. v17}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 691
    .line 692
    .line 693
    aget-object v3, v24, p2

    .line 694
    .line 695
    iget-object v9, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 696
    .line 697
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    const-string v3, "DNGVersion"

    .line 701
    .line 702
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 703
    .line 704
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-eqz v3, :cond_29

    .line 709
    .line 710
    const/4 v3, 0x3

    .line 711
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 712
    .line 713
    :cond_29
    const-string v3, "Make"

    .line 714
    .line 715
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    if-nez v3, :cond_2a

    .line 720
    .line 721
    const-string v3, "Model"

    .line 722
    .line 723
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-eqz v3, :cond_2b

    .line 728
    .line 729
    :cond_2a
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 730
    .line 731
    invoke-virtual {v7, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    const-string v9, "PENTAX"

    .line 736
    .line 737
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 738
    .line 739
    .line 740
    move-result v3

    .line 741
    if-nez v3, :cond_2c

    .line 742
    .line 743
    :cond_2b
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    if-eqz v3, :cond_2d

    .line 748
    .line 749
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 750
    .line 751
    invoke-virtual {v7, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    const v4, 0xffff

    .line 756
    .line 757
    .line 758
    if-ne v3, v4, :cond_2d

    .line 759
    .line 760
    :cond_2c
    const/16 v3, 0x8

    .line 761
    .line 762
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 763
    .line 764
    :cond_2d
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 765
    .line 766
    int-to-long v3, v3

    .line 767
    cmp-long v3, v3, v5

    .line 768
    .line 769
    if-eqz v3, :cond_2e

    .line 770
    .line 771
    invoke-virtual {v1, v5, v6}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 772
    .line 773
    .line 774
    :cond_2e
    :goto_12
    add-int/lit8 v7, v22, 0x1

    .line 775
    .line 776
    int-to-short v7, v7

    .line 777
    move v5, v2

    .line 778
    move-object v4, v11

    .line 779
    move-object/from16 v6, v19

    .line 780
    .line 781
    move/from16 v3, v21

    .line 782
    .line 783
    move/from16 v2, p2

    .line 784
    .line 785
    goto/16 :goto_0

    .line 786
    .line 787
    :cond_2f
    move-object v11, v4

    .line 788
    move v2, v5

    .line 789
    move-object/from16 v19, v6

    .line 790
    .line 791
    move-object/from16 v24, v9

    .line 792
    .line 793
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    if-eqz v2, :cond_30

    .line 798
    .line 799
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v4

    .line 807
    const-string/jumbo v5, "nextIfdOffset: %d"

    .line 808
    .line 809
    .line 810
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    move-object/from16 v5, v19

    .line 815
    .line 816
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    goto :goto_13

    .line 820
    :cond_30
    move-object/from16 v5, v19

    .line 821
    .line 822
    :goto_13
    int-to-long v6, v3

    .line 823
    const-wide/16 v8, 0x0

    .line 824
    .line 825
    cmp-long v4, v6, v8

    .line 826
    .line 827
    if-lez v4, :cond_33

    .line 828
    .line 829
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v4

    .line 837
    if-nez v4, :cond_32

    .line 838
    .line 839
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 840
    .line 841
    .line 842
    const/4 v2, 0x4

    .line 843
    aget-object v3, v24, v2

    .line 844
    .line 845
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    if-eqz v3, :cond_31

    .line 850
    .line 851
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 852
    .line 853
    .line 854
    goto :goto_14

    .line 855
    :cond_31
    const/4 v2, 0x5

    .line 856
    aget-object v3, v24, v2

    .line 857
    .line 858
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    if-eqz v3, :cond_34

    .line 863
    .line 864
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 865
    .line 866
    .line 867
    goto :goto_14

    .line 868
    :cond_32
    if-eqz v2, :cond_34

    .line 869
    .line 870
    const-string v0, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 871
    .line 872
    invoke-static {v0, v3, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 873
    .line 874
    .line 875
    goto :goto_14

    .line 876
    :cond_33
    if-eqz v2, :cond_34

    .line 877
    .line 878
    const-string v0, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 879
    .line 880
    invoke-static {v0, v3, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    .line 882
    .line 883
    :cond_34
    :goto_14
    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public final replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, p0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    aget-object v0, p0, p1

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    aget-object v0, p0, p1

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 26
    .line 27
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    aget-object p0, p0, p1

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final saveAttributes()V
    .locals 15

    .line 1
    const-string v0, "Failed to save new file. Original file is stored in "

    .line 2
    .line 3
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xe

    .line 7
    .line 8
    const/16 v4, 0xd

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x4

    .line 12
    if-eq v1, v6, :cond_1

    .line 13
    .line 14
    if-eq v1, v4, :cond_1

    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v1, v5

    .line 22
    :goto_1
    if-eqz v1, :cond_f

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v0, "ExifInterface does not support saving attributes for the current input."

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_3
    :goto_2
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 55
    .line 56
    const-string v0, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_5
    :goto_3
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 63
    .line 64
    const/4 v7, 0x6

    .line 65
    const/4 v8, 0x0

    .line 66
    if-eq v1, v7, :cond_7

    .line 67
    .line 68
    const/4 v7, 0x7

    .line 69
    if-ne v1, v7, :cond_6

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    move-object v1, v8

    .line 73
    goto :goto_5

    .line 74
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_5
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 79
    .line 80
    :try_start_0
    const-string/jumbo v1, "temp"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v7, "tmp"

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 91
    .line 92
    const-wide/16 v9, 0x0

    .line 93
    .line 94
    if-eqz v7, :cond_8

    .line 95
    .line 96
    new-instance v7, Ljava/io/FileInputStream;

    .line 97
    .line 98
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 99
    .line 100
    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 105
    .line 106
    sget v11, Landroid/system/OsConstants;->SEEK_SET:I

    .line 107
    .line 108
    invoke-static {v7, v9, v10, v11}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 109
    .line 110
    .line 111
    new-instance v7, Ljava/io/FileInputStream;

    .line 112
    .line 113
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 114
    .line 115
    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 116
    .line 117
    .line 118
    :goto_6
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    .line 119
    .line 120
    invoke-direct {v11, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 121
    .line 122
    .line 123
    :try_start_2
    invoke-static {v7, v11}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 124
    .line 125
    .line 126
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v11}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    .line 131
    .line 132
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    .line 133
    .line 134
    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .line 136
    .line 137
    :try_start_4
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v11, :cond_9

    .line 140
    .line 141
    new-instance v11, Ljava/io/FileOutputStream;

    .line 142
    .line 143
    iget-object v12, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_9
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 150
    .line 151
    sget v12, Landroid/system/OsConstants;->SEEK_SET:I

    .line 152
    .line 153
    invoke-static {v11, v9, v10, v12}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 154
    .line 155
    .line 156
    new-instance v11, Ljava/io/FileOutputStream;

    .line 157
    .line 158
    iget-object v12, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 159
    .line 160
    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 161
    .line 162
    .line 163
    :goto_7
    :try_start_5
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 164
    .line 165
    invoke-direct {v12, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    .line 167
    .line 168
    :try_start_6
    new-instance v13, Ljava/io/BufferedOutputStream;

    .line 169
    .line 170
    invoke-direct {v13, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    .line 172
    .line 173
    :try_start_7
    iget v14, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 174
    .line 175
    if-ne v14, v6, :cond_a

    .line 176
    .line 177
    invoke-virtual {p0, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 178
    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_a
    if-ne v14, v4, :cond_b

    .line 182
    .line 183
    invoke-virtual {p0, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_b
    if-ne v14, v3, :cond_c

    .line 188
    .line 189
    invoke-virtual {p0, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 190
    .line 191
    .line 192
    :cond_c
    :goto_8
    invoke-static {v12}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v13}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 199
    .line 200
    .line 201
    iput-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 202
    .line 203
    return-void

    .line 204
    :catch_0
    move-exception v3

    .line 205
    goto :goto_a

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    move-object v13, v8

    .line 208
    goto/16 :goto_f

    .line 209
    .line 210
    :catch_1
    move-exception v3

    .line 211
    move-object v13, v8

    .line 212
    goto :goto_a

    .line 213
    :catch_2
    move-exception v3

    .line 214
    goto :goto_9

    .line 215
    :catch_3
    move-exception v3

    .line 216
    move-object v11, v8

    .line 217
    :goto_9
    move-object v12, v8

    .line 218
    move-object v13, v12

    .line 219
    :goto_a
    move-object v8, v11

    .line 220
    move-object v4, v8

    .line 221
    move-object v8, v7

    .line 222
    goto :goto_b

    .line 223
    :catchall_1
    move-exception p0

    .line 224
    move-object v13, v8

    .line 225
    goto :goto_10

    .line 226
    :catch_4
    move-exception v3

    .line 227
    move-object v4, v8

    .line 228
    move-object v12, v4

    .line 229
    move-object v13, v12

    .line 230
    :goto_b
    :try_start_8
    new-instance v6, Ljava/io/FileInputStream;

    .line 231
    .line 232
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 233
    .line 234
    .line 235
    :try_start_9
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 236
    .line 237
    if-nez v7, :cond_d

    .line 238
    .line 239
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 240
    .line 241
    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    .line 242
    .line 243
    invoke-static {v7, v9, v10, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 244
    .line 245
    .line 246
    new-instance v7, Ljava/io/FileOutputStream;

    .line 247
    .line 248
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 249
    .line 250
    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 251
    .line 252
    .line 253
    goto :goto_c

    .line 254
    :cond_d
    new-instance v7, Ljava/io/FileOutputStream;

    .line 255
    .line 256
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 257
    .line 258
    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :goto_c
    move-object v4, v7

    .line 262
    invoke-static {v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 263
    .line 264
    .line 265
    :try_start_a
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    .line 270
    .line 271
    new-instance p0, Ljava/io/IOException;

    .line 272
    .line 273
    const-string v0, "Failed to save new file"

    .line 274
    .line 275
    invoke-direct {p0, v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 279
    :catchall_2
    move-exception p0

    .line 280
    move-object v8, v6

    .line 281
    goto :goto_e

    .line 282
    :catch_5
    move-exception p0

    .line 283
    move-object v8, v6

    .line 284
    goto :goto_d

    .line 285
    :catchall_3
    move-exception p0

    .line 286
    goto :goto_e

    .line 287
    :catch_6
    move-exception p0

    .line 288
    :goto_d
    :try_start_b
    new-instance v2, Ljava/io/IOException;

    .line 289
    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-direct {v2, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 310
    :catchall_4
    move-exception p0

    .line 311
    move v2, v5

    .line 312
    :goto_e
    :try_start_c
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 316
    .line 317
    .line 318
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 319
    :catchall_5
    move-exception p0

    .line 320
    :goto_f
    move-object v8, v12

    .line 321
    :goto_10
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v13}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    .line 326
    .line 327
    if-nez v2, :cond_e

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 330
    .line 331
    .line 332
    :cond_e
    throw p0

    .line 333
    :catchall_6
    move-exception p0

    .line 334
    move-object v8, v11

    .line 335
    goto :goto_11

    .line 336
    :catch_7
    move-exception p0

    .line 337
    move-object v8, v11

    .line 338
    goto :goto_12

    .line 339
    :catchall_7
    move-exception p0

    .line 340
    :goto_11
    move-object v0, v8

    .line 341
    move-object v8, v7

    .line 342
    goto :goto_14

    .line 343
    :catch_8
    move-exception p0

    .line 344
    :goto_12
    move-object v0, v8

    .line 345
    move-object v8, v7

    .line 346
    goto :goto_13

    .line 347
    :catchall_8
    move-exception p0

    .line 348
    move-object v0, v8

    .line 349
    goto :goto_14

    .line 350
    :catch_9
    move-exception p0

    .line 351
    move-object v0, v8

    .line 352
    :goto_13
    :try_start_d
    new-instance v1, Ljava/io/IOException;

    .line 353
    .line 354
    const-string v2, "Failed to copy original file to temp file"

    .line 355
    .line 356
    invoke-direct {v1, v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 360
    :catchall_9
    move-exception p0

    .line 361
    :goto_14
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 365
    .line 366
    .line 367
    throw p0

    .line 368
    :cond_f
    new-instance p0, Ljava/io/IOException;

    .line 369
    .line 370
    const-string v0, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    .line 371
    .line 372
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p0
.end method

.method public final saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "saveJpegAttributes starting with (inputStream: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", outputStream: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ")"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "ExifInterface"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 44
    .line 45
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const-string v1, "Invalid marker"

    .line 55
    .line 56
    const/4 v2, -0x1

    .line 57
    if-ne p2, v2, :cond_c

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/16 v3, -0x28

    .line 67
    .line 68
    if-ne p2, v3, :cond_b

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 71
    .line 72
    .line 73
    const-string p2, "Xmp"

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    iget-boolean v3, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    aget-object v3, v4, v5

    .line 89
    .line 90
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v3, 0x0

    .line 98
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 99
    .line 100
    .line 101
    const/16 v6, -0x1f

    .line 102
    .line 103
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 107
    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    aget-object p0, v4, v5

    .line 112
    .line 113
    invoke-virtual {p0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_2
    const/16 p0, 0x1000

    .line 117
    .line 118
    new-array p2, p0, [B

    .line 119
    .line 120
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-ne v3, v2, :cond_a

    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/16 v4, -0x27

    .line 131
    .line 132
    if-eq v3, v4, :cond_9

    .line 133
    .line 134
    const/16 v4, -0x26

    .line 135
    .line 136
    if-eq v3, v4, :cond_9

    .line 137
    .line 138
    const-string v4, "Invalid length"

    .line 139
    .line 140
    if-eq v3, v6, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 153
    .line 154
    .line 155
    add-int/lit8 v3, v3, -0x2

    .line 156
    .line 157
    if-ltz v3, :cond_4

    .line 158
    .line 159
    :goto_2
    if-lez v3, :cond_3

    .line 160
    .line 161
    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-virtual {v0, p2, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-ltz v4, :cond_3

    .line 170
    .line 171
    invoke-virtual {p1, p2, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 172
    .line 173
    .line 174
    sub-int/2addr v3, v4

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 177
    .line 178
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :cond_5
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    add-int/lit8 v7, v7, -0x2

    .line 187
    .line 188
    if-ltz v7, :cond_8

    .line 189
    .line 190
    const/4 v4, 0x6

    .line 191
    new-array v8, v4, [B

    .line 192
    .line 193
    if-lt v7, v4, :cond_6

    .line 194
    .line 195
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 196
    .line 197
    .line 198
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 199
    .line 200
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_6

    .line 205
    .line 206
    add-int/lit8 v7, v7, -0x6

    .line 207
    .line 208
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 216
    .line 217
    .line 218
    add-int/lit8 v3, v7, 0x2

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 221
    .line 222
    .line 223
    if-lt v7, v4, :cond_7

    .line 224
    .line 225
    add-int/lit8 v7, v7, -0x6

    .line 226
    .line 227
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 228
    .line 229
    .line 230
    :cond_7
    :goto_3
    if-lez v7, :cond_3

    .line 231
    .line 232
    invoke-static {v7, p0}, Ljava/lang/Math;->min(II)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-virtual {v0, p2, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-ltz v3, :cond_3

    .line 241
    .line 242
    invoke-virtual {p1, p2, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 243
    .line 244
    .line 245
    sub-int/2addr v7, v3

    .line 246
    goto :goto_3

    .line 247
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 248
    .line 249
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :cond_9
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 257
    .line 258
    .line 259
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_a
    new-instance p0, Ljava/io/IOException;

    .line 264
    .line 265
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 270
    .line 271
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p0

    .line 275
    :cond_c
    new-instance p0, Ljava/io/IOException;

    .line 276
    .line 277
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p0
.end method

.method public final savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "savePngAttributes starting with (inputStream: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", outputStream: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ")"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "ExifInterface"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 44
    .line 45
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 51
    .line 52
    array-length v2, p2

    .line 53
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 57
    .line 58
    const/4 v3, 0x4

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    add-int/2addr p2, v3

    .line 69
    add-int/2addr p2, v3

    .line 70
    invoke-static {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    array-length p2, p2

    .line 75
    sub-int/2addr v2, p2

    .line 76
    sub-int/2addr v2, v3

    .line 77
    sub-int/2addr v2, v3

    .line 78
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    add-int/2addr p2, v3

    .line 86
    add-int/2addr p2, v3

    .line 87
    invoke-virtual {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    .line 94
    .line 95
    :try_start_1
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 96
    .line 97
    invoke-direct {v2, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 104
    .line 105
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/util/zip/CRC32;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 117
    .line 118
    .line 119
    array-length v2, p0

    .line 120
    sub-int/2addr v2, v3

    .line 121
    invoke-virtual {v1, p0, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    long-to-int p0, v1

    .line 129
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_1

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    const/4 p2, 0x0

    .line 143
    :goto_1
    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v4, "saveWebpAttributes starting with (inputStream: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, ", outputStream: "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ")"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "ExifInterface"

    .line 40
    .line 41
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 45
    .line 46
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 47
    .line 48
    invoke-direct {v3, v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 52
    .line 53
    invoke-direct {v1, v2, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 57
    .line 58
    array-length v5, v2

    .line 59
    invoke-static {v3, v1, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 60
    .line 61
    .line 62
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 63
    .line 64
    array-length v6, v5

    .line 65
    const/4 v7, 0x4

    .line 66
    add-int/2addr v6, v7

    .line 67
    invoke-virtual {v3, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 72
    .line 73
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .line 75
    .line 76
    :try_start_1
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 77
    .line 78
    invoke-direct {v6, v8, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 79
    .line 80
    .line 81
    iget v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    array-length v2, v2

    .line 86
    add-int/2addr v2, v7

    .line 87
    array-length v9, v5

    .line 88
    add-int/2addr v2, v9

    .line 89
    sub-int/2addr v4, v2

    .line 90
    sub-int/2addr v4, v7

    .line 91
    sub-int/2addr v4, v7

    .line 92
    invoke-static {v3, v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    rem-int/lit8 v4, v2, 0x2

    .line 103
    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_e

    .line 118
    .line 119
    :cond_2
    new-array v2, v7, [B

    .line 120
    .line 121
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 122
    .line 123
    .line 124
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 125
    .line 126
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 127
    .line 128
    .line 129
    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/16 v10, 0x8

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    const/4 v12, 0x1

    .line 134
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 135
    .line 136
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 137
    .line 138
    if-eqz v9, :cond_c

    .line 139
    .line 140
    :try_start_2
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    rem-int/lit8 v9, v2, 0x2

    .line 145
    .line 146
    if-ne v9, v12, :cond_3

    .line 147
    .line 148
    add-int/lit8 v9, v2, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    move v9, v2

    .line 152
    :goto_0
    new-array v9, v9, [B

    .line 153
    .line 154
    invoke-virtual {v3, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 155
    .line 156
    .line 157
    aget-byte v15, v9, v11

    .line 158
    .line 159
    or-int/2addr v10, v15

    .line 160
    int-to-byte v10, v10

    .line 161
    aput-byte v10, v9, v11

    .line 162
    .line 163
    shr-int/2addr v10, v12

    .line 164
    and-int/2addr v10, v12

    .line 165
    if-ne v10, v12, :cond_4

    .line 166
    .line 167
    move v11, v12

    .line 168
    :cond_4
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 175
    .line 176
    .line 177
    if-eqz v11, :cond_9

    .line 178
    .line 179
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 180
    .line 181
    :goto_1
    new-array v4, v7, [B

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 194
    .line 195
    .line 196
    rem-int/lit8 v10, v9, 0x2

    .line 197
    .line 198
    if-ne v10, v12, :cond_5

    .line 199
    .line 200
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    :cond_5
    invoke-static {v3, v6, v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 203
    .line 204
    .line 205
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_6

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    :goto_2
    new-array v2, v7, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .line 214
    :try_start_3
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 215
    .line 216
    .line 217
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 218
    .line 219
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 220
    .line 221
    .line 222
    move-result v4
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    xor-int/2addr v4, v12

    .line 224
    goto :goto_3

    .line 225
    :catch_0
    move v4, v12

    .line 226
    :goto_3
    if-eqz v4, :cond_7

    .line 227
    .line 228
    :try_start_4
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 240
    .line 241
    .line 242
    rem-int/lit8 v2, v4, 0x2

    .line 243
    .line 244
    if-ne v2, v12, :cond_8

    .line 245
    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 247
    .line 248
    :cond_8
    invoke-static {v3, v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_9
    new-array v2, v7, [B

    .line 253
    .line 254
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 265
    .line 266
    .line 267
    rem-int/lit8 v9, v4, 0x2

    .line 268
    .line 269
    if-ne v9, v12, :cond_a

    .line 270
    .line 271
    add-int/lit8 v4, v4, 0x1

    .line 272
    .line 273
    :cond_a
    invoke-static {v3, v6, v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 274
    .line 275
    .line 276
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-nez v4, :cond_b

    .line 281
    .line 282
    if-eqz v14, :cond_9

    .line 283
    .line 284
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_9

    .line 289
    .line 290
    :cond_b
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_c
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-nez v9, :cond_e

    .line 299
    .line 300
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-eqz v9, :cond_d

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_d
    :goto_4
    move-object/from16 v20, v1

    .line 308
    .line 309
    move-object/from16 v21, v5

    .line 310
    .line 311
    goto/16 :goto_b

    .line 312
    .line 313
    :cond_e
    :goto_5
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    rem-int/lit8 v15, v9, 0x2

    .line 318
    .line 319
    if-ne v15, v12, :cond_f

    .line 320
    .line 321
    add-int/lit8 v15, v9, 0x1

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_f
    move v15, v9

    .line 325
    :goto_6
    const/4 v7, 0x3

    .line 326
    new-array v10, v7, [B

    .line 327
    .line 328
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 329
    .line 330
    .line 331
    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    const/16 v11, 0x2f

    .line 333
    .line 334
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 335
    .line 336
    if-eqz v16, :cond_11

    .line 337
    .line 338
    :try_start_5
    invoke-virtual {v3, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 339
    .line 340
    .line 341
    new-array v7, v7, [B

    .line 342
    .line 343
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 344
    .line 345
    .line 346
    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    if-eqz v7, :cond_10

    .line 351
    .line 352
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    shl-int/lit8 v16, v7, 0x12

    .line 357
    .line 358
    shr-int/lit8 v16, v16, 0x12

    .line 359
    .line 360
    shl-int/lit8 v18, v7, 0x2

    .line 361
    .line 362
    shr-int/lit8 v18, v18, 0x12

    .line 363
    .line 364
    add-int/lit8 v15, v15, -0xa

    .line 365
    .line 366
    move/from16 v11, v16

    .line 367
    .line 368
    move/from16 v19, v18

    .line 369
    .line 370
    const/16 v18, 0x0

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 374
    .line 375
    const-string v1, "Error checking VP8 signature"

    .line 376
    .line 377
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_11
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-eqz v7, :cond_14

    .line 386
    .line 387
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-ne v7, v11, :cond_13

    .line 392
    .line 393
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    and-int/lit16 v11, v7, 0x3fff

    .line 398
    .line 399
    const/16 v18, 0x1

    .line 400
    .line 401
    add-int/lit8 v11, v11, 0x1

    .line 402
    .line 403
    const v19, 0xfffc000

    .line 404
    .line 405
    .line 406
    and-int v19, v7, v19

    .line 407
    .line 408
    ushr-int/lit8 v19, v19, 0xe

    .line 409
    .line 410
    add-int/lit8 v19, v19, 0x1

    .line 411
    .line 412
    const/high16 v20, 0x10000000

    .line 413
    .line 414
    and-int v20, v7, v20

    .line 415
    .line 416
    if-eqz v20, :cond_12

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_12
    const/16 v18, 0x0

    .line 420
    .line 421
    :goto_7
    add-int/lit8 v15, v15, -0x5

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 425
    .line 426
    const-string v1, "Error checking VP8L signature"

    .line 427
    .line 428
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw v0

    .line 432
    :cond_14
    const/4 v7, 0x0

    .line 433
    const/4 v11, 0x0

    .line 434
    const/16 v18, 0x0

    .line 435
    .line 436
    const/16 v19, 0x0

    .line 437
    .line 438
    :goto_8
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 439
    .line 440
    .line 441
    const/16 v4, 0xa

    .line 442
    .line 443
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 444
    .line 445
    .line 446
    new-array v4, v4, [B

    .line 447
    .line 448
    if-eqz v18, :cond_15

    .line 449
    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    aget-byte v18, v4, v17

    .line 453
    .line 454
    move-object/from16 v20, v1

    .line 455
    .line 456
    or-int/lit8 v1, v18, 0x10

    .line 457
    .line 458
    int-to-byte v1, v1

    .line 459
    aput-byte v1, v4, v17

    .line 460
    .line 461
    goto :goto_9

    .line 462
    :cond_15
    move-object/from16 v20, v1

    .line 463
    .line 464
    :goto_9
    const/4 v1, 0x0

    .line 465
    aget-byte v17, v4, v1

    .line 466
    .line 467
    move-object/from16 v21, v5

    .line 468
    .line 469
    const/16 v18, 0x8

    .line 470
    .line 471
    or-int/lit8 v5, v17, 0x8

    .line 472
    .line 473
    int-to-byte v5, v5

    .line 474
    aput-byte v5, v4, v1

    .line 475
    .line 476
    add-int/lit8 v11, v11, -0x1

    .line 477
    .line 478
    add-int/lit8 v1, v19, -0x1

    .line 479
    .line 480
    int-to-byte v5, v11

    .line 481
    const/16 v17, 0x4

    .line 482
    .line 483
    aput-byte v5, v4, v17

    .line 484
    .line 485
    shr-int/lit8 v5, v11, 0x8

    .line 486
    .line 487
    int-to-byte v5, v5

    .line 488
    const/16 v17, 0x5

    .line 489
    .line 490
    aput-byte v5, v4, v17

    .line 491
    .line 492
    shr-int/lit8 v5, v11, 0x10

    .line 493
    .line 494
    int-to-byte v5, v5

    .line 495
    const/4 v11, 0x6

    .line 496
    aput-byte v5, v4, v11

    .line 497
    .line 498
    const/4 v5, 0x7

    .line 499
    int-to-byte v11, v1

    .line 500
    aput-byte v11, v4, v5

    .line 501
    .line 502
    shr-int/lit8 v5, v1, 0x8

    .line 503
    .line 504
    int-to-byte v5, v5

    .line 505
    const/16 v11, 0x8

    .line 506
    .line 507
    aput-byte v5, v4, v11

    .line 508
    .line 509
    shr-int/lit8 v1, v1, 0x10

    .line 510
    .line 511
    int-to-byte v1, v1

    .line 512
    const/16 v5, 0x9

    .line 513
    .line 514
    aput-byte v1, v4, v5

    .line 515
    .line 516
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 523
    .line 524
    .line 525
    invoke-static {v2, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_16

    .line 530
    .line 531
    invoke-virtual {v6, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 538
    .line 539
    .line 540
    goto :goto_a

    .line 541
    :cond_16
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-eqz v1, :cond_17

    .line 546
    .line 547
    const/16 v1, 0x2f

    .line 548
    .line 549
    invoke-virtual {v6, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 553
    .line 554
    .line 555
    :cond_17
    :goto_a
    invoke-static {v3, v6, v15}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/OutputStream;I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 559
    .line 560
    .line 561
    :goto_b
    invoke-static {v3, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    move-object/from16 v1, v21

    .line 569
    .line 570
    array-length v2, v1

    .line 571
    add-int/2addr v0, v2

    .line 572
    move-object/from16 v2, v20

    .line 573
    .line 574
    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 581
    .line 582
    .line 583
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 584
    .line 585
    .line 586
    return-void

    .line 587
    :catch_1
    move-exception v0

    .line 588
    move-object v6, v8

    .line 589
    goto :goto_c

    .line 590
    :catchall_1
    move-exception v0

    .line 591
    goto :goto_d

    .line 592
    :catch_2
    move-exception v0

    .line 593
    :goto_c
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    .line 594
    .line 595
    const-string v2, "Failed to save WebP file"

    .line 596
    .line 597
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    .line 599
    .line 600
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 601
    :goto_d
    move-object v8, v6

    .line 602
    :goto_e
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 603
    .line 604
    .line 605
    throw v0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "DateTime"

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v4, " : "

    .line 14
    .line 15
    const-string v5, "Invalid value for "

    .line 16
    .line 17
    const-string v6, "ExifInterface"

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const-string v3, "DateTimeOriginal"

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    const-string v3, "DateTimeDigitized"

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    :cond_0
    if-eqz v2, :cond_3

    .line 38
    .line 39
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const/16 v9, 0x13

    .line 64
    .line 65
    if-ne v8, v9, :cond_2

    .line 66
    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    if-nez v7, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-eqz v7, :cond_3

    .line 73
    .line 74
    const-string v3, "-"

    .line 75
    .line 76
    const-string v7, ":"

    .line 77
    .line 78
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    :goto_1
    const-string v3, "ISOSpeedRatings"

    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 112
    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    const-string/jumbo v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 118
    .line 119
    .line 120
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_4
    const-string v1, "PhotographicSensitivity"

    .line 124
    .line 125
    :cond_5
    const/4 v3, 0x2

    .line 126
    const/4 v8, 0x1

    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {v9, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_8

    .line 136
    .line 137
    const-string v9, "GPSTimeStamp"

    .line 138
    .line 139
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_7

    .line 144
    .line 145
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 146
    .line 147
    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-nez v10, :cond_6

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v4, "/1,"

    .line 196
    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const/4 v4, 0x3

    .line 215
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v4, "/1"

    .line 227
    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    goto :goto_2

    .line 236
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 237
    .line 238
    .line 239
    move-result-wide v9

    .line 240
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 241
    .line 242
    invoke-direct {v11, v9, v10}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v11}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_2

    .line 250
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :cond_8
    :goto_2
    const/4 v4, 0x0

    .line 273
    move v5, v4

    .line 274
    :goto_3
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 275
    .line 276
    array-length v9, v9

    .line 277
    if-ge v4, v9, :cond_1f

    .line 278
    .line 279
    const/4 v9, 0x4

    .line 280
    if-ne v4, v9, :cond_9

    .line 281
    .line 282
    iget-boolean v9, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 283
    .line 284
    if-nez v9, :cond_9

    .line 285
    .line 286
    goto/16 :goto_12

    .line 287
    .line 288
    :cond_9
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 289
    .line 290
    aget-object v9, v9, v4

    .line 291
    .line 292
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    check-cast v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 297
    .line 298
    if-eqz v9, :cond_1e

    .line 299
    .line 300
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 301
    .line 302
    if-nez v2, :cond_a

    .line 303
    .line 304
    aget-object v3, v10, v4

    .line 305
    .line 306
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    goto/16 :goto_12

    .line 310
    .line 311
    :cond_a
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v12, Ljava/lang/Integer;

    .line 318
    .line 319
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v12

    .line 323
    const/4 v13, -0x1

    .line 324
    iget v14, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 325
    .line 326
    if-eq v14, v12, :cond_11

    .line 327
    .line 328
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v12, Ljava/lang/Integer;

    .line 331
    .line 332
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    if-ne v14, v12, :cond_b

    .line 337
    .line 338
    goto/16 :goto_6

    .line 339
    .line 340
    :cond_b
    iget v9, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 341
    .line 342
    if-eq v9, v13, :cond_d

    .line 343
    .line 344
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v12, Ljava/lang/Integer;

    .line 347
    .line 348
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    if-eq v9, v12, :cond_c

    .line 353
    .line 354
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v12, Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    if-ne v9, v12, :cond_d

    .line 363
    .line 364
    :cond_c
    move v14, v9

    .line 365
    goto :goto_6

    .line 366
    :cond_d
    if-eq v14, v8, :cond_11

    .line 367
    .line 368
    const/4 v12, 0x7

    .line 369
    if-eq v14, v12, :cond_11

    .line 370
    .line 371
    if-ne v14, v3, :cond_e

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_e
    if-eqz v7, :cond_1e

    .line 375
    .line 376
    const-string v3, "Given tag ("

    .line 377
    .line 378
    const-string v10, ") value didn\'t match with one of expected formats: "

    .line 379
    .line 380
    invoke-static {v3, v1, v10}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 385
    .line 386
    aget-object v12, v10, v14

    .line 387
    .line 388
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v12, ""

    .line 392
    .line 393
    const-string v14, ", "

    .line 394
    .line 395
    if-ne v9, v13, :cond_f

    .line 396
    .line 397
    move-object v9, v12

    .line 398
    goto :goto_4

    .line 399
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    aget-object v9, v10, v9

    .line 405
    .line 406
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    :goto_4
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v9, " (guess: "

    .line 417
    .line 418
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-object v9, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v9, Ljava/lang/Integer;

    .line 424
    .line 425
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    aget-object v9, v10, v9

    .line 430
    .line 431
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    iget-object v9, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v9, Ljava/lang/Integer;

    .line 437
    .line 438
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v9

    .line 442
    if-ne v9, v13, :cond_10

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v11, Ljava/lang/Integer;

    .line 453
    .line 454
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 455
    .line 456
    .line 457
    move-result v11

    .line 458
    aget-object v10, v10, v11

    .line 459
    .line 460
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v12

    .line 467
    :goto_5
    const-string v9, ")"

    .line 468
    .line 469
    invoke-static {v3, v12, v9, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_12

    .line 473
    .line 474
    :cond_11
    :goto_6
    const-string v3, "/"

    .line 475
    .line 476
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 477
    .line 478
    const-string v11, ","

    .line 479
    .line 480
    packed-switch v14, :pswitch_data_0

    .line 481
    .line 482
    .line 483
    :pswitch_0
    move-object/from16 v16, v6

    .line 484
    .line 485
    move/from16 p2, v7

    .line 486
    .line 487
    if-eqz p2, :cond_1d

    .line 488
    .line 489
    const-string v3, "Data format isn\'t one of expected formats: "

    .line 490
    .line 491
    move-object/from16 v6, v16

    .line 492
    .line 493
    invoke-static {v3, v14, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_13

    .line 497
    .line 498
    :pswitch_1
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    array-length v11, v3

    .line 503
    new-array v12, v11, [D

    .line 504
    .line 505
    move v13, v5

    .line 506
    :goto_7
    array-length v14, v3

    .line 507
    if-ge v13, v14, :cond_12

    .line 508
    .line 509
    aget-object v14, v3, v13

    .line 510
    .line 511
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 512
    .line 513
    .line 514
    move-result-wide v14

    .line 515
    aput-wide v14, v12, v13

    .line 516
    .line 517
    add-int/lit8 v13, v13, 0x1

    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_12
    aget-object v3, v10, v4

    .line 521
    .line 522
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 523
    .line 524
    const/16 v13, 0xc

    .line 525
    .line 526
    aget v9, v9, v13

    .line 527
    .line 528
    mul-int/2addr v9, v11

    .line 529
    new-array v9, v9, [B

    .line 530
    .line 531
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 536
    .line 537
    .line 538
    move v10, v5

    .line 539
    :goto_8
    if-ge v10, v11, :cond_13

    .line 540
    .line 541
    aget-wide v14, v12, v10

    .line 542
    .line 543
    invoke-virtual {v9, v14, v15}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 544
    .line 545
    .line 546
    add-int/lit8 v10, v10, 0x1

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_13
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 550
    .line 551
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    invoke-direct {v10, v13, v11, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    goto/16 :goto_12

    .line 562
    .line 563
    :pswitch_2
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    array-length v11, v8

    .line 568
    new-array v12, v11, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 569
    .line 570
    move v14, v13

    .line 571
    move v13, v5

    .line 572
    :goto_9
    array-length v15, v8

    .line 573
    if-ge v5, v15, :cond_14

    .line 574
    .line 575
    aget-object v15, v8, v5

    .line 576
    .line 577
    invoke-virtual {v15, v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v14

    .line 581
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 582
    .line 583
    aget-object v13, v14, v13

    .line 584
    .line 585
    move-object/from16 v16, v6

    .line 586
    .line 587
    move/from16 p2, v7

    .line 588
    .line 589
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 590
    .line 591
    .line 592
    move-result-wide v6

    .line 593
    double-to-long v6, v6

    .line 594
    const/4 v13, 0x1

    .line 595
    aget-object v13, v14, v13

    .line 596
    .line 597
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 598
    .line 599
    .line 600
    move-result-wide v13

    .line 601
    double-to-long v13, v13

    .line 602
    invoke-direct {v15, v6, v7, v13, v14}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    .line 603
    .line 604
    .line 605
    aput-object v15, v12, v5

    .line 606
    .line 607
    add-int/lit8 v5, v5, 0x1

    .line 608
    .line 609
    const/4 v13, 0x0

    .line 610
    const/4 v14, -0x1

    .line 611
    move/from16 v7, p2

    .line 612
    .line 613
    move-object/from16 v6, v16

    .line 614
    .line 615
    goto :goto_9

    .line 616
    :cond_14
    move-object/from16 v16, v6

    .line 617
    .line 618
    move/from16 p2, v7

    .line 619
    .line 620
    aget-object v3, v10, v4

    .line 621
    .line 622
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 623
    .line 624
    const/16 v6, 0xa

    .line 625
    .line 626
    aget v7, v9, v6

    .line 627
    .line 628
    mul-int/2addr v7, v11

    .line 629
    new-array v7, v7, [B

    .line 630
    .line 631
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 636
    .line 637
    .line 638
    const/4 v5, 0x0

    .line 639
    :goto_a
    if-ge v5, v11, :cond_15

    .line 640
    .line 641
    aget-object v8, v12, v5

    .line 642
    .line 643
    iget-wide v9, v8, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 644
    .line 645
    long-to-int v9, v9

    .line 646
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 647
    .line 648
    .line 649
    iget-wide v8, v8, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 650
    .line 651
    long-to-int v8, v8

    .line 652
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 653
    .line 654
    .line 655
    add-int/lit8 v5, v5, 0x1

    .line 656
    .line 657
    goto :goto_a

    .line 658
    :cond_15
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 659
    .line 660
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 661
    .line 662
    .line 663
    move-result-object v7

    .line 664
    invoke-direct {v5, v6, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    goto/16 :goto_10

    .line 671
    .line 672
    :pswitch_3
    move-object/from16 v16, v6

    .line 673
    .line 674
    move/from16 p2, v7

    .line 675
    .line 676
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    array-length v5, v3

    .line 681
    new-array v6, v5, [I

    .line 682
    .line 683
    const/4 v7, 0x0

    .line 684
    :goto_b
    array-length v8, v3

    .line 685
    if-ge v7, v8, :cond_16

    .line 686
    .line 687
    aget-object v8, v3, v7

    .line 688
    .line 689
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    move-result v8

    .line 693
    aput v8, v6, v7

    .line 694
    .line 695
    add-int/lit8 v7, v7, 0x1

    .line 696
    .line 697
    goto :goto_b

    .line 698
    :cond_16
    aget-object v3, v10, v4

    .line 699
    .line 700
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 701
    .line 702
    const/16 v8, 0x9

    .line 703
    .line 704
    aget v9, v9, v8

    .line 705
    .line 706
    mul-int/2addr v9, v5

    .line 707
    new-array v9, v9, [B

    .line 708
    .line 709
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 710
    .line 711
    .line 712
    move-result-object v9

    .line 713
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 714
    .line 715
    .line 716
    const/4 v7, 0x0

    .line 717
    :goto_c
    if-ge v7, v5, :cond_17

    .line 718
    .line 719
    aget v10, v6, v7

    .line 720
    .line 721
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 722
    .line 723
    .line 724
    add-int/lit8 v7, v7, 0x1

    .line 725
    .line 726
    goto :goto_c

    .line 727
    :cond_17
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 728
    .line 729
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    .line 730
    .line 731
    .line 732
    move-result-object v7

    .line 733
    invoke-direct {v6, v8, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    goto/16 :goto_10

    .line 740
    .line 741
    :pswitch_4
    move-object/from16 v16, v6

    .line 742
    .line 743
    move/from16 p2, v7

    .line 744
    .line 745
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v5

    .line 749
    array-length v6, v5

    .line 750
    new-array v6, v6, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 751
    .line 752
    const/4 v7, 0x0

    .line 753
    :goto_d
    array-length v8, v5

    .line 754
    if-ge v7, v8, :cond_18

    .line 755
    .line 756
    aget-object v8, v5, v7

    .line 757
    .line 758
    invoke-virtual {v8, v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v8

    .line 762
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 763
    .line 764
    const/4 v11, 0x0

    .line 765
    aget-object v11, v8, v11

    .line 766
    .line 767
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 768
    .line 769
    .line 770
    move-result-wide v11

    .line 771
    double-to-long v11, v11

    .line 772
    const/4 v13, 0x1

    .line 773
    aget-object v8, v8, v13

    .line 774
    .line 775
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 776
    .line 777
    .line 778
    move-result-wide v13

    .line 779
    double-to-long v13, v13

    .line 780
    invoke-direct {v9, v11, v12, v13, v14}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    .line 781
    .line 782
    .line 783
    aput-object v9, v6, v7

    .line 784
    .line 785
    add-int/lit8 v7, v7, 0x1

    .line 786
    .line 787
    const/4 v13, -0x1

    .line 788
    goto :goto_d

    .line 789
    :cond_18
    aget-object v3, v10, v4

    .line 790
    .line 791
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 792
    .line 793
    invoke-static {v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    goto :goto_10

    .line 801
    :pswitch_5
    move-object/from16 v16, v6

    .line 802
    .line 803
    move/from16 p2, v7

    .line 804
    .line 805
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    array-length v5, v3

    .line 810
    new-array v5, v5, [J

    .line 811
    .line 812
    const/4 v6, 0x0

    .line 813
    :goto_e
    array-length v7, v3

    .line 814
    if-ge v6, v7, :cond_19

    .line 815
    .line 816
    aget-object v7, v3, v6

    .line 817
    .line 818
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 819
    .line 820
    .line 821
    move-result-wide v7

    .line 822
    aput-wide v7, v5, v6

    .line 823
    .line 824
    add-int/lit8 v6, v6, 0x1

    .line 825
    .line 826
    goto :goto_e

    .line 827
    :cond_19
    aget-object v3, v10, v4

    .line 828
    .line 829
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 830
    .line 831
    invoke-static {v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    goto :goto_10

    .line 839
    :pswitch_6
    move-object/from16 v16, v6

    .line 840
    .line 841
    move/from16 p2, v7

    .line 842
    .line 843
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    array-length v5, v3

    .line 848
    new-array v5, v5, [I

    .line 849
    .line 850
    const/4 v6, 0x0

    .line 851
    :goto_f
    array-length v7, v3

    .line 852
    if-ge v6, v7, :cond_1a

    .line 853
    .line 854
    aget-object v7, v3, v6

    .line 855
    .line 856
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    move-result v7

    .line 860
    aput v7, v5, v6

    .line 861
    .line 862
    add-int/lit8 v6, v6, 0x1

    .line 863
    .line 864
    goto :goto_f

    .line 865
    :cond_1a
    aget-object v3, v10, v4

    .line 866
    .line 867
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 868
    .line 869
    invoke-static {v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    goto :goto_10

    .line 877
    :pswitch_7
    move-object/from16 v16, v6

    .line 878
    .line 879
    move/from16 p2, v7

    .line 880
    .line 881
    aget-object v3, v10, v4

    .line 882
    .line 883
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 884
    .line 885
    .line 886
    move-result-object v5

    .line 887
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    :goto_10
    const/4 v3, 0x0

    .line 891
    const/4 v5, 0x1

    .line 892
    move v8, v5

    .line 893
    move-object/from16 v6, v16

    .line 894
    .line 895
    move v5, v3

    .line 896
    goto :goto_13

    .line 897
    :pswitch_8
    move-object/from16 v16, v6

    .line 898
    .line 899
    move/from16 p2, v7

    .line 900
    .line 901
    aget-object v3, v10, v4

    .line 902
    .line 903
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    const/4 v8, 0x1

    .line 908
    if-ne v5, v8, :cond_1b

    .line 909
    .line 910
    const/4 v5, 0x0

    .line 911
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 912
    .line 913
    .line 914
    move-result v6

    .line 915
    const/16 v7, 0x30

    .line 916
    .line 917
    if-lt v6, v7, :cond_1c

    .line 918
    .line 919
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 920
    .line 921
    .line 922
    move-result v6

    .line 923
    const/16 v9, 0x31

    .line 924
    .line 925
    if-gt v6, v9, :cond_1c

    .line 926
    .line 927
    new-array v6, v8, [B

    .line 928
    .line 929
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 930
    .line 931
    .line 932
    move-result v9

    .line 933
    sub-int/2addr v9, v7

    .line 934
    int-to-byte v7, v9

    .line 935
    aput-byte v7, v6, v5

    .line 936
    .line 937
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 938
    .line 939
    invoke-direct {v7, v8, v8, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 940
    .line 941
    .line 942
    goto :goto_11

    .line 943
    :cond_1b
    const/4 v5, 0x0

    .line 944
    :cond_1c
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 945
    .line 946
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 947
    .line 948
    .line 949
    move-result-object v6

    .line 950
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 951
    .line 952
    array-length v9, v6

    .line 953
    invoke-direct {v7, v8, v9, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 954
    .line 955
    .line 956
    :goto_11
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    :cond_1d
    move-object/from16 v6, v16

    .line 960
    .line 961
    goto :goto_13

    .line 962
    :cond_1e
    :goto_12
    move/from16 p2, v7

    .line 963
    .line 964
    :goto_13
    add-int/lit8 v4, v4, 0x1

    .line 965
    .line 966
    const/4 v3, 0x2

    .line 967
    move/from16 v7, p2

    .line 968
    .line 969
    goto/16 :goto_3

    .line 970
    .line 971
    :cond_1f
    return-void

    .line 972
    nop

    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 17
    .line 18
    const/4 v4, 0x6

    .line 19
    if-eqz v3, :cond_11

    .line 20
    .line 21
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-eq v3, v5, :cond_1

    .line 31
    .line 32
    if-eq v3, v4, :cond_0

    .line 33
    .line 34
    const/4 v6, 0x7

    .line 35
    if-eq v3, v6, :cond_1

    .line 36
    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_1
    const-string v3, "BitsPerSample"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 51
    .line 52
    const-string v6, "ExifInterface"

    .line 53
    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-virtual {v3, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, [I

    .line 63
    .line 64
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 65
    .line 66
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget v9, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 74
    .line 75
    const/4 v10, 0x3

    .line 76
    if-ne v9, v10, :cond_5

    .line 77
    .line 78
    const-string v9, "PhotometricInterpretation"

    .line 79
    .line 80
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-ne v9, v5, :cond_3

    .line 95
    .line 96
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 97
    .line 98
    invoke-static {v3, v10}, Ljava/util/Arrays;->equals([I[I)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-nez v10, :cond_4

    .line 103
    .line 104
    :cond_3
    if-ne v9, v4, :cond_5

    .line 105
    .line 106
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([I[I)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    :cond_4
    :goto_0
    move v3, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 115
    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    const-string v3, "Unsupported data type value"

    .line 119
    .line 120
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_6
    const/4 v3, 0x0

    .line 124
    :goto_1
    if-eqz v3, :cond_12

    .line 125
    .line 126
    const-string v3, " bytes."

    .line 127
    .line 128
    const-string v4, "StripOffsets"

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 135
    .line 136
    const-string v8, "StripByteCounts"

    .line 137
    .line 138
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 143
    .line 144
    if-eqz v4, :cond_12

    .line 145
    .line 146
    if-eqz v2, :cond_12

    .line 147
    .line 148
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 149
    .line 150
    invoke-virtual {v4, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 159
    .line 160
    invoke-virtual {v2, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v4, :cond_10

    .line 169
    .line 170
    array-length v8, v4

    .line 171
    if-nez v8, :cond_7

    .line 172
    .line 173
    goto/16 :goto_6

    .line 174
    .line 175
    :cond_7
    if-eqz v2, :cond_f

    .line 176
    .line 177
    array-length v8, v2

    .line 178
    if-nez v8, :cond_8

    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :cond_8
    array-length v8, v4

    .line 183
    array-length v9, v2

    .line 184
    if-eq v8, v9, :cond_9

    .line 185
    .line 186
    const-string/jumbo v0, "stripOffsets and stripByteCounts should have same length."

    .line 187
    .line 188
    .line 189
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :cond_9
    array-length v8, v2

    .line 195
    const-wide/16 v9, 0x0

    .line 196
    .line 197
    const/4 v11, 0x0

    .line 198
    :goto_2
    if-ge v11, v8, :cond_a

    .line 199
    .line 200
    aget-wide v12, v2, v11

    .line 201
    .line 202
    add-long/2addr v9, v12

    .line 203
    add-int/lit8 v11, v11, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    long-to-int v8, v9

    .line 207
    new-array v9, v8, [B

    .line 208
    .line 209
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 210
    .line 211
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 212
    .line 213
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v11, 0x0

    .line 217
    const/4 v12, 0x0

    .line 218
    :goto_3
    array-length v13, v4

    .line 219
    if-ge v10, v13, :cond_e

    .line 220
    .line 221
    aget-wide v13, v4, v10

    .line 222
    .line 223
    long-to-int v13, v13

    .line 224
    aget-wide v14, v2, v10

    .line 225
    .line 226
    long-to-int v14, v14

    .line 227
    array-length v15, v4

    .line 228
    sub-int/2addr v15, v5

    .line 229
    if-ge v10, v15, :cond_b

    .line 230
    .line 231
    add-int v5, v13, v14

    .line 232
    .line 233
    move/from16 v16, v8

    .line 234
    .line 235
    int-to-long v7, v5

    .line 236
    add-int/lit8 v5, v10, 0x1

    .line 237
    .line 238
    aget-wide v17, v4, v5

    .line 239
    .line 240
    cmp-long v5, v7, v17

    .line 241
    .line 242
    if-eqz v5, :cond_c

    .line 243
    .line 244
    const/4 v5, 0x0

    .line 245
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_b
    move/from16 v16, v8

    .line 249
    .line 250
    :cond_c
    :goto_4
    sub-int/2addr v13, v11

    .line 251
    if-gez v13, :cond_d

    .line 252
    .line 253
    const-string v0, "Invalid strip offset value"

    .line 254
    .line 255
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_d
    :try_start_0
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .line 261
    .line 262
    add-int/2addr v11, v13

    .line 263
    new-array v5, v14, [B

    .line 264
    .line 265
    :try_start_1
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    .line 267
    .line 268
    add-int/2addr v11, v14

    .line 269
    const/4 v7, 0x0

    .line 270
    invoke-static {v5, v7, v9, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    .line 272
    .line 273
    add-int/2addr v12, v14

    .line 274
    add-int/lit8 v10, v10, 0x1

    .line 275
    .line 276
    const/4 v5, 0x1

    .line 277
    move/from16 v8, v16

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :catch_0
    const-string v0, "Failed to read "

    .line 281
    .line 282
    invoke-static {v0, v14, v3, v6}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :catch_1
    const-string v0, "Failed to skip "

    .line 287
    .line 288
    invoke-static {v0, v13, v3, v6}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_e
    move/from16 v16, v8

    .line 293
    .line 294
    iput-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 295
    .line 296
    iget-boolean v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 297
    .line 298
    if-eqz v1, :cond_12

    .line 299
    .line 300
    const/4 v1, 0x0

    .line 301
    aget-wide v1, v4, v1

    .line 302
    .line 303
    long-to-int v1, v1

    .line 304
    iput v1, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 305
    .line 306
    move/from16 v1, v16

    .line 307
    .line 308
    iput v1, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_f
    :goto_5
    const-string/jumbo v0, "stripByteCounts should not be null or have zero length."

    .line 312
    .line 313
    .line 314
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_10
    :goto_6
    const-string/jumbo v0, "stripOffsets should not be null or have zero length."

    .line 319
    .line 320
    .line 321
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_11
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 326
    .line 327
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 328
    .line 329
    .line 330
    :cond_12
    :goto_7
    return-void
.end method

.method public final swapBasedOnImageSize(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 12
    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-ge v1, v3, :cond_5

    .line 95
    .line 96
    if-ge v2, p0, :cond_5

    .line 97
    .line 98
    aget-object p0, v0, p1

    .line 99
    .line 100
    aget-object v1, v0, p2

    .line 101
    .line 102
    aput-object v1, v0, p1

    .line 103
    .line 104
    aput-object p0, v0, p2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 108
    .line 109
    const-string p0, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 116
    .line 117
    const-string p0, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_2
    return-void

    .line 123
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 124
    .line 125
    const-string p0, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_7
    return-void
.end method

.method public final updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 52
    .line 53
    const-string v6, "ImageWidth"

    .line 54
    .line 55
    const-string v7, "ImageLength"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    const-string v8, "Invalid crop size values. cropSize="

    .line 66
    .line 67
    const-string v9, "ExifInterface"

    .line 68
    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v5, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v4

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    filled-new-array {v1}, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    aget-object p1, p1, v3

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    filled-new-array {p1}, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, [I

    .line 137
    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    array-length v1, p1

    .line 141
    if-eq v1, v5, :cond_3

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    aget v1, p1, v4

    .line 145
    .line 146
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    aget p1, p1, v3

    .line 153
    .line 154
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 155
    .line 156
    invoke-static {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    :goto_1
    aget-object p1, v0, p2

    .line 161
    .line 162
    invoke-virtual {p1, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    aget-object p1, v0, p2

    .line 166
    .line 167
    invoke-virtual {p1, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_5
    if-eqz v2, :cond_6

    .line 193
    .line 194
    if-eqz v3, :cond_6

    .line 195
    .line 196
    if-eqz v4, :cond_6

    .line 197
    .line 198
    if-eqz v5, :cond_6

    .line 199
    .line 200
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 201
    .line 202
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 207
    .line 208
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 213
    .line 214
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-le v1, p1, :cond_8

    .line 225
    .line 226
    if-le v2, v3, :cond_8

    .line 227
    .line 228
    sub-int/2addr v1, p1

    .line 229
    sub-int/2addr v2, v3

    .line 230
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 231
    .line 232
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 237
    .line 238
    invoke-static {v2, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    aget-object v1, v0, p2

    .line 243
    .line 244
    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    aget-object p1, v0, p2

    .line 248
    .line 249
    invoke-virtual {p1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    aget-object v1, v0, p2

    .line 254
    .line 255
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 260
    .line 261
    aget-object v2, v0, p2

    .line 262
    .line 263
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 268
    .line 269
    if-eqz v1, :cond_7

    .line 270
    .line 271
    if-nez v2, :cond_8

    .line 272
    .line 273
    :cond_7
    aget-object v1, v0, p2

    .line 274
    .line 275
    const-string v2, "JPEGInterchangeFormat"

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 282
    .line 283
    aget-object v0, v0, p2

    .line 284
    .line 285
    const-string v2, "JPEGInterchangeFormatLength"

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 292
    .line 293
    if-eqz v1, :cond_8

    .line 294
    .line 295
    if-eqz v0, :cond_8

    .line 296
    .line 297
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 298
    .line 299
    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    int-to-long v2, v0

    .line 310
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 311
    .line 312
    .line 313
    new-array v1, v1, [B

    .line 314
    .line 315
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 316
    .line 317
    .line 318
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 319
    .line 320
    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 324
    .line 325
    .line 326
    :cond_8
    :goto_3
    return-void
.end method

.method public final validateImages()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v7, v8}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V
    .locals 14

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    new-array v2, v2, [I

    .line 8
    .line 9
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    const/4 v5, 0x0

    .line 13
    move v6, v5

    .line 14
    :goto_0
    if-ge v6, v4, :cond_0

    .line 15
    .line 16
    aget-object v7, v3, v6

    .line 17
    .line 18
    iget-object v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v6, v6, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 27
    .line 28
    const-string v6, "StripByteCounts"

    .line 29
    .line 30
    const-string v7, "JPEGInterchangeFormatLength"

    .line 31
    .line 32
    const-string v8, "StripOffsets"

    .line 33
    .line 34
    const-string v9, "JPEGInterchangeFormat"

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v6}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0, v9}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    move v4, v5

    .line 56
    :goto_2
    array-length v10, v0

    .line 57
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 58
    .line 59
    if-ge v4, v10, :cond_5

    .line 60
    .line 61
    aget-object v10, v11, v4

    .line 62
    .line 63
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_4

    .line 76
    .line 77
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    check-cast v11, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    if-nez v11, :cond_3

    .line 88
    .line 89
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const/4 v4, 0x1

    .line 97
    aget-object v10, v11, v4

    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    const-wide/16 v12, 0x0

    .line 104
    .line 105
    if-nez v10, :cond_6

    .line 106
    .line 107
    aget-object v5, v11, v5

    .line 108
    .line 109
    aget-object v4, v3, v4

    .line 110
    .line 111
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 114
    .line 115
    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_6
    const/4 v4, 0x2

    .line 123
    aget-object v5, v11, v4

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_7

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    aget-object v5, v11, v5

    .line 133
    .line 134
    aget-object v4, v3, v4

    .line 135
    .line 136
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :cond_7
    const/4 v4, 0x3

    .line 148
    aget-object v5, v11, v4

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-nez v5, :cond_8

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    aget-object v5, v11, v5

    .line 158
    .line 159
    aget-object v4, v3, v4

    .line 160
    .line 161
    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 164
    .line 165
    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_8
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 173
    .line 174
    const/4 v5, 0x4

    .line 175
    if-eqz v4, :cond_a

    .line 176
    .line 177
    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 178
    .line 179
    if-eqz v4, :cond_9

    .line 180
    .line 181
    aget-object v4, v11, v5

    .line 182
    .line 183
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 184
    .line 185
    const/4 v10, 0x0

    .line 186
    invoke-static {v10, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    aget-object v4, v11, v5

    .line 194
    .line 195
    iget v7, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 196
    .line 197
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 198
    .line 199
    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    aget-object v4, v11, v5

    .line 208
    .line 209
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-static {v12, v13, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    aget-object v4, v11, v5

    .line 219
    .line 220
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 221
    .line 222
    int-to-long v12, v6

    .line 223
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 224
    .line 225
    invoke-static {v12, v13, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_a
    :goto_4
    const/4 v4, 0x0

    .line 233
    :goto_5
    array-length v6, v0

    .line 234
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 235
    .line 236
    if-ge v4, v6, :cond_d

    .line 237
    .line 238
    aget-object v6, v11, v4

    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const/4 v10, 0x0

    .line 249
    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-eqz v12, :cond_c

    .line 254
    .line 255
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    check-cast v12, Ljava/util/Map$Entry;

    .line 260
    .line 261
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    check-cast v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 266
    .line 267
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    iget v13, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 271
    .line 272
    aget v13, v7, v13

    .line 273
    .line 274
    iget v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 275
    .line 276
    mul-int/2addr v13, v12

    .line 277
    if-le v13, v5, :cond_b

    .line 278
    .line 279
    add-int/2addr v10, v13

    .line 280
    goto :goto_6

    .line 281
    :cond_c
    aget v6, v2, v4

    .line 282
    .line 283
    add-int/2addr v6, v10

    .line 284
    aput v6, v2, v4

    .line 285
    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_d
    const/16 v4, 0x8

    .line 290
    .line 291
    const/4 v6, 0x0

    .line 292
    :goto_7
    array-length v10, v0

    .line 293
    if-ge v6, v10, :cond_f

    .line 294
    .line 295
    aget-object v10, v11, v6

    .line 296
    .line 297
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-nez v10, :cond_e

    .line 302
    .line 303
    aput v4, v1, v6

    .line 304
    .line 305
    aget-object v10, v11, v6

    .line 306
    .line 307
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    mul-int/lit8 v10, v10, 0xc

    .line 312
    .line 313
    add-int/lit8 v10, v10, 0x2

    .line 314
    .line 315
    add-int/2addr v10, v5

    .line 316
    aget v12, v2, v6

    .line 317
    .line 318
    add-int/2addr v10, v12

    .line 319
    add-int/2addr v10, v4

    .line 320
    move v4, v10

    .line 321
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_f
    iget-boolean v6, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 325
    .line 326
    if-eqz v6, :cond_11

    .line 327
    .line 328
    iget-boolean v6, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    .line 329
    .line 330
    if-eqz v6, :cond_10

    .line 331
    .line 332
    aget-object v6, v11, v5

    .line 333
    .line 334
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 335
    .line 336
    invoke-static {v4, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_10
    aget-object v6, v11, v5

    .line 345
    .line 346
    int-to-long v12, v4

    .line 347
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 348
    .line 349
    invoke-static {v12, v13, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    :goto_8
    iput v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 357
    .line 358
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 359
    .line 360
    add-int/2addr v4, v6

    .line 361
    :cond_11
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 362
    .line 363
    if-ne v6, v5, :cond_12

    .line 364
    .line 365
    add-int/lit8 v4, v4, 0x8

    .line 366
    .line 367
    :cond_12
    sget-boolean v6, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 368
    .line 369
    if-eqz v6, :cond_13

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    :goto_9
    array-length v8, v0

    .line 373
    if-ge v6, v8, :cond_13

    .line 374
    .line 375
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    aget v9, v1, v6

    .line 380
    .line 381
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    aget-object v10, v11, v6

    .line 386
    .line 387
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    aget v12, v2, v6

    .line 396
    .line 397
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    filled-new-array {v8, v9, v10, v12, v13}, [Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    .line 410
    .line 411
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    const-string v9, "ExifInterface"

    .line 416
    .line 417
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    add-int/lit8 v6, v6, 0x1

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_13
    const/4 v2, 0x1

    .line 424
    aget-object v6, v11, v2

    .line 425
    .line 426
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    if-nez v6, :cond_14

    .line 431
    .line 432
    const/4 v6, 0x0

    .line 433
    aget-object v6, v11, v6

    .line 434
    .line 435
    aget-object v8, v3, v2

    .line 436
    .line 437
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 438
    .line 439
    aget v2, v1, v2

    .line 440
    .line 441
    int-to-long v9, v2

    .line 442
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 443
    .line 444
    invoke-static {v9, v10, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    :cond_14
    const/4 v2, 0x2

    .line 452
    aget-object v6, v11, v2

    .line 453
    .line 454
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    if-nez v6, :cond_15

    .line 459
    .line 460
    const/4 v6, 0x0

    .line 461
    aget-object v6, v11, v6

    .line 462
    .line 463
    aget-object v8, v3, v2

    .line 464
    .line 465
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 466
    .line 467
    aget v2, v1, v2

    .line 468
    .line 469
    int-to-long v9, v2

    .line 470
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 471
    .line 472
    invoke-static {v9, v10, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    :cond_15
    const/4 v2, 0x3

    .line 480
    aget-object v6, v11, v2

    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-nez v6, :cond_16

    .line 487
    .line 488
    const/4 v6, 0x1

    .line 489
    aget-object v6, v11, v6

    .line 490
    .line 491
    aget-object v3, v3, v2

    .line 492
    .line 493
    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 494
    .line 495
    aget v2, v1, v2

    .line 496
    .line 497
    int-to-long v8, v2

    .line 498
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 499
    .line 500
    invoke-static {v8, v9, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    :cond_16
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 508
    .line 509
    const/16 v3, 0xe

    .line 510
    .line 511
    if-eq v2, v5, :cond_19

    .line 512
    .line 513
    const/16 v6, 0xd

    .line 514
    .line 515
    if-eq v2, v6, :cond_18

    .line 516
    .line 517
    if-eq v2, v3, :cond_17

    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_17
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 521
    .line 522
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 526
    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_18
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 530
    .line 531
    .line 532
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 533
    .line 534
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 535
    .line 536
    .line 537
    goto :goto_a

    .line 538
    :cond_19
    const v2, 0xffff

    .line 539
    .line 540
    .line 541
    if-gt v4, v2, :cond_24

    .line 542
    .line 543
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 544
    .line 545
    .line 546
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 547
    .line 548
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 549
    .line 550
    .line 551
    :goto_a
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 552
    .line 553
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 554
    .line 555
    if-ne v2, v6, :cond_1a

    .line 556
    .line 557
    const/16 v2, 0x4d4d

    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_1a
    const/16 v2, 0x4949

    .line 561
    .line 562
    :goto_b
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 563
    .line 564
    .line 565
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 566
    .line 567
    iput-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 568
    .line 569
    const/16 v2, 0x2a

    .line 570
    .line 571
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 572
    .line 573
    .line 574
    const-wide/16 v8, 0x8

    .line 575
    .line 576
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 577
    .line 578
    .line 579
    const/4 v2, 0x0

    .line 580
    :goto_c
    array-length v6, v0

    .line 581
    if-ge v2, v6, :cond_21

    .line 582
    .line 583
    aget-object v6, v11, v2

    .line 584
    .line 585
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    if-nez v6, :cond_20

    .line 590
    .line 591
    aget-object v6, v11, v2

    .line 592
    .line 593
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 598
    .line 599
    .line 600
    aget v6, v1, v2

    .line 601
    .line 602
    add-int/lit8 v6, v6, 0x2

    .line 603
    .line 604
    aget-object v8, v11, v2

    .line 605
    .line 606
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    .line 607
    .line 608
    .line 609
    move-result v8

    .line 610
    mul-int/lit8 v8, v8, 0xc

    .line 611
    .line 612
    add-int/2addr v8, v6

    .line 613
    add-int/2addr v8, v5

    .line 614
    aget-object v6, v11, v2

    .line 615
    .line 616
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    :cond_1b
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 625
    .line 626
    .line 627
    move-result v9

    .line 628
    if-eqz v9, :cond_1d

    .line 629
    .line 630
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    check-cast v9, Ljava/util/Map$Entry;

    .line 635
    .line 636
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 637
    .line 638
    aget-object v10, v10, v2

    .line 639
    .line 640
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v12

    .line 644
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    check-cast v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 649
    .line 650
    iget v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 651
    .line 652
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    check-cast v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 657
    .line 658
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    iget v12, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 662
    .line 663
    aget v12, v7, v12

    .line 664
    .line 665
    iget v13, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 666
    .line 667
    mul-int/2addr v12, v13

    .line 668
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 669
    .line 670
    .line 671
    iget v10, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 672
    .line 673
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 674
    .line 675
    .line 676
    iget v10, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 677
    .line 678
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 679
    .line 680
    .line 681
    if-le v12, v5, :cond_1c

    .line 682
    .line 683
    int-to-long v9, v8

    .line 684
    invoke-virtual {p1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 685
    .line 686
    .line 687
    add-int/2addr v8, v12

    .line 688
    goto :goto_d

    .line 689
    :cond_1c
    iget-object v9, v9, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 690
    .line 691
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 692
    .line 693
    .line 694
    if-ge v12, v5, :cond_1b

    .line 695
    .line 696
    :goto_e
    if-ge v12, v5, :cond_1b

    .line 697
    .line 698
    const/4 v9, 0x0

    .line 699
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 700
    .line 701
    .line 702
    add-int/lit8 v12, v12, 0x1

    .line 703
    .line 704
    goto :goto_e

    .line 705
    :cond_1d
    if-nez v2, :cond_1e

    .line 706
    .line 707
    aget-object v6, v11, v5

    .line 708
    .line 709
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v6

    .line 713
    if-nez v6, :cond_1e

    .line 714
    .line 715
    aget v6, v1, v5

    .line 716
    .line 717
    int-to-long v8, v6

    .line 718
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 719
    .line 720
    .line 721
    goto :goto_f

    .line 722
    :cond_1e
    const-wide/16 v8, 0x0

    .line 723
    .line 724
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 725
    .line 726
    .line 727
    :goto_f
    aget-object v6, v11, v2

    .line 728
    .line 729
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 730
    .line 731
    .line 732
    move-result-object v6

    .line 733
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    :cond_1f
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    if-eqz v8, :cond_20

    .line 742
    .line 743
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v8

    .line 747
    check-cast v8, Ljava/util/Map$Entry;

    .line 748
    .line 749
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v8

    .line 753
    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 754
    .line 755
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 756
    .line 757
    array-length v9, v8

    .line 758
    if-le v9, v5, :cond_1f

    .line 759
    .line 760
    array-length v9, v8

    .line 761
    const/4 v10, 0x0

    .line 762
    invoke-virtual {p1, v8, v10, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 763
    .line 764
    .line 765
    goto :goto_10

    .line 766
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 767
    .line 768
    goto/16 :goto_c

    .line 769
    .line 770
    :cond_21
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 771
    .line 772
    if-eqz v0, :cond_22

    .line 773
    .line 774
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 779
    .line 780
    .line 781
    :cond_22
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 782
    .line 783
    if-ne p0, v3, :cond_23

    .line 784
    .line 785
    rem-int/lit8 v4, v4, 0x2

    .line 786
    .line 787
    const/4 p0, 0x1

    .line 788
    if-ne v4, p0, :cond_23

    .line 789
    .line 790
    const/4 p0, 0x0

    .line 791
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 792
    .line 793
    .line 794
    :cond_23
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 795
    .line 796
    iput-object p0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 797
    .line 798
    return-void

    .line 799
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 800
    .line 801
    const-string p1, "Size of exif data ("

    .line 802
    .line 803
    const-string v0, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"

    .line 804
    .line 805
    invoke-static {p1, v4, v0}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object p1

    .line 809
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    throw p0
.end method
