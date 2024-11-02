.class public final Lgov/nist/javax/sip/parser/ViaParser;
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
.method public final nameValue$1()Lgov/nist/core/NameValue;
    .locals 7

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    const/16 v1, 0xfff

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 9
    .line 10
    iget-object v2, v0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 11
    .line 12
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v5, 0x3d

    .line 24
    .line 25
    if-ne v3, v5, :cond_3

    .line 26
    .line 27
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-virtual {v3, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 34
    .line 35
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 36
    .line 37
    .line 38
    iget-object v3, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 39
    .line 40
    const-string v6, "received"

    .line 41
    .line 42
    invoke-virtual {v3, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 49
    .line 50
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v6, 0x22

    .line 62
    .line 63
    if-ne v3, v6, :cond_1

    .line 64
    .line 65
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 66
    .line 67
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    move v4, v5

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 79
    .line 80
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 81
    .line 82
    iget-object p0, p0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 83
    .line 84
    :goto_0
    new-instance v1, Lgov/nist/core/NameValue;

    .line 85
    .line 86
    iget-object v3, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {v1, v3, p0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-object v1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    new-instance p0, Lgov/nist/core/NameValue;

    .line 104
    .line 105
    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {p0, v1, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :goto_1
    throw p0

    .line 116
    :catch_0
    new-instance p0, Lgov/nist/core/NameValue;

    .line 117
    .line 118
    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {p0, v1, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object p0
.end method

.method public final parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4

    .line 1
    new-instance v0, Lgov/nist/javax/sip/header/ViaList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 7
    .line 8
    const/16 v2, 0x810

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 14
    .line 15
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 19
    .line 20
    const/16 v2, 0x3a

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 26
    .line 27
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/Via;

    .line 31
    .line 32
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->parseVia(Lgov/nist/javax/sip/header/Via;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 42
    .line 43
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/16 v3, 0x2c

    .line 54
    .line 55
    if-ne v1, v3, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 64
    .line 65
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/16 v2, 0xa

    .line 75
    .line 76
    if-ne v1, v2, :cond_0

    .line 77
    .line 78
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public final parseVia(Lgov/nist/javax/sip/header/Via;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    const/16 v1, 0xfff

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 9
    .line 10
    iget-object v2, v0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 11
    .line 12
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 16
    .line 17
    const/16 v3, 0x2f

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 23
    .line 24
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 38
    .line 39
    iget-object v4, v0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 40
    .line 41
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 50
    .line 51
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 60
    .line 61
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 65
    .line 66
    iget-object v1, v0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 67
    .line 68
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    .line 72
    .line 73
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v2, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lgov/nist/core/HostNameParser;

    .line 95
    .line 96
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 97
    .line 98
    check-cast v1, Lgov/nist/javax/sip/parser/Lexer;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 101
    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 112
    .line 113
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    .line 115
    .line 116
    :goto_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/16 v3, 0x3b

    .line 124
    .line 125
    if-ne v0, v3, :cond_2

    .line 126
    .line 127
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 133
    .line 134
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ViaParser;->nameValue$1()Lgov/nist/core/NameValue;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const-string v3, "branch"

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_1

    .line 152
    .line 153
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v2, :cond_0

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    .line 163
    .line 164
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 165
    .line 166
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 167
    .line 168
    const-string v0, "null branch Id"

    .line 169
    .line 170
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 178
    .line 179
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const/16 v3, 0x28

    .line 190
    .line 191
    if-ne v0, v3, :cond_6

    .line 192
    .line 193
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 194
    .line 195
    const-string v3, "charLexer"

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .line 209
    .line 210
    :goto_2
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 211
    .line 212
    invoke-virtual {v3, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/16 v4, 0x29

    .line 217
    .line 218
    if-ne v3, v4, :cond_3

    .line 219
    .line 220
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 221
    .line 222
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_3
    const/16 v4, 0x5c

    .line 227
    .line 228
    if-ne v3, v4, :cond_4

    .line 229
    .line 230
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 231
    .line 232
    iget-object v3, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 233
    .line 234
    iget-object v3, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    .line 238
    .line 239
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 240
    .line 241
    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 242
    .line 243
    .line 244
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 245
    .line 246
    iget-object v3, v3, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 247
    .line 248
    iget-object v3, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    .line 252
    .line 253
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 254
    .line 255
    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_4
    const/16 v4, 0xa

    .line 260
    .line 261
    if-ne v3, v4, :cond_5

    .line 262
    .line 263
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/header/Via;->setComment(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 275
    .line 276
    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_6
    :goto_4
    return-void
.end method
