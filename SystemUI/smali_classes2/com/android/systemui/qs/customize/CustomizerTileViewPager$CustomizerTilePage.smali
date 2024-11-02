.class public Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;
.super Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerTileViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizerTilePage"
.end annotation


# instance fields
.field public mCurrentRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final isFull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 10
    .line 11
    mul-int/2addr v1, p0

    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final updateResources()Z
    .locals 5

    .line 1
    const-string v0, "CSTMPagedTileLayout"

    .line 2
    .line 3
    const-string/jumbo v1, "updateResources 2"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 16
    .line 17
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    const v3, 0x7f070bc2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 44
    .line 45
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    .line 46
    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    const-class v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileExpandedWidth(Landroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 78
    .line 79
    if-le v4, v3, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move v3, v4

    .line 83
    :goto_2
    iput v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 84
    .line 85
    :cond_4
    const v3, 0x7f070bc3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    .line 93
    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    const v4, 0x7f070bc5

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move v4, v2

    .line 105
    :goto_3
    add-int/2addr v3, v4

    .line 106
    iput v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    move v1, v2

    .line 112
    :goto_4
    return v1
.end method
