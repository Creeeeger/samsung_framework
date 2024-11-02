.class public final Lcom/android/systemui/shade/NotificationShadeWindowState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public final asStringList$delegate:Lkotlin/Lazy;

.field public backgroundBlurRadius:I

.field public bouncerShowing:Z

.field public final componentsForcingTopUi:Ljava/util/Set;

.field public coverAppShowing:Z

.field public coverType:I

.field public dozing:Z

.field public dreaming:Z

.field public forceDozeBrightness:Z

.field public forceInvisible:Z

.field public final forceOpenTokens:Ljava/util/Set;

.field public forcePluginOpen:Z

.field public forceUserActivity:Z

.field public forceWindowCollapsed:Z

.field public headsUpNotificationShowing:Z

.field public isCoverClosed:Z

.field public isHideInformationMirroring:Z

.field public keyguardFadingAway:Z

.field public keyguardGoingAway:Z

.field public keyguardNeedsInput:Z

.field public keyguardOccluded:Z

.field public keyguardShowing:Z

.field public keyguardUserActivityTimeout:J

.field public launchingActivityFromNotification:Z

.field public lightRevealScrimOpaque:Z

.field public lockTimeOutValue:J

.field public mediaBackdropShowing:Z

.field public notificationShadeFocusable:Z

.field public panelExpanded:Z

.field public panelVisible:Z

.field public qsExpanded:Z

.field public remoteInputActive:Z

.field public screenOrientationNoSensor:Z

.field public scrimsVisibility:I

.field public securedWindow:Z

.field public statusBarSplitTouchable:Z

.field public statusBarState:I

.field public userScreenTimeOut:Z

.field public wallpaperSupportsAmbientMode:Z

