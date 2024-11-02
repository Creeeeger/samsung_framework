.class public final Lgov/nist/javax/sip/parser/AddressParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 2
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p0, "charLexer"

    .line 3
    invoke-virtual {p1, p0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 5
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method


# virtual methods
.method public final address()Lgov/nist/javax/sip/address/AddressImpl;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 4
    .line 5
    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x2f

    .line 10
    .line 11
    const/16 v4, 0x3a

    .line 12
    .line 13
    const/16 v5, 0x22

    .line 14
    .line 15
    const/16 v6, 0x3c

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v2, v6, :cond_2

    .line 26
    .line 27
    if-eq v2, v5, :cond_2

    .line 28
    .line 29
    if-eq v2, v4, :cond_2

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-eqz v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "unexpected EOL"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    :cond_2
    :goto_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eq v1, v6, :cond_6

    .line 53
    .line 54
    if-ne v1, v5, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    if-eq v1, v4, :cond_5

    .line 58
    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const-string v0, "Bad address spec"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    throw p0

    .line 69
    :cond_5
    :goto_2
    new-instance v1, Lgov/nist/javax/sip/address/AddressImpl;

    .line 70
    .line 71
    invoke-direct {v1}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    .line 75
    .line 76
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    .line 78
    check-cast p0, Lgov/nist/javax/sip/parser/Lexer;

    .line 79
    .line 80
    invoke-direct {v2, p0}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const/4 v0, 0x2

    .line 88
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParser;->nameAddr()Lgov/nist/javax/sip/address/AddressImpl;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_4
    return-object v1
.end method

.method public final nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    .locals 6

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v2, 0x3e

    .line 9
    .line 10
    const/16 v3, 0x3c

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 21
    .line 22
    const-string v1, "sip_urlLexer"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 28
    .line 29
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    .line 33
    .line 34
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 35
    .line 36
    check-cast v1, Lgov/nist/javax/sip/parser/Lexer;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lgov/nist/javax/sip/address/AddressImpl;

    .line 46
    .line 47
    invoke-direct {v1}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 57
    .line 58
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    .line 68
    .line 69
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 73
    .line 74
    .line 75
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 76
    .line 77
    invoke-virtual {v5, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/16 v5, 0x22

    .line 82
    .line 83
    if-ne v1, v5, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 86
    .line 87
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 92
    .line 93
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->getNextToken(C)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 116
    .line 117
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    .line 121
    .line 122
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 123
    .line 124
    check-cast v3, Lgov/nist/javax/sip/parser/Lexer;

    .line 125
    .line 126
    invoke-direct {v1, v3}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v3, Lgov/nist/javax/sip/address/AddressImpl;

    .line 134
    .line 135
    invoke-direct {v3}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 145
    .line 146
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 152
    .line 153
    .line 154
    return-object v0
.end method
