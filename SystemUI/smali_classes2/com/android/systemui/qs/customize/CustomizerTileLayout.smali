.class public Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBoundaryBox:Ljava/util/ArrayList;

.field public mCellHeight:I

.field public mCellWidth:I

.field public mCircle:Landroid/widget/FrameLayout;

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mColumns:I

.field public final mContext:Landroid/content/Context;

.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final mCustomTilesInfo:Ljava/util/ArrayList;

.field public mIsTopEdit:Z

.field public mMaxRows:I

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mShowLabel:Z

.field public mSidePadding:I

.field public mTileHorizontalMargin:I

.field public mTileVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    .line 7
    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static exactly(I)I
    .locals 1

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method


# virtual methods
.method public final addBackgroundBox(IILandroid/view/View$OnDragListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addBackgroundBox listener = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "row = "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "col = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "CustomizerTileLayout"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    mul-int/2addr p1, p2

    .line 38
    const/4 p2, 0x0

    .line 39
    move v0, p2

    .line 40
    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const v2, 0x7f0d02c0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/FrameLayout;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const p1, 0x7f070bc4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-direct {p3, p1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const v0, 0x7f0d02c1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/FrameLayout;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    const p2, 0x7f0a0862

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 119
    .line 120
    const/4 p2, 0x0

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tile = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tileInfo.isactive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    const-string v2, "CustomizerTileLayout"

    .line 2
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string v0, "is duplicated"

    .line 6
    invoke-static {p0, p1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;-><init>()V

    .line 8
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 9
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 11
    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 12
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 13
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 14
    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->isNewCustomTile:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->isNewCustomTile:Z

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object p1

    .line 16
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V
    .locals 10

    .line 79
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    const-string v1, "addTile position = "

    const-string/jumbo v2, "total = "

    const-string v3, "idx = "

    .line 80
    invoke-static {v1, p2, v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "withAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomizerTileLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 83
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string p2, "is duplicated"

    .line 85
    invoke-static {p0, p1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;-><init>()V

    .line 87
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 88
    iget-boolean v3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v3, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    const/4 v3, 0x0

    .line 89
    iput-boolean v3, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 90
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 91
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 92
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 93
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge p2, v0, :cond_2

    move v2, p2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-le v2, v4, :cond_2

    .line 94
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    iget-object v4, v4, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 95
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v9, 0x1

    aput v7, v6, v9

    const-string/jumbo v7, "x"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    filled-new-array {v6}, [Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v5, [F

    .line 96
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    aput v2, v5, v3

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    aput v2, v5, v9

    const-string/jumbo v2, "y"

    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    filled-new-array {v2}, [Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v2, v8

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x96

    .line 98
    invoke-virtual {p3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 99
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object p1

    .line 101
    iput-object p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public final createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createCustomizeTileView"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CustomizerTileLayout"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-boolean v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 27
    .line 28
    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;-><init>(Landroid/content/Context;ZLcom/android/systemui/qs/SecQSPanelResourcePicker;Z)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iget-boolean v3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 38
    .line 39
    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->customTileHandleStateChange(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->setClickable(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setScreenReaderFocusable(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 71
    .line 72
    .line 73
    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    .line 74
    .line 75
    iget-object v5, v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 76
    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/16 v2, 0x8

    .line 81
    .line 82
    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    new-instance v4, Lcom/android/systemui/qs/customize/CustomActionDelegate;

    .line 90
    .line 91
    invoke-direct {v4, v1}, Lcom/android/systemui/qs/customize/CustomActionDelegate;-><init>(Lcom/android/systemui/qs/customize/CustomActionView;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, v4, Lcom/android/systemui/qs/customize/CustomActionDelegate;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 104
    .line 105
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->addRemoveButton(Lcom/android/systemui/qs/customize/SecCustomizeTileView;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 109
    .line 110
    .line 111
    return-object v1
.end method

.method public final dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "dropTile tileInfo =  "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "CustomizerTileLayout"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "dropTile tileView =  "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/16 v1, 0x8

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    iget-object p2, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    :cond_2
    const/4 p2, 0x1

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->showRemoveIcon(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;
    .locals 2

    .line 1
    const-string v0, "getInfo position = "

    .line 2
    .line 3
    const-string v1, "CustomizerTileLayout"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    if-le p1, v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p1, "position is invalid position is  "

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move p1, v0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 32
    .line 33
    return-object p0
.end method

.method public final indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "CustomizerTileLayout"

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 19
    .line 20
    iget-object v3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, "diffInfo.spec = "

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " i = "

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string p0, "diffInfo.spec is null"

    .line 62
    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const/4 p0, -0x1

    .line 67
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string p0, "CustomizerTileLayout"

    .line 5
    .line 6
    const-string v0, "onAttachedToWindow()"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 p4, 0x1

    .line 11
    if-ne p2, p4, :cond_0

    .line 12
    .line 13
    move p2, p4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p2, p3

    .line 16
    :goto_0
    iget p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 19
    .line 20
    mul-int/2addr p5, v0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p5

    .line 31
    move v0, p3

    .line 32
    move v1, v0

    .line 33
    move v2, v1

    .line 34
    :goto_1
    if-ge v0, p5, :cond_4

    .line 35
    .line 36
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    sub-int/2addr v1, v3

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 56
    .line 57
    sub-int/2addr v4, v1

    .line 58
    sub-int/2addr v4, p4

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v4, v1

    .line 61
    :goto_2
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 62
    .line 63
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    .line 64
    .line 65
    add-int/2addr v6, v5

    .line 66
    mul-int/2addr v6, v4

    .line 67
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    .line 68
    .line 69
    add-int/2addr v6, v4

    .line 70
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 71
    .line 72
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    .line 73
    .line 74
    add-int/2addr v4, v7

    .line 75
    mul-int/2addr v4, v2

    .line 76
    add-int/2addr v4, v7

    .line 77
    add-int/2addr v5, v6

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 85
    .line 86
    .line 87
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 88
    .line 89
    add-int/2addr v7, v4

    .line 90
    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 91
    .line 92
    .line 93
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    move p5, p3

    .line 105
    move v0, p5

    .line 106
    move v1, v0

    .line 107
    :goto_3
    if-ge p5, p4, :cond_7

    .line 108
    .line 109
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 110
    .line 111
    if-ne v0, v2, :cond_5

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    sub-int/2addr v0, v2

    .line 116
    :cond_5
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 117
    .line 118
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    .line 119
    .line 120
    add-int/2addr v3, v2

    .line 121
    mul-int/2addr v3, v0

    .line 122
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    .line 123
    .line 124
    add-int/2addr v3, v4

    .line 125
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 126
    .line 127
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    .line 128
    .line 129
    add-int/2addr v4, v5

    .line 130
    mul-int/2addr v4, v1

    .line 131
    add-int/2addr v4, v5

    .line 132
    if-eqz p2, :cond_6

    .line 133
    .line 134
    sub-int v3, p1, v3

    .line 135
    .line 136
    sub-int v2, v3, v2

    .line 137
    .line 138
    move v8, v3

    .line 139
    move v3, v2

    .line 140
    move v2, v8

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    add-int/2addr v2, v3

    .line 143
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v5, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Landroid/widget/FrameLayout;

    .line 150
    .line 151
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 152
    .line 153
    add-int/2addr v6, v4

    .line 154
    invoke-virtual {v5, v3, v4, v2, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 155
    .line 156
    .line 157
    add-int/lit8 p5, p5, 0x1

    .line 158
    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 163
    .line 164
    const p2, 0x7f070bc3

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const p4, 0x7f070bc4

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    .line 175
    .line 176
    .line 177
    move-result p4

    .line 178
    sub-int/2addr p2, p4

    .line 179
    iget-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 180
    .line 181
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 182
    .line 183
    .line 184
    move-result p4

    .line 185
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    const v1, 0x3c9d4952    # 0.0192f

    .line 25
    .line 26
    .line 27
    mul-float/2addr v0, v1

    .line 28
    float-to-int v0, v0

    .line 29
    mul-int/lit8 v1, v0, 0x2

    .line 30
    .line 31
    sub-int/2addr p1, v1

    .line 32
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 35
    .line 36
    mul-int/2addr v1, v2

    .line 37
    sub-int/2addr p1, v1

    .line 38
    add-int/lit8 v1, v2, 0x1

    .line 39
    .line 40
    div-int/2addr p1, v1

    .line 41
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    .line 42
    .line 43
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 44
    .line 45
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 46
    .line 47
    mul-int/2addr v1, v3

    .line 48
    sub-int/2addr p2, v1

    .line 49
    add-int/lit8 v1, v3, 0x1

    .line 50
    .line 51
    div-int/2addr p2, v1

    .line 52
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-gez p2, :cond_0

    .line 56
    .line 57
    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    .line 58
    .line 59
    :cond_0
    add-int/2addr v0, p1

    .line 60
    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    .line 61
    .line 62
    mul-int/2addr v2, v3

    .line 63
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    move p2, v1

    .line 74
    :goto_0
    if-ge p2, p1, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/16 v3, 0x8

    .line 93
    .line 94
    if-ne v2, v3, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 98
    .line 99
    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 104
    .line 105
    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    :goto_2
    if-ge v1, p1, :cond_4

    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/widget/FrameLayout;

    .line 130
    .line 131
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 132
    .line 133
    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 138
    .line 139
    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {p2, v0, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 150
    .line 151
    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 152
    .line 153
    invoke-static {p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 158
    .line 159
    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-virtual {p1, p2, p0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final removeAllViews()V
    .locals 2

    .line 1
    const-string v0, "CustomizerTileLayout"

    .line 2
    .line 3
    const-string/jumbo v1, "removeAllViews clear"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 11
    .line 12
    mul-int/2addr v1, v2

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string/jumbo v2, "removeTile index = "

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "tile = "

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "CustomizerTileLayout"

    .line 36
    .line 37
    invoke-static {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 53
    .line 54
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 55
    .line 56
    .line 57
    move v3, v0

    .line 58
    :goto_0
    const/4 v4, 0x1

    .line 59
    add-int/lit8 v5, v1, -0x1

    .line 60
    .line 61
    if-ge v3, v5, :cond_1

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 64
    .line 65
    add-int/lit8 v6, v3, 0x1

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 74
    .line 75
    const/4 v7, 0x2

    .line 76
    new-array v8, v7, [F

    .line 77
    .line 78
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Landroid/widget/FrameLayout;

    .line 85
    .line 86
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    int-to-float v9, v9

    .line 91
    const/4 v10, 0x0

    .line 92
    aput v9, v8, v10

    .line 93
    .line 94
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Landroid/widget/FrameLayout;

    .line 101
    .line 102
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    int-to-float v9, v9

    .line 107
    aput v9, v8, v4

    .line 108
    .line 109
    const-string/jumbo v9, "x"

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    filled-new-array {v8}, [Landroid/animation/Animator;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {p2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 121
    .line 122
    .line 123
    new-array v7, v7, [F

    .line 124
    .line 125
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Landroid/widget/FrameLayout;

    .line 132
    .line 133
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    int-to-float v8, v8

    .line 138
    aput v8, v7, v10

    .line 139
    .line 140
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Landroid/widget/FrameLayout;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    int-to-float v3, v3

    .line 153
    aput v3, v7, v4

    .line 154
    .line 155
    const-string/jumbo v3, "y"

    .line 156
    .line 157
    .line 158
    invoke-static {v5, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 167
    .line 168
    .line 169
    move v3, v6

    .line 170
    goto :goto_0

    .line 171
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;

    .line 172
    .line 173
    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/SecCustomizeTileView;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    .line 178
    .line 179
    const-wide/16 p0, 0x96

    .line 180
    .line 181
    invoke-virtual {p2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    return-void
.end method

.method public final selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    :cond_2
    const-string/jumbo p2, "selectTile position = "

    .line 41
    .line 42
    .line 43
    const-string v1, "CustomizerTileLayout"

    .line 44
    .line 45
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 53
    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    const/high16 p1, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public final setCircleTranslation(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const v1, 0x7f0a0862

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    .line 28
    .line 29
    and-int/lit8 p2, p2, 0x30

    .line 30
    .line 31
    const/16 v3, 0x20

    .line 32
    .line 33
    if-ne p2, v3, :cond_0

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p2, v2

    .line 38
    :goto_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const p2, 0x7f0604e2

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const p2, 0x7f0604da

    .line 45
    .line 46
    .line 47
    :goto_1
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, p2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ne p2, v1, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const v4, 0x7f080f7e

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 90
    .line 91
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 92
    .line 93
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const v5, 0x7f070bb1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const v5, 0x7f070bb2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v3, v4, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/FrameLayout;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    int-to-float v0, v0

    .line 146
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Landroid/widget/FrameLayout;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    int-to-float p0, p0

    .line 164
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final showRemoveIcon(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 32
    .line 33
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x4

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final withDefaultDensity(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method
