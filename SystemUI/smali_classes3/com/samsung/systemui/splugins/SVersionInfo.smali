.class public Lcom/samsung/systemui/splugins/SVersionInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SVersionInfo$Version;,
        Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/systemui/splugins/SVersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$M2g7nGFhIaasUA_En3xQlZPJtxc(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/SVersionInfo;->lambda$checkVersion$1(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Nbmv00_TgEWeMk5flAtwhWWh-NA(Lcom/samsung/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/SVersionInfo;->lambda$checkVersion$0(Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    const-class v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v3, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    move-result v0

    invoke-direct {v3, v0, v1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    const-class v0, Lcom/samsung/systemui/splugins/annotations/Requires;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/Requires;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v0

    invoke-direct {v4, v0, p2}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    const-class v0, Lcom/samsung/systemui/splugins/annotations/Requirements;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/Requirements;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/Requirements;->value()[Lcom/samsung/systemui/splugins/annotations/Requires;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 11
    iget-object v6, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/annotations/Requires;->version()I

    move-result v5

    invoke-direct {v8, v5, p2}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    const-class p2, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/annotations/DependsOn;

    if-eqz p2, :cond_4

    .line 13
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 14
    :cond_4
    const-class p2, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/annotations/Dependencies;

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/annotations/Dependencies;->value()[Lcom/samsung/systemui/splugins/annotations/DependsOn;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_5

    aget-object v0, p1, v2

    .line 16
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo$Version;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/systemui/splugins/SVersionInfo$Version;"
        }
    .end annotation

    .line 1
    const-class p0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->version()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, v0}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;-><init>(IZ)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method private synthetic lambda$checkVersion$0(Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/samsung/systemui/splugins/SVersionInfo;->createVersion(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->getMajorVersion()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->getMajorVersion()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-gt v0, v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v0, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, " is not a supporting version. expected "

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " but "

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {p3}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, p1, p0}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    new-instance p1, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string p3, " does not provide an interface"

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p1, p2, p0}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method private static synthetic lambda$checkVersion$1(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->-$$Nest$fgetmRequired(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "Missing required dependency "

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, p0, v0}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;Z)V

    return-object p0
.end method

.method public checkVersion(Lcom/samsung/systemui/splugins/SVersionInfo;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getDefaultVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mDefault:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public hasVersionInfo()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method
