.class public Lcom/android/systemui/qs/customize/CustomizerTileViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

.field public mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mColumns:I

.field public final mContext:Landroid/content/Context;

.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

.field public mDragListener:Landroid/view/View$OnDragListener;

.field public mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

.field public mInitialPagenum:I

.field public mIsAvailableArea:Z

.field public mIsMultiTouch:Z

.field public mIsTopEdit:Z

.field public mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

.field public mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public mPageIndicatorPosition:F

.field public final mPages:Ljava/util/ArrayList;

.field public mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field public mRows:I

.field public mShowLabel:Z

.field public final mTiles:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsAvailableArea:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    .line 29
    .line 30
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 42
    .line 43
    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->updateResources()Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 75
    .line 76
    .line 77
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 80
    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    const p2, 0x3c9d4952    # 0.0192f

    .line 93
    .line 94
    .line 95
    mul-float/2addr p1, p2

    .line 96
    float-to-int p2, p1

    .line 97
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final addPage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d02ca

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    .line 18
    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 26
    .line 27
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 28
    .line 29
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 34
    .line 35
    iput v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    .line 36
    .line 37
    :cond_0
    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 38
    .line 39
    iput v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 40
    .line 41
    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    .line 42
    .line 43
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->updateResources()Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 78
    .line 79
    int-to-float v0, v0

    .line 80
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addTile: "

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
    const-string v1, "CSTMPagedTileLayout"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sget v2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->LARGE_POS:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-lt p2, v2, :cond_0

    .line 35
    .line 36
    move v5, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v5, v3

    .line 39
    :goto_0
    if-eqz v5, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sub-int/2addr v0, v4

    .line 48
    if-gez v0, :cond_1

    .line 49
    .line 50
    move v0, v3

    .line 51
    :cond_1
    mul-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    if-ge p2, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eq v2, v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 62
    .line 63
    .line 64
    :cond_2
    sub-int/2addr v1, v4

    .line 65
    :goto_1
    if-lt v1, v0, :cond_6

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->isFull()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    sub-int/2addr v2, v4

    .line 88
    if-ne v1, v2, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addPage()V

    .line 91
    .line 92
    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    sget v2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->LARGE_POS:I

    .line 96
    .line 97
    mul-int/lit8 v2, v2, 0x2

    .line 98
    .line 99
    if-ge p2, v2, :cond_3

    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    add-int/lit8 v6, v6, -0x1

    .line 122
    .line 123
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 128
    .line 129
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 130
    .line 131
    add-int/lit8 v7, v1, 0x1

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 138
    .line 139
    invoke-virtual {v6, v2, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 140
    .line 141
    .line 142
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 149
    .line 150
    invoke-virtual {v6, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 161
    .line 162
    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    add-int/lit8 v6, v6, -0x1

    .line 169
    .line 170
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 175
    .line 176
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 177
    .line 178
    add-int/lit8 v7, v1, 0x1

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 185
    .line 186
    invoke-virtual {v6, v2, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 187
    .line 188
    .line 189
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 196
    .line 197
    invoke-virtual {v6, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 198
    .line 199
    .line 200
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 211
    .line 212
    invoke-virtual {v1, p1, p2, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 222
    .line 223
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final addTiles(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " tiles added"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "CSTMPagedTileLayout"

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsAvailableArea:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final distributeTiles()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeAllViews()V

    .line 19
    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->makePage()Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    move v3, v0

    .line 34
    move v4, v3

    .line 35
    :goto_0
    if-ge v3, v1, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->isFull()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ne v4, v6, :cond_1

    .line 68
    .line 69
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->makePage()Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 85
    .line 86
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    if-eq v1, v4, :cond_5

    .line 104
    .line 105
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-ge v4, v1, :cond_3

    .line 112
    .line 113
    const-string v1, "CSTMPagedTileLayout"

    .line 114
    .line 115
    const-string v2, "mPages.remove"

    .line 116
    .line 117
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    add-int/lit8 v2, v2, -0x1

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 133
    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 151
    .line 152
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 156
    .line 157
    .line 158
    :cond_5
    move v1, v0

    .line 159
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ge v1, v2, :cond_6

    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 174
    .line 175
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 176
    .line 177
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 178
    .line 179
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    .line 180
    .line 181
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 188
    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 198
    .line 199
    .line 200
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 208
    .line 209
    .line 210
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    .line 211
    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 216
    .line 217
    if-eqz v1, :cond_a

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 226
    .line 227
    if-nez p0, :cond_8

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    :goto_3
    if-ge v0, v2, :cond_a

    .line 238
    .line 239
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iget v4, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mRemoveIconId:I

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-nez v3, :cond_9

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_9
    const/high16 v4, 0x3f000000    # 0.5f

    .line 253
    .line 254
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 258
    .line 259
    .line 260
    const/4 v4, 0x0

    .line 261
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    const/high16 v4, 0x3f800000    # 1.0f

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    const-wide/16 v4, 0xc8

    .line 283
    .line 284
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 293
    .line 294
    .line 295
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_a
    :goto_5
    return-void
.end method

.method public final getColumnCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 20
    .line 21
    return p0
.end method

.method public final getCurrentItem()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    sub-int v0, p0, v0

    .line 22
    .line 23
    :cond_0
    return v0
.end method

.method public final getMinimumTileNum()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 50
    .line 51
    mul-int/2addr v1, v2

    .line 52
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 53
    .line 54
    mul-int/2addr v1, p0

    .line 55
    add-int/2addr v1, v0

    .line 56
    return v1
.end method

.method public final getRightFadingEdgeStrength()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public final getSpec()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "newspecs =  "

    .line 53
    .line 54
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "CSTMPagedTileLayout"

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public final getTiledPageIndex(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x1

    .line 8
    move v1, v0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ltz v2, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    return v0
.end method

.method public final getTilesInfo()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 56
    .line 57
    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final makePage()Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d02ca

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    .line 18
    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 26
    .line 27
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 28
    .line 29
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 34
    .line 35
    iput v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    .line 36
    .line 37
    :cond_0
    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 38
    .line 39
    iput v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    .line 42
    .line 43
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 46
    .line 47
    iput-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->updateResources()Z

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final movePage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;I)V
    .locals 13

    .line 1
    iget v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0xcc

    .line 6
    .line 7
    if-ne v0, v3, :cond_1

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v1

    .line 19
    :goto_0
    sub-int/2addr v4, v2

    .line 20
    if-lt p2, v4, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    if-gtz p2, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    if-ne v0, v3, :cond_3

    .line 27
    .line 28
    move v8, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 v4, -0x1

    .line 31
    move v8, v4

    .line 32
    :goto_1
    if-ne v0, v3, :cond_4

    .line 33
    .line 34
    move v4, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 41
    .line 42
    mul-int/2addr v4, v5

    .line 43
    sub-int/2addr v4, v2

    .line 44
    :goto_2
    if-ne v0, v3, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 51
    .line 52
    mul-int/2addr v0, v3

    .line 53
    sub-int/2addr v0, v2

    .line 54
    move v12, v0

    .line 55
    goto :goto_3

    .line 56
    :cond_5
    move v12, v1

    .line 57
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 62
    .line 63
    mul-int/2addr v0, v3

    .line 64
    sub-int/2addr v0, v2

    .line 65
    add-int v9, p2, v8

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    if-nez v11, :cond_6

    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 89
    .line 90
    invoke-virtual {v3, v11, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 91
    .line 92
    .line 93
    iget-object v10, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 102
    .line 103
    invoke-virtual {p1, v10, v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 113
    .line 114
    invoke-virtual {p1, v10, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    move-object v5, p1

    .line 120
    move-object v6, p0

    .line 121
    move v7, p2

    .line 122
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;IIILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 123
    .line 124
    .line 125
    const-wide/16 v0, 0xd2

    .line 126
    .line 127
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTiledPageIndex(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "moveTile: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", pageIndex="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "CSTMPagedTileLayout"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 37
    .line 38
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 39
    .line 40
    mul-int/2addr v2, v3

    .line 41
    div-int v3, p2, v2

    .line 42
    .line 43
    rem-int/2addr p2, v2

    .line 44
    const/4 v2, 0x0

    .line 45
    if-le v0, v3, :cond_1

    .line 46
    .line 47
    move v4, v3

    .line 48
    :goto_0
    if-ge v4, v0, :cond_3

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 57
    .line 58
    iget-object v5, v5, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    add-int/2addr v6, v1

    .line 65
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 72
    .line 73
    add-int/lit8 v7, v4, 0x1

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 80
    .line 81
    invoke-virtual {v6, v5, v2, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 82
    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 91
    .line 92
    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 93
    .line 94
    .line 95
    move v4, v7

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v1, v0

    .line 98
    :goto_1
    if-ge v1, v3, :cond_3

    .line 99
    .line 100
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 101
    .line 102
    add-int/lit8 v5, v1, 0x1

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 109
    .line 110
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-nez v4, :cond_2

    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 135
    .line 136
    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 137
    .line 138
    .line 139
    move v1, v5

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 148
    .line 149
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0x7f0a084d

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsAvailableArea:Z

    .line 29
    .line 30
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeAllViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeAllViews()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final removePage()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    int-to-float v1, v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTiledPageIndex(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "removeTile: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", pageIndex="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "CSTMPagedTileLayout"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    move v3, v0

    .line 44
    :goto_0
    add-int/lit8 v4, v2, -0x1

    .line 45
    .line 46
    if-ge v3, v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 49
    .line 50
    add-int/lit8 v5, v3, 0x1

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 84
    .line 85
    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_2

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removePage()V

    .line 105
    .line 106
    .line 107
    :cond_2
    move v3, v5

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_4

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removePage()V

    .line 140
    .line 141
    .line 142
    :cond_4
    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    sub-int p1, v0, p1

    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final updateResources()Z
    .locals 7

    .line 1
    const-string v0, "CSTMPagedTileLayout"

    .line 2
    .line 3
    const-string/jumbo v1, "updateResources"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v1, v3, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 27
    .line 28
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 29
    .line 30
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    iget v6, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 40
    .line 41
    iput v6, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    .line 42
    .line 43
    :cond_0
    iput v4, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 44
    .line 45
    iput v5, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 54
    .line 55
    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    .line 56
    .line 57
    iput-boolean v4, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->updateResources()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    or-int/2addr v2, v3

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    if-eqz v2, :cond_4

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ge v0, v1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mTiles:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeAllViews()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->distributeTiles()V

    .line 129
    .line 130
    .line 131
    :cond_4
    const/4 p0, 0x1

    .line 132
    return p0
.end method
