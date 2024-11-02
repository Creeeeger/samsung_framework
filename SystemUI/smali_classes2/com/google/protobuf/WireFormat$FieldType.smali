.class public enum Lcom/google/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/google/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/google/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/google/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/protobuf/WireFormat$JavaType;

    .line 4
    .line 5
    const-string v2, "DOUBLE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/protobuf/WireFormat$FieldType;

    .line 13
    .line 14
    new-instance v1, Lcom/google/protobuf/WireFormat$FieldType;

    .line 15
    .line 16
    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/protobuf/WireFormat$JavaType;

    .line 17
    .line 18
    const-string v5, "FLOAT"

    .line 19
    .line 20
    const/4 v6, 0x5

    .line 21
    invoke-direct {v1, v5, v4, v2, v6}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/protobuf/WireFormat$FieldType;

    .line 25
    .line 26
    new-instance v2, Lcom/google/protobuf/WireFormat$FieldType;

    .line 27
    .line 28
    sget-object v5, Lcom/google/protobuf/WireFormat$JavaType;->LONG:Lcom/google/protobuf/WireFormat$JavaType;

    .line 29
    .line 30
    const-string v7, "INT64"

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    invoke-direct {v2, v7, v8, v5, v3}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/google/protobuf/WireFormat$FieldType;->INT64:Lcom/google/protobuf/WireFormat$FieldType;

    .line 37
    .line 38
    new-instance v7, Lcom/google/protobuf/WireFormat$FieldType;

    .line 39
    .line 40
    const-string v9, "UINT64"

    .line 41
    .line 42
    const/4 v10, 0x3

    .line 43
    invoke-direct {v7, v9, v10, v5, v3}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 44
    .line 45
    .line 46
    sput-object v7, Lcom/google/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/protobuf/WireFormat$FieldType;

    .line 47
    .line 48
    new-instance v9, Lcom/google/protobuf/WireFormat$FieldType;

    .line 49
    .line 50
    sget-object v11, Lcom/google/protobuf/WireFormat$JavaType;->INT:Lcom/google/protobuf/WireFormat$JavaType;

    .line 51
    .line 52
    const-string v12, "INT32"

    .line 53
    .line 54
    const/4 v13, 0x4

    .line 55
    invoke-direct {v9, v12, v13, v11, v3}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 56
    .line 57
    .line 58
    sput-object v9, Lcom/google/protobuf/WireFormat$FieldType;->INT32:Lcom/google/protobuf/WireFormat$FieldType;

    .line 59
    .line 60
    new-instance v12, Lcom/google/protobuf/WireFormat$FieldType;

    .line 61
    .line 62
    const-string v13, "FIXED64"

    .line 63
    .line 64
    invoke-direct {v12, v13, v6, v5, v4}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 65
    .line 66
    .line 67
    sput-object v12, Lcom/google/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/protobuf/WireFormat$FieldType;

    .line 68
    .line 69
    new-instance v13, Lcom/google/protobuf/WireFormat$FieldType;

    .line 70
    .line 71
    const-string v14, "FIXED32"

    .line 72
    .line 73
    const/4 v15, 0x6

    .line 74
    invoke-direct {v13, v14, v15, v11, v6}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 75
    .line 76
    .line 77
    sput-object v13, Lcom/google/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/protobuf/WireFormat$FieldType;

    .line 78
    .line 79
    new-instance v14, Lcom/google/protobuf/WireFormat$FieldType;

    .line 80
    .line 81
    const/4 v15, 0x7

    .line 82
    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/protobuf/WireFormat$JavaType;

    .line 83
    .line 84
    const-string v6, "BOOL"

    .line 85
    .line 86
    invoke-direct {v14, v6, v15, v4, v3}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 87
    .line 88
    .line 89
    sput-object v14, Lcom/google/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/protobuf/WireFormat$FieldType;

    .line 90
    .line 91
    new-instance v15, Lcom/google/protobuf/WireFormat$FieldType$1;

    .line 92
    .line 93
    const/16 v4, 0x8

    .line 94
    .line 95
    sget-object v6, Lcom/google/protobuf/WireFormat$JavaType;->STRING:Lcom/google/protobuf/WireFormat$JavaType;

    .line 96
    .line 97
    const-string v3, "STRING"

    .line 98
    .line 99
    invoke-direct {v15, v3, v4, v6, v8}, Lcom/google/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 100
    .line 101
    .line 102
    sput-object v15, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    .line 103
    .line 104
    new-instance v6, Lcom/google/protobuf/WireFormat$FieldType$2;

    .line 105
    .line 106
    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    .line 107
    .line 108
    const-string v4, "GROUP"

    .line 109
    .line 110
    const/16 v8, 0x9

    .line 111
    .line 112
    invoke-direct {v6, v4, v8, v3, v10}, Lcom/google/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 113
    .line 114
    .line 115
    sput-object v6, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    .line 116
    .line 117
    new-instance v10, Lcom/google/protobuf/WireFormat$FieldType$3;

    .line 118
    .line 119
    const-string v4, "MESSAGE"

    .line 120
    .line 121
    const/16 v8, 0xa

    .line 122
    .line 123
    move-object/from16 v20, v6

    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    invoke-direct {v10, v4, v8, v3, v6}, Lcom/google/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 127
    .line 128
    .line 129
    sput-object v10, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    .line 130
    .line 131
    new-instance v8, Lcom/google/protobuf/WireFormat$FieldType$4;

    .line 132
    .line 133
    const/16 v3, 0xb

    .line 134
    .line 135
    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/protobuf/WireFormat$JavaType;

    .line 136
    .line 137
    move-object/from16 v19, v10

    .line 138
    .line 139
    const-string v10, "BYTES"

    .line 140
    .line 141
    invoke-direct {v8, v10, v3, v4, v6}, Lcom/google/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 142
    .line 143
    .line 144
    sput-object v8, Lcom/google/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/protobuf/WireFormat$FieldType;

    .line 145
    .line 146
    new-instance v10, Lcom/google/protobuf/WireFormat$FieldType;

    .line 147
    .line 148
    const-string v3, "UINT32"

    .line 149
    .line 150
    const/16 v4, 0xc

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    invoke-direct {v10, v3, v4, v11, v6}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 154
    .line 155
    .line 156
    sput-object v10, Lcom/google/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/protobuf/WireFormat$FieldType;

    .line 157
    .line 158
    new-instance v4, Lcom/google/protobuf/WireFormat$FieldType;

    .line 159
    .line 160
    const/16 v3, 0xd

    .line 161
    .line 162
    move-object/from16 v21, v8

    .line 163
    .line 164
    sget-object v8, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    .line 165
    .line 166
    move-object/from16 v22, v10

    .line 167
    .line 168
    const-string v10, "ENUM"

    .line 169
    .line 170
    invoke-direct {v4, v10, v3, v8, v6}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 171
    .line 172
    .line 173
    sput-object v4, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    .line 174
    .line 175
    new-instance v10, Lcom/google/protobuf/WireFormat$FieldType;

    .line 176
    .line 177
    const-string v3, "SFIXED32"

    .line 178
    .line 179
    const/16 v6, 0xe

    .line 180
    .line 181
    const/4 v8, 0x5

    .line 182
    invoke-direct {v10, v3, v6, v11, v8}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 183
    .line 184
    .line 185
    sput-object v10, Lcom/google/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/protobuf/WireFormat$FieldType;

    .line 186
    .line 187
    new-instance v8, Lcom/google/protobuf/WireFormat$FieldType;

    .line 188
    .line 189
    const-string v3, "SFIXED64"

    .line 190
    .line 191
    const/16 v6, 0xf

    .line 192
    .line 193
    move-object/from16 v17, v4

    .line 194
    .line 195
    const/4 v4, 0x1

    .line 196
    invoke-direct {v8, v3, v6, v5, v4}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 197
    .line 198
    .line 199
    sput-object v8, Lcom/google/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/protobuf/WireFormat$FieldType;

    .line 200
    .line 201
    new-instance v6, Lcom/google/protobuf/WireFormat$FieldType;

    .line 202
    .line 203
    const-string v3, "SINT32"

    .line 204
    .line 205
    const/16 v4, 0x10

    .line 206
    .line 207
    move-object/from16 v16, v8

    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    invoke-direct {v6, v3, v4, v11, v8}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 211
    .line 212
    .line 213
    sput-object v6, Lcom/google/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/protobuf/WireFormat$FieldType;

    .line 214
    .line 215
    new-instance v11, Lcom/google/protobuf/WireFormat$FieldType;

    .line 216
    .line 217
    const-string v3, "SINT64"

    .line 218
    .line 219
    const/16 v4, 0x11

    .line 220
    .line 221
    invoke-direct {v11, v3, v4, v5, v8}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    .line 222
    .line 223
    .line 224
    sput-object v11, Lcom/google/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/protobuf/WireFormat$FieldType;

    .line 225
    .line 226
    move-object v3, v7

    .line 227
    move-object v4, v9

    .line 228
    move-object v5, v12

    .line 229
    move-object/from16 v18, v6

    .line 230
    .line 231
    move-object/from16 v9, v20

    .line 232
    .line 233
    move-object v6, v13

    .line 234
    move-object v7, v14

    .line 235
    move-object/from16 v12, v21

    .line 236
    .line 237
    move-object v8, v15

    .line 238
    move-object v14, v10

    .line 239
    move-object/from16 v13, v22

    .line 240
    .line 241
    move-object/from16 v10, v19

    .line 242
    .line 243
    move-object/from16 v19, v11

    .line 244
    .line 245
    move-object v11, v12

    .line 246
    move-object v12, v13

    .line 247
    move-object/from16 v13, v17

    .line 248
    .line 249
    move-object/from16 v15, v16

    .line 250
    .line 251
    move-object/from16 v16, v18

    .line 252
    .line 253
    move-object/from16 v17, v19

    .line 254
    .line 255
    filled-new-array/range {v0 .. v17}, [Lcom/google/protobuf/WireFormat$FieldType;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/google/protobuf/WireFormat$FieldType;

    .line 260
    .line 261
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/protobuf/WireFormat$FieldType;->javaType:Lcom/google/protobuf/WireFormat$JavaType;

    .line 4
    iput p4, p0, Lcom/google/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;ILcom/google/protobuf/WireFormat$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/protobuf/WireFormat$FieldType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/google/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/protobuf/WireFormat$FieldType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getJavaType()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/WireFormat$FieldType;->javaType:Lcom/google/protobuf/WireFormat$JavaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWireType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/protobuf/WireFormat$FieldType;->wireType:I

    .line 2
    .line 3
    return p0
.end method
