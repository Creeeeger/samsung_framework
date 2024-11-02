.class public final enum Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/decoder/Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    filled-new-array {v1, v1, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "TERMINATOR"

    .line 9
    .line 10
    invoke-direct {v0, v3, v1, v2, v1}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    const/16 v4, 0xc

    .line 18
    .line 19
    const/16 v5, 0xe

    .line 20
    .line 21
    filled-new-array {v3, v4, v5}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "NUMERIC"

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-direct {v2, v6, v7, v5, v7}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 32
    .line 33
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    .line 35
    const/16 v6, 0x9

    .line 36
    .line 37
    const/16 v7, 0xb

    .line 38
    .line 39
    const/16 v8, 0xd

    .line 40
    .line 41
    filled-new-array {v6, v7, v8}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v9, "ALPHANUMERIC"

    .line 46
    .line 47
    const/4 v10, 0x2

    .line 48
    invoke-direct {v5, v9, v10, v7, v10}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 49
    .line 50
    .line 51
    sput-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 52
    .line 53
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 54
    .line 55
    filled-new-array {v1, v1, v1}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const-string v10, "STRUCTURED_APPEND"

    .line 60
    .line 61
    const/4 v11, 0x3

    .line 62
    invoke-direct {v7, v10, v11, v9, v11}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 66
    .line 67
    const/16 v10, 0x8

    .line 68
    .line 69
    const/16 v11, 0x10

    .line 70
    .line 71
    filled-new-array {v10, v11, v11}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    const-string v12, "BYTE"

    .line 76
    .line 77
    const/4 v13, 0x4

    .line 78
    invoke-direct {v9, v12, v13, v11, v13}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 79
    .line 80
    .line 81
    sput-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 82
    .line 83
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 84
    .line 85
    filled-new-array {v1, v1, v1}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    const-string v13, "ECI"

    .line 90
    .line 91
    const/4 v14, 0x5

    .line 92
    const/4 v15, 0x7

    .line 93
    invoke-direct {v11, v13, v14, v12, v15}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 94
    .line 95
    .line 96
    sput-object v11, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 97
    .line 98
    new-instance v12, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 99
    .line 100
    filled-new-array {v10, v3, v4}, [I

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    const-string v8, "KANJI"

    .line 105
    .line 106
    const/4 v3, 0x6

    .line 107
    invoke-direct {v12, v8, v3, v13, v10}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 108
    .line 109
    .line 110
    sput-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 111
    .line 112
    new-instance v8, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 113
    .line 114
    const-string v3, "FNC1_FIRST_POSITION"

    .line 115
    .line 116
    filled-new-array {v1, v1, v1}, [I

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-direct {v8, v3, v15, v13, v14}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 121
    .line 122
    .line 123
    new-instance v13, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 124
    .line 125
    const-string v3, "FNC1_SECOND_POSITION"

    .line 126
    .line 127
    filled-new-array {v1, v1, v1}, [I

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v13, v3, v10, v1, v6}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 132
    .line 133
    .line 134
    new-instance v14, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 135
    .line 136
    const-string v1, "HANZI"

    .line 137
    .line 138
    const/16 v3, 0xa

    .line 139
    .line 140
    filled-new-array {v10, v3, v4}, [I

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const/16 v4, 0xd

    .line 145
    .line 146
    invoke-direct {v14, v1, v6, v3, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 147
    .line 148
    .line 149
    move-object v1, v2

    .line 150
    move-object v2, v5

    .line 151
    move-object v3, v7

    .line 152
    move-object v4, v9

    .line 153
    move-object v5, v11

    .line 154
    move-object v6, v12

    .line 155
    move-object v7, v8

    .line 156
    move-object v8, v13

    .line 157
    move-object v9, v14

    .line 158
    filled-new-array/range {v0 .. v9}, [Lcom/google/zxing/qrcode/decoder/Mode;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    .line 163
    .line 164
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 5
    .line 6
    iput p4, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/Mode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBits()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 1

    .line 1
    iget p1, p1, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0x1a

    .line 10
    .line 11
    if-gt p1, v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x2

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 17
    .line 18
    aget p0, p0, p1

    .line 19
    .line 20
    return p0
.end method
