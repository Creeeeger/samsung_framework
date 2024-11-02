.class public final Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const v4, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v4

    .line 24
    const/16 v4, 0x64

    .line 25
    .line 26
    const-string v5, "Cannot read metadata."

    .line 27
    .line 28
    if-gt v3, v4, :cond_5

    .line 29
    .line 30
    const/4 v4, 0x6

    .line 31
    invoke-virtual {v0, v4}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    move v6, v4

    .line 36
    :goto_0
    const-wide/16 v7, -0x1

    .line 37
    .line 38
    if-ge v6, v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 52
    .line 53
    .line 54
    const v12, 0x6d657461

    .line 55
    .line 56
    .line 57
    if-ne v12, v9, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-wide v10, v7

    .line 64
    :goto_1
    cmp-long v1, v10, v7

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    int-to-long v6, v1

    .line 73
    sub-long v6, v10, v6

    .line 74
    .line 75
    long-to-int v1, v6

    .line 76
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 77
    .line 78
    .line 79
    const/16 v1, 0xc

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    :goto_2
    int-to-long v8, v4

    .line 89
    cmp-long v1, v8, v6

    .line 90
    .line 91
    if-gez v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 98
    .line 99
    .line 100
    move-result-wide v8

    .line 101
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 102
    .line 103
    .line 104
    move-result-wide v12

    .line 105
    const v3, 0x456d6a69

    .line 106
    .line 107
    .line 108
    if-eq v3, v1, :cond_3

    .line 109
    .line 110
    const v3, 0x656d6a69

    .line 111
    .line 112
    .line 113
    if-ne v3, v1, :cond_2

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    :goto_3
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    .line 120
    .line 121
    add-long/2addr v8, v10

    .line 122
    invoke-direct {v0, v8, v9, v12, v13}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;-><init>(JJ)V

    .line 123
    .line 124
    .line 125
    iget-wide v0, v0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mStartOffset:J

    .line 126
    .line 127
    long-to-int v0, v0

    .line 128
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    .line 130
    .line 131
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 132
    .line 133
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    .line 134
    .line 135
    .line 136
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    add-int/2addr v2, v1

    .line 154
    invoke-virtual {v0, v2, p0}, Landroidx/emoji2/text/flatbuffer/Table;->__reset(ILjava/nio/ByteBuffer;)V

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 159
    .line 160
    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 165
    .line 166
    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
.end method
