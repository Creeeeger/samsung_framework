.class public Lgov/nist/core/Host;
.super Lgov/nist/core/GenericObject;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected addressType:I

.field protected hostname:Ljava/lang/String;

.field private inetAddress:Ljava/net/InetAddress;

.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lgov/nist/core/Host;->addressType:I

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz p1, :cond_0

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0, p1}, Lgov/nist/core/Host;->setHost(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null host name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 13
    invoke-virtual {p0, p2, p1}, Lgov/nist/core/Host;->setHost(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final encode()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    .line 2
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v5

    :cond_0
    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    check-cast p1, Lgov/nist/core/Host;

    .line 21
    .line 22
    iget-object p1, p1, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final getHostname()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final setHost(ILjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/16 v3, 0x3a

    .line 10
    .line 11
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eq v3, v1, :cond_0

    .line 16
    .line 17
    move v3, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v2

    .line 20
    :goto_0
    const/4 v4, 0x3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iput v4, p0, Lgov/nist/core/Host;->addressType:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iput p1, p0, Lgov/nist/core/Host;->addressType:I

    .line 27
    .line 28
    :goto_1
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 35
    .line 36
    iget p2, p0, Lgov/nist/core/Host;->addressType:I

    .line 37
    .line 38
    if-ne p2, v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    iget p1, p0, Lgov/nist/core/Host;->addressType:I

    .line 47
    .line 48
    if-ne p1, v4, :cond_3

    .line 49
    .line 50
    iget-boolean p1, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 55
    .line 56
    const/16 p2, 0x25

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eq p1, v1, :cond_3

    .line 63
    .line 64
    iget-object p2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 71
    .line 72
    :cond_3
    return-void
.end method
