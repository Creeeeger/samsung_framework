.class public final enum Lcom/android/systemui/media/MediaType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/MediaType;

.field public static final enum COVER:Lcom/android/systemui/media/MediaType;

.field public static final enum QS:Lcom/android/systemui/media/MediaType;


# instance fields
.field private final layout:I

.field private final supportArtwork:Z

.field private final supportBudsButton:Z

.field private final supportCapsule:Z

.field private final supportCarousel:Z

.field private final supportColorSchemeTransition:Z

.field private final supportExpandable:Z

.field private final supportFixedFontSize:Z

.field private final supportGuts:Z

.field private final supportRoundedCorner:Z

.field private final supportSettings:Z

.field private final supportSquiggly:Z

.field private final supportWidgetTimer:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v15, Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    const-string v1, "QS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f0d035c

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v13, 0x1

    .line 19
    const/4 v14, 0x0

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    move-object v0, v15

    .line 23
    move-object/from16 v17, v15

    .line 24
    .line 25
    move/from16 v15, v16

    .line 26
    .line 27
    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/media/MediaType;-><init>(Ljava/lang/String;IIZZZZZZZZZZZZ)V

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, v17

    .line 31
    .line 32
    sput-object v0, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 33
    .line 34
    new-instance v15, Lcom/android/systemui/media/MediaType;

    .line 35
    .line 36
    const-string v2, "COVER"

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const v4, 0x7f0d035d

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x1

    .line 48
    const/16 v16, 0x1

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    move-object v1, v15

    .line 53
    move-object/from16 v18, v15

    .line 54
    .line 55
    move/from16 v15, v16

    .line 56
    .line 57
    move/from16 v16, v17

    .line 58
    .line 59
    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/media/MediaType;-><init>(Ljava/lang/String;IIZZZZZZZZZZZZ)V

    .line 60
    .line 61
    .line 62
    move-object/from16 v1, v18

    .line 63
    .line 64
    sput-object v1, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    .line 65
    .line 66
    filled-new-array {v0, v1}, [Lcom/android/systemui/media/MediaType;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/android/systemui/media/MediaType;->$VALUES:[Lcom/android/systemui/media/MediaType;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZZZZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZZZZZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/media/MediaType;->layout:I

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/media/MediaType;->supportArtwork:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/android/systemui/media/MediaType;->supportCapsule:Z

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/media/MediaType;->supportCarousel:Z

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/android/systemui/media/MediaType;->supportColorSchemeTransition:Z

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/android/systemui/media/MediaType;->supportExpandable:Z

    .line 15
    .line 16
    iput-boolean p9, p0, Lcom/android/systemui/media/MediaType;->supportFixedFontSize:Z

    .line 17
    .line 18
    iput-boolean p10, p0, Lcom/android/systemui/media/MediaType;->supportGuts:Z

    .line 19
    .line 20
    iput-boolean p11, p0, Lcom/android/systemui/media/MediaType;->supportRoundedCorner:Z

    .line 21
    .line 22
    iput-boolean p12, p0, Lcom/android/systemui/media/MediaType;->supportSettings:Z

    .line 23
    .line 24
    iput-boolean p13, p0, Lcom/android/systemui/media/MediaType;->supportSquiggly:Z

    .line 25
    .line 26
    iput-boolean p14, p0, Lcom/android/systemui/media/MediaType;->supportWidgetTimer:Z

    .line 27
    .line 28
    iput-boolean p15, p0, Lcom/android/systemui/media/MediaType;->supportBudsButton:Z

    .line 29
    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/MediaType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/media/MediaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/MediaType;->$VALUES:[Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/media/MediaType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLayout()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/MediaType;->layout:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportArtwork()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportArtwork:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportBudsButton()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportBudsButton:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportCapsule()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportCapsule:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportCarousel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportCarousel:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportColorSchemeTransition()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportColorSchemeTransition:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportExpandable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportExpandable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportFixedFontSize()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportFixedFontSize:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportGuts()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportGuts:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportRoundedCorner()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportRoundedCorner:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportSettings()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportSettings:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportSquiggly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportSquiggly:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSupportWidgetTimer()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportWidgetTimer:Z

    .line 2
    .line 3
    return p0
.end method
