.class public final Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x849

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    .line 12
    .line 13
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "P-Asserted-Identity"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 28
    .line 29
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x2c

    .line 40
    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 49
    .line 50
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    .line 54
    .line 55
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 65
    .line 66
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 71
    .line 72
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 76
    .line 77
    const/16 v1, 0xa

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 80
    .line 81
    .line 82
    return-object v0
.end method
