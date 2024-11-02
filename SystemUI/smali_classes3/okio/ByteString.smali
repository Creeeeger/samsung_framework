.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 8
    .line 9
    new-instance v0, Lokio/ByteString;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 5
    .line 6
    return-void
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    .line 1
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokio/ByteString;

    .line 7
    .line 8
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 15
    .line 16
    .line 17
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    move v3, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    :goto_0
    if-eqz v3, :cond_3

    .line 18
    .line 19
    new-array v3, v0, [B

    .line 20
    .line 21
    :goto_1
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    sub-int v4, v0, v2

    .line 24
    .line 25
    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, -0x1

    .line 30
    if-eq v4, v5, :cond_1

    .line 31
    .line 32
    add-int/2addr v2, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_2
    new-instance p1, Lokio/ByteString;

    .line 41
    .line 42
    invoke-direct {p1, v3}, Lokio/ByteString;-><init>([B)V

    .line 43
    .line 44
    .line 45
    const-class v0, Lokio/ByteString;

    .line 46
    .line 47
    const-string v2, "data"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lokio/ByteString;->data:[B

    .line 57
    .line 58
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    const-string p0, "byteCount < 0: "

    .line 63
    .line 64
    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lokio/ByteString;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Lokio/ByteString;->internalGet$okio(I)B

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    and-int/lit16 v5, v5, 0xff

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$okio(I)B

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    and-int/lit16 v6, v6, 0xff

    .line 30
    .line 31
    if-ne v5, v6, :cond_0

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-ge v5, v6, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    if-ge v0, v1, :cond_3

    .line 43
    .line 44
    :goto_1
    const/4 v3, -0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v3, 0x1

    .line 47
    :goto_2
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lokio/ByteString;

    .line 11
    .line 12
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 17
    .line 18
    array-length v3, p0

    .line 19
    if-ne v1, v3, :cond_1

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    invoke-virtual {p1, v2, v2, v1, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_0
    return v0
.end method

.method public final getData$okio()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public getSize$okio()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lokio/ByteString;->hashCode:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    new-array v0, v0, [C

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-byte v4, p0, v2

    .line 14
    .line 15
    add-int/lit8 v5, v3, 0x1

    .line 16
    .line 17
    sget-object v6, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    .line 18
    .line 19
    shr-int/lit8 v7, v4, 0x4

    .line 20
    .line 21
    and-int/lit8 v7, v7, 0xf

    .line 22
    .line 23
    aget-char v7, v6, v7

    .line 24
    .line 25
    aput-char v7, v0, v3

    .line 26
    .line 27
    add-int/lit8 v3, v5, 0x1

    .line 28
    .line 29
    and-int/lit8 v4, v4, 0xf

    .line 30
    .line 31
    aget-char v4, v6, v4

    .line 32
    .line 33
    aput-char v4, v0, v5

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public internalArray$okio()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public internalGet$okio(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public rangeEquals(III[B)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    array-length v1, p0

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    .line 3
    array-length v1, p4

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_2

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p3, :cond_1

    add-int v3, v1, p1

    .line 4
    aget-byte v3, p0, v3

    add-int v4, v1, p2

    aget-byte v4, p4, v4

    if-eq v3, v4, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public rangeEquals(Lokio/ByteString;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 5
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 6
    invoke-virtual {p1, v0, v0, p2, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lokio/ByteString;->data:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v0, "[size=0]"

    .line 14
    .line 15
    goto/16 :goto_1f

    .line 16
    .line 17
    :cond_1
    array-length v2, v1

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    :cond_2
    :goto_1
    const/16 v9, 0x40

    .line 22
    .line 23
    if-ge v5, v2, :cond_47

    .line 24
    .line 25
    aget-byte v10, v1, v5

    .line 26
    .line 27
    const/16 v11, 0xd

    .line 28
    .line 29
    const/16 v12, 0x9f

    .line 30
    .line 31
    const/16 v13, 0x7f

    .line 32
    .line 33
    const/16 v14, 0x1f

    .line 34
    .line 35
    const v4, 0xfffd

    .line 36
    .line 37
    .line 38
    const/high16 v15, 0x10000

    .line 39
    .line 40
    const/16 v3, 0xa

    .line 41
    .line 42
    if-ltz v10, :cond_13

    .line 43
    .line 44
    add-int/lit8 v16, v6, 0x1

    .line 45
    .line 46
    if-ne v6, v9, :cond_3

    .line 47
    .line 48
    goto/16 :goto_1c

    .line 49
    .line 50
    :cond_3
    if-eq v10, v3, :cond_8

    .line 51
    .line 52
    if-eq v10, v11, :cond_8

    .line 53
    .line 54
    if-ltz v10, :cond_4

    .line 55
    .line 56
    if-ge v14, v10, :cond_6

    .line 57
    .line 58
    :cond_4
    if-le v13, v10, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    if-lt v12, v10, :cond_7

    .line 62
    .line 63
    :cond_6
    const/4 v6, 0x1

    .line 64
    goto :goto_3

    .line 65
    :cond_7
    :goto_2
    const/4 v6, 0x0

    .line 66
    :goto_3
    if-nez v6, :cond_46

    .line 67
    .line 68
    :cond_8
    if-ne v10, v4, :cond_9

    .line 69
    .line 70
    goto/16 :goto_1b

    .line 71
    .line 72
    :cond_9
    if-ge v10, v15, :cond_a

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_a
    const/4 v6, 0x2

    .line 77
    :goto_4
    add-int/2addr v7, v6

    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    :goto_5
    move/from16 v6, v16

    .line 81
    .line 82
    if-ge v5, v2, :cond_2

    .line 83
    .line 84
    aget-byte v10, v1, v5

    .line 85
    .line 86
    if-ltz v10, :cond_2

    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    add-int/lit8 v16, v6, 0x1

    .line 91
    .line 92
    if-ne v6, v9, :cond_b

    .line 93
    .line 94
    goto/16 :goto_1c

    .line 95
    .line 96
    :cond_b
    if-eq v10, v3, :cond_10

    .line 97
    .line 98
    if-eq v10, v11, :cond_10

    .line 99
    .line 100
    if-ltz v10, :cond_c

    .line 101
    .line 102
    if-ge v14, v10, :cond_e

    .line 103
    .line 104
    :cond_c
    if-le v13, v10, :cond_d

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_d
    if-lt v12, v10, :cond_f

    .line 108
    .line 109
    :cond_e
    const/4 v6, 0x1

    .line 110
    goto :goto_7

    .line 111
    :cond_f
    :goto_6
    const/4 v6, 0x0

    .line 112
    :goto_7
    if-nez v6, :cond_46

    .line 113
    .line 114
    :cond_10
    if-ne v10, v4, :cond_11

    .line 115
    .line 116
    goto/16 :goto_1b

    .line 117
    .line 118
    :cond_11
    if-ge v10, v15, :cond_12

    .line 119
    .line 120
    const/4 v6, 0x1

    .line 121
    goto :goto_8

    .line 122
    :cond_12
    const/4 v6, 0x2

    .line 123
    :goto_8
    add-int/2addr v7, v6

    .line 124
    goto :goto_5

    .line 125
    :cond_13
    shr-int/lit8 v8, v10, 0x5

    .line 126
    .line 127
    const/4 v15, -0x2

    .line 128
    const/16 v4, 0x80

    .line 129
    .line 130
    if-ne v8, v15, :cond_20

    .line 131
    .line 132
    add-int/lit8 v8, v5, 0x1

    .line 133
    .line 134
    if-gt v2, v8, :cond_14

    .line 135
    .line 136
    if-ne v6, v9, :cond_46

    .line 137
    .line 138
    goto/16 :goto_1c

    .line 139
    .line 140
    :cond_14
    aget-byte v8, v1, v8

    .line 141
    .line 142
    and-int/lit16 v15, v8, 0xc0

    .line 143
    .line 144
    if-ne v15, v4, :cond_15

    .line 145
    .line 146
    const/4 v15, 0x1

    .line 147
    goto :goto_9

    .line 148
    :cond_15
    const/4 v15, 0x0

    .line 149
    :goto_9
    if-nez v15, :cond_16

    .line 150
    .line 151
    if-ne v6, v9, :cond_46

    .line 152
    .line 153
    goto/16 :goto_1c

    .line 154
    .line 155
    :cond_16
    xor-int/lit16 v8, v8, 0xf80

    .line 156
    .line 157
    shl-int/lit8 v10, v10, 0x6

    .line 158
    .line 159
    xor-int/2addr v8, v10

    .line 160
    if-ge v8, v4, :cond_17

    .line 161
    .line 162
    if-ne v6, v9, :cond_46

    .line 163
    .line 164
    goto/16 :goto_1c

    .line 165
    .line 166
    :cond_17
    add-int/lit8 v4, v6, 0x1

    .line 167
    .line 168
    if-ne v6, v9, :cond_18

    .line 169
    .line 170
    goto/16 :goto_1c

    .line 171
    .line 172
    :cond_18
    if-eq v8, v3, :cond_1d

    .line 173
    .line 174
    if-eq v8, v11, :cond_1d

    .line 175
    .line 176
    if-ltz v8, :cond_19

    .line 177
    .line 178
    if-ge v14, v8, :cond_1b

    .line 179
    .line 180
    :cond_19
    if-le v13, v8, :cond_1a

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_1a
    if-lt v12, v8, :cond_1c

    .line 184
    .line 185
    :cond_1b
    const/4 v3, 0x1

    .line 186
    goto :goto_b

    .line 187
    :cond_1c
    :goto_a
    const/4 v3, 0x0

    .line 188
    :goto_b
    if-nez v3, :cond_46

    .line 189
    .line 190
    :cond_1d
    const v3, 0xfffd

    .line 191
    .line 192
    .line 193
    if-ne v8, v3, :cond_1e

    .line 194
    .line 195
    goto/16 :goto_1b

    .line 196
    .line 197
    :cond_1e
    const/high16 v3, 0x10000

    .line 198
    .line 199
    if-ge v8, v3, :cond_1f

    .line 200
    .line 201
    const/4 v15, 0x1

    .line 202
    goto :goto_c

    .line 203
    :cond_1f
    const/4 v15, 0x2

    .line 204
    :goto_c
    add-int/2addr v7, v15

    .line 205
    add-int/lit8 v5, v5, 0x2

    .line 206
    .line 207
    move v6, v4

    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_20
    shr-int/lit8 v8, v10, 0x4

    .line 211
    .line 212
    const v12, 0xd800

    .line 213
    .line 214
    .line 215
    const v13, 0xdfff

    .line 216
    .line 217
    .line 218
    if-ne v8, v15, :cond_31

    .line 219
    .line 220
    add-int/lit8 v8, v5, 0x2

    .line 221
    .line 222
    if-gt v2, v8, :cond_21

    .line 223
    .line 224
    if-ne v6, v9, :cond_46

    .line 225
    .line 226
    goto/16 :goto_1c

    .line 227
    .line 228
    :cond_21
    add-int/lit8 v15, v5, 0x1

    .line 229
    .line 230
    aget-byte v15, v1, v15

    .line 231
    .line 232
    and-int/lit16 v14, v15, 0xc0

    .line 233
    .line 234
    if-ne v14, v4, :cond_22

    .line 235
    .line 236
    const/4 v14, 0x1

    .line 237
    goto :goto_d

    .line 238
    :cond_22
    const/4 v14, 0x0

    .line 239
    :goto_d
    if-nez v14, :cond_23

    .line 240
    .line 241
    if-ne v6, v9, :cond_46

    .line 242
    .line 243
    goto/16 :goto_1c

    .line 244
    .line 245
    :cond_23
    aget-byte v8, v1, v8

    .line 246
    .line 247
    and-int/lit16 v14, v8, 0xc0

    .line 248
    .line 249
    if-ne v14, v4, :cond_24

    .line 250
    .line 251
    const/4 v4, 0x1

    .line 252
    goto :goto_e

    .line 253
    :cond_24
    const/4 v4, 0x0

    .line 254
    :goto_e
    if-nez v4, :cond_25

    .line 255
    .line 256
    if-ne v6, v9, :cond_46

    .line 257
    .line 258
    goto/16 :goto_1c

    .line 259
    .line 260
    :cond_25
    const v4, -0x1e080

    .line 261
    .line 262
    .line 263
    xor-int/2addr v4, v8

    .line 264
    shl-int/lit8 v8, v15, 0x6

    .line 265
    .line 266
    xor-int/2addr v4, v8

    .line 267
    shl-int/lit8 v8, v10, 0xc

    .line 268
    .line 269
    xor-int/2addr v4, v8

    .line 270
    const/16 v8, 0x800

    .line 271
    .line 272
    if-ge v4, v8, :cond_26

    .line 273
    .line 274
    if-ne v6, v9, :cond_46

    .line 275
    .line 276
    goto/16 :goto_1c

    .line 277
    .line 278
    :cond_26
    if-le v12, v4, :cond_27

    .line 279
    .line 280
    goto :goto_f

    .line 281
    :cond_27
    if-lt v13, v4, :cond_28

    .line 282
    .line 283
    if-ne v6, v9, :cond_46

    .line 284
    .line 285
    goto/16 :goto_1c

    .line 286
    .line 287
    :cond_28
    :goto_f
    add-int/lit8 v8, v6, 0x1

    .line 288
    .line 289
    if-ne v6, v9, :cond_29

    .line 290
    .line 291
    goto/16 :goto_1c

    .line 292
    .line 293
    :cond_29
    if-eq v4, v3, :cond_2e

    .line 294
    .line 295
    if-eq v4, v11, :cond_2e

    .line 296
    .line 297
    if-ltz v4, :cond_2a

    .line 298
    .line 299
    const/16 v3, 0x1f

    .line 300
    .line 301
    if-ge v3, v4, :cond_2c

    .line 302
    .line 303
    :cond_2a
    const/16 v3, 0x7f

    .line 304
    .line 305
    if-le v3, v4, :cond_2b

    .line 306
    .line 307
    goto :goto_10

    .line 308
    :cond_2b
    const/16 v3, 0x9f

    .line 309
    .line 310
    if-lt v3, v4, :cond_2d

    .line 311
    .line 312
    :cond_2c
    const/4 v3, 0x1

    .line 313
    goto :goto_11

    .line 314
    :cond_2d
    :goto_10
    const/4 v3, 0x0

    .line 315
    :goto_11
    if-nez v3, :cond_46

    .line 316
    .line 317
    :cond_2e
    const v3, 0xfffd

    .line 318
    .line 319
    .line 320
    if-ne v4, v3, :cond_2f

    .line 321
    .line 322
    goto/16 :goto_1b

    .line 323
    .line 324
    :cond_2f
    const/high16 v3, 0x10000

    .line 325
    .line 326
    if-ge v4, v3, :cond_30

    .line 327
    .line 328
    const/4 v15, 0x1

    .line 329
    goto :goto_12

    .line 330
    :cond_30
    const/4 v15, 0x2

    .line 331
    :goto_12
    add-int/2addr v7, v15

    .line 332
    add-int/lit8 v5, v5, 0x3

    .line 333
    .line 334
    goto/16 :goto_1a

    .line 335
    .line 336
    :cond_31
    shr-int/lit8 v8, v10, 0x3

    .line 337
    .line 338
    if-ne v8, v15, :cond_45

    .line 339
    .line 340
    add-int/lit8 v8, v5, 0x3

    .line 341
    .line 342
    if-gt v2, v8, :cond_32

    .line 343
    .line 344
    if-ne v6, v9, :cond_46

    .line 345
    .line 346
    goto/16 :goto_1c

    .line 347
    .line 348
    :cond_32
    add-int/lit8 v14, v5, 0x1

    .line 349
    .line 350
    aget-byte v14, v1, v14

    .line 351
    .line 352
    and-int/lit16 v15, v14, 0xc0

    .line 353
    .line 354
    if-ne v15, v4, :cond_33

    .line 355
    .line 356
    const/4 v15, 0x1

    .line 357
    goto :goto_13

    .line 358
    :cond_33
    const/4 v15, 0x0

    .line 359
    :goto_13
    if-nez v15, :cond_34

    .line 360
    .line 361
    if-ne v6, v9, :cond_46

    .line 362
    .line 363
    goto/16 :goto_1c

    .line 364
    .line 365
    :cond_34
    add-int/lit8 v15, v5, 0x2

    .line 366
    .line 367
    aget-byte v15, v1, v15

    .line 368
    .line 369
    and-int/lit16 v11, v15, 0xc0

    .line 370
    .line 371
    if-ne v11, v4, :cond_35

    .line 372
    .line 373
    const/4 v11, 0x1

    .line 374
    goto :goto_14

    .line 375
    :cond_35
    const/4 v11, 0x0

    .line 376
    :goto_14
    if-nez v11, :cond_36

    .line 377
    .line 378
    if-ne v6, v9, :cond_46

    .line 379
    .line 380
    goto/16 :goto_1c

    .line 381
    .line 382
    :cond_36
    aget-byte v8, v1, v8

    .line 383
    .line 384
    and-int/lit16 v11, v8, 0xc0

    .line 385
    .line 386
    if-ne v11, v4, :cond_37

    .line 387
    .line 388
    const/4 v4, 0x1

    .line 389
    goto :goto_15

    .line 390
    :cond_37
    const/4 v4, 0x0

    .line 391
    :goto_15
    if-nez v4, :cond_38

    .line 392
    .line 393
    if-ne v6, v9, :cond_46

    .line 394
    .line 395
    goto/16 :goto_1c

    .line 396
    .line 397
    :cond_38
    const v4, 0x381f80

    .line 398
    .line 399
    .line 400
    xor-int/2addr v4, v8

    .line 401
    shl-int/lit8 v8, v15, 0x6

    .line 402
    .line 403
    xor-int/2addr v4, v8

    .line 404
    shl-int/lit8 v8, v14, 0xc

    .line 405
    .line 406
    xor-int/2addr v4, v8

    .line 407
    shl-int/lit8 v8, v10, 0x12

    .line 408
    .line 409
    xor-int/2addr v4, v8

    .line 410
    const v8, 0x10ffff

    .line 411
    .line 412
    .line 413
    if-le v4, v8, :cond_39

    .line 414
    .line 415
    if-ne v6, v9, :cond_46

    .line 416
    .line 417
    goto :goto_1c

    .line 418
    :cond_39
    if-le v12, v4, :cond_3a

    .line 419
    .line 420
    goto :goto_16

    .line 421
    :cond_3a
    if-lt v13, v4, :cond_3b

    .line 422
    .line 423
    if-ne v6, v9, :cond_46

    .line 424
    .line 425
    goto :goto_1c

    .line 426
    :cond_3b
    :goto_16
    const/high16 v8, 0x10000

    .line 427
    .line 428
    if-ge v4, v8, :cond_3c

    .line 429
    .line 430
    if-ne v6, v9, :cond_46

    .line 431
    .line 432
    goto :goto_1c

    .line 433
    :cond_3c
    add-int/lit8 v8, v6, 0x1

    .line 434
    .line 435
    if-ne v6, v9, :cond_3d

    .line 436
    .line 437
    goto :goto_1c

    .line 438
    :cond_3d
    if-eq v4, v3, :cond_42

    .line 439
    .line 440
    const/16 v3, 0xd

    .line 441
    .line 442
    if-eq v4, v3, :cond_42

    .line 443
    .line 444
    if-ltz v4, :cond_3e

    .line 445
    .line 446
    const/16 v3, 0x1f

    .line 447
    .line 448
    if-ge v3, v4, :cond_40

    .line 449
    .line 450
    :cond_3e
    const/16 v3, 0x7f

    .line 451
    .line 452
    if-le v3, v4, :cond_3f

    .line 453
    .line 454
    goto :goto_17

    .line 455
    :cond_3f
    const/16 v3, 0x9f

    .line 456
    .line 457
    if-lt v3, v4, :cond_41

    .line 458
    .line 459
    :cond_40
    const/4 v3, 0x1

    .line 460
    goto :goto_18

    .line 461
    :cond_41
    :goto_17
    const/4 v3, 0x0

    .line 462
    :goto_18
    if-nez v3, :cond_46

    .line 463
    .line 464
    :cond_42
    const v3, 0xfffd

    .line 465
    .line 466
    .line 467
    if-ne v4, v3, :cond_43

    .line 468
    .line 469
    goto :goto_1b

    .line 470
    :cond_43
    const/high16 v3, 0x10000

    .line 471
    .line 472
    if-ge v4, v3, :cond_44

    .line 473
    .line 474
    const/4 v15, 0x1

    .line 475
    goto :goto_19

    .line 476
    :cond_44
    const/4 v15, 0x2

    .line 477
    :goto_19
    add-int/2addr v7, v15

    .line 478
    add-int/lit8 v5, v5, 0x4

    .line 479
    .line 480
    :goto_1a
    move v6, v8

    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :cond_45
    if-ne v6, v9, :cond_46

    .line 484
    .line 485
    goto :goto_1c

    .line 486
    :cond_46
    :goto_1b
    const/4 v7, -0x1

    .line 487
    :cond_47
    :goto_1c
    const-string v1, "\u2026]"

    .line 488
    .line 489
    const/16 v2, 0x5d

    .line 490
    .line 491
    const-string v3, "[size="

    .line 492
    .line 493
    const/4 v4, -0x1

    .line 494
    if-ne v7, v4, :cond_4c

    .line 495
    .line 496
    iget-object v4, v0, Lokio/ByteString;->data:[B

    .line 497
    .line 498
    array-length v4, v4

    .line 499
    if-gt v4, v9, :cond_48

    .line 500
    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string v3, "[hex="

    .line 504
    .line 505
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    goto/16 :goto_1f

    .line 523
    .line 524
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    iget-object v3, v0, Lokio/ByteString;->data:[B

    .line 530
    .line 531
    array-length v3, v3

    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v3, " hex="

    .line 536
    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    iget-object v3, v0, Lokio/ByteString;->data:[B

    .line 541
    .line 542
    array-length v4, v3

    .line 543
    if-gt v9, v4, :cond_49

    .line 544
    .line 545
    const/4 v4, 0x1

    .line 546
    goto :goto_1d

    .line 547
    :cond_49
    const/4 v4, 0x0

    .line 548
    :goto_1d
    if-eqz v4, :cond_4b

    .line 549
    .line 550
    array-length v4, v3

    .line 551
    if-ne v9, v4, :cond_4a

    .line 552
    .line 553
    goto :goto_1e

    .line 554
    :cond_4a
    array-length v0, v3

    .line 555
    invoke-static {v9, v0}, Lkotlin/collections/ArraysKt__ArraysJVMKt;->copyOfRangeToIndexCheck(II)V

    .line 556
    .line 557
    .line 558
    const/4 v0, 0x0

    .line 559
    invoke-static {v3, v0, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    new-instance v3, Lokio/ByteString;

    .line 564
    .line 565
    invoke-direct {v3, v0}, Lokio/ByteString;-><init>([B)V

    .line 566
    .line 567
    .line 568
    move-object v0, v3

    .line 569
    :goto_1e
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    goto/16 :goto_1f

    .line 584
    .line 585
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    const-string v2, "endIndex > length("

    .line 588
    .line 589
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    iget-object v0, v0, Lokio/ByteString;->data:[B

    .line 593
    .line 594
    array-length v0, v0

    .line 595
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const/16 v0, 0x29

    .line 599
    .line 600
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v1

    .line 617
    :cond_4c
    iget-object v4, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 618
    .line 619
    if-nez v4, :cond_4d

    .line 620
    .line 621
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->internalArray$okio()[B

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 626
    .line 627
    new-instance v6, Ljava/lang/String;

    .line 628
    .line 629
    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 630
    .line 631
    .line 632
    iput-object v6, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 633
    .line 634
    move-object v4, v6

    .line 635
    :cond_4d
    const/4 v5, 0x0

    .line 636
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    const-string v6, "\\"

    .line 641
    .line 642
    const-string v8, "\\\\"

    .line 643
    .line 644
    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    const-string v6, "\n"

    .line 649
    .line 650
    const-string v8, "\\n"

    .line 651
    .line 652
    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    const-string v6, "\r"

    .line 657
    .line 658
    const-string v8, "\\r"

    .line 659
    .line 660
    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    if-ge v7, v4, :cond_4e

    .line 669
    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    iget-object v0, v0, Lokio/ByteString;->data:[B

    .line 676
    .line 677
    array-length v0, v0

    .line 678
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    const-string v0, " text="

    .line 682
    .line 683
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    goto :goto_1f

    .line 697
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 698
    .line 699
    const-string v1, "[text="

    .line 700
    .line 701
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    :goto_1f
    return-object v0
.end method
