.class public final Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field public final stripAddressScopeZones:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 2
        -0x3s
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>(Lgov/nist/core/LexerCore;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 7
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v0, "charLexer"

    .line 8
    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    const-string p1, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 3
    new-instance v0, Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p1, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method


# virtual methods
.method public final host()Lgov/nist/core/Host;
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
    const/16 v2, 0x5b

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 19
    .line 20
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v2, 0x3f

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v3, 0x3b

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, -0x1

    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    if-eq v3, v4, :cond_2

    .line 40
    .line 41
    if-le v2, v3, :cond_2

    .line 42
    .line 43
    :cond_1
    move v2, v3

    .line 44
    :cond_2
    if-ne v2, v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :cond_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v2, 0x3a

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ne v3, v4, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v5, 0x1

    .line 64
    add-int/2addr v3, v5

    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, v4, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    move v1, v5

    .line 73
    :goto_0
    if-eqz v1, :cond_6

    .line 74
    .line 75
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 76
    .line 77
    iget v1, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    new-array v2, v2, [C

    .line 81
    .line 82
    fill-array-data v2, :array_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    .line 89
    .line 90
    const-string v2, "["

    .line 91
    .line 92
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 96
    .line 97
    iget-object v3, v2, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 98
    .line 99
    iget v2, v2, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 100
    .line 101
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    const-string v1, "]"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 119
    .line 120
    iget v1, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 121
    .line 122
    sget-object v2, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 128
    .line 129
    iget-object v2, v0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 130
    .line 131
    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 132
    .line 133
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    new-instance p0, Lgov/nist/core/Host;

    .line 144
    .line 145
    invoke-direct {p0, v0}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_7
    new-instance v0, Ljava/text/ParseException;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 157
    .line 158
    iget-object v2, v2, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, ": Missing host name"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 173
    .line 174
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 175
    .line 176
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    nop

    .line 181
    :array_0
    .array-data 2
        -0x3s
        0x3as
    .end array-data
.end method

.method public final hostPort(Z)Lgov/nist/core/HostPort;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lgov/nist/core/HostPort;

    .line 6
    .line 7
    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, v1, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 15
    .line 16
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 20
    .line 21
    invoke-virtual {v0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v3, 0x9

    .line 35
    .line 36
    if-eq v0, v3, :cond_6

    .line 37
    .line 38
    const/16 v3, 0xa

    .line 39
    .line 40
    if-eq v0, v3, :cond_6

    .line 41
    .line 42
    const/16 v3, 0xd

    .line 43
    .line 44
    if-eq v0, v3, :cond_6

    .line 45
    .line 46
    const/16 v3, 0x20

    .line 47
    .line 48
    if-eq v0, v3, :cond_6

    .line 49
    .line 50
    const/16 v3, 0x25

    .line 51
    .line 52
    if-eq v0, v3, :cond_3

    .line 53
    .line 54
    const/16 v3, 0x2c

    .line 55
    .line 56
    if-eq v0, v3, :cond_6

    .line 57
    .line 58
    const/16 v3, 0x2f

    .line 59
    .line 60
    if-eq v0, v3, :cond_6

    .line 61
    .line 62
    const/16 v3, 0x3a

    .line 63
    .line 64
    if-eq v0, v3, :cond_1

    .line 65
    .line 66
    const/16 v3, 0x3b

    .line 67
    .line 68
    if-eq v0, v3, :cond_6

    .line 69
    .line 70
    const/16 v3, 0x3e

    .line 71
    .line 72
    if-eq v0, v3, :cond_6

    .line 73
    .line 74
    const/16 v3, 0x3f

    .line 75
    .line 76
    if-eq v0, v3, :cond_6

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 88
    .line 89
    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    .line 91
    .line 92
    :cond_2
    :try_start_0
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 93
    .line 94
    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, v1, Lgov/nist/core/HostPort;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    throw p0

    .line 107
    :catch_0
    new-instance p1, Ljava/text/ParseException;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 115
    .line 116
    iget-object v1, v1, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, " :Error parsing port "

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 131
    .line 132
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 133
    .line 134
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_3
    iget-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    new-instance p1, Ljava/text/ParseException;

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 154
    .line 155
    iget-object v1, v1, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, " Illegal character in hostname:"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 179
    .line 180
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 181
    .line 182
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_6
    :goto_1
    return-object v1
.end method

.method public final ipv6Reference()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 7
    .line 8
    const/16 v2, 0x5b

    .line 9
    .line 10
    const/16 v3, 0x3a

    .line 11
    .line 12
    const/16 v4, 0x2e

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/16 v6, 0x5d

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 21
    .line 22
    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_2

    .line 39
    .line 40
    if-eq v1, v4, :cond_2

    .line 41
    .line 42
    if-eq v1, v3, :cond_2

    .line 43
    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-ne v1, v6, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 50
    .line 51
    invoke-virtual {p0, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    const/16 v2, 0x25

    .line 63
    .line 64
    if-ne v1, v2, :cond_6

    .line 65
    .line 66
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 67
    .line 68
    invoke-virtual {v1, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 72
    .line 73
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v2, -0x1

    .line 90
    if-eq v1, v2, :cond_6

    .line 91
    .line 92
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 93
    .line 94
    add-int/2addr v1, v7

    .line 95
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 96
    .line 97
    .line 98
    const-string p0, "]"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_2
    :goto_1
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 109
    .line 110
    invoke-virtual {v8, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 118
    .line 119
    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 126
    .line 127
    invoke-virtual {v1, v5}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-nez v8, :cond_5

    .line 136
    .line 137
    if-eq v1, v4, :cond_5

    .line 138
    .line 139
    if-eq v1, v3, :cond_5

    .line 140
    .line 141
    if-ne v1, v2, :cond_4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    if-ne v1, v6, :cond_6

    .line 145
    .line 146
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 147
    .line 148
    invoke-virtual {p0, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :cond_5
    :goto_3
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 160
    .line 161
    invoke-virtual {v8, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 176
    .line 177
    iget-object v2, v2, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, ": Illegal Host name "

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 192
    .line 193
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 194
    .line 195
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    throw v0
.end method
