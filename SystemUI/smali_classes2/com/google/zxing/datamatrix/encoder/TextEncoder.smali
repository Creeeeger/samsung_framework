.class public final Lcom/google/zxing/datamatrix/encoder/TextEncoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final encodeChar(CLjava/lang/StringBuilder;)I
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x3

    .line 7
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/16 v0, 0x30

    .line 12
    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x39

    .line 16
    .line 17
    if-gt p1, v2, :cond_1

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    add-int/lit8 p1, p1, 0x4

    .line 21
    .line 22
    int-to-char p0, p1

    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/16 v0, 0x61

    .line 28
    .line 29
    if-lt p1, v0, :cond_2

    .line 30
    .line 31
    const/16 v2, 0x7a

    .line 32
    .line 33
    if-gt p1, v2, :cond_2

    .line 34
    .line 35
    sub-int/2addr p1, v0

    .line 36
    add-int/lit8 p1, p1, 0xe

    .line 37
    .line 38
    int-to-char p0, p1

    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    const/4 v0, 0x2

    .line 44
    if-ltz p1, :cond_3

    .line 45
    .line 46
    const/16 v2, 0x1f

    .line 47
    .line 48
    if-gt p1, v2, :cond_3

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_3
    const/16 v2, 0x21

    .line 59
    .line 60
    if-lt p1, v2, :cond_4

    .line 61
    .line 62
    const/16 v3, 0x2f

    .line 63
    .line 64
    if-gt p1, v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    sub-int/2addr p1, v2

    .line 70
    int-to-char p0, p1

    .line 71
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    return v0

    .line 75
    :cond_4
    const/16 v2, 0x3a

    .line 76
    .line 77
    if-lt p1, v2, :cond_5

    .line 78
    .line 79
    const/16 v3, 0x40

    .line 80
    .line 81
    if-gt p1, v3, :cond_5

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    sub-int/2addr p1, v2

    .line 87
    add-int/lit8 p1, p1, 0xf

    .line 88
    .line 89
    int-to-char p0, p1

    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    return v0

    .line 94
    :cond_5
    const/16 v2, 0x5b

    .line 95
    .line 96
    if-lt p1, v2, :cond_6

    .line 97
    .line 98
    const/16 v3, 0x5f

    .line 99
    .line 100
    if-gt p1, v3, :cond_6

    .line 101
    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    sub-int/2addr p1, v2

    .line 106
    add-int/lit8 p1, p1, 0x16

    .line 107
    .line 108
    int-to-char p0, p1

    .line 109
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :cond_6
    const/16 v2, 0x60

    .line 114
    .line 115
    if-ne p1, v2, :cond_7

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    sub-int/2addr p1, v2

    .line 121
    int-to-char p0, p1

    .line 122
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    return v0

    .line 126
    :cond_7
    const/16 v2, 0x41

    .line 127
    .line 128
    if-lt p1, v2, :cond_8

    .line 129
    .line 130
    const/16 v3, 0x5a

    .line 131
    .line 132
    if-gt p1, v3, :cond_8

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    sub-int/2addr p1, v2

    .line 138
    add-int/2addr p1, v1

    .line 139
    int-to-char p0, p1

    .line 140
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    return v0

    .line 144
    :cond_8
    const/16 v1, 0x7b

    .line 145
    .line 146
    if-lt p1, v1, :cond_9

    .line 147
    .line 148
    const/16 v2, 0x7f

    .line 149
    .line 150
    if-gt p1, v2, :cond_9

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    sub-int/2addr p1, v1

    .line 156
    add-int/lit8 p1, p1, 0x1b

    .line 157
    .line 158
    int-to-char p0, p1

    .line 159
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    return v0

    .line 163
    :cond_9
    const/16 v1, 0x80

    .line 164
    .line 165
    if-lt p1, v1, :cond_a

    .line 166
    .line 167
    const-string v2, "\u0001\u001e"

    .line 168
    .line 169
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sub-int/2addr p1, v1

    .line 173
    int-to-char p1, p1

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    add-int/2addr p0, v0

    .line 179
    return p0

    .line 180
    :cond_a
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    .line 181
    .line 182
    .line 183
    const/4 p0, 0x0

    .line 184
    throw p0
.end method

.method public final getEncodingMode()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
