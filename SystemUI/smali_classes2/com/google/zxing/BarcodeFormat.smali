.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/BarcodeFormat;

.field public static final enum AZTEC:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODABAR:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final enum PDF_417:Lcom/google/zxing/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_A:Lcom/google/zxing/BarcodeFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "AZTEC"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 11
    .line 12
    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const-string v3, "CODABAR"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 22
    .line 23
    new-instance v3, Lcom/google/zxing/BarcodeFormat;

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    const-string v4, "CODE_39"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 33
    .line 34
    new-instance v4, Lcom/google/zxing/BarcodeFormat;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const-string v5, "CODE_93"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lcom/google/zxing/BarcodeFormat;

    .line 44
    .line 45
    move-object v4, v5

    .line 46
    const-string v6, "CODE_128"

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    invoke-direct {v5, v6, v7}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    sput-object v5, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 53
    .line 54
    new-instance v6, Lcom/google/zxing/BarcodeFormat;

    .line 55
    .line 56
    move-object v5, v6

    .line 57
    const-string v7, "DATA_MATRIX"

    .line 58
    .line 59
    const/4 v8, 0x5

    .line 60
    invoke-direct {v6, v7, v8}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    sput-object v6, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 64
    .line 65
    new-instance v7, Lcom/google/zxing/BarcodeFormat;

    .line 66
    .line 67
    move-object v6, v7

    .line 68
    const-string v8, "EAN_8"

    .line 69
    .line 70
    const/4 v9, 0x6

    .line 71
    invoke-direct {v7, v8, v9}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    sput-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 75
    .line 76
    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    .line 77
    .line 78
    move-object v7, v8

    .line 79
    const-string v9, "EAN_13"

    .line 80
    .line 81
    const/4 v10, 0x7

    .line 82
    invoke-direct {v8, v9, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    sput-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 86
    .line 87
    new-instance v9, Lcom/google/zxing/BarcodeFormat;

    .line 88
    .line 89
    move-object v8, v9

    .line 90
    const-string v10, "ITF"

    .line 91
    .line 92
    const/16 v11, 0x8

    .line 93
    .line 94
    invoke-direct {v9, v10, v11}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    sput-object v9, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 98
    .line 99
    new-instance v10, Lcom/google/zxing/BarcodeFormat;

    .line 100
    .line 101
    move-object v9, v10

    .line 102
    const-string v11, "MAXICODE"

    .line 103
    .line 104
    const/16 v12, 0x9

    .line 105
    .line 106
    invoke-direct {v10, v11, v12}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    new-instance v11, Lcom/google/zxing/BarcodeFormat;

    .line 110
    .line 111
    move-object v10, v11

    .line 112
    const-string v12, "PDF_417"

    .line 113
    .line 114
    const/16 v13, 0xa

    .line 115
    .line 116
    invoke-direct {v11, v12, v13}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    sput-object v11, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 120
    .line 121
    new-instance v12, Lcom/google/zxing/BarcodeFormat;

    .line 122
    .line 123
    move-object v11, v12

    .line 124
    const-string v13, "QR_CODE"

    .line 125
    .line 126
    const/16 v14, 0xb

    .line 127
    .line 128
    invoke-direct {v12, v13, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 132
    .line 133
    new-instance v13, Lcom/google/zxing/BarcodeFormat;

    .line 134
    .line 135
    move-object v12, v13

    .line 136
    const-string v14, "RSS_14"

    .line 137
    .line 138
    const/16 v15, 0xc

    .line 139
    .line 140
    invoke-direct {v13, v14, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    .line 144
    .line 145
    move-object v13, v14

    .line 146
    const-string v15, "RSS_EXPANDED"

    .line 147
    .line 148
    move-object/from16 v17, v0

    .line 149
    .line 150
    const/16 v0, 0xd

    .line 151
    .line 152
    invoke-direct {v14, v15, v0}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    .line 156
    .line 157
    move-object v14, v0

    .line 158
    const-string v15, "UPC_A"

    .line 159
    .line 160
    move-object/from16 v18, v1

    .line 161
    .line 162
    const/16 v1, 0xe

    .line 163
    .line 164
    invoke-direct {v0, v15, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 168
    .line 169
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    .line 170
    .line 171
    move-object v15, v0

    .line 172
    const-string v1, "UPC_E"

    .line 173
    .line 174
    move-object/from16 v19, v2

    .line 175
    .line 176
    const/16 v2, 0xf

    .line 177
    .line 178
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    .line 182
    .line 183
    move-object/from16 v16, v0

    .line 184
    .line 185
    const-string v1, "UPC_EAN_EXTENSION"

    .line 186
    .line 187
    const/16 v2, 0x10

    .line 188
    .line 189
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    move-object/from16 v0, v17

    .line 193
    .line 194
    move-object/from16 v1, v18

    .line 195
    .line 196
    move-object/from16 v2, v19

    .line 197
    .line 198
    filled-new-array/range {v0 .. v16}, [Lcom/google/zxing/BarcodeFormat;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    sput-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    .line 203
    .line 204
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    .line 8
    .line 9
    return-object v0
.end method
