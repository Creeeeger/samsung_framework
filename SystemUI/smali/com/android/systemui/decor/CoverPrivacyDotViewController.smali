.class public final Lcom/android/systemui/decor/CoverPrivacyDotViewController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public applyDelayNextViewState:Z

.field public bl:Landroid/view/View;

.field public br:Landroid/view/View;

.field public cameraListener:Lcom/android/systemui/CameraAvailabilityListener;

.field public final cameraTransitionCallback:Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;

.field public cancelRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public currentViewState:Lcom/android/systemui/decor/CoverViewState;

.field public cutoutHeight:I

.field public dotContainerHeight:I

.field public dotContainerWidth:I

.field public handler:Landroid/os/Handler;

.field public final lock:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public nextViewState:Lcom/android/systemui/decor/CoverViewState;

.field public final systemStatusAnimationCallback:Lcom/android/systemui/decor/CoverPrivacyDotViewController$systemStatusAnimationCallback$1;

.field public tl:Landroid/view/View;

.field public tr:Landroid/view/View;

.field public uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    iput-object v2, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 13
    .line 14
    move-object/from16 v2, p3

    .line 15
    .line 16
    iput-object v2, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 17
    .line 18
    new-instance v13, Lcom/android/systemui/decor/CoverViewState;

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    const/16 v18, 0x0

    .line 27
    .line 28
    const/16 v19, 0x0

    .line 29
    .line 30
    const/16 v20, 0x0

    .line 31
    .line 32
    const/16 v21, 0x0

    .line 33
    .line 34
    const/16 v22, 0xff

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/16 v11, 0xff

    .line 46
    .line 47
    move-object v2, v13

    .line 48
    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/decor/CoverViewState;-><init>(ZZZZIILandroid/view/View;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    iput-object v13, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->currentViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 52
    .line 53
    move v3, v14

    .line 54
    move v4, v15

    .line 55
    move/from16 v5, v16

    .line 56
    .line 57
    move/from16 v6, v17

    .line 58
    .line 59
    move/from16 v7, v18

    .line 60
    .line 61
    move/from16 v8, v19

    .line 62
    .line 63
    move-object/from16 v9, v20

    .line 64
    .line 65
    move-object/from16 v10, v21

    .line 66
    .line 67
    move/from16 v11, v22

    .line 68
    .line 69
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/Object;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 81
    .line 82
    new-instance v2, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1;-><init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;)V

    .line 85
    .line 86
    .line 87
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/android/systemui/decor/CoverPrivacyDotViewController$systemStatusAnimationCallback$1;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController$systemStatusAnimationCallback$1;-><init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/decor/CoverPrivacyDotViewController$systemStatusAnimationCallback$1;

    .line 98
    .line 99
    new-instance v1, Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;-><init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cameraTransitionCallback:Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final cornerForView(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :cond_2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :cond_4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    const/4 p0, 0x3

    .line 40
    goto :goto_1

    .line 41
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 42
    .line 43
    if-nez p0, :cond_6

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_6
    move-object v1, p0

    .line 47
    :goto_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_7

    .line 52
    .line 53
    const/4 p0, 0x2

    .line 54
    :goto_1
    return p0

    .line 55
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string/jumbo p1, "not a corner view"

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final getViews()Lkotlin/sequences/Sequence;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [Landroid/view/View;

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x4

    .line 14
    new-array v2, v2, [Landroid/view/View;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object v0, v3

    .line 20
    :cond_1
    aput-object v0, v2, v1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    move-object v0, v3

    .line 27
    :cond_2
    const/4 v1, 0x1

    .line 28
    aput-object v0, v2, v1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    :cond_3
    const/4 v1, 0x2

    .line 36
    aput-object v0, v2, v1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 39
    .line 40
    if-nez p0, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    move-object v3, p0

    .line 44
    :goto_0
    const/4 p0, 0x3

    .line 45
    aput-object v3, v2, p0

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    return-object p0
.end method

.method public final selectDesignatedCorner(IZ)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    if-eqz p1, :cond_7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne p1, v2, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 21
    .line 22
    if-nez v0, :cond_9

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-nez v0, :cond_9

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string/jumbo p1, "unknown rotation"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_3
    if-eqz p2, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 40
    .line 41
    if-nez v0, :cond_9

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 45
    .line 46
    if-nez v0, :cond_9

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    if-eqz p2, :cond_6

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 52
    .line 53
    if-nez v0, :cond_9

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 57
    .line 58
    if-nez v0, :cond_9

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    if-eqz p2, :cond_8

    .line 62
    .line 63
    if-nez v0, :cond_9

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 67
    .line 68
    if-nez v0, :cond_9

    .line 69
    .line 70
    :goto_0
    move-object v0, v1

    .line 71
    :cond_9
    return-object v0
.end method

.method public final setCornerSizes(Lcom/android/systemui/decor/CoverViewState;)V
    .locals 6

    .line 1
    iget p1, p1, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 21
    .line 22
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 23
    .line 24
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 25
    .line 26
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    .line 40
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 41
    .line 42
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 43
    .line 44
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 45
    .line 46
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 47
    .line 48
    :goto_0
    if-eqz p1, :cond_4

    .line 49
    .line 50
    if-eq p1, v0, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    move-object v2, v1

    .line 57
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 64
    .line 65
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 66
    .line 67
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 68
    .line 69
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    .line 83
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 84
    .line 85
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 86
    .line 87
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 88
    .line 89
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 90
    .line 91
    :goto_1
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_8

    .line 93
    .line 94
    if-eq p1, v0, :cond_8

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 97
    .line 98
    if-nez v3, :cond_6

    .line 99
    .line 100
    move-object v3, v1

    .line 101
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .line 107
    iget v4, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 108
    .line 109
    iget v5, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cutoutHeight:I

    .line 110
    .line 111
    add-int/2addr v4, v5

    .line 112
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 113
    .line 114
    iget v4, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 115
    .line 116
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 119
    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    move-object v3, v1

    .line 123
    :cond_7
    invoke-virtual {v3, v5, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 128
    .line 129
    if-nez v3, :cond_9

    .line 130
    .line 131
    move-object v3, v1

    .line 132
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    iget v4, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 139
    .line 140
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 141
    .line 142
    iget v4, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 143
    .line 144
    iget v5, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cutoutHeight:I

    .line 145
    .line 146
    add-int/2addr v4, v5

    .line 147
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 148
    .line 149
    iget-object v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 150
    .line 151
    if-nez v3, :cond_a

    .line 152
    .line 153
    move-object v3, v1

    .line 154
    :cond_a
    invoke-virtual {v3, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    .line 156
    .line 157
    :goto_2
    if-eqz p1, :cond_d

    .line 158
    .line 159
    if-eq p1, v0, :cond_d

    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 162
    .line 163
    if-nez p1, :cond_b

    .line 164
    .line 165
    move-object p1, v1

    .line 166
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 171
    .line 172
    iget v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 173
    .line 174
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cutoutHeight:I

    .line 175
    .line 176
    add-int/2addr v0, v3

    .line 177
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 178
    .line 179
    iget v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 180
    .line 181
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 184
    .line 185
    if-nez p0, :cond_c

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_c
    move-object v1, p0

    .line 189
    :goto_3
    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 194
    .line 195
    if-nez p1, :cond_e

    .line 196
    .line 197
    move-object p1, v1

    .line 198
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    .line 204
    iget v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 205
    .line 206
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 207
    .line 208
    iget v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 209
    .line 210
    iget v3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cutoutHeight:I

    .line 211
    .line 212
    add-int/2addr v0, v3

    .line 213
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 216
    .line 217
    if-nez p0, :cond_f

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_f
    move-object v1, p0

    .line 221
    :goto_4
    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    .line 223
    .line 224
    :goto_5
    return-void
.end method

.method public final setNextViewState(Lcom/android/systemui/decor/CoverViewState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 4
    .line 5
    iget v1, p1, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->applyDelayNextViewState:Z

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cancelRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$scheduleUpdate$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController$scheduleUpdate$1;-><init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->applyDelayNextViewState:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-wide/16 v1, 0x12c

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    :goto_0
    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cancelRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 46
    .line 47
    return-void
.end method

.method public final updateRotations(I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_9

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v2, p1

    .line 26
    if-gez v2, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    .line 36
    const/16 v4, 0x53

    .line 37
    .line 38
    const-string v5, "Not a corner"

    .line 39
    .line 40
    const/4 v6, 0x3

    .line 41
    const/16 v7, 0x55

    .line 42
    .line 43
    const/4 v8, 0x2

    .line 44
    const/16 v9, 0x35

    .line 45
    .line 46
    const/4 v10, 0x1

    .line 47
    const/16 v11, 0x33

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    if-eq v2, v10, :cond_3

    .line 52
    .line 53
    if-eq v2, v8, :cond_2

    .line 54
    .line 55
    if-ne v2, v6, :cond_1

    .line 56
    .line 57
    move v12, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    move v12, v7

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v12, v9

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move v12, v11

    .line 70
    :goto_1
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    .line 72
    const v3, 0x7f0a0823

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    if-eq v2, v10, :cond_8

    .line 88
    .line 89
    if-eq v2, v8, :cond_6

    .line 90
    .line 91
    if-ne v2, v6, :cond_5

    .line 92
    .line 93
    move v4, v9

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_6
    move v4, v11

    .line 102
    goto :goto_2

    .line 103
    :cond_7
    move v4, v7

    .line 104
    :cond_8
    :goto_2
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_9
    return-void
.end method
