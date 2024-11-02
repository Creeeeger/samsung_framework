.class public final Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 9

    .line 1
    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x39

    .line 10
    .line 11
    const/16 v3, 0x30

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ge p0, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    move v7, v5

    .line 22
    :cond_0
    :goto_0
    if-lt v6, v3, :cond_1

    .line 23
    .line 24
    if-gt v6, v2, :cond_1

    .line 25
    .line 26
    move v8, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v8, v5

    .line 29
    :goto_1
    if-eqz v8, :cond_3

    .line 30
    .line 31
    if-ge p0, v1, :cond_3

    .line 32
    .line 33
    add-int/lit8 v7, v7, 0x1

    .line 34
    .line 35
    add-int/lit8 p0, p0, 0x1

    .line 36
    .line 37
    if-ge p0, v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v7, v5

    .line 45
    :cond_3
    const/4 p0, 0x2

    .line 46
    if-lt v7, p0, :cond_7

    .line 47
    .line 48
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 55
    .line 56
    add-int/2addr v6, v4

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lt v1, v3, :cond_4

    .line 62
    .line 63
    if-gt v1, v2, :cond_4

    .line 64
    .line 65
    move v6, v4

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move v6, v5

    .line 68
    :goto_2
    if-eqz v6, :cond_6

    .line 69
    .line 70
    if-lt v0, v3, :cond_5

    .line 71
    .line 72
    if-gt v0, v2, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    move v4, v5

    .line 76
    :goto_3
    if-eqz v4, :cond_6

    .line 77
    .line 78
    add-int/lit8 v1, v1, -0x30

    .line 79
    .line 80
    mul-int/lit8 v1, v1, 0xa

    .line 81
    .line 82
    add-int/lit8 v0, v0, -0x30

    .line 83
    .line 84
    add-int/2addr v0, v1

    .line 85
    add-int/lit16 v0, v0, 0x82

    .line 86
    .line 87
    int-to-char v0, v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 89
    .line 90
    .line 91
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 92
    .line 93
    add-int/2addr v0, p0

    .line 94
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "not digits: "

    .line 103
    .line 104
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_7
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 126
    .line 127
    invoke-static {v2, v5, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(IILjava/lang/CharSequence;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_d

    .line 132
    .line 133
    if-eq v0, v4, :cond_c

    .line 134
    .line 135
    if-eq v0, p0, :cond_b

    .line 136
    .line 137
    const/4 p0, 0x3

    .line 138
    if-eq v0, p0, :cond_a

    .line 139
    .line 140
    const/4 p0, 0x4

    .line 141
    if-eq v0, p0, :cond_9

    .line 142
    .line 143
    const/4 p0, 0x5

    .line 144
    if-ne v0, p0, :cond_8

    .line 145
    .line 146
    const/16 v0, 0xe7

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 149
    .line 150
    .line 151
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 152
    .line 153
    return-void

    .line 154
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string p1, "Illegal mode: "

    .line 157
    .line 158
    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_9
    const/16 v0, 0xf0

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 169
    .line 170
    .line 171
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_a
    const/16 v0, 0xee

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 177
    .line 178
    .line 179
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_b
    const/16 v0, 0xef

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 185
    .line 186
    .line 187
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_c
    const/16 p0, 0xe6

    .line 191
    .line 192
    invoke-virtual {p1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 193
    .line 194
    .line 195
    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 196
    .line 197
    return-void

    .line 198
    :cond_d
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_e

    .line 203
    .line 204
    const/16 p0, 0xeb

    .line 205
    .line 206
    invoke-virtual {p1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 207
    .line 208
    .line 209
    add-int/lit8 v1, v1, -0x80

    .line 210
    .line 211
    add-int/2addr v1, v4

    .line 212
    int-to-char p0, v1

    .line 213
    invoke-virtual {p1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 214
    .line 215
    .line 216
    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 217
    .line 218
    add-int/2addr p0, v4

    .line 219
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_e
    add-int/2addr v1, v4

    .line 223
    int-to-char p0, v1

    .line 224
    invoke-virtual {p1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 225
    .line 226
    .line 227
    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 228
    .line 229
    add-int/2addr p0, v4

    .line 230
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 231
    .line 232
    :goto_4
    return-void
.end method
