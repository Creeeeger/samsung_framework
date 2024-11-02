.class public final Lcom/google/dexmaker/dx/rop/cst/CstString;
.super Lcom/google/dexmaker/dx/rop/cst/TypedConstant;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final string:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstString;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/dexmaker/dx/util/ByteArray;)V
    .locals 12

    .line 17
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_a

    .line 18
    iget v0, p1, Lcom/google/dexmaker/dx/util/ByteArray;->size:I

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lez v0, :cond_9

    .line 19
    invoke-virtual {p1, v4}, Lcom/google/dexmaker/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    shr-int/lit8 v6, v5, 0x4

    const/4 v7, 0x0

    const/16 v8, 0x80

    packed-switch v6, :pswitch_data_0

    .line 20
    :pswitch_0
    invoke-static {v5, v4}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    :pswitch_1
    add-int/lit8 v0, v0, -0x3

    if-ltz v0, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 21
    invoke-virtual {p1, v6}, Lcom/google/dexmaker/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v9

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v8, :cond_2

    add-int/lit8 v6, v4, 0x2

    .line 22
    invoke-virtual {p1, v6}, Lcom/google/dexmaker/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v11

    if-ne v10, v8, :cond_1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v8, v9, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    and-int/lit8 v8, v11, 0x3f

    or-int/2addr v5, v8

    const/16 v8, 0x800

    if-lt v5, v8, :cond_0

    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    .line 23
    :cond_0
    invoke-static {v11, v6}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    .line 24
    :cond_1
    invoke-static {v11, v6}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    .line 25
    :cond_2
    invoke-static {v9, v6}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    .line 26
    :cond_3
    invoke-static {v5, v4}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    :pswitch_2
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_7

    add-int/lit8 v6, v4, 0x1

    .line 27
    invoke-virtual {p1, v6}, Lcom/google/dexmaker/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v9

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v8, :cond_6

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v10, v9, 0x3f

    or-int/2addr v5, v10

    if-eqz v5, :cond_5

    if-lt v5, v8, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    invoke-static {v9, v6}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    :cond_5
    :goto_1
    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 29
    :cond_6
    invoke-static {v9, v6}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    .line 30
    :cond_7
    invoke-static {v5, v4}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    :pswitch_3
    add-int/lit8 v0, v0, -0x1

    if-eqz v5, :cond_8

    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x1

    .line 31
    :goto_2
    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 32
    :cond_8
    invoke-static {v5, v4}, Lcom/google/dexmaker/dx/rop/cst/CstString;->throwBadUtf8(II)V

    throw v7

    .line 33
    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    return-void

    .line 35
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 3
    new-instance p0, Lcom/google/dexmaker/dx/util/ByteArray;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 5
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-eqz v5, :cond_0

    if-ge v5, v6, :cond_0

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v7, 0x800

    if-ge v5, v7, :cond_1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 8
    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 9
    aput-byte v5, v1, v7

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .line 10
    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v6

    int-to-byte v8, v8

    .line 11
    aput-byte v8, v1, v7

    add-int/lit8 v7, v4, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 12
    aput-byte v5, v1, v7

    add-int/lit8 v4, v4, 0x3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-array p1, v4, [B

    .line 14
    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/ByteArray;-><init>([B)V

    return-void

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static throwBadUtf8(II)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "bad utf-8 byte "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v3, v2, [C

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    const/16 v6, 0x10

    .line 16
    .line 17
    if-ge v5, v2, :cond_0

    .line 18
    .line 19
    rsub-int/lit8 v7, v5, 0x1

    .line 20
    .line 21
    and-int/lit8 v8, p0, 0xf

    .line 22
    .line 23
    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    aput-char v6, v3, v7

    .line 28
    .line 29
    shr-int/lit8 p0, p0, 0x4

    .line 30
    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " at offset "

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 p0, 0x8

    .line 48
    .line 49
    new-array v2, p0, [C

    .line 50
    .line 51
    :goto_1
    if-ge v4, p0, :cond_1

    .line 52
    .line 53
    rsub-int/lit8 v3, v4, 0x7

    .line 54
    .line 55
    and-int/lit8 v5, p1, 0xf

    .line 56
    .line 57
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    aput-char v5, v2, v3

    .line 62
    .line 63
    shr-int/lit8 p1, p1, 0x4

    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method


# virtual methods
.method public final compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    mul-int/lit8 v2, v0, 0x3

    .line 10
    .line 11
    div-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v0, :cond_d

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0x20

    .line 27
    .line 28
    const/16 v6, 0x7f

    .line 29
    .line 30
    const/16 v7, 0x5c

    .line 31
    .line 32
    if-lt v4, v5, :cond_2

    .line 33
    .line 34
    if-ge v4, v6, :cond_2

    .line 35
    .line 36
    const/16 v5, 0x27

    .line 37
    .line 38
    if-eq v4, v5, :cond_0

    .line 39
    .line 40
    const/16 v5, 0x22

    .line 41
    .line 42
    if-eq v4, v5, :cond_0

    .line 43
    .line 44
    if-ne v4, v7, :cond_1

    .line 45
    .line 46
    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    if-gt v4, v6, :cond_b

    .line 55
    .line 56
    const/16 v5, 0x9

    .line 57
    .line 58
    if-eq v4, v5, :cond_a

    .line 59
    .line 60
    const/16 v5, 0xa

    .line 61
    .line 62
    if-eq v4, v5, :cond_9

    .line 63
    .line 64
    const/16 v5, 0xd

    .line 65
    .line 66
    if-eq v4, v5, :cond_8

    .line 67
    .line 68
    add-int/lit8 v5, v0, -0x1

    .line 69
    .line 70
    if-ge v3, v5, :cond_3

    .line 71
    .line 72
    iget-object v5, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 73
    .line 74
    add-int/lit8 v6, v3, 0x1

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v5, v2

    .line 82
    :goto_1
    const/16 v6, 0x30

    .line 83
    .line 84
    const/4 v8, 0x1

    .line 85
    if-lt v5, v6, :cond_4

    .line 86
    .line 87
    const/16 v9, 0x37

    .line 88
    .line 89
    if-gt v5, v9, :cond_4

    .line 90
    .line 91
    move v5, v8

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move v5, v2

    .line 94
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/4 v7, 0x6

    .line 98
    :goto_3
    if-ltz v7, :cond_7

    .line 99
    .line 100
    shr-int v9, v4, v7

    .line 101
    .line 102
    and-int/lit8 v9, v9, 0x7

    .line 103
    .line 104
    add-int/2addr v9, v6

    .line 105
    int-to-char v9, v9

    .line 106
    if-ne v9, v6, :cond_5

    .line 107
    .line 108
    if-eqz v5, :cond_6

    .line 109
    .line 110
    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move v5, v8

    .line 114
    :cond_6
    add-int/lit8 v7, v7, -0x3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    if-nez v5, :cond_c

    .line 118
    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    const-string v4, "\\r"

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_9
    const-string v4, "\\n"

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_a
    const-string v4, "\\t"

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_b
    const-string v5, "\\u"

    .line 142
    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    shr-int/lit8 v5, v4, 0xc

    .line 147
    .line 148
    const/16 v6, 0x10

    .line 149
    .line 150
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    shr-int/lit8 v5, v4, 0x8

    .line 158
    .line 159
    and-int/lit8 v5, v5, 0xf

    .line 160
    .line 161
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    shr-int/lit8 v5, v4, 0x4

    .line 169
    .line 170
    and-int/lit8 v5, v5, 0xf

    .line 171
    .line 172
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    and-int/lit8 v4, v4, 0xf

    .line 180
    .line 181
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "string{\""

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "\"}"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
