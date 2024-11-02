.class public Lcom/android/systemui/qp/SubscreenTileLayout;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field public final mBoundaryBox:Ljava/util/ArrayList;

.field public mCellHeight:I

.field public mCellMarginHorizontal:I

.field public mCellMarginVertical:I

.field public mCellWidth:I

.field public mColumns:I

.field public mLastTileBottom:I

.field public mListening:Z

.field public mMaxAllowedRows:I

.field public mMaxCellHeight:I

.field public final mRecords:Ljava/util/ArrayList;

.field public mRows:I

.field public mSquishinessFraction:F

.field public mTileLayoutHeight:I

.field public mTileVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qp/SubscreenTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    iput p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 7
    iput p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenTileLayout;->updateResources()Z

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/systemui/qp/SubscreenTileLayout$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenTileLayout$1;-><init>(Lcom/android/systemui/qp/SubscreenTileLayout;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v1, -0x2

    .line 32
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final getTilesHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mLastTileBottom:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/2addr p0, v0

    .line 8
    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final layoutTileRecords(IZ)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mLastTileBottom:I

    .line 13
    .line 14
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 15
    .line 16
    iget v4, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 17
    .line 18
    mul-int/2addr v3, v4

    .line 19
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    move v3, v1

    .line 24
    move v4, v3

    .line 25
    move v5, v4

    .line 26
    :goto_1
    if-ge v3, p1, :cond_5

    .line 27
    .line 28
    iget v6, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 29
    .line 30
    if-ne v4, v6, :cond_1

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    move v4, v1

    .line 35
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 42
    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    iget v7, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget v7, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 49
    .line 50
    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    .line 51
    .line 52
    add-int/2addr v7, v8

    .line 53
    :goto_2
    mul-int/2addr v7, v5

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 57
    .line 58
    sub-int/2addr v8, v4

    .line 59
    sub-int/2addr v8, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v8, v4

    .line 62
    :goto_3
    iget v9, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 63
    .line 64
    iget v10, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 65
    .line 66
    add-int/2addr v10, v9

    .line 67
    mul-int/2addr v10, v8

    .line 68
    add-int/2addr v9, v10

    .line 69
    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 70
    .line 71
    add-int/2addr v8, v7

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 75
    .line 76
    invoke-virtual {v11, v10, v7, v9, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 81
    .line 82
    invoke-virtual {v11, v10, v7, v9, v8}, Landroid/widget/LinearLayout;->setLeftTopRightBottom(IIII)V

    .line 83
    .line 84
    .line 85
    :goto_4
    iget-object v8, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 86
    .line 87
    invoke-virtual {v8, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->setPosition(I)V

    .line 88
    .line 89
    .line 90
    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    .line 91
    .line 92
    const v9, 0x3f666666    # 0.9f

    .line 93
    .line 94
    .line 95
    mul-float/2addr v8, v9

    .line 96
    const v9, 0x3dcccccd    # 0.1f

    .line 97
    .line 98
    .line 99
    add-float/2addr v8, v9

    .line 100
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 101
    .line 102
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    int-to-float v6, v6

    .line 107
    mul-float/2addr v6, v8

    .line 108
    float-to-int v6, v6

    .line 109
    add-int/2addr v7, v6

    .line 110
    iput v7, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mLastTileBottom:I

    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/SubscreenTileLayout;->layoutTileRecords(IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "onMeasure, pageHeight: "

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sub-int v4, v3, v4

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    sub-int/2addr v4, v5

    .line 26
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    iget v5, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 33
    .line 34
    add-int v6, v2, v5

    .line 35
    .line 36
    add-int/lit8 v6, v6, -0x1

    .line 37
    .line 38
    div-int/2addr v6, v5

    .line 39
    iput v6, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 40
    .line 41
    :cond_0
    const-string v5, "onMeasure width: "

    .line 42
    .line 43
    const-string v6, " availableWidth: "

    .line 44
    .line 45
    const-string v7, " mRows: "

    .line 46
    .line 47
    invoke-static {v5, v3, v6, v4, v7}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget v5, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 52
    .line 53
    const-string v6, " numTiles: "

    .line 54
    .line 55
    const-string v7, " mColumns: "

    .line 56
    .line 57
    invoke-static {v4, v5, v6, v2, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 61
    .line 62
    const-string v5, "SubscreenTileLayout"

    .line 63
    .line 64
    invoke-static {v4, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    .line 68
    .line 69
    iget v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    .line 70
    .line 71
    if-ge v2, v4, :cond_1

    .line 72
    .line 73
    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const v6, 0x7f070eeb

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const v6, 0x7f070c9b

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 103
    .line 104
    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 105
    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const v6, 0x7f070cb7

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    .line 122
    .line 123
    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const v6, 0x7f070c9c

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    iget v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 140
    .line 141
    iget v6, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 142
    .line 143
    mul-int/2addr v4, v6

    .line 144
    sub-int v4, v2, v4

    .line 145
    .line 146
    add-int/lit8 v6, v6, -0x1

    .line 147
    .line 148
    div-int/2addr v4, v6

    .line 149
    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    .line 150
    .line 151
    iget v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 152
    .line 153
    iget v6, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 154
    .line 155
    mul-int/2addr v4, v6

    .line 156
    sub-int v4, v3, v4

    .line 157
    .line 158
    add-int/lit8 v6, v6, -0x1

    .line 159
    .line 160
    div-int/2addr v4, v6

    .line 161
    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 162
    .line 163
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, " mMaxCellHeight: "

    .line 172
    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, " pageWidth: "

    .line 182
    .line 183
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, " mCellMarginHorizontal :"

    .line 190
    .line 191
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 195
    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v0, " mCellHeight: "

    .line 200
    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 205
    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, ",mCellWidth: "

    .line 210
    .line 211
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 215
    .line 216
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v0, ",mTileVerticalMargin: "

    .line 220
    .line 221
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    .line 225
    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    :goto_2
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 242
    .line 243
    const/high16 v2, 0x40000000    # 2.0f

    .line 244
    .line 245
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const v3, 0x7f0713db

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    iget-object v3, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    const v4, 0x7f0713da

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    iget-object v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    move-object v6, v1

    .line 282
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    if-eqz v7, :cond_9

    .line 287
    .line 288
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    check-cast v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 293
    .line 294
    iget-object v8, v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 295
    .line 296
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    const/16 v9, 0x8

    .line 301
    .line 302
    if-ne v8, v9, :cond_3

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_3
    iget-object v8, v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 306
    .line 307
    const/4 v9, 0x0

    .line 308
    invoke-virtual {v8, v9}, Lcom/android/systemui/plugins/qs/QSTileView;->setShowLabels(Z)V

    .line 309
    .line 310
    .line 311
    move-object v9, v8

    .line 312
    check-cast v9, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    .line 313
    .line 314
    iget-object v10, v9, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 315
    .line 316
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    .line 322
    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 323
    .line 324
    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 325
    .line 326
    iget-object v12, v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 327
    .line 328
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 329
    .line 330
    .line 331
    move-result-object v13

    .line 332
    iget v13, v13, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 333
    .line 334
    const/4 v14, 0x2

    .line 335
    if-ne v13, v14, :cond_4

    .line 336
    .line 337
    const v13, 0x7f060886

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_4
    const v13, 0x7f060885

    .line 342
    .line 343
    .line 344
    :goto_4
    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    invoke-virtual {v14}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    check-cast v14, Landroid/widget/ImageView;

    .line 353
    .line 354
    iget-object v15, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 355
    .line 356
    invoke-virtual {v15, v13}, Landroid/content/Context;->getColor(I)I

    .line 357
    .line 358
    .line 359
    move-result v13

    .line 360
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 361
    .line 362
    invoke-virtual {v14, v13, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    .line 367
    .line 368
    iget-object v11, v9, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 369
    .line 370
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 371
    .line 372
    .line 373
    move-result-object v13

    .line 374
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 375
    .line 376
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 377
    .line 378
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 379
    .line 380
    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    iget v12, v12, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 388
    .line 389
    if-eqz v12, :cond_7

    .line 390
    .line 391
    const v13, 0x7f060888

    .line 392
    .line 393
    .line 394
    const/4 v14, 0x1

    .line 395
    if-eq v12, v14, :cond_6

    .line 396
    .line 397
    const/4 v14, 0x2

    .line 398
    if-eq v12, v14, :cond_5

    .line 399
    .line 400
    new-instance v14, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string v15, "getCircleColor: invalid state["

    .line 403
    .line 404
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v12, "]"

    .line 411
    .line 412
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v12

    .line 419
    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    iget-object v12, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 423
    .line 424
    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    goto :goto_5

    .line 429
    :cond_5
    iget-object v12, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 430
    .line 431
    const v13, 0x7f060889

    .line 432
    .line 433
    .line 434
    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    goto :goto_5

    .line 439
    :cond_6
    iget-object v12, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 440
    .line 441
    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    .line 442
    .line 443
    .line 444
    move-result v12

    .line 445
    goto :goto_5

    .line 446
    :cond_7
    iget-object v12, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 447
    .line 448
    const v13, 0x7f060887

    .line 449
    .line 450
    .line 451
    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    :goto_5
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 456
    .line 457
    .line 458
    move-result-object v12

    .line 459
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 460
    .line 461
    .line 462
    iget-object v11, v9, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 463
    .line 464
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    .line 466
    const/4 v13, -0x2

    .line 467
    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    .line 472
    .line 473
    const/4 v12, 0x2

    .line 474
    invoke-virtual {v10, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 475
    .line 476
    .line 477
    const/4 v10, 0x1

    .line 478
    invoke-virtual {v11, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 479
    .line 480
    .line 481
    new-instance v10, Lcom/android/systemui/qp/SubscreenTileLayout$4;

    .line 482
    .line 483
    invoke-direct {v10, v1, v7}, Lcom/android/systemui/qp/SubscreenTileLayout$4;-><init>(Lcom/android/systemui/qp/SubscreenTileLayout;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v11, v10}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v9}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getTileBackground()Landroid/graphics/drawable/Drawable;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    instance-of v9, v7, Landroid/graphics/drawable/RippleDrawable;

    .line 494
    .line 495
    if-eqz v9, :cond_8

    .line 496
    .line 497
    check-cast v7, Landroid/graphics/drawable/RippleDrawable;

    .line 498
    .line 499
    iget-object v9, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 500
    .line 501
    const v10, 0x7f060884

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    .line 505
    .line 506
    .line 507
    move-result v9

    .line 508
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 513
    .line 514
    .line 515
    :cond_8
    iget v7, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 516
    .line 517
    const/high16 v9, 0x40000000    # 2.0f

    .line 518
    .line 519
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v8, v6}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    goto/16 :goto_3

    .line 531
    .line 532
    :cond_9
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 533
    .line 534
    .line 535
    return-void
.end method

.method public final removeAllViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    .line 29
    .line 30
    invoke-interface {p2, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0b00dd

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    const v1, 0x7f070c8c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 26
    .line 27
    const v1, 0x7f070c8e

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginVertical:I

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 39
    .line 40
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginVertical:I

    .line 41
    .line 42
    :cond_0
    const/16 v1, 0x64

    .line 43
    .line 44
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    .line 48
    .line 49
    const v1, 0x7f0713da

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v1, "updateResources columns: 4 mMaxCellHeight: "

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " mMaxAllowedRows: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " mCellWidth: "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "SubscreenTileLayout"

    .line 96
    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "mColumns = "

    .line 108
    .line 109
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "mRows = "

    .line 127
    .line 128
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "mMaxAllowedRows = "

    .line 146
    .line 147
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "mCellHeight = "

    .line 165
    .line 166
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v3, "mMaxCellHeight = "

    .line 184
    .line 185
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v3, "mCellMarginHorizontal = "

    .line 203
    .line 204
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v3, "mCellMarginVertical = "

    .line 222
    .line 223
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginVertical:I

    .line 227
    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v3, "mTileVerticalMargin = "

    .line 241
    .line 242
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v3, "mTileLayoutHeight = "

    .line 260
    .line 261
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_1

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Ljava/lang/String;

    .line 291
    .line 292
    goto :goto_0

    .line 293
    :cond_1
    iget v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 294
    .line 295
    const/4 v1, 0x4

    .line 296
    if-eq v0, v1, :cond_2

    .line 297
    .line 298
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 301
    .line 302
    .line 303
    return v2

    .line 304
    :cond_2
    const/4 p0, 0x0

    .line 305
    return p0
.end method
