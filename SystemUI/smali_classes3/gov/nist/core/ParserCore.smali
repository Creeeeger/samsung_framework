.class public abstract Lgov/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static nesting_level:I


# instance fields
.field public lexer:Lgov/nist/core/LexerCore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dbg_enter()V
    .locals 3

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
    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    const-string v2, ">"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    .line 22
    .line 23
    return-void
.end method

.method public static dbg_leave()V
    .locals 3

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
    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    const-string v2, "<"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final nameValue()Lgov/nist/core/NameValue;
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
    invoke-virtual {v3, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/16 v4, 0x3d

    .line 23
    .line 24
    const-string v5, ""

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-ne v3, v4, :cond_3

    .line 28
    .line 29
    :try_start_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 30
    .line 31
    invoke-virtual {v3, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 35
    .line 36
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v4, 0x22

    .line 46
    .line 47
    if-ne v3, v4, :cond_0

    .line 48
    .line 49
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 50
    .line 51
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    move p0, v6

    .line 56
    move v6, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 64
    .line 65
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 66
    .line 67
    iget-object p0, p0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 68
    .line 69
    if-nez p0, :cond_1

    .line 70
    .line 71
    move p0, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v5, p0

    .line 74
    move p0, v0

    .line 75
    move v6, p0

    .line 76
    :goto_0
    new-instance v1, Lgov/nist/core/NameValue;

    .line 77
    .line 78
    iget-object v3, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v1, v3, v5, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 81
    .line 82
    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-object v1

    .line 89
    :cond_3
    new-instance p0, Lgov/nist/core/NameValue;

    .line 90
    .line 91
    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {p0, v1, v5, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    throw p0

    .line 99
    :catch_0
    new-instance p0, Lgov/nist/core/NameValue;

    .line 100
    .line 101
    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 105
    .line 106
    .line 107
    return-object p0
.end method
