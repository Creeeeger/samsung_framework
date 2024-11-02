.class public final Lgov/nist/javax/sip/parser/AuthorizationParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1

    .line 1
    invoke-static {}, Lgov/nist/core/ParserCore;->dbg_enter()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x817

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    .line 10
    .line 11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lgov/nist/core/ParserCore;->dbg_leave()V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {}, Lgov/nist/core/ParserCore;->dbg_leave()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method
