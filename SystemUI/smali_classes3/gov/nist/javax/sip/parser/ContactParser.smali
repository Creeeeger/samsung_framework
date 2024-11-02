.class public final Lgov/nist/javax/sip/parser/ContactParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 3
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

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
    .locals 7

    .line 1
    const/16 v0, 0x827

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgov/nist/javax/sip/header/ContactList;

    .line 7
    .line 8
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContactList;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/Contact;

    .line 12
    .line 13
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    const/16 v5, 0x2a

    .line 26
    .line 27
    if-ne v2, v5, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    invoke-virtual {v2, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/16 v6, 0x20

    .line 37
    .line 38
    if-eq v2, v6, :cond_1

    .line 39
    .line 40
    const/16 v6, 0x9

    .line 41
    .line 42
    if-eq v2, v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0xd

    .line 45
    .line 46
    if-eq v2, v6, :cond_1

    .line 47
    .line 48
    if-ne v2, v4, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 56
    .line 57
    invoke-virtual {v2, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag$1()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 71
    .line 72
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/16 v2, 0x2c

    .line 82
    .line 83
    if-ne v1, v2, :cond_3

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
    goto :goto_0

    .line 96
    :cond_3
    if-eq v1, v4, :cond_5

    .line 97
    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const-string v0, "unexpected char"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    throw p0

    .line 108
    :cond_5
    :goto_3
    return-object v0
.end method
