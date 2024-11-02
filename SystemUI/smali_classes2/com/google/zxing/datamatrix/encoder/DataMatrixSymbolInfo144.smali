.class public final Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;
.super Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    const/16 v2, 0x616

    .line 3
    .line 4
    const/16 v3, 0x26c

    .line 5
    .line 6
    const/16 v4, 0x16

    .line 7
    .line 8
    const/16 v5, 0x16

    .line 9
    .line 10
    const/16 v6, 0x24

    .line 11
    .line 12
    const/4 v7, -0x1

    .line 13
    const/16 v8, 0x3e

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getDataLengthForInterleavedBlock(I)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    if-gt p1, p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x9c

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, 0x9b

    .line 9
    .line 10
    :goto_0
    return p0
.end method

.method public final getInterleavedBlockCount()I
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    return p0
.end method
