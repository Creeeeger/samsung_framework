.class public final Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
.super Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mFixedExpandedHeightInPx:I

.field public mFixedExpandedWidthInPx:I

.field public final mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm$1;

    .line 2
    .line 3
    invoke-direct {v4}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm$1;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 15
    .line 16
    new-instance p2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private reloadResources(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x10500d5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 13
    .line 14
    const v0, 0x10500d6

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 22
    .line 23
    const v0, 0x7f070af6

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 31
    .line 32
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 33
    .line 34
    const v0, 0x7f090006

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    float-to-double v0, p1

    .line 43
    iput-wide v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 9
    .line 10
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 11
    .line 12
    invoke-static {v2, v1}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 17
    .line 18
    .line 19
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {p0, v1, v3, p1, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 3

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    float-to-double p1, p2

    .line 6
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "TvPipBoundsAlgorithm"

    .line 13
    .line 14
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/16 p2, 0x8

    .line 19
    .line 20
    const-string v1, "%s: getAdjustedDestinationBounds: %f"

    .line 21
    .line 22
    const v2, 0x25e1464

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2, p2, v1, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getEntryDestinationBounds()Landroid/graphics/Rect;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    const-string v2, "TvPipBoundsAlgorithm"

    .line 9
    .line 10
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, -0x5eb54fa2

    .line 15
    .line 16
    .line 17
    const-string v4, "%s: getEntryDestinationBounds()"

    .line 18
    .line 19
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    cmpl-float v2, v2, v4

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    move v1, v3

    .line 44
    :cond_1
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    cmpl-float v2, v2, v5

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    const/4 v5, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    .line 32
    .line 33
    invoke-virtual {v0, v5, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(Landroid/util/Size;F)Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 38
    .line 39
    iget v6, v6, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 40
    .line 41
    new-instance v7, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget v2, v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 47
    .line 48
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-gtz v2, :cond_2

    .line 53
    .line 54
    iget v2, v0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 55
    .line 56
    invoke-static {v6, v2}, Ljava/lang/Float;->compare(FF)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-gtz v2, :cond_2

    .line 61
    .line 62
    move v2, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v2, v4

    .line 65
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v7, v6, v4, v4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 68
    .line 69
    .line 70
    :cond_3
    new-instance v2, Landroid/util/Size;

    .line 71
    .line 72
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-direct {v2, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    new-instance v7, Landroid/util/Size;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 106
    .line 107
    .line 108
    iget-object v8, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    iget v10, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mKeepClearAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 117
    .line 118
    iget v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 119
    .line 120
    iget-object v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    .line 121
    .line 122
    if-ne v11, v10, :cond_4

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    iput v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 126
    .line 127
    new-instance v10, Landroid/graphics/Rect;

    .line 128
    .line 129
    iget-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 130
    .line 131
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 136
    .line 137
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    invoke-direct {v10, v4, v4, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 155
    .line 156
    :goto_3
    iget-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 157
    .line 158
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_5

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 166
    .line 167
    new-instance v10, Landroid/graphics/Rect;

    .line 168
    .line 169
    iget-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 170
    .line 171
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 176
    .line 177
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    invoke-direct {v10, v4, v4, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 189
    .line 190
    iget-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 197
    .line 198
    :goto_4
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_6

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_6
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 213
    .line 214
    :goto_5
    iget v10, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 215
    .line 216
    iput v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 217
    .line 218
    iget-object v10, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 219
    .line 220
    iput-object v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 221
    .line 222
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformAndFilterAreas(Ljava/util/Set;)Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformAndFilterAreas(Ljava/util/Set;)Ljava/util/Set;

    .line 227
    .line 228
    .line 229
    move-result-object v11

    .line 230
    new-instance v12, Landroid/graphics/Rect;

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    invoke-direct {v12, v4, v4, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    .line 242
    .line 243
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 244
    .line 245
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 246
    .line 247
    .line 248
    new-instance v13, Landroid/util/Size;

    .line 249
    .line 250
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    invoke-direct {v13, v14, v12}, Landroid/util/Size;-><init>(II)V

    .line 259
    .line 260
    .line 261
    iget-object v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    if-eqz v14, :cond_7

    .line 268
    .line 269
    new-instance v14, Landroid/util/Size;

    .line 270
    .line 271
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 272
    .line 273
    .line 274
    move-result v15

    .line 275
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    invoke-direct {v14, v15, v13}, Landroid/util/Size;-><init>(II)V

    .line 280
    .line 281
    .line 282
    move-object v13, v14

    .line 283
    :cond_7
    new-instance v15, Landroid/graphics/Rect;

    .line 284
    .line 285
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-eqz v14, :cond_8

    .line 293
    .line 294
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    const/16 v5, 0x55

    .line 303
    .line 304
    invoke-static {v5, v14, v13, v12, v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_8
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    const/4 v14, 0x5

    .line 317
    invoke-static {v14, v5, v13, v12, v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 318
    .line 319
    .line 320
    :goto_6
    invoke-static {v10, v11}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v12

    .line 328
    if-eqz v12, :cond_9

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v13

    .line 339
    if-eqz v13, :cond_c

    .line 340
    .line 341
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v13

    .line 345
    check-cast v13, Landroid/graphics/Rect;

    .line 346
    .line 347
    invoke-static {v13, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    if-eqz v14, :cond_b

    .line 352
    .line 353
    invoke-static {v13, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    if-eqz v13, :cond_b

    .line 358
    .line 359
    move v13, v3

    .line 360
    goto :goto_7

    .line 361
    :cond_b
    move v13, v4

    .line 362
    :goto_7
    if-eqz v13, :cond_a

    .line 363
    .line 364
    move v12, v4

    .line 365
    goto :goto_9

    .line 366
    :cond_c
    :goto_8
    move v12, v3

    .line 367
    :goto_9
    if-eqz v12, :cond_d

    .line 368
    .line 369
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 370
    .line 371
    iput-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 372
    .line 373
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 374
    .line 375
    const/16 v17, 0x0

    .line 376
    .line 377
    const/16 v18, 0x0

    .line 378
    .line 379
    const/16 v19, 0x0

    .line 380
    .line 381
    const/16 v20, 0x1c

    .line 382
    .line 383
    const/16 v21, 0x0

    .line 384
    .line 385
    move-object v14, v3

    .line 386
    move-object v12, v15

    .line 387
    move-object/from16 v16, v12

    .line 388
    .line 389
    invoke-direct/range {v14 .. v21}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 390
    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_d
    move-object v12, v15

    .line 394
    invoke-virtual {v0, v12, v10, v11}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    if-eqz v15, :cond_e

    .line 399
    .line 400
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 401
    .line 402
    iput-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 403
    .line 404
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 405
    .line 406
    const/16 v17, 0x0

    .line 407
    .line 408
    const/16 v18, 0x0

    .line 409
    .line 410
    const/16 v19, 0x0

    .line 411
    .line 412
    const/16 v20, 0x1c

    .line 413
    .line 414
    const/16 v21, 0x0

    .line 415
    .line 416
    move-object v14, v3

    .line 417
    move-object/from16 v16, v12

    .line 418
    .line 419
    invoke-direct/range {v14 .. v21}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 420
    .line 421
    .line 422
    :goto_a
    move-object/from16 v21, v9

    .line 423
    .line 424
    goto/16 :goto_19

    .line 425
    .line 426
    :cond_e
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    invoke-virtual {v0, v3, v12, v10, v11}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    if-nez v10, :cond_f

    .line 435
    .line 436
    sget-object v10, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 437
    .line 438
    invoke-virtual {v0, v12, v10, v11}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 439
    .line 440
    .line 441
    move-result-object v10

    .line 442
    if-nez v10, :cond_f

    .line 443
    .line 444
    move-object v10, v12

    .line 445
    :cond_f
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 446
    .line 447
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v13

    .line 454
    :cond_10
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v14

    .line 458
    if-eqz v14, :cond_12

    .line 459
    .line 460
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v14

    .line 464
    move-object v15, v14

    .line 465
    check-cast v15, Landroid/graphics/Rect;

    .line 466
    .line 467
    invoke-static {v15, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 468
    .line 469
    .line 470
    move-result v16

    .line 471
    if-eqz v16, :cond_11

    .line 472
    .line 473
    invoke-static {v15, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 474
    .line 475
    .line 476
    move-result v15

    .line 477
    if-eqz v15, :cond_11

    .line 478
    .line 479
    move v15, v3

    .line 480
    goto :goto_c

    .line 481
    :cond_11
    move v15, v4

    .line 482
    :goto_c
    if-eqz v15, :cond_10

    .line 483
    .line 484
    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto :goto_b

    .line 488
    :cond_12
    iget-object v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 489
    .line 490
    invoke-interface {v13, v11}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 491
    .line 492
    .line 493
    move-result v13

    .line 494
    xor-int/lit8 v19, v13, 0x1

    .line 495
    .line 496
    iput-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 497
    .line 498
    iget-object v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 499
    .line 500
    new-instance v13, Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .line 504
    .line 505
    new-instance v14, Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v15

    .line 514
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v16

    .line 518
    if-eqz v16, :cond_14

    .line 519
    .line 520
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    move-object v3, v4

    .line 525
    check-cast v3, Landroid/graphics/Rect;

    .line 526
    .line 527
    invoke-static {v3, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    if-eqz v3, :cond_13

    .line 532
    .line 533
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    :cond_13
    const/4 v3, 0x1

    .line 537
    const/4 v4, 0x0

    .line 538
    goto :goto_d

    .line 539
    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    :cond_15
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    if-eqz v5, :cond_16

    .line 553
    .line 554
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    move-object v15, v5

    .line 559
    check-cast v15, Landroid/graphics/Rect;

    .line 560
    .line 561
    invoke-static {v15, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 562
    .line 563
    .line 564
    move-result v15

    .line 565
    if-eqz v15, :cond_15

    .line 566
    .line 567
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    goto :goto_e

    .line 571
    :cond_16
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    const/4 v5, 0x1

    .line 576
    xor-int/2addr v4, v5

    .line 577
    if-eqz v4, :cond_20

    .line 578
    .line 579
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    .line 580
    .line 581
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 582
    .line 583
    sub-int v5, v4, v5

    .line 584
    .line 585
    iget v15, v10, Landroid/graphics/Rect;->top:I

    .line 586
    .line 587
    move-object/from16 v21, v9

    .line 588
    .line 589
    iget v9, v11, Landroid/graphics/Rect;->top:I

    .line 590
    .line 591
    sub-int/2addr v15, v9

    .line 592
    if-gt v5, v15, :cond_1b

    .line 593
    .line 594
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 595
    .line 596
    sub-int/2addr v4, v5

    .line 597
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v9

    .line 605
    if-nez v9, :cond_17

    .line 606
    .line 607
    const/4 v9, 0x0

    .line 608
    goto :goto_10

    .line 609
    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 614
    .line 615
    .line 616
    move-result v15

    .line 617
    if-nez v15, :cond_18

    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_18
    move-object v15, v9

    .line 621
    check-cast v15, Landroid/graphics/Rect;

    .line 622
    .line 623
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    .line 624
    .line 625
    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v17

    .line 629
    move-object/from16 p0, v9

    .line 630
    .line 631
    move-object/from16 v9, v17

    .line 632
    .line 633
    check-cast v9, Landroid/graphics/Rect;

    .line 634
    .line 635
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 636
    .line 637
    if-ge v15, v9, :cond_1a

    .line 638
    .line 639
    move v15, v9

    .line 640
    move-object/from16 v9, v17

    .line 641
    .line 642
    goto :goto_f

    .line 643
    :cond_1a
    move-object/from16 v9, p0

    .line 644
    .line 645
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 646
    .line 647
    .line 648
    move-result v17

    .line 649
    if-nez v17, :cond_19

    .line 650
    .line 651
    :goto_10
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    check-cast v9, Landroid/graphics/Rect;

    .line 655
    .line 656
    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 657
    .line 658
    iget v9, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 659
    .line 660
    add-int/2addr v5, v9

    .line 661
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 666
    .line 667
    if-le v4, v5, :cond_1b

    .line 668
    .line 669
    new-instance v5, Landroid/graphics/Rect;

    .line 670
    .line 671
    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 672
    .line 673
    .line 674
    iget v9, v10, Landroid/graphics/Rect;->left:I

    .line 675
    .line 676
    invoke-virtual {v5, v9, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    :cond_1b
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    .line 683
    .line 684
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 685
    .line 686
    sub-int/2addr v4, v5

    .line 687
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 688
    .line 689
    iget v9, v11, Landroid/graphics/Rect;->top:I

    .line 690
    .line 691
    sub-int/2addr v5, v9

    .line 692
    if-lt v4, v5, :cond_21

    .line 693
    .line 694
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 695
    .line 696
    .line 697
    move-result v4

    .line 698
    sub-int/2addr v9, v4

    .line 699
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 700
    .line 701
    add-int/2addr v9, v4

    .line 702
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 707
    .line 708
    .line 709
    move-result v5

    .line 710
    if-nez v5, :cond_1c

    .line 711
    .line 712
    const/4 v5, 0x0

    .line 713
    goto :goto_12

    .line 714
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v5

    .line 718
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v14

    .line 722
    if-nez v14, :cond_1d

    .line 723
    .line 724
    goto :goto_12

    .line 725
    :cond_1d
    move-object v14, v5

    .line 726
    check-cast v14, Landroid/graphics/Rect;

    .line 727
    .line 728
    iget v14, v14, Landroid/graphics/Rect;->top:I

    .line 729
    .line 730
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v15

    .line 734
    move-object/from16 p0, v5

    .line 735
    .line 736
    move-object v5, v15

    .line 737
    check-cast v5, Landroid/graphics/Rect;

    .line 738
    .line 739
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 740
    .line 741
    if-le v14, v5, :cond_1f

    .line 742
    .line 743
    move v14, v5

    .line 744
    move-object v5, v15

    .line 745
    goto :goto_11

    .line 746
    :cond_1f
    move-object/from16 v5, p0

    .line 747
    .line 748
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 749
    .line 750
    .line 751
    move-result v15

    .line 752
    if-nez v15, :cond_1e

    .line 753
    .line 754
    :goto_12
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    check-cast v5, Landroid/graphics/Rect;

    .line 758
    .line 759
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 760
    .line 761
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 762
    .line 763
    .line 764
    move-result v5

    .line 765
    sub-int/2addr v4, v5

    .line 766
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 767
    .line 768
    sub-int/2addr v4, v5

    .line 769
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 770
    .line 771
    .line 772
    move-result v4

    .line 773
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 774
    .line 775
    if-ge v4, v5, :cond_21

    .line 776
    .line 777
    new-instance v5, Landroid/graphics/Rect;

    .line 778
    .line 779
    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 780
    .line 781
    .line 782
    iget v9, v10, Landroid/graphics/Rect;->left:I

    .line 783
    .line 784
    invoke-virtual {v5, v9, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    goto :goto_13

    .line 791
    :cond_20
    move-object/from16 v21, v9

    .line 792
    .line 793
    :cond_21
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    const/4 v5, 0x1

    .line 798
    xor-int/2addr v4, v5

    .line 799
    if-eqz v4, :cond_2b

    .line 800
    .line 801
    iget v4, v11, Landroid/graphics/Rect;->right:I

    .line 802
    .line 803
    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 804
    .line 805
    sub-int v5, v4, v5

    .line 806
    .line 807
    iget v9, v10, Landroid/graphics/Rect;->left:I

    .line 808
    .line 809
    iget v14, v11, Landroid/graphics/Rect;->left:I

    .line 810
    .line 811
    sub-int/2addr v9, v14

    .line 812
    if-gt v5, v9, :cond_26

    .line 813
    .line 814
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 815
    .line 816
    sub-int/2addr v4, v5

    .line 817
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 822
    .line 823
    .line 824
    move-result v9

    .line 825
    if-nez v9, :cond_22

    .line 826
    .line 827
    const/4 v9, 0x0

    .line 828
    goto :goto_15

    .line 829
    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v9

    .line 833
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 834
    .line 835
    .line 836
    move-result v14

    .line 837
    if-nez v14, :cond_23

    .line 838
    .line 839
    goto :goto_15

    .line 840
    :cond_23
    move-object v14, v9

    .line 841
    check-cast v14, Landroid/graphics/Rect;

    .line 842
    .line 843
    iget v14, v14, Landroid/graphics/Rect;->right:I

    .line 844
    .line 845
    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v15

    .line 849
    move-object/from16 p0, v9

    .line 850
    .line 851
    move-object v9, v15

    .line 852
    check-cast v9, Landroid/graphics/Rect;

    .line 853
    .line 854
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 855
    .line 856
    if-ge v14, v9, :cond_25

    .line 857
    .line 858
    move v14, v9

    .line 859
    move-object v9, v15

    .line 860
    goto :goto_14

    .line 861
    :cond_25
    move-object/from16 v9, p0

    .line 862
    .line 863
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 864
    .line 865
    .line 866
    move-result v15

    .line 867
    if-nez v15, :cond_24

    .line 868
    .line 869
    :goto_15
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    check-cast v9, Landroid/graphics/Rect;

    .line 873
    .line 874
    iget v5, v9, Landroid/graphics/Rect;->right:I

    .line 875
    .line 876
    iget v9, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 877
    .line 878
    add-int/2addr v5, v9

    .line 879
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 884
    .line 885
    if-le v4, v5, :cond_26

    .line 886
    .line 887
    new-instance v5, Landroid/graphics/Rect;

    .line 888
    .line 889
    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 890
    .line 891
    .line 892
    iget v9, v10, Landroid/graphics/Rect;->top:I

    .line 893
    .line 894
    invoke-virtual {v5, v4, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    :cond_26
    iget v4, v11, Landroid/graphics/Rect;->right:I

    .line 901
    .line 902
    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 903
    .line 904
    sub-int/2addr v4, v5

    .line 905
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 906
    .line 907
    iget v9, v11, Landroid/graphics/Rect;->left:I

    .line 908
    .line 909
    sub-int/2addr v5, v9

    .line 910
    if-lt v4, v5, :cond_2b

    .line 911
    .line 912
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    sub-int/2addr v9, v4

    .line 917
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 918
    .line 919
    add-int/2addr v9, v4

    .line 920
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 925
    .line 926
    .line 927
    move-result v4

    .line 928
    if-nez v4, :cond_27

    .line 929
    .line 930
    const/4 v4, 0x0

    .line 931
    goto :goto_16

    .line 932
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 937
    .line 938
    .line 939
    move-result v5

    .line 940
    if-nez v5, :cond_28

    .line 941
    .line 942
    goto :goto_16

    .line 943
    :cond_28
    move-object v5, v4

    .line 944
    check-cast v5, Landroid/graphics/Rect;

    .line 945
    .line 946
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 947
    .line 948
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v11

    .line 952
    move-object v14, v11

    .line 953
    check-cast v14, Landroid/graphics/Rect;

    .line 954
    .line 955
    iget v14, v14, Landroid/graphics/Rect;->left:I

    .line 956
    .line 957
    if-le v5, v14, :cond_2a

    .line 958
    .line 959
    move-object v4, v11

    .line 960
    move v5, v14

    .line 961
    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 962
    .line 963
    .line 964
    move-result v11

    .line 965
    if-nez v11, :cond_29

    .line 966
    .line 967
    :goto_16
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    check-cast v4, Landroid/graphics/Rect;

    .line 971
    .line 972
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 973
    .line 974
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    sub-int/2addr v3, v4

    .line 979
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 980
    .line 981
    sub-int/2addr v3, v4

    .line 982
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 987
    .line 988
    if-ge v3, v4, :cond_2b

    .line 989
    .line 990
    new-instance v4, Landroid/graphics/Rect;

    .line 991
    .line 992
    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 993
    .line 994
    .line 995
    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 996
    .line 997
    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    :cond_2b
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1008
    .line 1009
    .line 1010
    move-result v4

    .line 1011
    if-nez v4, :cond_2c

    .line 1012
    .line 1013
    const/4 v4, 0x0

    .line 1014
    goto :goto_17

    .line 1015
    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v5

    .line 1023
    if-nez v5, :cond_2d

    .line 1024
    .line 1025
    goto :goto_17

    .line 1026
    :cond_2d
    move-object v5, v4

    .line 1027
    check-cast v5, Landroid/graphics/Rect;

    .line 1028
    .line 1029
    iget v9, v5, Landroid/graphics/Rect;->left:I

    .line 1030
    .line 1031
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 1032
    .line 1033
    sub-int/2addr v9, v11

    .line 1034
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v9

    .line 1038
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1039
    .line 1040
    iget v11, v10, Landroid/graphics/Rect;->top:I

    .line 1041
    .line 1042
    sub-int/2addr v5, v11

    .line 1043
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 1044
    .line 1045
    .line 1046
    move-result v5

    .line 1047
    add-int/2addr v5, v9

    .line 1048
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v9

    .line 1052
    move-object v11, v9

    .line 1053
    check-cast v11, Landroid/graphics/Rect;

    .line 1054
    .line 1055
    iget v13, v11, Landroid/graphics/Rect;->left:I

    .line 1056
    .line 1057
    iget v14, v10, Landroid/graphics/Rect;->left:I

    .line 1058
    .line 1059
    sub-int/2addr v13, v14

    .line 1060
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 1061
    .line 1062
    .line 1063
    move-result v13

    .line 1064
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 1065
    .line 1066
    iget v14, v10, Landroid/graphics/Rect;->top:I

    .line 1067
    .line 1068
    sub-int/2addr v11, v14

    .line 1069
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 1070
    .line 1071
    .line 1072
    move-result v11

    .line 1073
    add-int/2addr v11, v13

    .line 1074
    if-le v5, v11, :cond_2f

    .line 1075
    .line 1076
    move-object v4, v9

    .line 1077
    move v5, v11

    .line 1078
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v9

    .line 1082
    if-nez v9, :cond_2e

    .line 1083
    .line 1084
    :goto_17
    check-cast v4, Landroid/graphics/Rect;

    .line 1085
    .line 1086
    if-nez v4, :cond_30

    .line 1087
    .line 1088
    move-object v15, v10

    .line 1089
    goto :goto_18

    .line 1090
    :cond_30
    move-object v15, v4

    .line 1091
    :goto_18
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 1092
    .line 1093
    invoke-static {v15, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1094
    .line 1095
    .line 1096
    move-result v17

    .line 1097
    move-object v14, v3

    .line 1098
    move-object/from16 v16, v12

    .line 1099
    .line 1100
    move-object/from16 v18, v10

    .line 1101
    .line 1102
    invoke-direct/range {v14 .. v19}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;Z)V

    .line 1103
    .line 1104
    .line 1105
    :goto_19
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 1106
    .line 1107
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v10

    .line 1111
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1112
    .line 1113
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 1114
    .line 1115
    invoke-static {v4, v5}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v4

    .line 1119
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 1123
    .line 1124
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v11

    .line 1128
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1129
    .line 1130
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 1131
    .line 1132
    invoke-static {v4, v5}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v4

    .line 1136
    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1137
    .line 1138
    .line 1139
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 1140
    .line 1141
    if-eqz v4, :cond_31

    .line 1142
    .line 1143
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v5

    .line 1147
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1148
    .line 1149
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 1150
    .line 1151
    invoke-static {v4, v0}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1156
    .line 1157
    .line 1158
    move-object v13, v5

    .line 1159
    goto :goto_1a

    .line 1160
    :cond_31
    const/4 v13, 0x0

    .line 1161
    :goto_1a
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 1162
    .line 1163
    invoke-static {v10, v13}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1164
    .line 1165
    .line 1166
    move-result v12

    .line 1167
    iget-boolean v14, v3, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 1168
    .line 1169
    move-object v9, v0

    .line 1170
    invoke-direct/range {v9 .. v14}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;Z)V

    .line 1171
    .line 1172
    .line 1173
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1174
    .line 1175
    const-string v4, "TvPipBoundsAlgorithm"

    .line 1176
    .line 1177
    if-eqz v3, :cond_32

    .line 1178
    .line 1179
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1184
    .line 1185
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v3

    .line 1189
    const v7, 0x3d9c261f

    .line 1190
    .line 1191
    .line 1192
    const-string v9, "%s: screenSize: %s"

    .line 1193
    .line 1194
    const/4 v10, 0x0

    .line 1195
    invoke-static {v5, v7, v10, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    .line 1197
    .line 1198
    :cond_32
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1199
    .line 1200
    if-eqz v3, :cond_33

    .line 1201
    .line 1202
    iget v3, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 1203
    .line 1204
    int-to-long v9, v3

    .line 1205
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1206
    .line 1207
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v5

    .line 1211
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    const/4 v7, 0x4

    .line 1216
    const-string v9, "%s: stashOffset: %d"

    .line 1217
    .line 1218
    const v10, -0xc2245fd

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v3, v10, v7, v9, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    .line 1223
    .line 1224
    :cond_33
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1225
    .line 1226
    if-eqz v3, :cond_34

    .line 1227
    .line 1228
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v3

    .line 1236
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1237
    .line 1238
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    const v6, -0x5c604e24

    .line 1243
    .line 1244
    .line 1245
    const-string v7, "%s: insetBounds: %s"

    .line 1246
    .line 1247
    const/4 v9, 0x0

    .line 1248
    invoke-static {v5, v6, v9, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_1b

    .line 1252
    :cond_34
    const/4 v9, 0x0

    .line 1253
    :goto_1b
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1254
    .line 1255
    if-eqz v3, :cond_35

    .line 1256
    .line 1257
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1262
    .line 1263
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v2

    .line 1267
    const v5, 0x54b9f4e2

    .line 1268
    .line 1269
    .line 1270
    const-string v6, "%s: pipSize: %s"

    .line 1271
    .line 1272
    invoke-static {v3, v5, v9, v6, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    .line 1274
    .line 1275
    :cond_35
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1276
    .line 1277
    if-eqz v2, :cond_36

    .line 1278
    .line 1279
    iget v1, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 1280
    .line 1281
    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v1

    .line 1285
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v1

    .line 1289
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1290
    .line 1291
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    const v3, 0x74de31f8

    .line 1296
    .line 1297
    .line 1298
    const-string v5, "%s: gravity: %s"

    .line 1299
    .line 1300
    const/4 v9, 0x0

    .line 1301
    invoke-static {v2, v3, v9, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_1c

    .line 1305
    :cond_36
    const/4 v9, 0x0

    .line 1306
    :goto_1c
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1307
    .line 1308
    if-eqz v1, :cond_37

    .line 1309
    .line 1310
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1315
    .line 1316
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v1

    .line 1320
    const v3, -0x20644795

    .line 1321
    .line 1322
    .line 1323
    const-string v5, "%s: restrictedKeepClearAreas: %s"

    .line 1324
    .line 1325
    invoke-static {v2, v3, v9, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    .line 1327
    .line 1328
    :cond_37
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1329
    .line 1330
    if-eqz v1, :cond_38

    .line 1331
    .line 1332
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1337
    .line 1338
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v1

    .line 1342
    const v3, -0xeadb97c

    .line 1343
    .line 1344
    .line 1345
    const-string v5, "%s: unrestrictedKeepClearAreas: %s"

    .line 1346
    .line 1347
    invoke-static {v2, v3, v9, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    .line 1349
    .line 1350
    :cond_38
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 1351
    .line 1352
    if-eqz v1, :cond_39

    .line 1353
    .line 1354
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v1

    .line 1358
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1359
    .line 1360
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v1

    .line 1364
    const v3, -0x3c555ff1

    .line 1365
    .line 1366
    .line 1367
    const-string v4, "%s: placement: %s"

    .line 1368
    .line 1369
    invoke-static {v2, v3, v9, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    .line 1371
    .line 1372
    :cond_39
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateExpandedPipSize()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    cmpl-float v4, v2, v4

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v6, "TvPipBoundsAlgorithm"

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 24
    .line 25
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, -0x134220b0

    .line 30
    .line 31
    .line 32
    const-string v2, "%s: updateExpandedPipSize(): Expanded mode aspect ratio of 0 not supported"

    .line 33
    .line 34
    invoke-static {p0, v1, v5, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpg-float v4, v2, v4

    .line 41
    .line 42
    const-string v7, "%s: Accommodate aspect ratio"

    .line 43
    .line 44
    const v8, 0x61082a32

    .line 45
    .line 46
    .line 47
    const-string v9, "%s: Aspect ratio is too extreme, use max size"

    .line 48
    .line 49
    const v10, 0x68f7e947

    .line 50
    .line 51
    .line 52
    iget-object v11, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 53
    .line 54
    const/4 v12, 0x2

    .line 55
    if-gez v4, :cond_6

    .line 56
    .line 57
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 58
    .line 59
    if-ne v4, v12, :cond_2

    .line 60
    .line 61
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_2
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 66
    .line 67
    iget-object v4, v11, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 68
    .line 69
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 70
    .line 71
    mul-int/2addr v4, v12

    .line 72
    sub-int/2addr v1, v4

    .line 73
    iget v4, v3, Landroid/graphics/Insets;->top:I

    .line 74
    .line 75
    sub-int/2addr v1, v4

    .line 76
    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    .line 77
    .line 78
    sub-int/2addr v1, v3

    .line 79
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 80
    .line 81
    int-to-float v3, v3

    .line 82
    div-float/2addr v3, v2

    .line 83
    int-to-float v2, v1

    .line 84
    cmpl-float v2, v2, v3

    .line 85
    .line 86
    if-lez v2, :cond_4

    .line 87
    .line 88
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 93
    .line 94
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v1, v8, v5, v7, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    new-instance v1, Landroid/util/Size;

    .line 102
    .line 103
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 104
    .line 105
    float-to-int v2, v3

    .line 106
    invoke-direct {v1, p0, v2}, Landroid/util/Size;-><init>(II)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 115
    .line 116
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v2, v10, v5, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    new-instance v2, Landroid/util/Size;

    .line 124
    .line 125
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedWidthInPx:I

    .line 126
    .line 127
    invoke-direct {v2, p0, v1}, Landroid/util/Size;-><init>(II)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    iget v4, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 132
    .line 133
    const/4 v13, 0x1

    .line 134
    if-ne v4, v13, :cond_7

    .line 135
    .line 136
    iget-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 140
    .line 141
    iget-object v4, v11, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 142
    .line 143
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 144
    .line 145
    mul-int/2addr v4, v12

    .line 146
    sub-int/2addr v1, v4

    .line 147
    iget v4, v3, Landroid/graphics/Insets;->left:I

    .line 148
    .line 149
    sub-int/2addr v1, v4

    .line 150
    iget v3, v3, Landroid/graphics/Insets;->right:I

    .line 151
    .line 152
    sub-int/2addr v1, v3

    .line 153
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 154
    .line 155
    int-to-float v3, v3

    .line 156
    mul-float/2addr v3, v2

    .line 157
    int-to-float v2, v1

    .line 158
    cmpl-float v2, v2, v3

    .line 159
    .line 160
    if-lez v2, :cond_9

    .line 161
    .line 162
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 163
    .line 164
    if-eqz v1, :cond_8

    .line 165
    .line 166
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 167
    .line 168
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v1, v8, v5, v7, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    new-instance v1, Landroid/util/Size;

    .line 176
    .line 177
    float-to-int v2, v3

    .line 178
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 179
    .line 180
    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 181
    .line 182
    .line 183
    :goto_0
    move-object p0, v1

    .line 184
    goto :goto_2

    .line 185
    :cond_9
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 186
    .line 187
    if-eqz v2, :cond_a

    .line 188
    .line 189
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 190
    .line 191
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v2, v10, v5, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    new-instance v2, Landroid/util/Size;

    .line 199
    .line 200
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mFixedExpandedHeightInPx:I

    .line 201
    .line 202
    invoke-direct {v2, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 203
    .line 204
    .line 205
    :goto_1
    move-object p0, v2

    .line 206
    :goto_2
    iput-object p0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    .line 207
    .line 208
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 209
    .line 210
    if-eqz v0, :cond_b

    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    int-to-long v0, v0

    .line 217
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    int-to-long v2, p0

    .line 222
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 223
    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    filled-new-array {v6, v0, v1}, [Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v1, 0x14

    .line 237
    .line 238
    const-string v2, "%s: updateExpandedPipSize(): expanded size, width: %d, height: %d"

    .line 239
    .line 240
    const v3, 0x285d7722

    .line 241
    .line 242
    .line 243
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_b
    return-void
.end method

.method public final updateGravityOnExpansionToggled(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    const-string v1, "TvPipBoundsAlgorithm"

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 10
    .line 11
    int-to-long v2, v0

    .line 12
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v1, v4, v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v3, 0x1c

    .line 27
    .line 28
    const-string v4, "%s: updateGravity, expanding: %b, fixedExpandedOrientation: %d"

    .line 29
    .line 30
    const v5, -0x16592994

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v5, v3, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 37
    .line 38
    and-int/lit8 v2, v0, 0x7

    .line 39
    .line 40
    and-int/lit8 v3, v0, 0x70

    .line 41
    .line 42
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 43
    .line 44
    and-int/lit8 v5, v4, 0x7

    .line 45
    .line 46
    and-int/lit8 v4, v4, 0x70

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 52
    .line 53
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 54
    .line 55
    if-ne p1, v6, :cond_1

    .line 56
    .line 57
    or-int/lit8 p1, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    or-int/lit8 p1, v2, 0x10

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 64
    .line 65
    if-ne p1, v6, :cond_3

    .line 66
    .line 67
    or-int p1, v5, v3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    or-int p1, v2, v4

    .line 71
    .line 72
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 73
    .line 74
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 75
    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    invoke-static {p1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 87
    .line 88
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const v0, 0x4daff178    # 3.689797E8f

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    const-string v2, "%s: new gravity: %s"

    .line 97
    .line 98
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method
