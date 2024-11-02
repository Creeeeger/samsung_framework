.class public final enum Lcom/android/systemui/log/LogLevel;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/log/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/log/LogLevel;

.field public static final enum DEBUG:Lcom/android/systemui/log/LogLevel;

.field public static final enum ERROR:Lcom/android/systemui/log/LogLevel;

.field public static final enum INFO:Lcom/android/systemui/log/LogLevel;

.field public static final enum VERBOSE:Lcom/android/systemui/log/LogLevel;

.field public static final enum WARNING:Lcom/android/systemui/log/LogLevel;

.field public static final enum WTF:Lcom/android/systemui/log/LogLevel;


# instance fields
.field private final nativeLevel:I

.field private final shortString:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/log/LogLevel;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 8
    .line 9
    sget-object v4, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 10
    .line 11
    sget-object v5, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/log/LogLevel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    const-string v1, "V"

    .line 4
    .line 5
    const-string v2, "VERBOSE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 13
    .line 14
    new-instance v0, Lcom/android/systemui/log/LogLevel;

    .line 15
    .line 16
    const-string v1, "D"

    .line 17
    .line 18
    const-string v2, "DEBUG"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v5, 0x3

    .line 22
    invoke-direct {v0, v2, v3, v5, v1}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 26
    .line 27
    new-instance v0, Lcom/android/systemui/log/LogLevel;

    .line 28
    .line 29
    const-string v1, "I"

    .line 30
    .line 31
    const-string v2, "INFO"

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/log/LogLevel;

    .line 40
    .line 41
    const-string v1, "W"

    .line 42
    .line 43
    const-string v2, "WARNING"

    .line 44
    .line 45
    const/4 v4, 0x5

    .line 46
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 50
    .line 51
    new-instance v0, Lcom/android/systemui/log/LogLevel;

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    const-string v2, "E"

    .line 55
    .line 56
    const-string v5, "ERROR"

    .line 57
    .line 58
    invoke-direct {v0, v5, v3, v1, v2}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 62
    .line 63
    new-instance v0, Lcom/android/systemui/log/LogLevel;

    .line 64
    .line 65
    const-string v1, "WTF"

    .line 66
    .line 67
    const/4 v2, 0x7

    .line 68
    invoke-direct {v0, v1, v4, v2, v1}, Lcom/android/systemui/log/LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    .line 72
    .line 73
    invoke-static {}, Lcom/android/systemui/log/LogLevel;->$values()[Lcom/android/systemui/log/LogLevel;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    .line 78
    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/log/LogLevel;->nativeLevel:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/log/LogLevel;->shortString:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/log/LogLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/log/LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->$VALUES:[Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/log/LogLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNativeLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/log/LogLevel;->nativeLevel:I

    .line 2
    .line 3
    return p0
.end method

.method public final getShortString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogLevel;->shortString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
