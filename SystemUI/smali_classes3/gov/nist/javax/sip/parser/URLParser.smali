.class public final Lgov/nist/javax/sip/parser/URLParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 4
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p0, "sip_urlLexer"

    .line 5
    invoke-virtual {p1, p0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 2
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "sip_urlLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method

.method public static isUnreserved(C)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x21

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x5f

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x7e

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x2d

    .line 22
    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2e

    .line 26
    .line 27
    if-eq p0, v0, :cond_0

    .line 28
    .line 29
    packed-switch p0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    move p0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :pswitch_0
    move p0, v1

    .line 35
    :goto_0
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v2

    .line 39
    :cond_2
    :goto_1
    return v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final base_phone_number()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 9
    .line 10
    invoke-virtual {v3}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_3

    .line 15
    .line 16
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    const/16 v4, 0x2d

    .line 29
    .line 30
    if-eq v3, v4, :cond_2

    .line 31
    .line 32
    const/16 v4, 0x2e

    .line 33
    .line 34
    if-eq v3, v4, :cond_2

    .line 35
    .line 36
    const/16 v4, 0x28

    .line 37
    .line 38
    if-eq v3, v4, :cond_2

    .line 39
    .line 40
    const/16 v4, 0x29

    .line 41
    .line 42
    if-ne v3, v4, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    if-lez v2, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "unexpected "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public final global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 4

    .line 1
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 11
    .line 12
    const/16 v3, 0x2b

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 25
    .line 26
    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x3b

    .line 40
    .line 41
    if-ne v2, v3, :cond_0

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-object v0
.end method

.method public final isEscaped()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x25

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    move v0, v2

    .line 39
    :catch_0
    :cond_0
    return v0
.end method

.method public final local_number()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 9
    .line 10
    invoke-virtual {v3}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_3

    .line 15
    .line 16
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x2a

    .line 23
    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    const/16 v4, 0x23

    .line 27
    .line 28
    if-eq v3, v4, :cond_2

    .line 29
    .line 30
    const/16 v4, 0x2d

    .line 31
    .line 32
    if-eq v3, v4, :cond_2

    .line 33
    .line 34
    const/16 v4, 0x2e

    .line 35
    .line 36
    if-eq v3, v4, :cond_2

    .line 37
    .line 38
    const/16 v4, 0x28

    .line 39
    .line 40
    if-eq v3, v4, :cond_2

    .line 41
    .line 42
    const/16 v4, 0x29

    .line 43
    .line 44
    if-eq v3, v4, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    if-lez v2, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "unexepcted "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0

    .line 78
    :cond_2
    :goto_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final paramNameOrValue()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 4
    .line 5
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v3, 0x24

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v1, v3, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x26

    .line 26
    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    const/16 v3, 0x2b

    .line 30
    .line 31
    if-eq v1, v3, :cond_0

    .line 32
    .line 33
    const/16 v3, 0x2f

    .line 34
    .line 35
    if-eq v1, v3, :cond_0

    .line 36
    .line 37
    const/16 v3, 0x3a

    .line 38
    .line 39
    if-eq v1, v3, :cond_0

    .line 40
    .line 41
    const/16 v3, 0x5b

    .line 42
    .line 43
    if-eq v1, v3, :cond_0

    .line 44
    .line 45
    const/16 v3, 0x5d

    .line 46
    .line 47
    if-eq v1, v3, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v2, v4

    .line 51
    :goto_1
    if-nez v2, :cond_2

    .line 52
    .line 53
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 80
    .line 81
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 82
    .line 83
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 84
    .line 85
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public final password()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 4
    .line 5
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v3, 0x24

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq v1, v3, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x26

    .line 18
    .line 19
    if-eq v1, v3, :cond_0

    .line 20
    .line 21
    const/16 v3, 0x3d

    .line 22
    .line 23
    if-eq v1, v3, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x2b

    .line 26
    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    const/16 v3, 0x2c

    .line 30
    .line 31
    if-eq v1, v3, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v2, v4

    .line 35
    :goto_1
    if-nez v2, :cond_3

    .line 36
    .line 37
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 58
    .line 59
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 60
    .line 61
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 62
    .line 63
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_3
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0
.end method

.method public final qheader()Lgov/nist/core/NameValue;
    .locals 9

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    const/16 v1, 0x3d

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->getNextToken(C)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 21
    .line 22
    invoke-virtual {v3}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/16 v5, 0x21

    .line 36
    .line 37
    if-eq v3, v5, :cond_0

    .line 38
    .line 39
    const/16 v5, 0x22

    .line 40
    .line 41
    if-eq v3, v5, :cond_0

    .line 42
    .line 43
    const/16 v5, 0x24

    .line 44
    .line 45
    if-eq v3, v5, :cond_0

    .line 46
    .line 47
    const/16 v5, 0x3a

    .line 48
    .line 49
    if-eq v3, v5, :cond_0

    .line 50
    .line 51
    const/16 v5, 0x3f

    .line 52
    .line 53
    if-eq v3, v5, :cond_0

    .line 54
    .line 55
    const/16 v5, 0x5b

    .line 56
    .line 57
    if-eq v3, v5, :cond_0

    .line 58
    .line 59
    const/16 v5, 0x5d

    .line 60
    .line 61
    if-eq v3, v5, :cond_0

    .line 62
    .line 63
    const/16 v5, 0x5f

    .line 64
    .line 65
    if-eq v3, v5, :cond_0

    .line 66
    .line 67
    const/16 v5, 0x7e

    .line 68
    .line 69
    if-eq v3, v5, :cond_0

    .line 70
    .line 71
    packed-switch v3, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    packed-switch v3, :pswitch_data_1

    .line 75
    .line 76
    .line 77
    move v5, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :pswitch_0
    move v5, v2

    .line 80
    :goto_1
    if-nez v5, :cond_3

    .line 81
    .line 82
    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    const/16 v5, 0x25

    .line 90
    .line 91
    if-ne v3, v5, :cond_4

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuffer;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 99
    .line 100
    invoke-virtual {v6, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 105
    .line 106
    invoke-virtual {v6, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 111
    .line 112
    const/4 v8, 0x2

    .line 113
    invoke-virtual {v7, v8}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-ne v4, v5, :cond_2

    .line 118
    .line 119
    invoke-static {v6}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_2

    .line 124
    .line 125
    invoke-static {v7}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_2

    .line 130
    .line 131
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 132
    .line 133
    const/4 v8, 0x3

    .line 134
    invoke-virtual {v5, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_2
    const-string v0, "escaped"

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    throw p0

    .line 162
    :cond_3
    :goto_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 163
    .line 164
    invoke-virtual {v4, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    new-instance v1, Lgov/nist/core/NameValue;

    .line 177
    .line 178
    invoke-direct {v1, v0, p0, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    .locals 8

    .line 1
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v3, 0x0

    .line 14
    aget-object v1, v1, v3

    .line 15
    .line 16
    iget v1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 17
    .line 18
    const/16 v4, 0x858

    .line 19
    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    .line 22
    const-string v1, "sips"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v4, 0x803

    .line 26
    .line 27
    const-string v1, "sip"

    .line 28
    .line 29
    :goto_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 35
    .line 36
    const/16 v5, 0x3a

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 45
    .line 46
    iget v1, v1, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->user()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 53
    .line 54
    invoke-virtual {v6, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ne v6, v5, :cond_1

    .line 59
    .line 60
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 61
    .line 62
    invoke-virtual {v5, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->password()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v5, 0x0

    .line 71
    :goto_1
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 72
    .line 73
    invoke-virtual {v6, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/16 v7, 0x40

    .line 78
    .line 79
    if-ne v6, v7, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 96
    .line 97
    iput v1, v4, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 98
    .line 99
    :cond_3
    :goto_2
    new-instance v1, Lgov/nist/core/HostNameParser;

    .line 100
    .line 101
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 102
    .line 103
    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    .line 104
    .line 105
    invoke-direct {v1, v4}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 116
    .line 117
    const-string v4, "charLexer"

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_3
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 123
    .line 124
    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const/16 v4, 0x3b

    .line 137
    .line 138
    if-ne v1, v4, :cond_6

    .line 139
    .line 140
    if-nez p1, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uriParam()Lgov/nist/core/NameValue;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->setUriParameter(Lgov/nist/core/NameValue;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    :goto_4
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 159
    .line 160
    invoke-virtual {p1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_8

    .line 165
    .line 166
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const/16 v1, 0x3f

    .line 173
    .line 174
    if-ne p1, v1, :cond_8

    .line 175
    .line 176
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 179
    .line 180
    .line 181
    :goto_5
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 182
    .line 183
    invoke-virtual {p1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->qheader()Lgov/nist/core/NameValue;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setQHeader(Lgov/nist/core/NameValue;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 197
    .line 198
    invoke-virtual {p1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_7

    .line 203
    .line 204
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    const/16 v1, 0x26

    .line 211
    .line 212
    if-eq p1, v1, :cond_7

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_7
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_8
    :goto_6
    return-object v0

    .line 222
    :catchall_0
    move-exception p0

    .line 223
    throw p0

    .line 224
    :catch_0
    new-instance p1, Ljava/text/ParseException;

    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v1, "Invalid URL: "

    .line 229
    .line 230
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 234
    .line 235
    iget-object p0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    const/4 v0, -0x1

    .line 245
    invoke-direct {p1, p0, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    throw p1
.end method

.method public final telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    .locals 4

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    const/16 v1, 0x839

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 9
    .line 10
    const/16 v1, 0x3a

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 16
    .line 17
    const-string v1, "charLexer"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v2, 0x2b

    .line 30
    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    invoke-static {v0}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    const/16 v2, 0x23

    .line 45
    .line 46
    if-eq v0, v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x2a

    .line 49
    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    const/16 v2, 0x2d

    .line 53
    .line 54
    if-eq v0, v2, :cond_2

    .line 55
    .line 56
    const/16 v2, 0x2e

    .line 57
    .line 58
    if-eq v0, v2, :cond_2

    .line 59
    .line 60
    const/16 v2, 0x28

    .line 61
    .line 62
    if-eq v0, v2, :cond_2

    .line 63
    .line 64
    const/16 v2, 0x29

    .line 65
    .line 66
    if-ne v0, v2, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "unexpected char "

    .line 72
    .line 73
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    throw p0

    .line 88
    :cond_2
    :goto_0
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 89
    .line 90
    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->local_number()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 104
    .line 105
    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 112
    .line 113
    const/4 v3, 0x1

    .line 114
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    aget-object v1, v2, v1

    .line 119
    .line 120
    iget v1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 121
    .line 122
    const/16 v2, 0x3b

    .line 123
    .line 124
    if-eq v1, v2, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    if-eqz p1, :cond_4

    .line 128
    .line 129
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 130
    .line 131
    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_1
    move-object p0, v0

    .line 142
    :goto_2
    new-instance p1, Lgov/nist/javax/sip/address/TelURLImpl;

    .line 143
    .line 144
    invoke-direct {p1}, Lgov/nist/javax/sip/address/TelURLImpl;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/address/TelURLImpl;->setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V

    .line 148
    .line 149
    .line 150
    return-object p1
.end method

.method public final tel_parameters()Lgov/nist/core/NameValueList;
    .locals 7

    .line 1
    new-instance v0, Lgov/nist/core/NameValueList;

    .line 2
    .line 3
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "phone-context"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/16 v4, 0x3d

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 23
    .line 24
    invoke-virtual {v1, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 28
    .line 29
    invoke-virtual {v1, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v3, 0x2b

    .line 34
    .line 35
    if-ne v1, v3, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "+"

    .line 45
    .line 46
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 68
    .line 69
    const/16 v3, 0xfff

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v1, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    new-instance v3, Lgov/nist/core/NameValue;

    .line 78
    .line 79
    invoke-direct {v3, v2, v1, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "Invalid phone-context:"

    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v1, -0x1

    .line 100
    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 105
    .line 106
    invoke-virtual {v2, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v2, v4, :cond_3

    .line 111
    .line 112
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 113
    .line 114
    invoke-virtual {v2, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v3, Lgov/nist/core/NameValue;

    .line 122
    .line 123
    invoke-direct {v3, v1, v2, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    new-instance v3, Lgov/nist/core/NameValue;

    .line 128
    .line 129
    const-string v2, ""

    .line 130
    .line 131
    invoke-direct {v3, v1, v2, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v0, v3}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 138
    .line 139
    invoke-virtual {v1, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    const/16 v2, 0x3b

    .line 144
    .line 145
    if-ne v1, v2, :cond_4

    .line 146
    .line 147
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 148
    .line 149
    invoke-virtual {v1, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_4
    return-object v0
.end method

.method public final uriParam()Lgov/nist/core/NameValue;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v4, 0x3d

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v5

    .line 30
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_2
    new-instance p0, Lgov/nist/core/NameValue;

    .line 47
    .line 48
    invoke-direct {p0, v1, v0, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;
    .locals 5

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v1, v0, v1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    iget v1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 15
    .line 16
    const/16 v2, 0x803

    .line 17
    .line 18
    const-string v3, "Expecting \':\'"

    .line 19
    .line 20
    const/16 v4, 0x3a

    .line 21
    .line 22
    if-eq v1, v2, :cond_3

    .line 23
    .line 24
    const/16 v2, 0x858

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v2, 0x839

    .line 30
    .line 31
    if-ne v1, v2, :cond_2

    .line 32
    .line 33
    iget v0, v0, Lgov/nist/core/Token;->tokenType:I

    .line 34
    .line 35
    if-ne v0, v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    throw p0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uricString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/address/GenericURI;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    move-object p0, v0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    throw p0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    throw p0

    .line 70
    :cond_3
    :goto_0
    iget v0, v0, Lgov/nist/core/Token;->tokenType:I

    .line 71
    .line 72
    if-ne v0, v4, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_1
    return-object p0

    .line 79
    :cond_4
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    throw p0
.end method

.method public final uricString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 9
    .line 10
    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v3}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/16 v4, 0x24

    .line 32
    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    const/16 v4, 0x26

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x2f

    .line 40
    .line 41
    if-eq v3, v4, :cond_1

    .line 42
    .line 43
    const/16 v4, 0x3d

    .line 44
    .line 45
    if-eq v3, v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x2b

    .line 48
    .line 49
    if-eq v3, v4, :cond_1

    .line 50
    .line 51
    const/16 v4, 0x2c

    .line 52
    .line 53
    if-eq v3, v4, :cond_1

    .line 54
    .line 55
    const/16 v4, 0x3a

    .line 56
    .line 57
    if-eq v3, v4, :cond_1

    .line 58
    .line 59
    const/16 v4, 0x3b

    .line 60
    .line 61
    if-eq v3, v4, :cond_1

    .line 62
    .line 63
    const/16 v4, 0x3f

    .line 64
    .line 65
    if-eq v3, v4, :cond_1

    .line 66
    .line 67
    const/16 v4, 0x40

    .line 68
    .line 69
    if-eq v3, v4, :cond_1

    .line 70
    .line 71
    move v4, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v4, v5

    .line 74
    :goto_1
    if-eqz v4, :cond_2

    .line 75
    .line 76
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 93
    .line 94
    iget v4, v3, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 95
    .line 96
    add-int/lit8 v5, v4, 0x3

    .line 97
    .line 98
    iget-object v3, v3, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 105
    .line 106
    const/4 v5, 0x3

    .line 107
    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    move-object v2, v3

    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    throw p0

    .line 114
    :catch_0
    :cond_3
    :goto_2
    if-nez v2, :cond_5

    .line 115
    .line 116
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/16 v3, 0x5b

    .line 123
    .line 124
    if-ne v2, v3, :cond_4

    .line 125
    .line 126
    new-instance v2, Lgov/nist/core/HostNameParser;

    .line 127
    .line 128
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 129
    .line 130
    check-cast v3, Lgov/nist/javax/sip/parser/Lexer;

    .line 131
    .line 132
    invoke-direct {v2, v3}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0
.end method

.method public final user()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 2
    .line 3
    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 4
    .line 5
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    const/16 v3, 0x23

    .line 28
    .line 29
    if-eq v1, v3, :cond_0

    .line 30
    .line 31
    const/16 v3, 0x24

    .line 32
    .line 33
    if-eq v1, v3, :cond_0

    .line 34
    .line 35
    const/16 v3, 0x26

    .line 36
    .line 37
    if-eq v1, v3, :cond_0

    .line 38
    .line 39
    const/16 v3, 0x2f

    .line 40
    .line 41
    if-eq v1, v3, :cond_0

    .line 42
    .line 43
    const/16 v3, 0x3b

    .line 44
    .line 45
    if-eq v1, v3, :cond_0

    .line 46
    .line 47
    const/16 v3, 0x3d

    .line 48
    .line 49
    if-eq v1, v3, :cond_0

    .line 50
    .line 51
    const/16 v3, 0x3f

    .line 52
    .line 53
    if-eq v1, v3, :cond_0

    .line 54
    .line 55
    const/16 v3, 0x2b

    .line 56
    .line 57
    if-eq v1, v3, :cond_0

    .line 58
    .line 59
    const/16 v3, 0x2c

    .line 60
    .line 61
    if-eq v1, v3, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    move v2, v4

    .line 65
    :goto_1
    if-eqz v2, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 88
    .line 89
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 90
    .line 91
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 92
    .line 93
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method
