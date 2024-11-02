.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    .line 1
    sget-object p0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aget p0, p0, v0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p3, "No encoder available for format "

    .line 17
    .line 18
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :pswitch_0
    new-instance p0, Lcom/google/zxing/aztec/AztecWriter;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/zxing/aztec/AztecWriter;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    new-instance p0, Lcom/google/zxing/datamatrix/DataMatrixWriter;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;-><init>()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    new-instance p0, Lcom/google/zxing/oned/CodaBarWriter;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarWriter;-><init>()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_3
    new-instance p0, Lcom/google/zxing/pdf417/PDF417Writer;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/zxing/pdf417/PDF417Writer;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    new-instance p0, Lcom/google/zxing/oned/ITFWriter;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/google/zxing/oned/ITFWriter;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    new-instance p0, Lcom/google/zxing/oned/Code128Writer;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_6
    new-instance p0, Lcom/google/zxing/oned/Code39Writer;

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/google/zxing/oned/Code39Writer;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_7
    new-instance p0, Lcom/google/zxing/qrcode/QRCodeWriter;

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_8
    new-instance p0, Lcom/google/zxing/oned/UPCAWriter;

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_9
    new-instance p0, Lcom/google/zxing/oned/EAN13Writer;

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_a
    new-instance p0, Lcom/google/zxing/oned/EAN8Writer;

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/google/zxing/oned/EAN8Writer;-><init>()V

    .line 95
    .line 96
    .line 97
    :goto_0
    move-object v0, p0

    .line 98
    move-object v1, p1

    .line 99
    move-object v2, p2

    .line 100
    move v3, p3

    .line 101
    move v4, p4

    .line 102
    move-object v5, p5

    .line 103
    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
