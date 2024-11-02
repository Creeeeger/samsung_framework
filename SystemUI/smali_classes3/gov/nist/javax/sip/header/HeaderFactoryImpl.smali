.class public final Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p0, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    .line 8
    .line 9
    const-string p0, ":"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 22
    .line 23
    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    sub-int/2addr v1, v2

    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    :goto_0
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    if-gt v5, v6, :cond_0

    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 53
    if-gt v5, v6, :cond_1

    .line 54
    .line 55
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    add-int/lit8 v7, v1, 0x1

    .line 61
    .line 62
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 63
    .line 64
    .line 65
    move v8, v3

    .line 66
    move v7, v4

    .line 67
    :goto_2
    const/16 v9, 0xa

    .line 68
    .line 69
    if-gt v4, v1, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    const/16 v11, 0xd

    .line 76
    .line 77
    if-eq v10, v11, :cond_5

    .line 78
    .line 79
    if-ne v10, v9, :cond_2

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_2
    if-eqz v8, :cond_6

    .line 83
    .line 84
    if-eq v10, v6, :cond_4

    .line 85
    .line 86
    const/16 v7, 0x9

    .line 87
    .line 88
    if-ne v10, v7, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move v8, v3

    .line 92
    move v7, v4

    .line 93
    goto :goto_5

    .line 94
    :cond_4
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    add-int/lit8 v7, v4, 0x1

    .line 98
    .line 99
    move v8, v3

    .line 100
    goto :goto_5

    .line 101
    :cond_5
    :goto_4
    if-nez v8, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    move v8, v2

    .line 111
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 129
    .line 130
    sget v1, Lgov/nist/javax/sip/parser/Lexer;->$r8$clinit:I

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_8
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-lt v4, v2, :cond_9

    .line 141
    .line 142
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    goto :goto_7

    .line 151
    :catch_0
    :cond_9
    :goto_6
    move-object v4, v1

    .line 152
    :goto_7
    if-nez v0, :cond_a

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_a
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    add-int/2addr p0, v2

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    goto :goto_9

    .line 165
    :catch_1
    :goto_8
    move-object p0, v1

    .line 166
    :goto_9
    if-eqz v4, :cond_11

    .line 167
    .line 168
    if-eqz p0, :cond_11

    .line 169
    .line 170
    sget-object p0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 171
    .line 172
    invoke-static {v4}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Ljava/lang/Class;

    .line 181
    .line 182
    if-eqz p0, :cond_c

    .line 183
    .line 184
    :try_start_3
    sget-object v4, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    .line 185
    .line 186
    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 191
    .line 192
    if-nez v5, :cond_b

    .line 193
    .line 194
    sget-object v5, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    .line 195
    .line 196
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v4, p0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_b
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    .line 213
    goto :goto_a

    .line 214
    :catch_2
    move-exception p0

    .line 215
    invoke-static {p0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 216
    .line 217
    .line 218
    throw v1

    .line 219
    :cond_c
    new-instance p0, Lgov/nist/javax/sip/parser/HeaderParser;

    .line 220
    .line 221
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :goto_a
    if-eqz p0, :cond_10

    .line 225
    .line 226
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 231
    .line 232
    if-eqz v0, :cond_f

    .line 233
    .line 234
    move-object v0, p0

    .line 235
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 236
    .line 237
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-gt v4, v2, :cond_e

    .line 242
    .line 243
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_d

    .line 248
    .line 249
    :try_start_4
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 250
    .line 251
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    check-cast p0, Ljavax/sip/header/Header;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :catch_3
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    goto :goto_c

    .line 267
    :catch_4
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    goto :goto_c

    .line 272
    :cond_d
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    goto :goto_c

    .line 277
    :cond_e
    new-instance p0, Ljava/text/ParseException;

    .line 278
    .line 279
    const-string v0, "Only singleton allowed "

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    throw p0

    .line 289
    :cond_f
    :goto_b
    move-object v1, p0

    .line 290
    :goto_c
    return-object v1

    .line 291
    :cond_10
    new-instance p0, Ljava/text/ParseException;

    .line 292
    .line 293
    const-string p1, "could not create parser"

    .line 294
    .line 295
    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :cond_11
    new-instance p0, Ljava/text/ParseException;

    .line 300
    .line 301
    const-string p1, "The header name or value is null"

    .line 302
    .line 303
    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    throw p0

    .line 307
    :catch_5
    new-instance p0, Ljava/text/ParseException;

    .line 308
    .line 309
    const-string p1, "Empty header."

    .line 310
    .line 311
    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    throw p0
.end method
