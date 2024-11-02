.class public abstract Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "0123456789abcdef"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 4
    .line 5
    const/4 v1, -0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v0, :cond_12

    .line 8
    .line 9
    iget v3, v0, Lokio/Segment;->pos:I

    .line 10
    .line 11
    iget v4, v0, Lokio/Segment;->limit:I

    .line 12
    .line 13
    move-object/from16 v5, p1

    .line 14
    .line 15
    iget-object v5, v5, Lokio/Options;->trie:[I

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 19
    .line 20
    move-object v9, v0

    .line 21
    move v10, v2

    .line 22
    move v8, v6

    .line 23
    :goto_0
    add-int/lit8 v11, v8, 0x1

    .line 24
    .line 25
    aget v8, v5, v8

    .line 26
    .line 27
    add-int/lit8 v12, v11, 0x1

    .line 28
    .line 29
    aget v11, v5, v11

    .line 30
    .line 31
    if-eq v11, v2, :cond_0

    .line 32
    .line 33
    move v10, v11

    .line 34
    :cond_0
    if-nez v9, :cond_1

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    const/4 v11, 0x0

    .line 38
    if-gez v8, :cond_b

    .line 39
    .line 40
    mul-int/lit8 v8, v8, -0x1

    .line 41
    .line 42
    add-int v13, v8, v12

    .line 43
    .line 44
    :goto_1
    add-int/lit8 v8, v3, 0x1

    .line 45
    .line 46
    aget-byte v3, v7, v3

    .line 47
    .line 48
    and-int/lit16 v3, v3, 0xff

    .line 49
    .line 50
    add-int/lit8 v14, v12, 0x1

    .line 51
    .line 52
    aget v12, v5, v12

    .line 53
    .line 54
    if-eq v3, v12, :cond_2

    .line 55
    .line 56
    return v10

    .line 57
    :cond_2
    if-ne v14, v13, :cond_3

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v3, v6

    .line 62
    :goto_2
    if-ne v8, v4, :cond_9

    .line 63
    .line 64
    if-eqz v9, :cond_8

    .line 65
    .line 66
    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 67
    .line 68
    if-eqz v4, :cond_7

    .line 69
    .line 70
    iget v7, v4, Lokio/Segment;->pos:I

    .line 71
    .line 72
    iget v8, v4, Lokio/Segment;->limit:I

    .line 73
    .line 74
    iget-object v9, v4, Lokio/Segment;->data:[B

    .line 75
    .line 76
    if-ne v4, v0, :cond_6

    .line 77
    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    :goto_3
    if-eqz p2, :cond_4

    .line 81
    .line 82
    return v1

    .line 83
    :cond_4
    return v10

    .line 84
    :cond_5
    move v4, v8

    .line 85
    move-object v8, v11

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    move/from16 v16, v8

    .line 88
    .line 89
    move-object v8, v4

    .line 90
    move/from16 v4, v16

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 94
    .line 95
    .line 96
    throw v11

    .line 97
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 98
    .line 99
    .line 100
    throw v11

    .line 101
    :cond_9
    move-object/from16 v16, v9

    .line 102
    .line 103
    move-object v9, v7

    .line 104
    move v7, v8

    .line 105
    move-object/from16 v8, v16

    .line 106
    .line 107
    :goto_4
    if-eqz v3, :cond_a

    .line 108
    .line 109
    aget v3, v5, v14

    .line 110
    .line 111
    move/from16 v16, v7

    .line 112
    .line 113
    move v7, v4

    .line 114
    move/from16 v4, v16

    .line 115
    .line 116
    move-object/from16 v17, v9

    .line 117
    .line 118
    move-object v9, v8

    .line 119
    move-object/from16 v8, v17

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    move v3, v7

    .line 123
    move-object v7, v9

    .line 124
    move v12, v14

    .line 125
    move-object v9, v8

    .line 126
    goto :goto_1

    .line 127
    :cond_b
    add-int/lit8 v13, v3, 0x1

    .line 128
    .line 129
    aget-byte v3, v7, v3

    .line 130
    .line 131
    and-int/lit16 v3, v3, 0xff

    .line 132
    .line 133
    add-int v14, v12, v8

    .line 134
    .line 135
    :goto_5
    if-ne v12, v14, :cond_c

    .line 136
    .line 137
    return v10

    .line 138
    :cond_c
    aget v15, v5, v12

    .line 139
    .line 140
    if-ne v3, v15, :cond_11

    .line 141
    .line 142
    add-int/2addr v12, v8

    .line 143
    aget v3, v5, v12

    .line 144
    .line 145
    if-ne v13, v4, :cond_e

    .line 146
    .line 147
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 148
    .line 149
    if-eqz v9, :cond_d

    .line 150
    .line 151
    iget v4, v9, Lokio/Segment;->pos:I

    .line 152
    .line 153
    iget v7, v9, Lokio/Segment;->limit:I

    .line 154
    .line 155
    iget-object v8, v9, Lokio/Segment;->data:[B

    .line 156
    .line 157
    if-ne v9, v0, :cond_f

    .line 158
    .line 159
    move-object v9, v11

    .line 160
    goto :goto_6

    .line 161
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 162
    .line 163
    .line 164
    throw v11

    .line 165
    :cond_e
    move-object v8, v7

    .line 166
    move v7, v4

    .line 167
    move v4, v13

    .line 168
    :cond_f
    :goto_6
    if-ltz v3, :cond_10

    .line 169
    .line 170
    return v3

    .line 171
    :cond_10
    neg-int v3, v3

    .line 172
    move-object/from16 v16, v8

    .line 173
    .line 174
    move v8, v3

    .line 175
    move v3, v4

    .line 176
    move v4, v7

    .line 177
    move-object/from16 v7, v16

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_12
    if-eqz p2, :cond_13

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_13
    move v1, v2

    .line 188
    :goto_7
    return v1
.end method
