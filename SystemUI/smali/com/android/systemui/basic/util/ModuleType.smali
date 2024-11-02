.class public final enum Lcom/android/systemui/basic/util/ModuleType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/basic/util/ModuleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum KEYGUARD:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum VOLUME:Lcom/android/systemui/basic/util/ModuleType;


# instance fields
.field private final mModuleTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/basic/util/ModuleType;

    .line 2
    .line 3
    const-string v1, "Navbar."

    .line 4
    .line 5
    const-string v2, "NAVBAR"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/basic/util/ModuleType;

    .line 14
    .line 15
    const-string v2, "SecVolume."

    .line 16
    .line 17
    const-string v3, "VOLUME"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    .line 24
    .line 25
    new-instance v2, Lcom/android/systemui/basic/util/ModuleType;

    .line 26
    .line 27
    const-string v3, "[SamsungGlobalActions]"

    .line 28
    .line 29
    const-string v4, "GLOBALACTIONS"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/systemui/basic/util/ModuleType;->GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

    .line 36
    .line 37
    new-instance v3, Lcom/android/systemui/basic/util/ModuleType;

    .line 38
    .line 39
    const-string v4, "PopupUI."

    .line 40
    .line 41
    const-string v5, "POPUPUI"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/systemui/basic/util/ModuleType;->POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

    .line 48
    .line 49
    new-instance v4, Lcom/android/systemui/basic/util/ModuleType;

    .line 50
    .line 51
    const-string v5, "Controls."

    .line 52
    .line 53
    const-string v6, "CONTROLS"

    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/systemui/basic/util/ModuleType;->CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

    .line 60
    .line 61
    new-instance v5, Lcom/android/systemui/basic/util/ModuleType;

    .line 62
    .line 63
    const-string v6, "Indicator."

    .line 64
    .line 65
    const-string v7, "INDICATOR"

    .line 66
    .line 67
    const/4 v8, 0x5

    .line 68
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v6, Lcom/android/systemui/basic/util/ModuleType;

    .line 72
    .line 73
    const-string v7, "Keyguard."

    .line 74
    .line 75
    const-string v8, "KEYGUARD"

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/android/systemui/basic/util/ModuleType;->KEYGUARD:Lcom/android/systemui/basic/util/ModuleType;

    .line 82
    .line 83
    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/basic/util/ModuleType;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/android/systemui/basic/util/ModuleType;->$VALUES:[Lcom/android/systemui/basic/util/ModuleType;

    .line 88
    .line 89
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
    iput-object p3, p0, Lcom/android/systemui/basic/util/ModuleType;->mModuleTag:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/basic/util/ModuleType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/basic/util/ModuleType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/basic/util/ModuleType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/basic/util/ModuleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->$VALUES:[Lcom/android/systemui/basic/util/ModuleType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/basic/util/ModuleType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/basic/util/ModuleType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/basic/util/ModuleType;->mModuleTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
