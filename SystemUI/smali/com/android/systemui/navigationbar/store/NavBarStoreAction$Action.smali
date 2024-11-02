.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final a11yClickable:Z

.field public final a11yLongClickable:Z

.field public final contextualButtonVisible:Z

.field public final dampingRatio:F

.field public final darkIntensity:F

.field public final disableSUWBack:Z

.field public final displayId:I

.field public final edgeBackGestureDisabled:Z

.field public final folded:Z

.field public final gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

.field public final leftRemoteViewContainer:Landroid/widget/LinearLayout;

.field public final navBarIconHints:I

.field public final navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

.field public final navBarVisibility:I

.field public final oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

.field public final remoteViewDarkIntensity:F

.field public final remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

.field public final rightRemoteViewContainer:Landroid/widget/LinearLayout;

.field public final stiffness:F

.field public final sysUiFlagInfoList:Ljava/util/List;

.field public final taskbarEnabled:Z

.field public final taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;


# direct methods
.method public constructor <init>()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x3fffff

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "ZF",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;",
            "ZFIZZIZ",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;",
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;",
            ">;ZZ",
            "Lcom/android/systemui/shared/navigationbar/NavBarEvents;",
            "FFI)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    move v1, p6

    .line 7
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    move v1, p8

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    move v1, p9

    .line 10
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    move v1, p10

    .line 11
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    move v1, p11

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    move v1, p12

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    move v1, p13

    .line 14
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    move/from16 v1, p17

    .line 18
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    move/from16 v1, p18

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    move/from16 v1, p20

    .line 21
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    move/from16 v1, p21

    .line 22
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 25
    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 26
    new-instance v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf

    const/4 v15, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v10

    move-object/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    move-object/from16 p7, v15

    invoke-direct/range {p1 .. p7}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v8, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    .line 27
    new-instance v6, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    move-object/from16 p2, v6

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v18

    move-wide/from16 p6, v19

    move/from16 p8, v21

    move-object/from16 p9, v22

    invoke-direct/range {p2 .. p9}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;-><init>(IIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_e
    move-object/from16 v6, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 28
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    .line 29
    new-instance v19, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xfff

    const/16 v33, 0x0

    move-object/from16 p2, v19

    move-object/from16 p3, v20

    move-object/from16 p4, v21

    move-object/from16 p5, v22

    move-object/from16 p6, v23

    move/from16 p7, v24

    move/from16 p8, v25

    move/from16 p9, v26

    move/from16 p10, v27

    move/from16 p11, v28

    move-object/from16 p12, v29

    move/from16 p13, v30

    move-object/from16 p14, v31

    move/from16 p15, v32

    move-object/from16 p16, v33

    invoke-direct/range {p2 .. p16}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    const/16 v21, 0x0

    if-eqz v20, :cond_13

    move/from16 v20, v21

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    goto :goto_14

    :cond_14
    move/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v0, v0, v22

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    :cond_15
    move/from16 v0, p22

    :goto_15
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v7

    move-object/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v8

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move-object/from16 p15, v6

    move-object/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move-object/from16 p19, v19

    move/from16 p20, v20

    move/from16 p21, v21

    move/from16 p22, v0

    .line 30
    invoke-direct/range {p0 .. p22}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFI)V

    return-void
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
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

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
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    .line 58
    .line 59
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    .line 65
    .line 66
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    .line 67
    .line 68
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    .line 87
    .line 88
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    .line 89
    .line 90
    if-eq v1, v3, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    .line 94
    .line 95
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    .line 96
    .line 97
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    return v2

    .line 104
    :cond_a
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    .line 105
    .line 106
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    .line 107
    .line 108
    if-eq v1, v3, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    .line 112
    .line 113
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    .line 114
    .line 115
    if-eq v1, v3, :cond_c

    .line 116
    .line 117
    return v2

    .line 118
    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    .line 119
    .line 120
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    .line 121
    .line 122
    if-eq v1, v3, :cond_d

    .line 123
    .line 124
    return v2

    .line 125
    :cond_d
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    .line 126
    .line 127
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    .line 128
    .line 129
    if-eq v1, v3, :cond_e

    .line 130
    .line 131
    return v2

    .line 132
    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    .line 133
    .line 134
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    .line 135
    .line 136
    if-eq v1, v3, :cond_f

    .line 137
    .line 138
    return v2

    .line 139
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    .line 140
    .line 141
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    .line 142
    .line 143
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_10

    .line 148
    .line 149
    return v2

    .line 150
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    .line 153
    .line 154
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_11

    .line 159
    .line 160
    return v2

    .line 161
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    .line 162
    .line 163
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    .line 164
    .line 165
    if-eq v1, v3, :cond_12

    .line 166
    .line 167
    return v2

    .line 168
    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    .line 169
    .line 170
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    .line 171
    .line 172
    if-eq v1, v3, :cond_13

    .line 173
    .line 174
    return v2

    .line 175
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 176
    .line 177
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 178
    .line 179
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_14

    .line 184
    .line 185
    return v2

    .line 186
    :cond_14
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    .line 187
    .line 188
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    .line 189
    .line 190
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_15

    .line 195
    .line 196
    return v2

    .line 197
    :cond_15
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    .line 198
    .line 199
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    .line 200
    .line 201
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_16

    .line 206
    .line 207
    return v2

    .line 208
    :cond_16
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    .line 209
    .line 210
    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    .line 211
    .line 212
    if-eq p0, p1, :cond_17

    .line 213
    .line 214
    return v2

    .line 215
    :cond_17
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    move v2, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_0
    add-int/2addr v1, v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_1
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    move v2, v0

    .line 50
    :cond_2
    add-int/2addr v1, v2

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    .line 54
    .line 55
    const/16 v3, 0x1f

    .line 56
    .line 57
    invoke-static {v2, v1, v3}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v1

    .line 68
    mul-int/lit8 v2, v2, 0x1f

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    move v1, v0

    .line 75
    :cond_3
    add-int/2addr v2, v1

    .line 76
    mul-int/lit8 v2, v2, 0x1f

    .line 77
    .line 78
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    .line 79
    .line 80
    const/16 v3, 0x1f

    .line 81
    .line 82
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    .line 87
    .line 88
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    move v2, v0

    .line 97
    :cond_4
    add-int/2addr v1, v2

    .line 98
    mul-int/lit8 v1, v1, 0x1f

    .line 99
    .line 100
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    move v2, v0

    .line 105
    :cond_5
    add-int/2addr v1, v2

    .line 106
    mul-int/lit8 v1, v1, 0x1f

    .line 107
    .line 108
    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    .line 109
    .line 110
    const/16 v3, 0x1f

    .line 111
    .line 112
    invoke-static {v2, v1, v3}, Landroidx/picker/model/viewdata/AppInfoViewData$$ExternalSyntheticOutline0;->m(III)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    .line 117
    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    move v2, v0

    .line 121
    :cond_6
    add-int/2addr v1, v2

    .line 122
    mul-int/lit8 v1, v1, 0x1f

    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    add-int/2addr v2, v1

    .line 131
    mul-int/lit8 v2, v2, 0x1f

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    add-int/2addr v1, v2

    .line 140
    mul-int/lit8 v1, v1, 0x1f

    .line 141
    .line 142
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    .line 143
    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    move v2, v0

    .line 147
    :cond_7
    add-int/2addr v1, v2

    .line 148
    mul-int/lit8 v1, v1, 0x1f

    .line 149
    .line 150
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    .line 151
    .line 152
    if-eqz v2, :cond_8

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    move v0, v2

    .line 156
    :goto_2
    add-int/2addr v1, v0

    .line 157
    mul-int/lit8 v1, v1, 0x1f

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hashCode()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    .line 167
    .line 168
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    .line 169
    .line 170
    const/16 v2, 0x1f

    .line 171
    .line 172
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    .line 177
    .line 178
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    .line 183
    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    add-int/2addr p0, v0

    .line 189
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Action(oneHandModeInfo="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", navBarLayoutInfo="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", leftRemoteViewContainer="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", rightRemoteViewContainer="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", contextualButtonVisible="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", remoteViewDarkIntensity="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", remoteViewShortcut="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", disableSUWBack="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", darkIntensity="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", navBarIconHints="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", a11yClickable="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", a11yLongClickable="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", navBarVisibility="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", edgeBackGestureDisabled="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", gestureHintVIInfo="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", sysUiFlagInfoList="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", folded="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", taskbarEnabled="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", taskbarNavBarEvents="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ", stiffness="

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ", dampingRatio="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, ", displayId="

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    .line 219
    .line 220
    const-string v1, ")"

    .line 221
    .line 222
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0
.end method
