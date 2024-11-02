.class public final Lgov/nist/javax/sip/parser/AcceptEncodingParser;
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
    .locals 8

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncodingList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x813

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
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
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    new-instance p0, Lgov/nist/javax/sip/header/AcceptEncoding;

    .line 23
    .line 24
    invoke-direct {p0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v1, v3, :cond_3

    .line 39
    .line 40
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    .line 41
    .line 42
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/16 v5, 0xfff

    .line 52
    .line 53
    const/16 v6, 0x3b

    .line 54
    .line 55
    if-eq v4, v6, :cond_1

    .line 56
    .line 57
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 63
    .line 64
    iget-object v4, v4, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 65
    .line 66
    iget-object v4, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v4, v6, :cond_2

    .line 78
    .line 79
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 80
    .line 81
    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 85
    .line 86
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 90
    .line 91
    const/16 v7, 0x71

    .line 92
    .line 93
    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 97
    .line 98
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 102
    .line 103
    const/16 v7, 0x3d

    .line 104
    .line 105
    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 109
    .line 110
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 119
    .line 120
    iget-object v4, v4, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 121
    .line 122
    :try_start_0
    iget-object v4, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 132
    .line 133
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    throw p0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    throw p0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    throw p0

    .line 159
    :cond_2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const/16 v4, 0x2c

    .line 169
    .line 170
    if-ne v1, v4, :cond_0

    .line 171
    .line 172
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 178
    .line 179
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_3
    :goto_2
    return-object v0
.end method
