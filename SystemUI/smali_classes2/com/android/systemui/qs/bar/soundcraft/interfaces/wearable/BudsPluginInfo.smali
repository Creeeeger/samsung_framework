.class public final enum Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

.field public static final Companion:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;


# instance fields
.field private final isSupport:Z

.field private final packageName:Ljava/lang/String;

.field private final projectName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v8, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 2
    .line 3
    const-string v1, "Buds3Pro"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string/jumbo v3, "paran"

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v0, v8

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 18
    .line 19
    const-string v10, "Buds3"

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    const-string v12, "jelly"

    .line 23
    .line 24
    const/4 v13, 0x1

    .line 25
    const/16 v19, 0x0

    .line 26
    .line 27
    const/16 v20, 0x4

    .line 28
    .line 29
    const/16 v21, 0x0

    .line 30
    .line 31
    const/4 v14, 0x0

    .line 32
    const/4 v15, 0x4

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    move-object v9, v0

    .line 36
    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 40
    .line 41
    const-string v23, "BudsFE"

    .line 42
    .line 43
    const/16 v24, 0x2

    .line 44
    .line 45
    const-string/jumbo v25, "pearl"

    .line 46
    .line 47
    .line 48
    const/4 v13, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x4

    .line 51
    const/4 v4, 0x0

    .line 52
    const/16 v26, 0x0

    .line 53
    .line 54
    const/16 v27, 0x0

    .line 55
    .line 56
    const/16 v28, 0x4

    .line 57
    .line 58
    const/16 v29, 0x0

    .line 59
    .line 60
    move-object/from16 v22, v1

    .line 61
    .line 62
    invoke-direct/range {v22 .. v29}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 66
    .line 67
    const-string v15, "Buds2Pro"

    .line 68
    .line 69
    const/16 v16, 0x3

    .line 70
    .line 71
    const-string/jumbo v17, "zenith"

    .line 72
    .line 73
    .line 74
    const/16 v18, 0x0

    .line 75
    .line 76
    move-object v14, v5

    .line 77
    invoke-direct/range {v14 .. v21}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 81
    .line 82
    const-string v10, "Buds2"

    .line 83
    .line 84
    const/4 v11, 0x4

    .line 85
    const-string v12, "berry"

    .line 86
    .line 87
    move-object v9, v6

    .line 88
    move-object v14, v2

    .line 89
    move v15, v3

    .line 90
    move-object/from16 v16, v4

    .line 91
    .line 92
    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    filled-new-array {v8, v0, v1, v5, v6}, [Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->$VALUES:[Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 100
    .line 101
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    .line 108
    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->projectName:Ljava/lang/String;

    .line 15
    iput-boolean p4, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->isSupport:Z

    .line 16
    iput-object p5, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-string p5, "com.samsung.accessory."

    const-string p6, "mgr"

    .line 1
    invoke-static {p5, p3, p6}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->$VALUES:[Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProjectName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->projectName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isSupport()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->isSupport:Z

    .line 2
    .line 3
    return p0
.end method
