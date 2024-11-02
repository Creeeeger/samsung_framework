.class public final Lgov/nist/javax/sip/parser/AllowParser;
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
    .locals 4

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/AllowList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x815

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgov/nist/javax/sip/header/Allow;

    .line 12
    .line 13
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Allow"

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
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 46
    .line 47
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v2, 0x2c

    .line 58
    .line 59
    if-ne v1, v2, :cond_0

    .line 60
    .line 61
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 67
    .line 68
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lgov/nist/javax/sip/header/Allow;

    .line 72
    .line 73
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 82
    .line 83
    iget-object v2, v2, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 84
    .line 85
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 94
    .line 95
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 100
    .line 101
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 105
    .line 106
    const/16 v1, 0xa

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    .line 110
    .line 111
    return-object v0
.end method
