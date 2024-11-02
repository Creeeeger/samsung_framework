.class public abstract enum Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$EQUALIZER;,
        Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$HEAD_TRACKING;,
        Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$SPATIAL_AUDIO;,
        Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$VOICE_BOOST;,
        Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$VOLUME_NORMALIZATION;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

.field public static final enum EQUALIZER:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

.field public static final enum HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

.field public static final enum SPATIAL_AUDIO:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

.field public static final enum VOICE_BOOST:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

.field public static final enum VOLUME_NORMALIZATION:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$SPATIAL_AUDIO;

    .line 2
    .line 3
    const-string v1, "SPATIAL_AUDIO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$SPATIAL_AUDIO;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->SPATIAL_AUDIO:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$HEAD_TRACKING;

    .line 12
    .line 13
    const-string v2, "HEAD_TRACKING"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$HEAD_TRACKING;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$EQUALIZER;

    .line 22
    .line 23
    const-string v3, "EQUALIZER"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$EQUALIZER;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->EQUALIZER:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 30
    .line 31
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$VOICE_BOOST;

    .line 32
    .line 33
    const-string v4, "VOICE_BOOST"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$VOICE_BOOST;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->VOICE_BOOST:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 40
    .line 41
    new-instance v4, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$VOLUME_NORMALIZATION;

    .line 42
    .line 43
    const-string v5, "VOLUME_NORMALIZATION"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType$VOLUME_NORMALIZATION;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->$VALUES:[Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->$VALUES:[Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract getTag(Ljava/lang/String;)Ljava/lang/String;
.end method
