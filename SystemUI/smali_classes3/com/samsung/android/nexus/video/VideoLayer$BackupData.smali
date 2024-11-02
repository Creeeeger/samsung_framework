.class public final Lcom/samsung/android/nexus/video/VideoLayer$BackupData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/video/VideoLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackupData"
.end annotation


# instance fields
.field private boundRect:Landroid/graphics/RectF;

.field private contrast:Ljava/lang/Float;

.field private cropRect:Landroid/graphics/RectF;

.field private globalAlpha:Ljava/lang/Float;

.field private hdrSaturation:Ljava/lang/Float;

.field private hsvFilterColor:[F

.field private isHdrModeEnabled:Ljava/lang/Boolean;

.field private isTransparencyEnabled:Ljava/lang/Boolean;

.field private looping:Ljava/lang/Boolean;

.field private objectHeight:Ljava/lang/Float;

.field private objectWidth:Ljava/lang/Float;

.field private offsetX:Ljava/lang/Float;

.field private offsetY:Ljava/lang/Float;

.field private offsetZ:Ljava/lang/Float;

.field private rgbFilterColor:[F

.field private rotationAngle:Ljava/lang/Float;

.field private rotationX:Ljava/lang/Float;

.field private rotationY:Ljava/lang/Float;

.field private rotationZ:Ljava/lang/Float;

.field private scale:Ljava/lang/Float;

.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoLayer;

.field private worldHeight:I

.field private worldWidth:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/RectF;[F[FLjava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "[F[F",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p2

    iput v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldWidth:I

    move v1, p3

    iput v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldHeight:I

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->contrast:Ljava/lang/Float;

    move-object v1, p5

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hdrSaturation:Ljava/lang/Float;

    move-object v1, p6

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isHdrModeEnabled:Ljava/lang/Boolean;

    move-object v1, p7

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isTransparencyEnabled:Ljava/lang/Boolean;

    move-object v1, p8

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectWidth:Ljava/lang/Float;

    move-object v1, p9

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectHeight:Ljava/lang/Float;

    move-object v1, p10

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationAngle:Ljava/lang/Float;

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationX:Ljava/lang/Float;

    move-object v1, p12

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationY:Ljava/lang/Float;

    move-object v1, p13

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationZ:Ljava/lang/Float;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->scale:Ljava/lang/Float;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetX:Ljava/lang/Float;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetY:Ljava/lang/Float;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetZ:Ljava/lang/Float;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->globalAlpha:Ljava/lang/Float;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->cropRect:Landroid/graphics/RectF;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->boundRect:Landroid/graphics/RectF;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rgbFilterColor:[F

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hsvFilterColor:[F

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->looping:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/RectF;[F[FLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v4, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p21

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    move-object/from16 p25, v4

    if-eqz v21, :cond_14

    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 2
    fill-array-data v4, :array_0

    goto :goto_14

    :cond_14
    move-object/from16 v4, p22

    :goto_14
    const/high16 v21, 0x200000

    and-int v0, v0, v21

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v0, p23

    :goto_15
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move-object/from16 p15, v13

    move-object/from16 p16, v14

    move-object/from16 p17, v15

    move-object/from16 p18, p25

    move-object/from16 p19, v16

    move-object/from16 p20, v17

    move-object/from16 p21, v18

    move-object/from16 p22, v19

    move-object/from16 p23, v20

    move-object/from16 p24, v4

    move-object/from16 p25, v0

    .line 3
    invoke-direct/range {p2 .. p25}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/RectF;[F[FLjava/lang/Boolean;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public final getBoundRect()Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->boundRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContrast()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->contrast:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCropRect()Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->cropRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getGlobalAlpha()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->globalAlpha:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHdrSaturation()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hdrSaturation:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHsvFilterColor()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hsvFilterColor:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLooping()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->looping:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getObjectHeight()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectHeight:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getObjectWidth()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectWidth:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOffsetX()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetX:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOffsetY()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetY:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOffsetZ()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetZ:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRgbFilterColor()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rgbFilterColor:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRotationAngle()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationAngle:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRotationX()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationX:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRotationY()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationY:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRotationZ()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationZ:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScale()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->scale:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWorldHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWorldWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public final isHdrModeEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isHdrModeEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isTransparencyEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isTransparencyEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final restore()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->contrast:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setContrast(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hdrSaturation:Ljava/lang/Float;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrSaturation(F)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetZ:Ljava/lang/Float;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetX:Ljava/lang/Float;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetY:Ljava/lang/Float;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 53
    .line 54
    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setOffset(FFF)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    :cond_2
    if-eqz v2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetX:Ljava/lang/Float;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetY:Ljava/lang/Float;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 80
    .line 81
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setOffsetXY(FF)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->globalAlpha:Ljava/lang/Float;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setGlobalAlpha(F)V

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 100
    .line 101
    iget v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldWidth:I

    .line 102
    .line 103
    iget v2, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldHeight:I

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->onSizeChanged(II)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isHdrModeEnabled:Ljava/lang/Boolean;

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(Z)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectWidth:Ljava/lang/Float;

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectHeight:Ljava/lang/Float;

    .line 128
    .line 129
    if-eqz v2, :cond_7

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setSize(FF)V

    .line 136
    .line 137
    .line 138
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationAngle:Ljava/lang/Float;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationX:Ljava/lang/Float;

    .line 147
    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationY:Ljava/lang/Float;

    .line 155
    .line 156
    if-eqz v3, :cond_8

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    iget-object v4, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationZ:Ljava/lang/Float;

    .line 163
    .line 164
    if-eqz v4, :cond_8

    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/nexus/video/VideoLayer;->setRotation(FFFF)V

    .line 171
    .line 172
    .line 173
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->scale:Ljava/lang/Float;

    .line 174
    .line 175
    if-eqz v1, :cond_9

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setScale(F)V

    .line 182
    .line 183
    .line 184
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->cropRect:Landroid/graphics/RectF;

    .line 185
    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setCropRect(Landroid/graphics/RectF;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->boundRect:Landroid/graphics/RectF;

    .line 192
    .line 193
    if-eqz v1, :cond_b

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 196
    .line 197
    .line 198
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rgbFilterColor:[F

    .line 199
    .line 200
    if-eqz v1, :cond_c

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setRgbFilterColor([F)V

    .line 203
    .line 204
    .line 205
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hsvFilterColor:[F

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvFilterColor([F)V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->looping:Ljava/lang/Boolean;

    .line 211
    .line 212
    if-eqz p0, :cond_d

    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    invoke-virtual {v0, p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    .line 219
    .line 220
    .line 221
    :cond_d
    return-void
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->boundRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-void
.end method

.method public final setContrast(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->contrast:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setCropRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->cropRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-void
.end method

.method public final setGlobalAlpha(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->globalAlpha:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setHdrModeEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isHdrModeEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHdrSaturation(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hdrSaturation:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setHsvFilterColor([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->hsvFilterColor:[F

    .line 2
    .line 3
    return-void
.end method

.method public final setLooping(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->looping:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setObjectHeight(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectHeight:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setObjectWidth(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->objectWidth:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setOffsetX(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetX:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setOffsetY(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetY:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setOffsetZ(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->offsetZ:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setRgbFilterColor([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rgbFilterColor:[F

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationAngle(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationAngle:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationX(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationX:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationY(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationY:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setRotationZ(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->rotationZ:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setScale(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->scale:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setTransparencyEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->isTransparencyEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setWorldHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public final setWorldWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->worldWidth:I

    .line 2
    .line 3
    return-void
.end method
