.class public final Lcom/google/dexmaker/dx/rop/type/Type;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/dexmaker/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# static fields
.field public static final BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final STRING:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final VOID:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final internTable:Ljava/util/HashMap;


# instance fields
.field public arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

.field public final basicType:I

.field public className:Ljava/lang/String;

.field public componentType:Lcom/google/dexmaker/dx/rop/type/Type;

.field public final descriptor:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    .line 9
    .line 10
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 11
    .line 12
    const-string v1, "Z"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 19
    .line 20
    new-instance v1, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 21
    .line 22
    const-string v2, "B"

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {v1, v2, v3}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 29
    .line 30
    new-instance v2, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 31
    .line 32
    const-string v3, "C"

    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    invoke-direct {v2, v3, v4}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 39
    .line 40
    new-instance v3, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 41
    .line 42
    const-string v4, "D"

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    invoke-direct {v3, v4, v5}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 49
    .line 50
    new-instance v4, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 51
    .line 52
    const-string v5, "F"

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    invoke-direct {v4, v5, v6}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    sput-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 59
    .line 60
    new-instance v5, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 61
    .line 62
    const-string v6, "I"

    .line 63
    .line 64
    const/4 v7, 0x6

    .line 65
    invoke-direct {v5, v6, v7}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    sput-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 69
    .line 70
    new-instance v6, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 71
    .line 72
    const-string v7, "J"

    .line 73
    .line 74
    const/4 v8, 0x7

    .line 75
    invoke-direct {v6, v7, v8}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    sput-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->LONG:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 79
    .line 80
    new-instance v7, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 81
    .line 82
    const-string v8, "S"

    .line 83
    .line 84
    const/16 v9, 0x8

    .line 85
    .line 86
    invoke-direct {v7, v8, v9}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    sput-object v7, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 90
    .line 91
    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 92
    .line 93
    const-string v9, "V"

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 100
    .line 101
    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 102
    .line 103
    const-string v9, "<null>"

    .line 104
    .line 105
    const/16 v10, 0x9

    .line 106
    .line 107
    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 111
    .line 112
    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 113
    .line 114
    const-string v9, "<addr>"

    .line 115
    .line 116
    const/16 v10, 0xa

    .line 117
    .line 118
    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 133
    .line 134
    .line 135
    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 139
    .line 140
    .line 141
    invoke-static {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 142
    .line 143
    .line 144
    invoke-static {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 145
    .line 146
    .line 147
    const-string v8, "Ljava/lang/annotation/Annotation;"

    .line 148
    .line 149
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 150
    .line 151
    .line 152
    const-string v8, "Ljava/lang/Class;"

    .line 153
    .line 154
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 155
    .line 156
    .line 157
    const-string v8, "Ljava/lang/Cloneable;"

    .line 158
    .line 159
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 160
    .line 161
    .line 162
    const-string v8, "Ljava/lang/Object;"

    .line 163
    .line 164
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 169
    .line 170
    const-string v9, "Ljava/io/Serializable;"

    .line 171
    .line 172
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 173
    .line 174
    .line 175
    const-string v9, "Ljava/lang/String;"

    .line 176
    .line 177
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->STRING:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 182
    .line 183
    const-string v9, "Ljava/lang/Throwable;"

    .line 184
    .line 185
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 190
    .line 191
    const-string v9, "Ljava/lang/Boolean;"

    .line 192
    .line 193
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 198
    .line 199
    const-string v9, "Ljava/lang/Byte;"

    .line 200
    .line 201
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 206
    .line 207
    const-string v9, "Ljava/lang/Character;"

    .line 208
    .line 209
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 214
    .line 215
    const-string v9, "Ljava/lang/Double;"

    .line 216
    .line 217
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 222
    .line 223
    const-string v9, "Ljava/lang/Float;"

    .line 224
    .line 225
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 230
    .line 231
    const-string v9, "Ljava/lang/Integer;"

    .line 232
    .line 233
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 238
    .line 239
    const-string v9, "Ljava/lang/Long;"

    .line 240
    .line 241
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 246
    .line 247
    const-string v9, "Ljava/lang/Short;"

    .line 248
    .line 249
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 254
    .line 255
    const-string v9, "Ljava/lang/Void;"

    .line 256
    .line 257
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 280
    .line 281
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 286
    .line 287
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 292
    .line 293
    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 298
    .line 299
    invoke-virtual {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 304
    .line 305
    invoke-virtual {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 310
    .line 311
    invoke-virtual {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 316
    .line 317
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 5
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newAt < -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad basicType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "descriptor == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    const/16 v1, 0x5b

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/16 v4, 0x4c

    .line 42
    .line 43
    if-ne v0, v4, :cond_6

    .line 44
    .line 45
    sub-int/2addr v3, v2

    .line 46
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/16 v4, 0x3b

    .line 51
    .line 52
    if-ne v0, v4, :cond_6

    .line 53
    .line 54
    move v0, v2

    .line 55
    :goto_0
    if-ge v0, v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/16 v6, 0x28

    .line 62
    .line 63
    if-eq v5, v6, :cond_4

    .line 64
    .line 65
    const/16 v6, 0x29

    .line 66
    .line 67
    if-eq v5, v6, :cond_4

    .line 68
    .line 69
    const/16 v6, 0x2e

    .line 70
    .line 71
    if-eq v5, v6, :cond_4

    .line 72
    .line 73
    const/16 v6, 0x2f

    .line 74
    .line 75
    if-eq v5, v6, :cond_2

    .line 76
    .line 77
    if-eq v5, v4, :cond_4

    .line 78
    .line 79
    if-eq v5, v1, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    if-eq v0, v2, :cond_3

    .line 83
    .line 84
    if-eq v0, v3, :cond_3

    .line 85
    .line 86
    add-int/lit8 v5, v0, -0x1

    .line 87
    .line 88
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eq v5, v6, :cond_3

    .line 93
    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string v1, "bad descriptor: "

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string v1, "bad descriptor: "

    .line 112
    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_5
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 122
    .line 123
    const/16 v1, 0x9

    .line 124
    .line 125
    invoke-direct {v0, p0, v1}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string v1, "bad descriptor: "

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    const-string v0, "descriptor == null"

    .line 148
    .line 149
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    const-string v0, "descriptor is empty"

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    throw p0
.end method

.method public static putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

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
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "["

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 35
    .line 36
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v3, 0x5b

    .line 18
    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_3

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 32
    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "not an array type: "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p0, "[]"

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    iget v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    .line 102
    .line 103
    const/16 v4, 0x9

    .line 104
    .line 105
    if-ne v0, v4, :cond_4

    .line 106
    .line 107
    move v0, v2

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move v0, v1

    .line 110
    :goto_2
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-ne v0, v3, :cond_5

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    sub-int/2addr v1, v2

    .line 132
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "not an object type: "

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    .line 162
    .line 163
    const-string v0, "/"

    .line 164
    .line 165
    const-string v1, "."

    .line 166
    .line 167
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_1
    const-string/jumbo p0, "short"

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_2
    const-string p0, "long"

    .line 177
    .line 178
    return-object p0

    .line 179
    :pswitch_3
    const-string p0, "int"

    .line 180
    .line 181
    return-object p0

    .line 182
    :pswitch_4
    const-string p0, "float"

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_5
    const-string p0, "double"

    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_6
    const-string p0, "char"

    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_7
    const-string p0, "byte"

    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_8
    const-string p0, "boolean"

    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_9
    const-string/jumbo p0, "void"

    .line 198
    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
