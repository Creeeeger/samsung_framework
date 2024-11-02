.class public final Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public backVisible:Z

.field public canMove:Z

.field public darkMode:Z

.field public deviceProvisioned:Z

.field public disable1:I

.field public disable2:I

.field public displayChanged:Z

.field public displaySize:Landroid/graphics/Point;

.field public gestureDisabledByPolicy:Z

.field public hardKeyIntentPolicy:Z

.field public homeVisible:Z

.field public iconHint:I

.field public imeDownButtonForAllRotation:Z

.field public lastTaskUserId:I

.field public layoutChangedBeforeAttached:Z

.field public layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

.field public multiModalForLargeCover:Ljava/lang/Boolean;

.field public navigationMode:I

.field public recentVisible:Z

.field public regionSamplingEnabled:Z

.field public rotation:I

.field public sPayShowing:Z

.field public supportCoverScreen:Z

.field public supportLargeCoverScreen:Z

.field public supportPhoneLayoutProvider:Z

.field public transitionMode:I

.field public userSetupCompleted:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    move v1, p3

    .line 3
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move v1, p5

    .line 5
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    move v1, p6

    .line 6
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    move v1, p7

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    move v1, p8

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    move v1, p9

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    move v1, p10

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    move v1, p11

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    move v1, p12

    .line 10
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    move v1, p13

    .line 11
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    move/from16 v1, p14

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    move/from16 v1, p15

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    move/from16 v1, p17

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    move/from16 v1, p19

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    move/from16 v1, p20

    .line 16
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    move/from16 v1, p21

    .line 17
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    move/from16 v1, p22

    .line 18
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    move/from16 v1, p23

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    move/from16 v1, p24

    .line 20
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    move/from16 v1, p25

    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    move/from16 v1, p26

    .line 22
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    move-object/from16 v1, p27

    .line 23
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_4

    :cond_4
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move/from16 v9, p7

    :goto_5
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_6

    move v10, v7

    goto :goto_6

    :cond_6
    move/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_7

    move v11, v7

    goto :goto_7

    :cond_7
    move/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_8

    move v12, v7

    goto :goto_8

    :cond_8
    move/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_9

    :cond_9
    move/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_a

    move v14, v7

    goto :goto_a

    :cond_a
    move/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_b

    move v15, v7

    goto :goto_b

    :cond_b
    move/from16 v15, p13

    :goto_b
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_c

    move v2, v7

    goto :goto_c

    :cond_c
    move/from16 v2, p14

    :goto_c
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_d

    :cond_d
    move/from16 v5, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    const/16 v16, 0x1

    goto :goto_e

    :cond_e
    move/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    goto :goto_f

    :cond_f
    move/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move/from16 v18, v7

    goto :goto_10

    :cond_10
    move/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    move/from16 v19, v7

    goto :goto_11

    :cond_11
    move/from16 v19, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    move/from16 v20, v7

    goto :goto_12

    :cond_12
    move/from16 v20, p20

    :goto_12
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    move/from16 v21, v7

    goto :goto_13

    :cond_13
    move/from16 v21, p21

    :goto_13
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    move/from16 v22, v7

    goto :goto_14

    :cond_14
    move/from16 v22, p22

    :goto_14
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    move/from16 v23, v7

    goto :goto_15

    :cond_15
    move/from16 v23, p23

    :goto_15
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    move/from16 v24, v7

    goto :goto_16

    :cond_16
    move/from16 v24, p24

    :goto_16
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    move/from16 v25, v7

    goto :goto_17

    :cond_17
    move/from16 v25, p25

    :goto_17
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    goto :goto_18

    :cond_18
    move/from16 v7, p26

    :goto_18
    const/high16 v26, 0x4000000

    and-int v0, v0, v26

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v0, p27

    :goto_19
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p7, v6

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p16, v2

    move/from16 p17, v5

    move/from16 p18, v16

    move/from16 p19, v17

    move/from16 p20, v18

    move/from16 p21, v19

    move/from16 p22, v20

    move/from16 p23, v21

    move/from16 p24, v22

    move/from16 p25, v23

    move/from16 p26, v24

    move/from16 p27, v25

    move/from16 p28, v7

    move-object/from16 p29, v0

    .line 24
    invoke-direct/range {p2 .. p29}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;-><init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;)Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 10
    .line 11
    iget v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 12
    .line 13
    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 14
    .line 15
    iget v7, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 16
    .line 17
    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 18
    .line 19
    iget v9, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 22
    .line 23
    iget-boolean v11, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 24
    .line 25
    iget v12, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 26
    .line 27
    iget-boolean v13, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 28
    .line 29
    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    .line 30
    .line 31
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 32
    .line 33
    move/from16 v16, v15

    .line 34
    .line 35
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 40
    .line 41
    move/from16 v18, v15

    .line 42
    .line 43
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 48
    .line 49
    move/from16 v20, v15

    .line 50
    .line 51
    iget v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 52
    .line 53
    move/from16 v21, v15

    .line 54
    .line 55
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 56
    .line 57
    move/from16 v22, v15

    .line 58
    .line 59
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 60
    .line 61
    move/from16 v23, v15

    .line 62
    .line 63
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 64
    .line 65
    move/from16 v24, v15

    .line 66
    .line 67
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 68
    .line 69
    move/from16 v25, v15

    .line 70
    .line 71
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 72
    .line 73
    move/from16 v26, v15

    .line 74
    .line 75
    iget v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 76
    .line 77
    move/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v28, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 85
    .line 86
    move-object/from16 v0, v28

    .line 87
    .line 88
    move-object/from16 v29, v15

    .line 89
    .line 90
    move/from16 v15, v16

    .line 91
    .line 92
    move/from16 v16, v17

    .line 93
    .line 94
    move/from16 v17, v18

    .line 95
    .line 96
    move/from16 v18, v19

    .line 97
    .line 98
    move/from16 v19, v20

    .line 99
    .line 100
    move/from16 v20, v21

    .line 101
    .line 102
    move/from16 v21, v22

    .line 103
    .line 104
    move/from16 v22, v23

    .line 105
    .line 106
    move/from16 v23, v24

    .line 107
    .line 108
    move/from16 v24, v25

    .line 109
    .line 110
    move/from16 v25, v26

    .line 111
    .line 112
    move/from16 v26, v27

    .line 113
    .line 114
    move-object/from16 v27, v29

    .line 115
    .line 116
    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;-><init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    return-object v28
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 50
    .line 51
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 57
    .line 58
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 59
    .line 60
    if-eq v1, v3, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 64
    .line 65
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 66
    .line 67
    if-eq v1, v3, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 71
    .line 72
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 73
    .line 74
    if-eq v1, v3, :cond_9

    .line 75
    .line 76
    return v2

    .line 77
    :cond_9
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 78
    .line 79
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 80
    .line 81
    if-eq v1, v3, :cond_a

    .line 82
    .line 83
    return v2

    .line 84
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 85
    .line 86
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 87
    .line 88
    if-eq v1, v3, :cond_b

    .line 89
    .line 90
    return v2

    .line 91
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 92
    .line 93
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 94
    .line 95
    if-eq v1, v3, :cond_c

    .line 96
    .line 97
    return v2

    .line 98
    :cond_c
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 99
    .line 100
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 101
    .line 102
    if-eq v1, v3, :cond_d

    .line 103
    .line 104
    return v2

    .line 105
    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 106
    .line 107
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 108
    .line 109
    if-eq v1, v3, :cond_e

    .line 110
    .line 111
    return v2

    .line 112
    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    .line 113
    .line 114
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    .line 115
    .line 116
    if-eq v1, v3, :cond_f

    .line 117
    .line 118
    return v2

    .line 119
    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 120
    .line 121
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 122
    .line 123
    if-eq v1, v3, :cond_10

    .line 124
    .line 125
    return v2

    .line 126
    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 127
    .line 128
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 129
    .line 130
    if-eq v1, v3, :cond_11

    .line 131
    .line 132
    return v2

    .line 133
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 134
    .line 135
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 136
    .line 137
    if-eq v1, v3, :cond_12

    .line 138
    .line 139
    return v2

    .line 140
    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    .line 141
    .line 142
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    .line 143
    .line 144
    if-eq v1, v3, :cond_13

    .line 145
    .line 146
    return v2

    .line 147
    :cond_13
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 148
    .line 149
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 150
    .line 151
    if-eq v1, v3, :cond_14

    .line 152
    .line 153
    return v2

    .line 154
    :cond_14
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 155
    .line 156
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 157
    .line 158
    if-eq v1, v3, :cond_15

    .line 159
    .line 160
    return v2

    .line 161
    :cond_15
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 162
    .line 163
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 164
    .line 165
    if-eq v1, v3, :cond_16

    .line 166
    .line 167
    return v2

    .line 168
    :cond_16
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 169
    .line 170
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 171
    .line 172
    if-eq v1, v3, :cond_17

    .line 173
    .line 174
    return v2

    .line 175
    :cond_17
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 176
    .line 177
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 178
    .line 179
    if-eq v1, v3, :cond_18

    .line 180
    .line 181
    return v2

    .line 182
    :cond_18
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 183
    .line 184
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 185
    .line 186
    if-eq v1, v3, :cond_19

    .line 187
    .line 188
    return v2

    .line 189
    :cond_19
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 190
    .line 191
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 192
    .line 193
    if-eq v1, v3, :cond_1a

    .line 194
    .line 195
    return v2

    .line 196
    :cond_1a
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 197
    .line 198
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 199
    .line 200
    if-eq v1, v3, :cond_1b

    .line 201
    .line 202
    return v2

    .line 203
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-nez p0, :cond_1c

    .line 212
    .line 213
    return v2

    .line 214
    :cond_1c
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 41
    .line 42
    const/16 v4, 0x1f

    .line 43
    .line 44
    invoke-static {v1, v0, v4}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 49
    .line 50
    invoke-static {v1, v0, v4}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 55
    .line 56
    invoke-static {v1, v0, v4}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    move v1, v2

    .line 65
    :cond_3
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 69
    .line 70
    const/16 v4, 0x1f

    .line 71
    .line 72
    invoke-static {v1, v0, v4}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    move v1, v2

    .line 81
    :cond_4
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    move v1, v2

    .line 89
    :cond_5
    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 93
    .line 94
    const/16 v4, 0x1f

    .line 95
    .line 96
    invoke-static {v1, v0, v4}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 101
    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    move v1, v2

    .line 105
    :cond_6
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    move v1, v2

    .line 113
    :cond_7
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    .line 116
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 117
    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    move v1, v2

    .line 121
    :cond_8
    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 125
    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    move v1, v2

    .line 129
    :cond_9
    add-int/2addr v0, v1

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 133
    .line 134
    if-eqz v1, :cond_a

    .line 135
    .line 136
    move v1, v2

    .line 137
    :cond_a
    add-int/2addr v0, v1

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    .line 141
    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    move v1, v2

    .line 145
    :cond_b
    add-int/2addr v0, v1

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 149
    .line 150
    if-eqz v1, :cond_c

    .line 151
    .line 152
    move v1, v2

    .line 153
    :cond_c
    add-int/2addr v0, v1

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    .line 155
    .line 156
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 157
    .line 158
    const/16 v4, 0x1f

    .line 159
    .line 160
    invoke-static {v1, v0, v4}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 165
    .line 166
    if-eqz v1, :cond_d

    .line 167
    .line 168
    move v1, v2

    .line 169
    :cond_d
    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    .line 171
    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 173
    .line 174
    if-eqz v1, :cond_e

    .line 175
    .line 176
    move v1, v2

    .line 177
    :cond_e
    add-int/2addr v0, v1

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    .line 180
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 181
    .line 182
    if-eqz v1, :cond_f

    .line 183
    .line 184
    move v1, v2

    .line 185
    :cond_f
    add-int/2addr v0, v1

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    .line 187
    .line 188
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 189
    .line 190
    if-eqz v1, :cond_10

    .line 191
    .line 192
    move v1, v2

    .line 193
    :cond_10
    add-int/2addr v0, v1

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 197
    .line 198
    if-eqz v1, :cond_11

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_11
    move v2, v1

    .line 202
    :goto_1
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v0, v0, 0x1f

    .line 204
    .line 205
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 206
    .line 207
    const/16 v2, 0x1f

    .line 208
    .line 209
    invoke-static {v1, v0, v2}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 214
    .line 215
    if-nez p0, :cond_12

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    :goto_2
    add-int/2addr v0, v3

    .line 223
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 10
    .line 11
    iget v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 12
    .line 13
    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 14
    .line 15
    iget v7, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 16
    .line 17
    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 18
    .line 19
    iget v9, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 22
    .line 23
    iget-boolean v11, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 24
    .line 25
    iget v12, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 26
    .line 27
    iget-boolean v13, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 28
    .line 29
    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    .line 30
    .line 31
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 32
    .line 33
    move/from16 v16, v15

    .line 34
    .line 35
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 40
    .line 41
    move/from16 v18, v15

    .line 42
    .line 43
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 48
    .line 49
    move/from16 v20, v15

    .line 50
    .line 51
    iget v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 52
    .line 53
    move/from16 v21, v15

    .line 54
    .line 55
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 56
    .line 57
    move/from16 v22, v15

    .line 58
    .line 59
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 60
    .line 61
    move/from16 v23, v15

    .line 62
    .line 63
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 64
    .line 65
    move/from16 v24, v15

    .line 66
    .line 67
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 68
    .line 69
    move/from16 v25, v15

    .line 70
    .line 71
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 72
    .line 73
    move/from16 v26, v15

    .line 74
    .line 75
    iget v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 78
    .line 79
    move-object/from16 p0, v0

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    move/from16 v27, v15

    .line 84
    .line 85
    const-string v15, "States(displaySize="

    .line 86
    .line 87
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", canMove="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", supportPhoneLayoutProvider="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", layoutProvider="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", navigationMode="

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", disable1="

    .line 123
    .line 124
    const-string v2, ", disable2="

    .line 125
    .line 126
    invoke-static {v0, v5, v1, v6, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", darkMode="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", rotation="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", deviceProvisioned="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", userSetupCompleted="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", iconHint="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", sPayShowing="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", gestureDisabledByPolicy="

    .line 178
    .line 179
    const-string v2, ", recentVisible="

    .line 180
    .line 181
    invoke-static {v0, v13, v1, v14, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v1, ", homeVisible="

    .line 185
    .line 186
    const-string v2, ", backVisible="

    .line 187
    .line 188
    move/from16 v3, v16

    .line 189
    .line 190
    move/from16 v4, v17

    .line 191
    .line 192
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v1, ", hardKeyIntentPolicy="

    .line 196
    .line 197
    const-string v2, ", imeDownButtonForAllRotation="

    .line 198
    .line 199
    move/from16 v3, v18

    .line 200
    .line 201
    move/from16 v4, v19

    .line 202
    .line 203
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move/from16 v1, v20

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, ", transitionMode="

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    move/from16 v1, v21

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, ", regionSamplingEnabled="

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", displayChanged="

    .line 227
    .line 228
    const-string v2, ", layoutChangedBeforeAttached="

    .line 229
    .line 230
    move/from16 v3, v22

    .line 231
    .line 232
    move/from16 v4, v23

    .line 233
    .line 234
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v1, ", supportCoverScreen="

    .line 238
    .line 239
    const-string v2, ", supportLargeCoverScreen="

    .line 240
    .line 241
    move/from16 v3, v24

    .line 242
    .line 243
    move/from16 v4, v25

    .line 244
    .line 245
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move/from16 v1, v26

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, ", lastTaskUserId="

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    move/from16 v1, v27

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v1, ", multiModalForLargeCover="

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-object/from16 v1, p0

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, ")"

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    return-object v0
.end method
