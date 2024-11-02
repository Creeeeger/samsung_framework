.class public final enum Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;


# instance fields
.field private mIconResID:I

.field private mTitleID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 2
    .line 3
    const v1, 0x7f130508

    .line 4
    .line 5
    .line 6
    const v2, 0x7f08077f

    .line 7
    .line 8
    .line 9
    const-string v3, "EFFECT"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 16
    .line 17
    new-instance v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 18
    .line 19
    const v2, 0x7f1304f9

    .line 20
    .line 21
    .line 22
    const v3, 0x7f08077d

    .line 23
    .line 24
    .line 25
    const-string v4, "COLOR"

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 32
    .line 33
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 34
    .line 35
    const v3, 0x7f13051e

    .line 36
    .line 37
    .line 38
    const v4, 0x7f080780

    .line 39
    .line 40
    .line 41
    const-string v5, "TRANSPARENCY"

    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 48
    .line 49
    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 50
    .line 51
    const v4, 0x7f1304fb

    .line 52
    .line 53
    .line 54
    const v5, 0x7f08077e

    .line 55
    .line 56
    .line 57
    const-string v6, "WIDTH"

    .line 58
    .line 59
    const/4 v7, 0x3

    .line 60
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    .line 61
    .line 62
    .line 63
    sput-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 64
    .line 65
    new-instance v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 66
    .line 67
    const v5, 0x7f1304fa

    .line 68
    .line 69
    .line 70
    const v6, 0x7f08077c

    .line 71
    .line 72
    .line 73
    const-string v7, "DURATION"

    .line 74
    .line 75
    const/4 v8, 0x4

    .line 76
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    .line 77
    .line 78
    .line 79
    sput-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 80
    .line 81
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->$VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 86
    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mIconResID:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mTitleID:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->$VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTitleStringID()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mTitleID:I

    .line 2
    .line 3
    return p0
.end method
