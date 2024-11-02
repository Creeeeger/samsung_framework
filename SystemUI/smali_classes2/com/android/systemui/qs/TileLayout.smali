.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;


# instance fields
.field public mCellHeight:I

.field public mCellMarginHorizontal:I

.field public mCellMarginVertical:I

.field public mCellWidth:I

.field public mColumns:I

.field public mLastCellWidth:I

.field public mListening:Z

.field public mMaxAllowedRows:I

.field public mMaxCellHeight:I

.field public final mMinRows:I

.field public final mRecords:Ljava/util/ArrayList;

.field public mRows:I

.field public final mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

.field public mSidePadding:I


# direct methods
.method public static synthetic $r8$lambda$5CGll8c5x-24YjkyHUDbVlHFe4E(Lcom/android/systemui/qs/TileLayout;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v2, 0x3

    .line 5
    iput v2, v0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 6
    iput v1, v0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "qs_less_rows"

    const/4 v15, 0x0

    invoke-static {v1, v3, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    .line 9
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v3, p1

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Lcom/android/systemui/qs/SecTileLayout;

    new-instance v3, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v4, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v5, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    const/4 v2, 0x6

    invoke-direct {v5, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v6, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v6, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v7, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    const/4 v8, 0x7

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v8, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/TileLayout;)V

    new-instance v9, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v10, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/TileLayout;)V

    new-instance v12, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    const/16 v2, 0x9

    invoke-direct {v12, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v13, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    const/16 v2, 0xa

    invoke-direct {v13, v0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    new-instance v14, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda2;

    invoke-direct {v14, v0}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/TileLayout;)V

    new-instance v2, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;

    const/4 v15, 0x4

    invoke-direct {v2, v0, v15}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    move-object v15, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/qs/SecTileLayout;-><init>(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntFunction;Ljava/util/ArrayList;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;)V

    iput-object v1, v0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 9
    .line 10
    invoke-interface {v1, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->addTileView(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    instance-of p0, v1, Lcom/android/systemui/qs/external/CustomTile;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    move-object p0, v1

    .line 27
    check-cast p0, Lcom/android/systemui/qs/external/CustomTile;

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p0, p1

    .line 33
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 38
    .line 39
    invoke-interface {v2, v0, p0}, Lcom/android/systemui/qs/QSHost;->isAvailableForSearch(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move p0, p1

    .line 45
    :goto_1
    if-eqz p0, :cond_2

    .line 46
    .line 47
    iget-object p0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 48
    .line 49
    const/16 v0, 0x66

    .line 50
    .line 51
    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public addTileView(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 p3, 0x1

    .line 12
    const/4 p4, 0x0

    .line 13
    if-ne p2, p3, :cond_0

    .line 14
    .line 15
    move p2, p3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p2, p4

    .line 18
    :goto_0
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 19
    .line 20
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 21
    .line 22
    mul-int/2addr p5, v0

    .line 23
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    move p5, p4

    .line 28
    move v0, p5

    .line 29
    move v1, v0

    .line 30
    :goto_1
    if-ge p5, p1, :cond_3

    .line 31
    .line 32
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 33
    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    move v0, p4

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 46
    .line 47
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 50
    .line 51
    iget v5, v4, Lcom/android/systemui/qs/SecTileLayout;->tileVerticalMargin:I

    .line 52
    .line 53
    add-int/2addr v3, v5

    .line 54
    mul-int/2addr v3, v1

    .line 55
    add-int/2addr v3, v5

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 59
    .line 60
    sub-int/2addr v5, v0

    .line 61
    sub-int/2addr v5, p3

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v5, v0

    .line 64
    :goto_2
    iget-object v6, v4, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    iget-object v7, v4, Lcom/android/systemui/qs/SecTileLayout;->cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    add-int/2addr v7, v6

    .line 77
    mul-int/2addr v7, v5

    .line 78
    iget-object v4, v4, Lcom/android/systemui/qs/SecTileLayout;->sidePaddingSupplier:Ljava/util/function/IntSupplier;

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/2addr v4, v7

    .line 85
    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 86
    .line 87
    add-int/2addr v5, v4

    .line 88
    iget-object v6, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 89
    .line 90
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    add-int/2addr v6, v3

    .line 95
    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 96
    .line 97
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p5}, Lcom/android/systemui/plugins/qs/QSTileView;->setPosition(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 104
    .line 105
    .line 106
    add-int/lit8 p5, p5, 0x1

    .line 107
    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    div-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 34
    .line 35
    iget v2, v0, Lcom/android/systemui/qs/SecTileLayout;->height:I

    .line 36
    .line 37
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    .line 38
    .line 39
    iget-object v4, v0, Lcom/android/systemui/qs/SecTileLayout;->contextSupplier:Ljava/util/function/Supplier;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/content/Context;

    .line 46
    .line 47
    if-ge v2, v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const v5, 0x7f070eeb

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecTileLayout;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileExpandedHeight(Landroid/content/Context;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :goto_0
    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/systemui/qs/SecTileLayout;->cellHeightSupplier:Ljava/util/function/IntSupplier;

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    div-int v5, v2, v3

    .line 77
    .line 78
    iget-object v5, v0, Lcom/android/systemui/qs/SecTileLayout;->rowsSupplier:Ljava/util/function/IntSupplier;

    .line 79
    .line 80
    invoke-interface {v5}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    mul-int/2addr v3, v5

    .line 85
    sub-int/2addr v2, v3

    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    div-int/2addr v2, v5

    .line 89
    if-gez v2, :cond_2

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    :cond_2
    iput v2, v0, Lcom/android/systemui/qs/SecTileLayout;->tileVerticalMargin:I

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecTileLayout;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    const v3, 0x3c9d4952    # 0.0192f

    .line 103
    .line 104
    .line 105
    mul-float/2addr v2, v3

    .line 106
    float-to-int v2, v2

    .line 107
    mul-int/lit8 v3, v2, 0x2

    .line 108
    .line 109
    sub-int/2addr v1, v3

    .line 110
    iget-object v3, v0, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iget-object v0, v0, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    mul-int/2addr v0, v3

    .line 123
    sub-int/2addr v1, v0

    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    div-int/2addr v1, v3

    .line 127
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 128
    .line 129
    add-int/2addr v1, v2

    .line 130
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 131
    .line 132
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    .line 133
    .line 134
    const/high16 v1, 0x40000000    # 2.0f

    .line 135
    .line 136
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object v3, p0

    .line 147
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_4

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 158
    .line 159
    iget-object v5, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 160
    .line 161
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    const/16 v6, 0x8

    .line 166
    .line 167
    if-ne v5, v6, :cond_3

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 176
    .line 177
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 182
    .line 183
    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    goto :goto_1

    .line 191
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final removeAllViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

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
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

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
    check-cast p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

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

.method public final setMaxColumns()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 2
    .line 3
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQsTileColumn(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public updateResources()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f070c8c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 13
    .line 14
    const v1, 0x7f070c8e

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v4, 0x6

    .line 40
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/TileLayout;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 47
    .line 48
    iget-object v5, v0, Lcom/android/systemui/qs/SecTileLayout;->cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

    .line 49
    .line 50
    invoke-interface {v5}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    iput v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 57
    .line 58
    :cond_0
    sget-object v4, Lcom/android/systemui/qs/SecTileLayout$updateResources$1;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$updateResources$1;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/qs/SecTileLayout;->update(Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function2;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcom/android/systemui/qs/SecTileLayout$updateResources$2;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$updateResources$2;

    .line 64
    .line 65
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/qs/SecTileLayout;->update(Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function2;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/android/systemui/qs/SecTileLayout$updateResources$3;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$updateResources$3;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/qs/SecTileLayout;->update(Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function2;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/systemui/qs/SecTileLayout;->settingsHelper$delegate:Lkotlin/Lazy;

    .line 74
    .line 75
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/systemui/qs/SecTileLayout;->lastCellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v3, v0, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eq v1, v4, :cond_1

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    sget-object v1, Lcom/android/systemui/qs/SecTileLayout$updateResources$4;->INSTANCE:Lcom/android/systemui/qs/SecTileLayout$updateResources$4;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecTileLayout;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    iget-object v4, v0, Lcom/android/systemui/qs/SecTileLayout;->contextSupplier:Ljava/util/function/Supplier;

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/qs/SecTileLayout$updateResources$4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget-object v3, v0, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/4 v4, 0x0

    .line 138
    if-eq v3, v1, :cond_2

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/systemui/qs/SecTileLayout;->columnsConsumer:Ljava/util/function/IntConsumer;

    .line 141
    .line 142
    invoke-interface {v0, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 146
    .line 147
    .line 148
    move p0, v2

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    move p0, v4

    .line 151
    :goto_0
    if-eqz p0, :cond_3

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    move v2, v4

    .line 155
    :goto_1
    return v2
.end method
