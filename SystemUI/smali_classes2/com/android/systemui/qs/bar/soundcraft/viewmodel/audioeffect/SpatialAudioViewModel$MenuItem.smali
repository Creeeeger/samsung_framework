.class public final enum Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

.field public static final enum OFF:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

.field public static final enum SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

.field public static final enum SPATIAL_ONLY:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;


# instance fields
.field private final position:I

.field private final titleResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f131092

    .line 5
    .line 6
    .line 7
    const-string v3, "OFF"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;-><init>(Ljava/lang/String;III)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const v3, 0x7f131091

    .line 18
    .line 19
    .line 20
    const-string v4, "SPATIAL_ONLY"

    .line 21
    .line 22
    invoke-direct {v1, v4, v2, v2, v3}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;-><init>(Ljava/lang/String;III)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_ONLY:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 26
    .line 27
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const v4, 0x7f131090

    .line 31
    .line 32
    .line 33
    const-string v5, "SPATIAL_AND_HEAD_TRACKING"

    .line 34
    .line 35
    invoke-direct {v2, v5, v3, v3, v4}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;-><init>(Ljava/lang/String;III)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 39
    .line 40
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->$VALUES:[Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 45
    .line 46
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
    iput p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->position:I

    .line 5
    .line 6
    iput p4, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->titleResId:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->$VALUES:[Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->position:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel$MenuItem;->titleResId:I

    .line 2
    .line 3
    return p0
.end method
