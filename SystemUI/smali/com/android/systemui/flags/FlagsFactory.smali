.class public final Lcom/android/systemui/flags/FlagsFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

.field public static final flagMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/flags/FlagsFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/flags/FlagsFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/flags/FlagsFactory;->INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static releasedFlag$default(Lcom/android/systemui/flags/FlagsFactory;ILjava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;
    .locals 8

    .line 1
    const-string/jumbo v3, "systemui"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/flags/ReleasedFlag;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, p0

    .line 15
    move v1, p1

    .line 16
    move-object v2, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/flags/ReleasedFlag;-><init>(ILjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static resourceBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;IILjava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;
    .locals 6

    .line 1
    const-string/jumbo v3, "systemui"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    move-object v2, p3

    .line 13
    move v4, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public static sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;ILjava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    .line 5
    .line 6
    const-string/jumbo v0, "systemui"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public static unreleasedFlag(I)Lcom/android/systemui/flags/UnreleasedFlag;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/flags/UnreleasedFlag;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/16 v6, 0x10

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, v8

    .line 13
    move v1, p0

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/flags/UnreleasedFlag;-><init>(ILjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    return-object v8
.end method

.method public static synthetic unreleasedFlag$default(Lcom/android/systemui/flags/FlagsFactory;IZI)Lcom/android/systemui/flags/UnreleasedFlag;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag(I)Lcom/android/systemui/flags/UnreleasedFlag;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
