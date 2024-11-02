.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final buffer:Lokio/Buffer;

.field public closed:Z

.field public expectedPos:I

.field public expectedSegment:Lokio/Segment;

.field public pos:J

.field public final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 5
    .line 6
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 11
    .line 12
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    .line 14
    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget p1, p1, Lokio/Segment;->pos:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    .line 3
    .line 4
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x1

    .line 13
    if-ltz v6, :cond_0

    .line 14
    .line 15
    move v9, v8

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v9, v7

    .line 18
    :goto_0
    if-eqz v9, :cond_10

    .line 19
    .line 20
    iget-boolean v9, v0, Lokio/PeekSource;->closed:Z

    .line 21
    .line 22
    xor-int/2addr v9, v8

    .line 23
    if-eqz v9, :cond_f

    .line 24
    .line 25
    iget-object v9, v0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    if-eqz v9, :cond_2

    .line 29
    .line 30
    iget-object v11, v0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 31
    .line 32
    iget-object v11, v11, Lokio/Buffer;->head:Lokio/Segment;

    .line 33
    .line 34
    if-ne v9, v11, :cond_3

    .line 35
    .line 36
    iget v9, v0, Lokio/PeekSource;->expectedPos:I

    .line 37
    .line 38
    if-eqz v11, :cond_1

    .line 39
    .line 40
    iget v11, v11, Lokio/Segment;->pos:I

    .line 41
    .line 42
    if-ne v9, v11, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 46
    .line 47
    .line 48
    throw v10

    .line 49
    :cond_2
    :goto_1
    move v7, v8

    .line 50
    :cond_3
    if-eqz v7, :cond_e

    .line 51
    .line 52
    if-nez v6, :cond_4

    .line 53
    .line 54
    return-wide v4

    .line 55
    :cond_4
    iget-object v6, v0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 56
    .line 57
    iget-wide v7, v0, Lokio/PeekSource;->pos:J

    .line 58
    .line 59
    const-wide/16 v11, 0x1

    .line 60
    .line 61
    add-long/2addr v7, v11

    .line 62
    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_5

    .line 67
    .line 68
    const-wide/16 v0, -0x1

    .line 69
    .line 70
    return-wide v0

    .line 71
    :cond_5
    iget-object v6, v0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 72
    .line 73
    if-nez v6, :cond_6

    .line 74
    .line 75
    iget-object v6, v0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 76
    .line 77
    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 78
    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    iput-object v6, v0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 82
    .line 83
    iget v6, v6, Lokio/Segment;->pos:I

    .line 84
    .line 85
    iput v6, v0, Lokio/PeekSource;->expectedPos:I

    .line 86
    .line 87
    :cond_6
    iget-object v6, v0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 88
    .line 89
    iget-wide v6, v6, Lokio/Buffer;->size:J

    .line 90
    .line 91
    iget-wide v8, v0, Lokio/PeekSource;->pos:J

    .line 92
    .line 93
    sub-long/2addr v6, v8

    .line 94
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    iget-object v6, v0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 99
    .line 100
    iget-wide v7, v0, Lokio/PeekSource;->pos:J

    .line 101
    .line 102
    iget-wide v11, v6, Lokio/Buffer;->size:J

    .line 103
    .line 104
    move-wide v13, v7

    .line 105
    move-wide v15, v2

    .line 106
    invoke-static/range {v11 .. v16}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 107
    .line 108
    .line 109
    cmp-long v9, v2, v4

    .line 110
    .line 111
    if-nez v9, :cond_7

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_7
    iget-wide v11, v1, Lokio/Buffer;->size:J

    .line 115
    .line 116
    add-long/2addr v11, v2

    .line 117
    iput-wide v11, v1, Lokio/Buffer;->size:J

    .line 118
    .line 119
    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 120
    .line 121
    :goto_2
    if-eqz v6, :cond_d

    .line 122
    .line 123
    iget v9, v6, Lokio/Segment;->limit:I

    .line 124
    .line 125
    iget v11, v6, Lokio/Segment;->pos:I

    .line 126
    .line 127
    sub-int/2addr v9, v11

    .line 128
    int-to-long v11, v9

    .line 129
    cmp-long v9, v7, v11

    .line 130
    .line 131
    if-ltz v9, :cond_8

    .line 132
    .line 133
    sub-long/2addr v7, v11

    .line 134
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    move-wide v11, v2

    .line 138
    :goto_3
    cmp-long v9, v11, v4

    .line 139
    .line 140
    if-lez v9, :cond_c

    .line 141
    .line 142
    if-eqz v6, :cond_b

    .line 143
    .line 144
    invoke-virtual {v6}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    iget v13, v9, Lokio/Segment;->pos:I

    .line 149
    .line 150
    long-to-int v7, v7

    .line 151
    add-int/2addr v13, v7

    .line 152
    iput v13, v9, Lokio/Segment;->pos:I

    .line 153
    .line 154
    long-to-int v7, v11

    .line 155
    add-int/2addr v13, v7

    .line 156
    iget v7, v9, Lokio/Segment;->limit:I

    .line 157
    .line 158
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    iput v7, v9, Lokio/Segment;->limit:I

    .line 163
    .line 164
    iget-object v7, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 165
    .line 166
    if-nez v7, :cond_9

    .line 167
    .line 168
    iput-object v9, v9, Lokio/Segment;->prev:Lokio/Segment;

    .line 169
    .line 170
    iput-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 171
    .line 172
    iput-object v9, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    iget-object v7, v7, Lokio/Segment;->prev:Lokio/Segment;

    .line 176
    .line 177
    if-eqz v7, :cond_a

    .line 178
    .line 179
    invoke-virtual {v7, v9}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 180
    .line 181
    .line 182
    :goto_4
    iget v7, v9, Lokio/Segment;->limit:I

    .line 183
    .line 184
    iget v8, v9, Lokio/Segment;->pos:I

    .line 185
    .line 186
    sub-int/2addr v7, v8

    .line 187
    int-to-long v7, v7

    .line 188
    sub-long/2addr v11, v7

    .line 189
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 190
    .line 191
    move-wide v7, v4

    .line 192
    goto :goto_3

    .line 193
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 194
    .line 195
    .line 196
    throw v10

    .line 197
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 198
    .line 199
    .line 200
    throw v10

    .line 201
    :cond_c
    :goto_5
    iget-wide v4, v0, Lokio/PeekSource;->pos:J

    .line 202
    .line 203
    add-long/2addr v4, v2

    .line 204
    iput-wide v4, v0, Lokio/PeekSource;->pos:J

    .line 205
    .line 206
    return-wide v2

    .line 207
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 208
    .line 209
    .line 210
    throw v10

    .line 211
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    const-string v1, "Peek source is invalid because upstream source was used"

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string v1, "closed"

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_10
    const-string v0, "byteCount < 0: "

    .line 236
    .line 237
    invoke-static {v0, v2, v3}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v1
.end method
