.class public final Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
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
    .locals 5

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x852

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .line 12
    .line 13
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "P-Media-Authorization"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v4, 0xa

    .line 29
    .line 30
    if-eq v2, v4, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    const/16 v4, 0xfff

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 40
    .line 41
    iget-object v2, v2, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 42
    .line 43
    :try_start_0
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 52
    .line 53
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/16 v3, 0x2c

    .line 63
    .line 64
    if-ne v2, v3, :cond_0

    .line 65
    .line 66
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .line 72
    .line 73
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    .line 78
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    throw p0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0

    .line 94
    :cond_1
    return-object v0
.end method
