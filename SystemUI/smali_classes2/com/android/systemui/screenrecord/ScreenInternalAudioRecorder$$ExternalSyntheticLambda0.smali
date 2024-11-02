.class public final synthetic Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    iget-boolean v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    div-int/lit8 v4, v0, 0x2

    .line 17
    .line 18
    new-array v5, v4, [S

    .line 19
    .line 20
    new-array v4, v4, [S

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v5, 0x0

    .line 24
    move-object v4, v5

    .line 25
    :goto_0
    const/4 v6, 0x0

    .line 26
    move v7, v6

    .line 27
    move v8, v7

    .line 28
    move v9, v8

    .line 29
    move v10, v9

    .line 30
    :goto_1
    if-eqz v3, :cond_8

    .line 31
    .line 32
    iget-object v9, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 33
    .line 34
    array-length v10, v5

    .line 35
    sub-int/2addr v10, v6

    .line 36
    invoke-virtual {v9, v5, v6, v10}, Landroid/media/AudioRecord;->read([SII)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    iget-object v10, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    .line 41
    .line 42
    array-length v11, v4

    .line 43
    sub-int/2addr v11, v7

    .line 44
    invoke-virtual {v10, v4, v7, v11}, Landroid/media/AudioRecord;->read([SII)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-gez v9, :cond_1

    .line 49
    .line 50
    if-gez v10, :cond_1

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_1
    if-gez v9, :cond_2

    .line 55
    .line 56
    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 57
    .line 58
    .line 59
    move v6, v7

    .line 60
    move v9, v10

    .line 61
    :cond_2
    if-gez v10, :cond_3

    .line 62
    .line 63
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 64
    .line 65
    .line 66
    move v7, v6

    .line 67
    move v10, v9

    .line 68
    :cond_3
    add-int/2addr v9, v6

    .line 69
    add-int/2addr v10, v7

    .line 70
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    mul-int/lit8 v12, v11, 0x2

    .line 75
    .line 76
    :goto_2
    const/16 v13, 0x7fff

    .line 77
    .line 78
    const/16 v14, -0x8000

    .line 79
    .line 80
    if-ge v8, v11, :cond_4

    .line 81
    .line 82
    aget-short v15, v4, v8

    .line 83
    .line 84
    int-to-float v15, v15

    .line 85
    const v16, 0x3fb33333    # 1.4f

    .line 86
    .line 87
    .line 88
    mul-float v15, v15, v16

    .line 89
    .line 90
    float-to-int v15, v15

    .line 91
    invoke-static {v15, v14, v13}, Landroid/util/MathUtils;->constrain(III)I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    int-to-short v13, v13

    .line 96
    aput-short v13, v4, v8

    .line 97
    .line 98
    add-int/lit8 v8, v8, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    const/4 v8, 0x0

    .line 102
    :goto_3
    if-ge v8, v11, :cond_5

    .line 103
    .line 104
    aget-short v15, v5, v8

    .line 105
    .line 106
    aget-short v16, v4, v8

    .line 107
    .line 108
    add-int v15, v15, v16

    .line 109
    .line 110
    invoke-static {v15, v14, v13}, Landroid/util/MathUtils;->constrain(III)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    int-to-short v13, v13

    .line 115
    mul-int/lit8 v15, v8, 0x2

    .line 116
    .line 117
    and-int/lit16 v14, v13, 0xff

    .line 118
    .line 119
    int-to-byte v14, v14

    .line 120
    aput-byte v14, v2, v15

    .line 121
    .line 122
    add-int/lit8 v15, v15, 0x1

    .line 123
    .line 124
    shr-int/lit8 v13, v13, 0x8

    .line 125
    .line 126
    and-int/lit16 v13, v13, 0xff

    .line 127
    .line 128
    int-to-byte v13, v13

    .line 129
    aput-byte v13, v2, v15

    .line 130
    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 132
    .line 133
    const/16 v13, 0x7fff

    .line 134
    .line 135
    const/16 v14, -0x8000

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    const/4 v8, 0x0

    .line 139
    :goto_4
    sub-int v13, v6, v11

    .line 140
    .line 141
    if-ge v8, v13, :cond_6

    .line 142
    .line 143
    add-int v13, v11, v8

    .line 144
    .line 145
    aget-short v13, v5, v13

    .line 146
    .line 147
    aput-short v13, v5, v8

    .line 148
    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    const/4 v6, 0x0

    .line 153
    :goto_5
    sub-int v8, v7, v11

    .line 154
    .line 155
    if-ge v6, v8, :cond_7

    .line 156
    .line 157
    add-int v8, v11, v6

    .line 158
    .line 159
    aget-short v8, v4, v8

    .line 160
    .line 161
    aput-short v8, v4, v6

    .line 162
    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_7
    sub-int v6, v9, v11

    .line 167
    .line 168
    sub-int v7, v10, v11

    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    goto :goto_6

    .line 172
    :cond_8
    iget-object v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 173
    .line 174
    const/4 v11, 0x0

    .line 175
    invoke-virtual {v8, v2, v11, v0}, Landroid/media/AudioRecord;->read([BII)I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    move v8, v11

    .line 180
    :goto_6
    if-gez v12, :cond_9

    .line 181
    .line 182
    const-string/jumbo v0, "read error "

    .line 183
    .line 184
    .line 185
    const-string v2, ", shorts internal: "

    .line 186
    .line 187
    const-string v3, ", shorts mic: "

    .line 188
    .line 189
    invoke-static {v0, v12, v2, v9, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v2, "ScreenAudioRecorder"

    .line 201
    .line 202
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :goto_7
    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 206
    .line 207
    const-wide/16 v2, 0x1f4

    .line 208
    .line 209
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    iget-object v4, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 214
    .line 215
    const/4 v6, 0x0

    .line 216
    const/4 v7, 0x0

    .line 217
    iget-wide v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 218
    .line 219
    const/4 v10, 0x4

    .line 220
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_9
    :goto_8
    if-lez v12, :cond_c

    .line 228
    .line 229
    iget-object v11, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 230
    .line 231
    const-wide/16 v13, 0x1f4

    .line 232
    .line 233
    invoke-virtual {v11, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-gez v11, :cond_a

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    .line 240
    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_a
    iget-object v13, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 244
    .line 245
    invoke-virtual {v13, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    .line 253
    .line 254
    .line 255
    move-result v14

    .line 256
    if-le v12, v14, :cond_b

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_b
    move v14, v12

    .line 260
    :goto_9
    add-int/lit8 v15, v14, 0x0

    .line 261
    .line 262
    sub-int/2addr v12, v14

    .line 263
    invoke-virtual {v13, v2, v8, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 264
    .line 265
    .line 266
    add-int/2addr v8, v14

    .line 267
    iget-object v13, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 268
    .line 269
    const/16 v17, 0x0

    .line 270
    .line 271
    move-object/from16 p0, v2

    .line 272
    .line 273
    move/from16 v22, v3

    .line 274
    .line 275
    iget-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 276
    .line 277
    const/16 v21, 0x0

    .line 278
    .line 279
    move/from16 v23, v0

    .line 280
    .line 281
    move v0, v15

    .line 282
    move-object v15, v13

    .line 283
    move/from16 v16, v11

    .line 284
    .line 285
    move/from16 v18, v14

    .line 286
    .line 287
    move-wide/from16 v19, v2

    .line 288
    .line 289
    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 290
    .line 291
    .line 292
    iget-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    .line 293
    .line 294
    int-to-long v13, v0

    .line 295
    add-long/2addr v2, v13

    .line 296
    iput-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    .line 297
    .line 298
    const-wide/16 v13, 0x2

    .line 299
    .line 300
    div-long/2addr v2, v13

    .line 301
    const-wide/32 v13, 0xf4240

    .line 302
    .line 303
    .line 304
    mul-long/2addr v2, v13

    .line 305
    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    .line 306
    .line 307
    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    .line 308
    .line 309
    int-to-long v13, v0

    .line 310
    div-long/2addr v2, v13

    .line 311
    iput-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    .line 314
    .line 315
    .line 316
    move-object/from16 v2, p0

    .line 317
    .line 318
    move/from16 v3, v22

    .line 319
    .line 320
    move/from16 v0, v23

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_c
    :goto_a
    move/from16 v23, v0

    .line 324
    .line 325
    move-object/from16 p0, v2

    .line 326
    .line 327
    move/from16 v22, v3

    .line 328
    .line 329
    const/4 v8, 0x0

    .line 330
    move-object/from16 v2, p0

    .line 331
    .line 332
    move/from16 v3, v22

    .line 333
    .line 334
    move/from16 v0, v23

    .line 335
    .line 336
    goto/16 :goto_1
.end method
