.class public final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public lastAreasOverlappingUnstashPosition:Ljava/util/Set;

.field public maxRestrictedDistanceFraction:D

.field public final movementBounds:Landroid/graphics/Rect;

.field public pipAreaPadding:I

.field public pipGravity:I

.field public pipPermanentDecorInsets:Landroid/graphics/Insets;

.field public screenSize:Landroid/util/Size;

.field public stashOffset:I

.field public transformedMovementBounds:Landroid/graphics/Rect;

.field public transformedScreenBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/Size;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    const/16 v0, 0x30

    .line 20
    .line 21
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 24
    .line 25
    const-wide v0, 0x3fc3333333333333L    # 0.15

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 31
    .line 32
    const/16 v0, 0x55

    .line 33
    .line 34
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 42
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 53
    .line 54
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 57
    .line 58
    return-void
.end method

.method public static candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 9
    .line 10
    sub-int/2addr p0, p1

    .line 11
    mul-int/2addr v0, v0

    .line 12
    mul-int/2addr p0, p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    if-le v1, v2, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-ge v1, v2, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    if-le p0, p1, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    :cond_4
    :goto_0
    return v0
.end method

.method public static intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    if-gt p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    if-gt p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static sweepLineFindEarliestGap(Ljava/util/List;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, p2, v2, v2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;-><init>(ZIZZ)V

    .line 6
    .line 7
    .line 8
    move-object v3, p0

    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le v0, v2, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v1, v2, :cond_7

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 40
    .line 41
    iget-boolean v4, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    iget-boolean v5, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 55
    .line 56
    iget v5, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 57
    .line 58
    if-le v5, p2, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    if-eqz v4, :cond_4

    .line 62
    .line 63
    move v4, p3

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v4, p1

    .line 66
    :goto_2
    add-int/lit8 v6, v1, 0x1

    .line 67
    .line 68
    invoke-static {v6, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 73
    .line 74
    if-eqz v6, :cond_5

    .line 75
    .line 76
    sub-int/2addr v5, v4

    .line 77
    iget v4, v6, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 78
    .line 79
    if-ge v4, v5, :cond_6

    .line 80
    .line 81
    :cond_5
    return-object v2

    .line 82
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 90
    .line 91
    return-object p0
.end method


# virtual methods
.method public final findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    iget-wide v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    :goto_0
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    int-to-double v6, v6

    .line 26
    iget-object v8, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 27
    .line 28
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    int-to-double v8, v8

    .line 33
    mul-double/2addr v8, v4

    .line 34
    sub-double/2addr v6, v8

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    new-instance v5, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-virtual {v5, v4, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-object/from16 v4, p3

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const/4 v11, 0x1

    .line 73
    if-eqz v10, :cond_3

    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    move-object v12, v10

    .line 80
    check-cast v12, Landroid/graphics/Rect;

    .line 81
    .line 82
    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    int-to-double v12, v12

    .line 85
    cmpl-double v12, v12, v6

    .line 86
    .line 87
    if-ltz v12, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move v11, v8

    .line 91
    :goto_2
    if-eqz v11, :cond_1

    .line 92
    .line 93
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    add-int/2addr v6, v5

    .line 107
    new-instance v5, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;

    .line 108
    .line 109
    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v5, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z

    .line 113
    .line 114
    .line 115
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    int-to-double v5, v5

    .line 122
    iget-wide v9, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 123
    .line 124
    mul-double/2addr v5, v9

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_18

    .line 130
    .line 131
    const-wide v9, 0x41dfffffffc00000L    # 2.147483647E9

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    cmpl-double v7, v5, v9

    .line 137
    .line 138
    if-lez v7, :cond_4

    .line 139
    .line 140
    const v5, 0x7fffffff

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    const-wide/high16 v9, -0x3e20000000000000L    # -2.147483648E9

    .line 145
    .line 146
    cmpg-double v7, v5, v9

    .line 147
    .line 148
    if-gez v7, :cond_5

    .line 149
    .line 150
    const/high16 v5, -0x80000000

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    long-to-int v5, v5

    .line 158
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_13

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    check-cast v7, Landroid/graphics/Rect;

    .line 178
    .line 179
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    iget v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 182
    .line 183
    sub-int/2addr v9, v10

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    sub-int/2addr v9, v10

    .line 189
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 190
    .line 191
    sub-int/2addr v9, v10

    .line 192
    new-instance v10, Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    xor-int/2addr v12, v11

    .line 205
    new-instance v13, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    new-instance v14, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;

    .line 211
    .line 212
    invoke-direct {v14, v0, v10, v13}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v14, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 222
    .line 223
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v16

    .line 227
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    if-eqz v17, :cond_6

    .line 232
    .line 233
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-interface {v15, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    const/4 v8, 0x0

    .line 241
    goto :goto_5

    .line 242
    :cond_6
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v14, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    if-eqz v15, :cond_7

    .line 259
    .line 260
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    invoke-interface {v8, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    iget v14, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 273
    .line 274
    add-int/2addr v8, v14

    .line 275
    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    .line 276
    .line 277
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 278
    .line 279
    .line 280
    move-result v15

    .line 281
    invoke-static {v13, v8, v14, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(Ljava/util/List;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    iget-boolean v13, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 286
    .line 287
    if-eqz v13, :cond_8

    .line 288
    .line 289
    const/4 v13, 0x0

    .line 290
    goto :goto_7

    .line 291
    :cond_8
    iget v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 292
    .line 293
    :goto_7
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    .line 294
    .line 295
    iget v15, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 296
    .line 297
    sub-int/2addr v15, v14

    .line 298
    sub-int/2addr v15, v13

    .line 299
    iget-boolean v8, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 300
    .line 301
    if-eqz v8, :cond_9

    .line 302
    .line 303
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    goto :goto_8

    .line 308
    :cond_9
    move v8, v5

    .line 309
    :goto_8
    new-instance v13, Landroid/graphics/Rect;

    .line 310
    .line 311
    invoke-direct {v13, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v13, v9, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    .line 316
    .line 317
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 318
    .line 319
    iget v11, v2, Landroid/graphics/Rect;->top:I

    .line 320
    .line 321
    if-le v14, v11, :cond_a

    .line 322
    .line 323
    const/4 v11, 0x1

    .line 324
    goto :goto_9

    .line 325
    :cond_a
    const/4 v11, 0x0

    .line 326
    :goto_9
    invoke-static {v13, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 327
    .line 328
    .line 329
    move-result v14

    .line 330
    const/16 v16, 0x1

    .line 331
    .line 332
    xor-int/lit8 v14, v14, 0x1

    .line 333
    .line 334
    if-eqz v11, :cond_b

    .line 335
    .line 336
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-gt v11, v8, :cond_b

    .line 341
    .line 342
    if-nez v14, :cond_b

    .line 343
    .line 344
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :cond_b
    if-eqz v12, :cond_12

    .line 348
    .line 349
    new-instance v8, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    new-instance v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;

    .line 355
    .line 356
    invoke-direct {v11, v0, v10, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 357
    .line 358
    .line 359
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 360
    .line 361
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v12

    .line 365
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 366
    .line 367
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v13

    .line 371
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v14

    .line 375
    if-eqz v14, :cond_c

    .line 376
    .line 377
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v14

    .line 381
    invoke-interface {v12, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_c
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 386
    .line 387
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v11

    .line 391
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 392
    .line 393
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    if-eqz v13, :cond_d

    .line 402
    .line 403
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v13

    .line 407
    invoke-interface {v11, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_d
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 412
    .line 413
    .line 414
    move-result v11

    .line 415
    iget v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 416
    .line 417
    add-int/2addr v11, v12

    .line 418
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 419
    .line 420
    neg-int v12, v12

    .line 421
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    invoke-static {v8, v11, v12, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(Ljava/util/List;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    iget v10, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 430
    .line 431
    neg-int v10, v10

    .line 432
    new-instance v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 433
    .line 434
    iget-boolean v12, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 435
    .line 436
    iget-boolean v13, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 437
    .line 438
    iget-boolean v8, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 439
    .line 440
    invoke-direct {v11, v13, v10, v8, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;-><init>(ZIZZ)V

    .line 441
    .line 442
    .line 443
    iget-boolean v8, v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 444
    .line 445
    if-eqz v8, :cond_e

    .line 446
    .line 447
    const/4 v8, 0x0

    .line 448
    goto :goto_c

    .line 449
    :cond_e
    iget v8, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 450
    .line 451
    :goto_c
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 452
    .line 453
    iget v12, v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 454
    .line 455
    sub-int/2addr v12, v10

    .line 456
    add-int/2addr v12, v8

    .line 457
    iget-boolean v8, v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 458
    .line 459
    if-eqz v8, :cond_f

    .line 460
    .line 461
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    goto :goto_d

    .line 466
    :cond_f
    move v8, v5

    .line 467
    :goto_d
    new-instance v10, Landroid/graphics/Rect;

    .line 468
    .line 469
    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v10, v9, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 473
    .line 474
    .line 475
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 476
    .line 477
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 478
    .line 479
    if-ge v9, v11, :cond_10

    .line 480
    .line 481
    const/4 v9, 0x1

    .line 482
    goto :goto_e

    .line 483
    :cond_10
    const/4 v9, 0x0

    .line 484
    :goto_e
    invoke-static {v10, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    const/4 v11, 0x1

    .line 489
    xor-int/2addr v7, v11

    .line 490
    if-eqz v9, :cond_11

    .line 491
    .line 492
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    if-gt v9, v8, :cond_11

    .line 497
    .line 498
    if-nez v7, :cond_11

    .line 499
    .line 500
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    :cond_11
    const/4 v8, 0x0

    .line 504
    goto/16 :goto_4

    .line 505
    .line 506
    :cond_12
    const/4 v8, 0x0

    .line 507
    const/4 v11, 0x1

    .line 508
    goto/16 :goto_4

    .line 509
    .line 510
    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-nez v2, :cond_14

    .line 519
    .line 520
    const/4 v0, 0x0

    .line 521
    goto :goto_10

    .line 522
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-nez v3, :cond_15

    .line 531
    .line 532
    :goto_f
    move-object v0, v2

    .line 533
    goto :goto_10

    .line 534
    :cond_15
    move-object v3, v2

    .line 535
    check-cast v3, Landroid/graphics/Rect;

    .line 536
    .line 537
    invoke-static {v3, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    move-object v5, v4

    .line 546
    check-cast v5, Landroid/graphics/Rect;

    .line 547
    .line 548
    invoke-static {v5, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    if-le v3, v5, :cond_17

    .line 553
    .line 554
    move-object v2, v4

    .line 555
    move v3, v5

    .line 556
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    if-nez v4, :cond_16

    .line 561
    .line 562
    goto :goto_f

    .line 563
    :goto_10
    check-cast v0, Landroid/graphics/Rect;

    .line 564
    .line 565
    return-object v0

    .line 566
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 567
    .line 568
    const-string v1, "Cannot round NaN value."

    .line 569
    .line 570
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v0
.end method

.method public final findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, p1, -0x1

    .line 37
    .line 38
    invoke-virtual {p0, v3, p2, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_4

    .line 72
    .line 73
    :goto_1
    move-object p0, p1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object p3, p1

    .line 76
    check-cast p3, Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-static {p3, p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    move-object v0, p4

    .line 87
    check-cast v0, Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-static {v0, p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-le p3, v0, :cond_6

    .line 94
    .line 95
    move-object p1, p4

    .line 96
    move p3, v0

    .line 97
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    if-nez p4, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_2
    check-cast p0, Landroid/graphics/Rect;

    .line 105
    .line 106
    return-object p0
.end method

.method public final fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    new-instance v3, Landroid/graphics/Point;

    .line 32
    .line 33
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 38
    .line 39
    .line 40
    new-instance v4, Landroid/graphics/Point;

    .line 41
    .line 42
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 43
    .line 44
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Landroid/graphics/Point;

    .line 50
    .line 51
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Landroid/graphics/Point;

    .line 59
    .line 60
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    invoke-direct {v6, v7, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 65
    .line 66
    .line 67
    filled-new-array {v3, v4, v5, v6}, [Landroid/graphics/Point;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v3, 0x0

    .line 72
    move v4, v3

    .line 73
    :goto_2
    const/4 v5, 0x3

    .line 74
    const/4 v6, 0x1

    .line 75
    const/4 v7, 0x4

    .line 76
    if-ge v4, v7, :cond_6

    .line 77
    .line 78
    aget-object v7, p1, v4

    .line 79
    .line 80
    iget v8, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 81
    .line 82
    const/16 v9, 0x33

    .line 83
    .line 84
    if-eq v8, v5, :cond_2

    .line 85
    .line 86
    const/16 v5, 0x13

    .line 87
    .line 88
    if-eq v8, v5, :cond_2

    .line 89
    .line 90
    if-eq v8, v9, :cond_2

    .line 91
    .line 92
    const/16 v5, 0x53

    .line 93
    .line 94
    if-eq v8, v5, :cond_2

    .line 95
    .line 96
    const/16 v5, 0x30

    .line 97
    .line 98
    if-eq v8, v5, :cond_2

    .line 99
    .line 100
    const/16 v5, 0x31

    .line 101
    .line 102
    if-eq v8, v5, :cond_2

    .line 103
    .line 104
    move v5, v3

    .line 105
    goto :goto_3

    .line 106
    :cond_2
    move v5, v6

    .line 107
    :goto_3
    if-eqz v5, :cond_3

    .line 108
    .line 109
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 110
    .line 111
    sub-int v5, v1, v5

    .line 112
    .line 113
    iput v5, v7, Landroid/graphics/Point;->x:I

    .line 114
    .line 115
    :cond_3
    if-eq v8, v9, :cond_4

    .line 116
    .line 117
    const/16 v5, 0x35

    .line 118
    .line 119
    if-eq v8, v5, :cond_4

    .line 120
    .line 121
    move v6, v3

    .line 122
    :cond_4
    if-eqz v6, :cond_5

    .line 123
    .line 124
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 125
    .line 126
    sub-int v5, v2, v5

    .line 127
    .line 128
    iput v5, v7, Landroid/graphics/Point;->y:I

    .line 129
    .line 130
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    if-eqz v0, :cond_7

    .line 134
    .line 135
    move v0, v3

    .line 136
    :goto_4
    if-ge v0, v7, :cond_7

    .line 137
    .line 138
    aget-object v1, p1, v0

    .line 139
    .line 140
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 143
    .line 144
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    sub-int/2addr v2, v4

    .line 149
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    neg-int v2, v2

    .line 152
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 153
    .line 154
    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 155
    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    aget-object p0, p1, v3

    .line 160
    .line 161
    iget v0, p0, Landroid/graphics/Point;->y:I

    .line 162
    .line 163
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 164
    .line 165
    invoke-direct {v1, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :cond_8
    :goto_5
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 173
    .line 174
    if-eqz v2, :cond_9

    .line 175
    .line 176
    invoke-virtual {v1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    aget-object v2, p1, v2

    .line 181
    .line 182
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 183
    .line 184
    if-le v0, v4, :cond_8

    .line 185
    .line 186
    move-object p0, v2

    .line 187
    move v0, v4

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 193
    .line 194
    aget-object v0, p1, v3

    .line 195
    .line 196
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 197
    .line 198
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 199
    .line 200
    invoke-direct {v2, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :cond_a
    :goto_6
    iget-boolean v4, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 208
    .line 209
    if-eqz v4, :cond_b

    .line 210
    .line 211
    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    aget-object v4, p1, v4

    .line 216
    .line 217
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 218
    .line 219
    if-ge v1, v7, :cond_a

    .line 220
    .line 221
    move-object v0, v4

    .line 222
    move v1, v7

    .line 223
    goto :goto_6

    .line 224
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 228
    .line 229
    aget-object v1, p1, v3

    .line 230
    .line 231
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 232
    .line 233
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 234
    .line 235
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    :cond_c
    :goto_7
    iget-boolean v7, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 243
    .line 244
    if-eqz v7, :cond_d

    .line 245
    .line 246
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    aget-object v7, p1, v7

    .line 251
    .line 252
    iget v8, v7, Landroid/graphics/Point;->y:I

    .line 253
    .line 254
    if-ge v2, v8, :cond_c

    .line 255
    .line 256
    move-object v1, v7

    .line 257
    move v2, v8

    .line 258
    goto :goto_7

    .line 259
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 263
    .line 264
    aget-object v2, p1, v3

    .line 265
    .line 266
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 267
    .line 268
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 269
    .line 270
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    :cond_e
    :goto_8
    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 278
    .line 279
    if-eqz v5, :cond_f

    .line 280
    .line 281
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    aget-object v5, p1, v5

    .line 286
    .line 287
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 288
    .line 289
    if-le v3, v6, :cond_e

    .line 290
    .line 291
    move-object v2, v5

    .line 292
    move v3, v6

    .line 293
    goto :goto_8

    .line 294
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 298
    .line 299
    new-instance v2, Landroid/graphics/Rect;

    .line 300
    .line 301
    invoke-direct {v2, p1, p0, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .line 303
    .line 304
    return-object v2
.end method

.method public final isPipAnchoredToCorner()Z
    .locals 6

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 2
    .line 3
    and-int/lit8 v0, p0, 0x7

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    and-int/lit8 v1, p0, 0x7

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    if-ne v1, v4, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v3

    .line 21
    :goto_1
    and-int/lit8 v4, p0, 0x70

    .line 22
    .line 23
    const/16 v5, 0x30

    .line 24
    .line 25
    if-ne v4, v5, :cond_2

    .line 26
    .line 27
    move v4, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v4, v3

    .line 30
    :goto_2
    and-int/lit8 p0, p0, 0x70

    .line 31
    .line 32
    const/16 v5, 0x50

    .line 33
    .line 34
    if-ne p0, v5, :cond_3

    .line 35
    .line 36
    move p0, v2

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move p0, v3

    .line 39
    :goto_3
    if-nez v0, :cond_5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move v0, v3

    .line 45
    goto :goto_5

    .line 46
    :cond_5
    :goto_4
    move v0, v2

    .line 47
    :goto_5
    if-nez v4, :cond_7

    .line 48
    .line 49
    if-eqz p0, :cond_6

    .line 50
    .line 51
    goto :goto_6

    .line 52
    :cond_6
    move p0, v3

    .line 53
    goto :goto_7

    .line 54
    :cond_7
    :goto_6
    move p0, v2

    .line 55
    :goto_7
    if-eqz v0, :cond_8

    .line 56
    .line 57
    if-eqz p0, :cond_8

    .line 58
    .line 59
    goto :goto_8

    .line 60
    :cond_8
    move v2, v3

    .line 61
    :goto_8
    return v2
.end method

.method public final shouldTransformRotate()Z
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 2
    .line 3
    and-int/lit8 v0, p0, 0x7

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v3

    .line 17
    :goto_1
    if-eqz v0, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    and-int/lit8 p0, p0, 0x70

    .line 21
    .line 22
    const/16 v0, 0x30

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x50

    .line 27
    .line 28
    if-eq p0, v0, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move v2, v3

    .line 32
    :goto_2
    return v2
.end method

.method public final toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Landroid/graphics/Point;

    .line 14
    .line 15
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Landroid/graphics/Point;

    .line 23
    .line 24
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroid/graphics/Point;

    .line 32
    .line 33
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Landroid/graphics/Point;

    .line 41
    .line 42
    iget v6, p1, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    invoke-direct {v5, v6, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    .line 48
    .line 49
    filled-new-array {v2, v3, v4, v5}, [Landroid/graphics/Point;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x4

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move v1, v3

    .line 62
    :goto_0
    if-ge v1, v4, :cond_0

    .line 63
    .line 64
    aget-object v2, p1, v1

    .line 65
    .line 66
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 67
    .line 68
    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 69
    .line 70
    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 71
    .line 72
    neg-int v5, v5

    .line 73
    add-int/2addr v5, v0

    .line 74
    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :cond_1
    move v2, v3

    .line 92
    :goto_1
    const/4 v5, 0x3

    .line 93
    const/4 v6, 0x1

    .line 94
    if-ge v2, v4, :cond_6

    .line 95
    .line 96
    aget-object v7, p1, v2

    .line 97
    .line 98
    iget v8, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 99
    .line 100
    const/16 v9, 0x33

    .line 101
    .line 102
    if-eq v8, v5, :cond_2

    .line 103
    .line 104
    const/16 v5, 0x13

    .line 105
    .line 106
    if-eq v8, v5, :cond_2

    .line 107
    .line 108
    if-eq v8, v9, :cond_2

    .line 109
    .line 110
    const/16 v5, 0x53

    .line 111
    .line 112
    if-eq v8, v5, :cond_2

    .line 113
    .line 114
    const/16 v5, 0x30

    .line 115
    .line 116
    if-eq v8, v5, :cond_2

    .line 117
    .line 118
    const/16 v5, 0x31

    .line 119
    .line 120
    if-eq v8, v5, :cond_2

    .line 121
    .line 122
    move v5, v3

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v5, v6

    .line 125
    :goto_2
    if-eqz v5, :cond_3

    .line 126
    .line 127
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 128
    .line 129
    sub-int v5, v0, v5

    .line 130
    .line 131
    iput v5, v7, Landroid/graphics/Point;->x:I

    .line 132
    .line 133
    :cond_3
    if-eq v8, v9, :cond_4

    .line 134
    .line 135
    const/16 v5, 0x35

    .line 136
    .line 137
    if-eq v8, v5, :cond_4

    .line 138
    .line 139
    move v6, v3

    .line 140
    :cond_4
    if-eqz v6, :cond_5

    .line 141
    .line 142
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 143
    .line 144
    sub-int v5, v1, v5

    .line 145
    .line 146
    iput v5, v7, Landroid/graphics/Point;->y:I

    .line 147
    .line 148
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    aget-object p0, p1, v3

    .line 152
    .line 153
    iget v0, p0, Landroid/graphics/Point;->y:I

    .line 154
    .line 155
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 156
    .line 157
    invoke-direct {v1, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :cond_7
    :goto_3
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 165
    .line 166
    if-eqz v2, :cond_8

    .line 167
    .line 168
    invoke-virtual {v1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    aget-object v2, p1, v2

    .line 173
    .line 174
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 175
    .line 176
    if-le v0, v4, :cond_7

    .line 177
    .line 178
    move-object p0, v2

    .line 179
    move v0, v4

    .line 180
    goto :goto_3

    .line 181
    :cond_8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 185
    .line 186
    aget-object v0, p1, v3

    .line 187
    .line 188
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 189
    .line 190
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 191
    .line 192
    invoke-direct {v2, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :cond_9
    :goto_4
    iget-boolean v4, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 200
    .line 201
    if-eqz v4, :cond_a

    .line 202
    .line 203
    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    aget-object v4, p1, v4

    .line 208
    .line 209
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 210
    .line 211
    if-ge v1, v7, :cond_9

    .line 212
    .line 213
    move-object v0, v4

    .line 214
    move v1, v7

    .line 215
    goto :goto_4

    .line 216
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 220
    .line 221
    aget-object v1, p1, v3

    .line 222
    .line 223
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 224
    .line 225
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 226
    .line 227
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    :cond_b
    :goto_5
    iget-boolean v7, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 235
    .line 236
    if-eqz v7, :cond_c

    .line 237
    .line 238
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    aget-object v7, p1, v7

    .line 243
    .line 244
    iget v8, v7, Landroid/graphics/Point;->y:I

    .line 245
    .line 246
    if-ge v2, v8, :cond_b

    .line 247
    .line 248
    move-object v1, v7

    .line 249
    move v2, v8

    .line 250
    goto :goto_5

    .line 251
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 255
    .line 256
    aget-object v2, p1, v3

    .line 257
    .line 258
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 259
    .line 260
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 261
    .line 262
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    :cond_d
    :goto_6
    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 270
    .line 271
    if-eqz v5, :cond_e

    .line 272
    .line 273
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    aget-object v5, p1, v5

    .line 278
    .line 279
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 280
    .line 281
    if-le v3, v6, :cond_d

    .line 282
    .line 283
    move-object v2, v5

    .line 284
    move v3, v6

    .line 285
    goto :goto_6

    .line 286
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 290
    .line 291
    new-instance v2, Landroid/graphics/Rect;

    .line 292
    .line 293
    invoke-direct {v2, p1, p0, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 294
    .line 295
    .line 296
    return-object v2
.end method

.method public final transformAndFilterAreas(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_1
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
.end method
