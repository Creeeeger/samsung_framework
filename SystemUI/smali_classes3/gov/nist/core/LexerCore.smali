.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final globalSymbolTable:Ljava/util/Hashtable;

.field public static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field public currentLexer:Ljava/util/Hashtable;

.field public currentMatch:Lgov/nist/core/Token;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final isTokenChar(C)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/16 v0, 0x21

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x25

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x27

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x7e

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x2a

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2b

    .line 30
    .line 31
    if-eq p0, v0, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x2d

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x2e

    .line 38
    .line 39
    if-eq p0, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x5f

    .line 42
    .line 43
    if-eq p0, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x60

    .line 46
    .line 47
    if-eq p0, v0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_1
    return v1
.end method


# virtual methods
.method public final SPorHT()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    :goto_0
    const/16 v2, 0x20

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    :cond_1
    return-void
.end method

.method public final addKeyword(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lgov/nist/javax/sip/Utils;->toHex:[C

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final byteStringNoSemicolon()Ljava/lang/String;
    .locals 3

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
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x3b

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x2c

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final byteStringNoSlash()Ljava/lang/String;
    .locals 3

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
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x2f

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final comment()Ljava/lang/String;
    .locals 4

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
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x28

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x29

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    const/16 v3, 0x5c

    .line 39
    .line 40
    if-ne v1, v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    .line 56
    .line 57
    const-string v1, " : unexpected EOL"

    .line 58
    .line 59
    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 64
    .line 65
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    .line 74
    .line 75
    const-string v1, " :unexpected EOL"

    .line 76
    .line 77
    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 82
    .line 83
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final consumeValidChars([C)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    move v3, v1

    .line 14
    move v4, v3

    .line 15
    :goto_1
    const/4 v5, 0x1

    .line 16
    if-ge v3, v0, :cond_2

    .line 17
    .line 18
    aget-char v4, p1, v3

    .line 19
    .line 20
    packed-switch v4, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    if-ne v2, v4, :cond_0

    .line 24
    .line 25
    move v4, v5

    .line 26
    goto :goto_2

    .line 27
    :pswitch_0
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    goto :goto_2

    .line 32
    :pswitch_1
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_2

    .line 37
    :pswitch_2
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    move v4, v1

    .line 43
    :goto_2
    if-eqz v4, :cond_1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    :cond_3
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRest()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 2
    .line 3
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final getString()Ljava/lang/String;
    .locals 7

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
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "unexpected EOL"

    .line 12
    .line 13
    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    const/16 v5, 0x2f

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v2, v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const/16 v5, 0x5c

    .line 31
    .line 32
    if-ne v2, v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    .line 51
    .line 52
    invoke-static {v4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    .line 70
    .line 71
    invoke-static {v4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 76
    .line 77
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public final match(I)Lgov/nist/core/Token;
    .locals 6

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 8
    .line 9
    if-le p1, v0, :cond_7

    .line 10
    .line 11
    if-ge p1, v1, :cond_7

    .line 12
    .line 13
    const-string v0, "\nID expected"

    .line 14
    .line 15
    const/16 v1, 0xfff

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lgov/nist/core/Token;

    .line 34
    .line 35
    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 39
    .line 40
    iput-object p1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 41
    .line 42
    iput v1, v0, Lgov/nist/core/Token;->tokenType:I

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    .line 47
    .line 48
    invoke-static {v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 53
    .line 54
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    const/16 v1, 0xffe

    .line 59
    .line 60
    if-ne p1, v1, :cond_5

    .line 61
    .line 62
    :try_start_1
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p1}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 67
    .line 68
    .line 69
    move-result v5
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/16 v5, 0x27

    .line 74
    .line 75
    if-eq p1, v5, :cond_3

    .line 76
    .line 77
    const/16 v5, 0x3d

    .line 78
    .line 79
    if-eq p1, v5, :cond_3

    .line 80
    .line 81
    const/16 v5, 0x5b

    .line 82
    .line 83
    if-eq p1, v5, :cond_3

    .line 84
    .line 85
    const/16 v5, 0x2a

    .line 86
    .line 87
    if-eq p1, v5, :cond_3

    .line 88
    .line 89
    const/16 v5, 0x2b

    .line 90
    .line 91
    if-eq p1, v5, :cond_3

    .line 92
    .line 93
    const/16 v5, 0x3a

    .line 94
    .line 95
    if-eq p1, v5, :cond_3

    .line 96
    .line 97
    const/16 v5, 0x3b

    .line 98
    .line 99
    if-eq p1, v5, :cond_3

    .line 100
    .line 101
    const/16 v5, 0x3f

    .line 102
    .line 103
    if-eq p1, v5, :cond_3

    .line 104
    .line 105
    const/16 v5, 0x40

    .line 106
    .line 107
    if-eq p1, v5, :cond_3

    .line 108
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 110
    .line 111
    .line 112
    packed-switch p1, :pswitch_data_1

    .line 113
    .line 114
    .line 115
    packed-switch p1, :pswitch_data_2

    .line 116
    .line 117
    .line 118
    packed-switch p1, :pswitch_data_3

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    :goto_0
    :pswitch_0
    move v2, v3

    .line 123
    :catch_1
    :goto_1
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v0, Lgov/nist/core/Token;

    .line 130
    .line 131
    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 135
    .line 136
    iput-object p1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 137
    .line 138
    iput v1, v0, Lgov/nist/core/Token;->tokenType:I

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_4
    new-instance p1, Ljava/text/ParseException;

    .line 143
    .line 144
    invoke-static {v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 149
    .line 150
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_5
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 159
    .line 160
    sget-object v2, Lgov/nist/javax/sip/Utils;->toHex:[C

    .line 161
    .line 162
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/Integer;

    .line 173
    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-ne v1, p1, :cond_6

    .line 181
    .line 182
    new-instance v1, Lgov/nist/core/Token;

    .line 183
    .line 184
    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 188
    .line 189
    iput-object v0, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 190
    .line 191
    iput p1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :cond_6
    new-instance p1, Ljava/text/ParseException;

    .line 196
    .line 197
    const-string v1, "\nUnexpected Token : "

    .line 198
    .line 199
    invoke-static {v4, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 204
    .line 205
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_7
    if-le p1, v1, :cond_b

    .line 210
    .line 211
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const/16 v1, 0x1002

    .line 216
    .line 217
    if-ne p1, v1, :cond_9

    .line 218
    .line 219
    invoke-static {v0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_8

    .line 224
    .line 225
    new-instance v1, Lgov/nist/core/Token;

    .line 226
    .line 227
    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 231
    .line 232
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 239
    .line 240
    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    .line 241
    .line 242
    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_8
    new-instance p1, Ljava/text/ParseException;

    .line 247
    .line 248
    const-string v0, "\nExpecting DIGIT"

    .line 249
    .line 250
    invoke-static {v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 255
    .line 256
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_9
    const/16 v1, 0x1003

    .line 261
    .line 262
    if-ne p1, v1, :cond_c

    .line 263
    .line 264
    invoke-static {v0}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_a

    .line 269
    .line 270
    new-instance v1, Lgov/nist/core/Token;

    .line 271
    .line 272
    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    .line 273
    .line 274
    .line 275
    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 276
    .line 277
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iput-object v0, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 284
    .line 285
    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    .line 286
    .line 287
    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_a
    new-instance p1, Ljava/text/ParseException;

    .line 292
    .line 293
    const-string v0, "\nExpecting ALPHA"

    .line 294
    .line 295
    invoke-static {v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 300
    .line 301
    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_b
    int-to-char p1, p1

    .line 306
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-ne v0, p1, :cond_d

    .line 311
    .line 312
    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 313
    .line 314
    .line 315
    :cond_c
    :goto_2
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 316
    .line 317
    return-object p0

    .line 318
    :cond_d
    new-instance v1, Ljava/text/ParseException;

    .line 319
    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v3, "\nExpecting  >>>"

    .line 329
    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p1, "<<< got >>>"

    .line 337
    .line 338
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string p1, "<<<"

    .line 345
    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 354
    .line 355
    invoke-direct {v1, p1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    throw v1

    .line 359
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final number()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, ": Unexpected token at "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 68
    .line 69
    invoke-direct {v3, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final peekNextToken(I)[Lgov/nist/core/Token;
    .locals 7

    .line 1
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 2
    .line 3
    new-array v1, p1, [Lgov/nist/core/Token;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, p1, :cond_4

    .line 8
    .line 9
    new-instance v4, Lgov/nist/core/Token;

    .line 10
    .line 11
    invoke-direct {v4}, Lgov/nist/core/Token;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-static {v5}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    .line 19
    .line 20
    .line 21
    move-result v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move v5, v2

    .line 24
    :goto_1
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iput-object v5, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v6, Lgov/nist/javax/sip/Utils;->toHex:[C

    .line 33
    .line 34
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_0
    const/16 v5, 0xfff

    .line 64
    .line 65
    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iput-object v6, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v5}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_2

    .line 83
    .line 84
    const/16 v5, 0x1003

    .line 85
    .line 86
    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-static {v5}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    const/16 v5, 0x1002

    .line 96
    .line 97
    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    .line 101
    .line 102
    :goto_2
    aput-object v4, v1, v3

    .line 103
    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 108
    .line 109
    iput p1, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    .line 110
    .line 111
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 112
    .line 113
    return-object v1
.end method

.method public final quotedString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x22

    .line 11
    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 28
    .line 29
    sub-int/2addr p0, v1

    .line 30
    invoke-virtual {v4, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    if-eqz v2, :cond_3

    .line 36
    .line 37
    const/16 v4, 0x5c

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    .line 46
    .line 47
    const-string v1, " :unexpected EOL"

    .line 48
    .line 49
    invoke-static {v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 54
    .line 55
    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final ttoken()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 2
    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 26
    .line 27
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 28
    .line 29
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :catch_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final ttokenSafe()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 2
    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_1

    .line 28
    .line 29
    const/16 v3, 0x5b

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x2a

    .line 34
    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    .line 37
    const/16 v3, 0x2b

    .line 38
    .line 39
    if-eq v2, v3, :cond_1

    .line 40
    .line 41
    const/16 v3, 0x3a

    .line 42
    .line 43
    if-eq v2, v3, :cond_1

    .line 44
    .line 45
    const/16 v3, 0x3b

    .line 46
    .line 47
    if-eq v2, v3, :cond_1

    .line 48
    .line 49
    const/16 v3, 0x3f

    .line 50
    .line 51
    if-eq v2, v3, :cond_1

    .line 52
    .line 53
    const/16 v3, 0x40

    .line 54
    .line 55
    if-eq v2, v3, :cond_1

    .line 56
    .line 57
    packed-switch v2, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    packed-switch v2, :pswitch_data_1

    .line 61
    .line 62
    .line 63
    packed-switch v2, :pswitch_data_2

    .line 64
    .line 65
    .line 66
    packed-switch v2, :pswitch_data_3

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :pswitch_0
    move v1, v4

    .line 71
    :goto_1
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 78
    .line 79
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 80
    .line 81
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-object p0

    .line 86
    :catch_0
    const/4 p0, 0x0

    .line 87
    return-object p0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
