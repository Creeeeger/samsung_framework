.class public final Lgov/nist/javax/sip/parser/CallInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 8

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/CallInfoList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfoList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x833

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
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    new-instance v1, Lgov/nist/javax/sip/header/CallInfo;

    .line 23
    .line 24
    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "Call-Info"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 38
    .line 39
    const/16 v4, 0x3c

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 42
    .line 43
    .line 44
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    .line 45
    .line 46
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    .line 48
    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    .line 49
    .line 50
    invoke-direct {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Lgov/nist/javax/sip/address/GenericURI;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 62
    .line 63
    const/16 v6, 0x3e

    .line 64
    .line 65
    invoke-virtual {v3, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 69
    .line 70
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/16 v3, 0x2c

    .line 86
    .line 87
    if-ne v1, v3, :cond_0

    .line 88
    .line 89
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 95
    .line 96
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lgov/nist/javax/sip/header/CallInfo;

    .line 100
    .line 101
    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 105
    .line 106
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 112
    .line 113
    .line 114
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    .line 115
    .line 116
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 117
    .line 118
    check-cast v7, Lgov/nist/javax/sip/parser/Lexer;

    .line 119
    .line 120
    invoke-direct {v3, v7}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Lgov/nist/javax/sip/address/GenericURI;)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 131
    .line 132
    invoke-virtual {v3, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

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
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    return-object v0
.end method
