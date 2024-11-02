.class public final Lgov/nist/javax/sip/parser/ContentTypeParser;
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
    .locals 4

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x826

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 12
    .line 13
    const/16 v2, 0xfff

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 19
    .line 20
    iget-object v3, v1, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 21
    .line 22
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 31
    .line 32
    const/16 v3, 0x2f

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 43
    .line 44
    iget-object v2, v1, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 45
    .line 46
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 47
    .line 48
    .line 49
    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 58
    .line 59
    const/16 v1, 0xa

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    .line 63
    .line 64
    return-object v0
.end method
