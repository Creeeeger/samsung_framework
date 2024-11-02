.class public final Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;
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

.method public static encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1
    check-cast p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    sub-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    if-lt v0, v3, :cond_0

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v4, v1

    .line 25
    :goto_0
    const/4 v5, 0x3

    .line 26
    if-lt v0, v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v6, v1

    .line 34
    :goto_1
    const/4 v7, 0x4

    .line 35
    if-lt v0, v7, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_2
    shl-int/lit8 p0, v2, 0x12

    .line 42
    .line 43
    shl-int/lit8 v2, v4, 0xc

    .line 44
    .line 45
    add-int/2addr p0, v2

    .line 46
    shl-int/lit8 v2, v6, 0x6

    .line 47
    .line 48
    add-int/2addr p0, v2

    .line 49
    add-int/2addr p0, v1

    .line 50
    shr-int/lit8 v1, p0, 0x10

    .line 51
    .line 52
    and-int/lit16 v1, v1, 0xff

    .line 53
    .line 54
    int-to-char v1, v1

    .line 55
    shr-int/lit8 v2, p0, 0x8

    .line 56
    .line 57
    and-int/lit16 v2, v2, 0xff

    .line 58
    .line 59
    int-to-char v2, v2

    .line 60
    and-int/lit16 p0, p0, 0xff

    .line 61
    .line 62
    int-to-char p0, p0

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    if-lt v0, v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_3
    if-lt v0, v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v0, "StringBuilder must not be empty"

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method


# virtual methods
.method public final encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 10

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x4

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v7, 0x20

    .line 25
    .line 26
    if-lt v0, v7, :cond_1

    .line 27
    .line 28
    const/16 v7, 0x3f

    .line 29
    .line 30
    if-gt v0, v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v7, 0x40

    .line 37
    .line 38
    if-lt v0, v7, :cond_2

    .line 39
    .line 40
    const/16 v7, 0x5e

    .line 41
    .line 42
    if-gt v0, v7, :cond_2

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x40

    .line 45
    .line 46
    int-to-char v0, v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :goto_0
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 51
    .line 52
    add-int/2addr v0, v4

    .line 53
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lt v0, v6, :cond_0

    .line 60
    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 72
    .line 73
    invoke-static {v0, v6, v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(IILjava/lang/CharSequence;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eq v0, v6, :cond_0

    .line 78
    .line 79
    iput v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :cond_3
    :goto_1
    const/16 v0, 0x1f

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 92
    .line 93
    .line 94
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    iput v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    const/4 v7, 0x2

    .line 101
    if-ne v0, v4, :cond_5

    .line 102
    .line 103
    :try_start_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 108
    .line 109
    .line 110
    iget-object v8, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 111
    .line 112
    iget v8, v8, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    sub-int/2addr v8, v9

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    .line 124
    .line 125
    sub-int/2addr v2, v9

    .line 126
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 127
    .line 128
    sub-int/2addr v2, v9

    .line 129
    if-nez v2, :cond_5

    .line 130
    .line 131
    if-gt v8, v7, :cond_5

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    if-gt v0, v6, :cond_9

    .line 135
    .line 136
    sub-int/2addr v0, v4

    .line 137
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    xor-int/2addr v2, v4

    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    if-gt v0, v7, :cond_6

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    move v4, v5

    .line 152
    :goto_2
    if-gt v0, v7, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    add-int/2addr v2, v0

    .line 159
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 163
    .line 164
    iget v2, v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    sub-int/2addr v2, v6

    .line 171
    const/4 v6, 0x3

    .line 172
    if-lt v2, v6, :cond_7

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    add-int/2addr v2, v4

    .line 183
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 184
    .line 185
    .line 186
    move v4, v5

    .line 187
    :cond_7
    if-eqz v4, :cond_8

    .line 188
    .line 189
    iput-object v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 190
    .line 191
    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 192
    .line 193
    sub-int/2addr p0, v0

    .line 194
    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .line 199
    .line 200
    :goto_3
    iput v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 201
    .line 202
    :goto_4
    return-void

    .line 203
    :cond_9
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 204
    .line 205
    const-string v0, "Count must not exceed 4"

    .line 206
    .line 207
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :catchall_0
    move-exception p0

    .line 212
    iput v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 213
    .line 214
    throw p0
.end method
