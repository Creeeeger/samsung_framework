.class public final Lcom/google/zxing/qrcode/encoder/MaskUtil;
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

.method public static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    move v3, v1

    .line 15
    move v4, v3

    .line 16
    :goto_1
    if-ge v3, v2, :cond_7

    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    move v6, v1

    .line 20
    move v7, v6

    .line 21
    :goto_2
    const/4 v8, 0x5

    .line 22
    if-ge v6, v0, :cond_5

    .line 23
    .line 24
    iget-object v9, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    aget-object v9, v9, v3

    .line 29
    .line 30
    aget-byte v9, v9, v6

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    aget-object v9, v9, v6

    .line 34
    .line 35
    aget-byte v9, v9, v3

    .line 36
    .line 37
    :goto_3
    if-ne v9, v5, :cond_3

    .line 38
    .line 39
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_3
    if-lt v7, v8, :cond_4

    .line 43
    .line 44
    add-int/lit8 v7, v7, -0x5

    .line 45
    .line 46
    add-int/lit8 v7, v7, 0x3

    .line 47
    .line 48
    add-int/2addr v4, v7

    .line 49
    :cond_4
    const/4 v5, 0x1

    .line 50
    move v7, v5

    .line 51
    move v5, v9

    .line 52
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    if-lt v7, v8, :cond_6

    .line 56
    .line 57
    add-int/lit8 v7, v7, -0x5

    .line 58
    .line 59
    add-int/lit8 v7, v7, 0x3

    .line 60
    .line 61
    add-int/2addr v7, v4

    .line 62
    move v4, v7

    .line 63
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_7
    return v4
.end method
