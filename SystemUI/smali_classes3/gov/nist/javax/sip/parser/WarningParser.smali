.class public final Lgov/nist/javax/sip/parser/WarningParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 9

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/WarningList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x81e

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    if-eq v1, v3, :cond_3

    .line 21
    .line 22
    new-instance v1, Lgov/nist/javax/sip/header/Warning;

    .line 23
    .line 24
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "Warning"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    const/16 v4, 0xfff

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 40
    .line 41
    iget-object v3, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 42
    .line 43
    :try_start_0
    iget-object v3, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 53
    .line 54
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 63
    .line 64
    iget-object v5, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const-string v6, ":"

    .line 71
    .line 72
    const/16 v7, 0x3a

    .line 73
    .line 74
    if-ne v3, v7, :cond_1

    .line 75
    .line 76
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    .line 78
    invoke-virtual {v3, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 87
    .line 88
    iget-object v3, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 89
    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v5, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v3, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 122
    .line 123
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 127
    .line 128
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 136
    .line 137
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/16 v3, 0x2c

    .line 150
    .line 151
    if-ne v1, v3, :cond_0

    .line 152
    .line 153
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 159
    .line 160
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lgov/nist/javax/sip/header/Warning;

    .line 164
    .line 165
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 174
    .line 175
    iget-object v3, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 176
    .line 177
    :try_start_1
    iget-object v3, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 187
    .line 188
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 189
    .line 190
    .line 191
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 192
    .line 193
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 194
    .line 195
    .line 196
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 197
    .line 198
    iget-object v5, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-ne v3, v7, :cond_2

    .line 205
    .line 206
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 207
    .line 208
    invoke-virtual {v3, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 209
    .line 210
    .line 211
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 214
    .line 215
    .line 216
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 217
    .line 218
    iget-object v3, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 219
    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v5, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v3, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_2
    iget-object v3, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 252
    .line 253
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 254
    .line 255
    .line 256
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 257
    .line 258
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 266
    .line 267
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    throw p0

    .line 285
    :catch_1
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    throw p0

    .line 295
    :catchall_0
    move-exception p0

    .line 296
    throw p0

    .line 297
    :catch_2
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    throw p0

    .line 307
    :catch_3
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    throw p0

    .line 317
    :cond_3
    return-object v0
.end method
