.class public final enum Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;

.field public static final enum LIST_BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum LIST_NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum LIST_STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->UNKNOWN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 12
    .line 13
    const-string v2, "BOOLEAN"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 20
    .line 21
    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 22
    .line 23
    const-string v3, "NUMBER"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 30
    .line 31
    new-instance v3, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 32
    .line 33
    const-string v4, "STRING"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v4}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 40
    .line 41
    new-instance v4, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const-string v6, "LIST{BOOLEAN}"

    .line 45
    .line 46
    const-string v7, "LIST_BOOLEAN"

    .line 47
    .line 48
    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 52
    .line 53
    new-instance v5, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    const-string v7, "LIST{NUMBER}"

    .line 57
    .line 58
    const-string v8, "LIST_NUMBER"

    .line 59
    .line 60
    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v5, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 64
    .line 65
    new-instance v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 66
    .line 67
    const/4 v7, 0x6

    .line 68
    const-string v8, "LIST{STRING}"

    .line 69
    .line 70
    const-string v9, "LIST_STRING"

    .line 71
    .line 72
    invoke-direct {v6, v9, v7, v8}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 76
    .line 77
    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->$VALUES:[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 82
    .line 83
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->mName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->$VALUES:[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
