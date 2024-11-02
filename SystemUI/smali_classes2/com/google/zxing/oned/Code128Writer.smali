.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Can only encode CODE_128, but got "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final encode(Ljava/lang/String;)[Z
    .locals 13

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_13

    const/16 v1, 0x50

    if-gt p0, v1, :cond_13

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, p0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_0

    const/16 v2, 0x7e

    if-le v3, v2, :cond_1

    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad character in input: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v0

    .line 8
    :cond_3
    :goto_1
    sget-object v6, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    if-ge v2, p0, :cond_f

    const/16 v7, 0x63

    if-ne v4, v7, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    const/4 v8, 0x4

    :goto_2
    add-int/2addr v8, v2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v2

    :goto_3
    if-ge v10, v8, :cond_8

    if-ge v10, v9, :cond_8

    .line 10
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-lt v11, v12, :cond_5

    const/16 v12, 0x39

    if-le v11, v12, :cond_7

    :cond_5
    const/16 v12, 0xf1

    if-eq v11, v12, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    if-gt v8, v9, :cond_9

    move v8, v0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v8, 0x0

    :goto_5
    const/16 v9, 0x64

    if-eqz v8, :cond_a

    goto :goto_6

    :cond_a
    move v7, v9

    :goto_6
    if-ne v7, v4, :cond_c

    if-ne v4, v9, :cond_b

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v9, v7, -0x20

    goto :goto_7

    .line 12
    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_1

    add-int/lit8 v7, v2, 0x2

    .line 13
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v2, v7

    goto :goto_a

    :goto_7
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    const/16 v9, 0x60

    goto :goto_a

    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    const/16 v9, 0x61

    goto :goto_a

    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    const/16 v9, 0x66

    goto :goto_a

    :cond_c
    if-nez v4, :cond_e

    if-ne v7, v9, :cond_d

    const/16 v4, 0x68

    goto :goto_8

    :cond_d
    const/16 v4, 0x69

    :goto_8
    move v9, v4

    goto :goto_9

    :cond_e
    move v9, v7

    :goto_9
    move v4, v7

    .line 14
    :goto_a
    aget-object v6, v6, v9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr v9, v5

    add-int/2addr v3, v9

    if-eqz v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 15
    :cond_f
    rem-int/lit8 v3, v3, 0x67

    .line 16
    aget-object p0, v6, v3

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x6a

    .line 17
    aget-object p0, v6, p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 19
    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_10

    aget v5, v2, v4

    add-int/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 20
    :cond_11
    new-array p0, p1, [Z

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 22
    invoke-static {p0, v1, v2, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_c

    :cond_12
    return-object p0

    .line 23
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents length should be between 1 and 80 characters, but got "

    .line 24
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