.field public windowNotTouchable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lcom/android/systemui/shade/NotificationShadeWindowState$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v2, "keyguardShowing"

    .line 8
    .line 9
    const-string v3, "keyguardOccluded"

    .line 10
    .line 11
    const-string v4, "keyguardNeedsInput"

    .line 12
    .line 13
    const-string/jumbo v5, "panelVisible"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v6, "panelExpanded"

    .line 17
    .line 18
    .line 19
    const-string v7, "notificationShadeFocusable"

    .line 20
    .line 21
    const-string v8, "bouncerShowing"

    .line 22
    .line 23
    const-string v9, "keyguardFadingAway"

    .line 24
    .line 25
    const-string v10, "keyguardGoingAway"

    .line 26
    .line 27
    const-string/jumbo v11, "qsExpanded"

    .line 28
    .line 29
    .line 30
    const-string v12, "headsUpShowing"

    .line 31
    .line 32
    const-string v13, "lightRevealScrimOpaque"

    .line 33
    .line 34
    const-string v14, "forceCollapsed"

    .line 35
    .line 36
    const-string v15, "forceDozeBrightness"

    .line 37
    .line 38
    const-string v16, "forceUserActivity"

    .line 39
    .line 40
    const-string v17, "launchingActivity"

    .line 41
    .line 42
    const-string v18, "backdropShowing"

    .line 43
    .line 44
    const-string/jumbo v19, "wallpaperSupportsAmbientMode"

    .line 45
    .line 46
    .line 47
    const-string v20, "notTouchable"

    .line 48
    .line 49
    const-string v21, "componentsForcingTopUi"

    .line 50
    .line 51
    const-string v22, "forceOpenTokens"

    .line 52
    .line 53
    const-string/jumbo v23, "statusBarState"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v24, "remoteInputActive"

    .line 57
    .line 58
    .line 59
    const-string v25, "forcePluginOpen"

    .line 60
    .line 61
    const-string v26, "dozing"

    .line 62
    .line 63
    const-string/jumbo v27, "scrimsVisibility"

    .line 64
    .line 65
    .line 66
    const-string v28, "backgroundBlurRadius"

    .line 67
    .line 68
    const-string v29, "keyguardUserActivityTimeout"

    .line 69
    .line 70
    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->TABLE_HEADERS:Ljava/util/List;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 45

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

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, -0x1

    const/16 v43, 0x7f

    const/16 v44, 0x0

    invoke-direct/range {v0 .. v44}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>(ZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZJZZZZZIZZJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZJZZZZZIZZJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZZZZZZZZZZZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;IZZZZIIZJZZZZZIZZJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 3
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    move v1, p2

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    move v1, p3

    .line 5
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    move v1, p4

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    move v1, p5

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    move v1, p6

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    move v1, p10

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    move v1, p11

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    move v1, p12

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    move/from16 v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    move/from16 v1, p15

    .line 17
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    move/from16 v1, p16

    .line 18
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    move/from16 v1, p17

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    move/from16 v1, p18

    .line 20
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    move/from16 v1, p19

    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    move/from16 v1, p22

    .line 24
    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    move/from16 v1, p23

    .line 25
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    move/from16 v1, p24

    .line 26
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    move/from16 v1, p25

    .line 27
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    move/from16 v1, p26

    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    move/from16 v1, p27

    .line 29
    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    move/from16 v1, p28

    .line 30
    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    move/from16 v1, p29

    .line 31
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    move-wide/from16 v1, p30

    .line 32
    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockTimeOutValue:J

    move/from16 v1, p32

    .line 33
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->userScreenTimeOut:Z

    move/from16 v1, p33

    .line 34
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    move/from16 v1, p34

    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->securedWindow:Z

    move/from16 v1, p35

    .line 36
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    move/from16 v1, p36

    .line 37
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    move/from16 v1, p37

    .line 38
    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    move/from16 v1, p38

    .line 39
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarSplitTouchable:Z

    move/from16 v1, p39

    .line 40
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isHideInformationMirroring:Z

    move-wide/from16 v1, p40

    .line 41
    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 42
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZJZZZZZIZZJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    move/from16 v0, p42

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move/from16 v10, p9

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
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p16

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

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    .line 43
    new-instance v20, Ljava/util/LinkedHashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 44
    new-instance v21, Ljava/util/LinkedHashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1d

    const-wide/16 v30, 0x0

    goto :goto_1d

    :cond_1d
    move-wide/from16 v30, p30

    :goto_1d
    const/high16 v32, 0x40000000    # 2.0f

    and-int v32, v0, v32

    if-eqz v32, :cond_1e

    const/16 v32, 0x0

    goto :goto_1e

    :cond_1e
    move/from16 v32, p32

    :goto_1e
    const/high16 v33, -0x80000000

    and-int v0, v0, v33

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move/from16 v0, p33

    :goto_1f
    and-int/lit8 v33, p43, 0x1

    if-eqz v33, :cond_20

    const/16 v33, 0x0

    goto :goto_20

    :cond_20
    move/from16 v33, p34

    :goto_20
    and-int/lit8 v34, p43, 0x2

    if-eqz v34, :cond_21

    const/16 v34, 0x0

    goto :goto_21

    :cond_21
    move/from16 v34, p35

    :goto_21
    and-int/lit8 v35, p43, 0x4

    if-eqz v35, :cond_22

    const/16 v35, 0x0

    goto :goto_22

    :cond_22
    move/from16 v35, p36

    :goto_22
    and-int/lit8 v36, p43, 0x8

    if-eqz v36, :cond_23

    const/16 v36, 0x0

    goto :goto_23

    :cond_23
    move/from16 v36, p37

    :goto_23
    and-int/lit8 v37, p43, 0x10

    if-eqz v37, :cond_24

    const/16 v37, 0x1

    goto :goto_24

    :cond_24
    move/from16 v37, p38

    :goto_24
    and-int/lit8 v38, p43, 0x20

    if-eqz v38, :cond_25

    const/16 v38, 0x0

    goto :goto_25

    :cond_25
    move/from16 v38, p39

    :goto_25
    and-int/lit8 v39, p43, 0x40

    if-eqz v39, :cond_26

    const-wide/16 v39, -0x1

    goto :goto_26

    :cond_26
    move-wide/from16 v39, p40

    :goto_26
    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v2

    move/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move/from16 p22, v22

    move/from16 p23, v23

    move/from16 p24, v24

    move/from16 p25, v25

    move/from16 p26, v26

    move/from16 p27, v27

    move/from16 p28, v28

    move/from16 p29, v29

    move-wide/from16 p30, v30

    move/from16 p32, v32

    move/from16 p33, v0

    move/from16 p34, v33

    move/from16 p35, v34

    move/from16 p36, v35

    move/from16 p37, v36

    move/from16 p38, v37

    move/from16 p39, v38

    move-wide/from16 p40, v39

    .line 45
    invoke-direct/range {p0 .. p41}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>(ZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZJZZZZZIZZJ)V

    return-void
.end method


# virtual methods
.method public final isKeyguardShowingAndNotOccluded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
