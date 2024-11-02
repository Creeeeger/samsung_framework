.class public final Lgov/nist/javax/sip/parser/AcceptParser;
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
    .locals 5

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/AcceptList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x814

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgov/nist/javax/sip/header/Accept;

    .line 12
    .line 13
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Accept"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 22
    .line 23
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 27
    .line 28
    const/16 v3, 0xfff

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 34
    .line 35
    iget-object v2, v2, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 36
    .line 37
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 43
    .line 44
    const/16 v4, 0x2f

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 55
    .line 56
    iget-object v2, v2, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 57
    .line 58
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 64
    .line 65
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/16 v2, 0x2c

    .line 82
    .line 83
    if-ne v1, v2, :cond_0

    .line 84
    .line 85
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 91
    .line 92
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lgov/nist/javax/sip/header/Accept;

    .line 96
    .line 97
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 106
    .line 107
    iget-object v2, v2, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 108
    .line 109
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 125
    .line 126
    iget-object v2, v2, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 127
    .line 128
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 134
    .line 135
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method
