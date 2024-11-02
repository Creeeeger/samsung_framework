.class public Lcom/android/systemui/qp/SubscreenPagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

.field public mDistributeTiles:Z

.field public mLastMaxHeight:I

.field public mLastMaxWidth:I

.field public mLayoutDirection:I

.field public mListening:Z

.field public final mOnPageChangeListener:Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;

.field public mPageHeight:I

.field public mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public mPageIndicatorPosition:F

.field public mPageToRestore:I

.field public final mPages:Ljava/util/ArrayList;

.field public final mTiles:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 20
    .line 21
    const/4 p2, -0x1

    .line 22
    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    .line 23
    .line 24
    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    .line 25
    .line 26
    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 27
    .line 28
    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    .line 29
    .line 30
    new-instance p2, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;-><init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mOnPageChangeListener:Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;-><init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCurrentItem()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->getCount()I

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

.method public final getTilesHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenTileLayout;->getTilesHeight()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isLayoutRtl()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SubscreenPagedTileLayout"

    .line 5
    .line 6
    const-string v1, "onFinishInflate"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f0d02e8

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    iput v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 7
    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    .line 10
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const-string v0, "onMeasure, heightMeasureSpec: "

    .line 15
    .line 16
    const-string v1, " mDistributeTiles: "

    .line 17
    .line 18
    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " mLastMaxHeight: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " mPageHeight: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " mLastMaxWidth: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " MeasureSpec.getSize: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "SubscreenPagedTileLayout"

    .line 74
    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 79
    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    .line 83
    .line 84
    iget v2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 85
    .line 86
    if-ne v0, v2, :cond_0

    .line 87
    .line 88
    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    .line 89
    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eq v0, v2, :cond_f

    .line 95
    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 104
    .line 105
    iget v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 106
    .line 107
    iput v3, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    .line 108
    .line 109
    iput v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    .line 110
    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    iget v4, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 133
    .line 134
    iget v5, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    .line 135
    .line 136
    div-int v5, v3, v5

    .line 137
    .line 138
    const/4 v5, 0x4

    .line 139
    iput v5, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 140
    .line 141
    const-string/jumbo v6, "updateMaxRowsAndColumns width: "

    .line 142
    .line 143
    .line 144
    const-string v7, " availableWidth: "

    .line 145
    .line 146
    const-string v8, " mColumns: "

    .line 147
    .line 148
    invoke-static {v6, v3, v7, v3, v8}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget v6, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 153
    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v6, " heightMeasureSpec: "

    .line 158
    .line 159
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const-string v6, "SubscreenTileLayout"

    .line 174
    .line 175
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    iget v7, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 183
    .line 184
    iget v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    .line 185
    .line 186
    add-int/2addr v8, v2

    .line 187
    div-int v8, v3, v8

    .line 188
    .line 189
    iput v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 190
    .line 191
    const-string/jumbo v8, "updateMaxRows before availableHeight: "

    .line 192
    .line 193
    .line 194
    const-string v9, " mRows: "

    .line 195
    .line 196
    invoke-static {v8, v3, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    iget v10, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 201
    .line 202
    invoke-static {v8, v10, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    .line 206
    .line 207
    iput v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 208
    .line 209
    const-string/jumbo v8, "updateMaxRows After availableHeight: "

    .line 210
    .line 211
    .line 212
    invoke-static {v8, v3, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 217
    .line 218
    invoke-static {v3, v8, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v3, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 222
    .line 223
    const/4 v6, 0x1

    .line 224
    if-eq v7, v3, :cond_1

    .line 225
    .line 226
    move v3, v6

    .line 227
    goto :goto_0

    .line 228
    :cond_1
    move v3, v2

    .line 229
    :goto_0
    if-nez v3, :cond_3

    .line 230
    .line 231
    iget v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 232
    .line 233
    if-eq v4, v0, :cond_2

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_2
    move v0, v2

    .line 237
    goto :goto_2

    .line 238
    :cond_3
    :goto_1
    move v0, v6

    .line 239
    :goto_2
    if-nez v0, :cond_4

    .line 240
    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 242
    .line 243
    if-eqz v0, :cond_e

    .line 244
    .line 245
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 260
    .line 261
    iget v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 262
    .line 263
    iget v3, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 264
    .line 265
    mul-int/2addr v4, v3

    .line 266
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    div-int v3, v0, v3

    .line 271
    .line 272
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 283
    .line 284
    iget v7, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 285
    .line 286
    iget v4, v4, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 287
    .line 288
    mul-int/2addr v7, v4

    .line 289
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    mul-int/2addr v4, v3

    .line 294
    if-le v0, v4, :cond_5

    .line 295
    .line 296
    add-int/lit8 v3, v3, 0x1

    .line 297
    .line 298
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    move v4, v2

    .line 305
    :goto_3
    if-ge v4, v0, :cond_6

    .line 306
    .line 307
    iget-object v7, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 314
    .line 315
    invoke-virtual {v7}, Lcom/android/systemui/qp/SubscreenTileLayout;->removeAllViews()V

    .line 316
    .line 317
    .line 318
    add-int/lit8 v4, v4, 0x1

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_6
    if-ne v0, v3, :cond_7

    .line 322
    .line 323
    goto/16 :goto_6

    .line 324
    .line 325
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-ge v4, v3, :cond_8

    .line 332
    .line 333
    const-string v4, "Adding page"

    .line 334
    .line 335
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    const v8, 0x7f0d02e8

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    iput v5, v7, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 361
    .line 362
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-le v4, v3, :cond_9

    .line 373
    .line 374
    const-string v4, "Removing page"

    .line 375
    .line 376
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    sub-int/2addr v5, v6

    .line 386
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    goto :goto_5

    .line 390
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 391
    .line 392
    if-eqz v3, :cond_a

    .line 393
    .line 394
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 401
    .line 402
    .line 403
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 404
    .line 405
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 406
    .line 407
    .line 408
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 409
    .line 410
    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_b

    .line 418
    .line 419
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    .line 420
    .line 421
    .line 422
    :cond_b
    iget v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    .line 423
    .line 424
    const/4 v4, -0x1

    .line 425
    if-eq v3, v4, :cond_c

    .line 426
    .line 427
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    .line 428
    .line 429
    .line 430
    iput v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    .line 431
    .line 432
    :cond_c
    const-string/jumbo v3, "pages count is changed ("

    .line 433
    .line 434
    .line 435
    const-string v4, " -> "

    .line 436
    .line 437
    invoke-static {v3, v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v3, " ), pageRestore="

    .line 451
    .line 452
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    .line 456
    .line 457
    invoke-static {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 467
    .line 468
    iget v3, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 469
    .line 470
    iget v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 471
    .line 472
    mul-int/2addr v3, v0

    .line 473
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    const-string v3, "Distributing tiles"

    .line 478
    .line 479
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 483
    .line 484
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    move v4, v2

    .line 489
    move v5, v4

    .line 490
    :goto_7
    if-ge v4, v3, :cond_e

    .line 491
    .line 492
    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 499
    .line 500
    iget-object v7, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 507
    .line 508
    iget-object v7, v7, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    if-ne v7, v0, :cond_d

    .line 515
    .line 516
    add-int/lit8 v5, v5, 0x1

    .line 517
    .line 518
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v8, "Adding "

    .line 521
    .line 522
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v8, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 526
    .line 527
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v8, " to "

    .line 539
    .line 540
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    iget-object v7, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 560
    .line 561
    invoke-virtual {v7, v6}, Lcom/android/systemui/qp/SubscreenTileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 562
    .line 563
    .line 564
    add-int/lit8 v4, v4, 0x1

    .line 565
    .line 566
    goto :goto_7

    .line 567
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 574
    .line 575
    iget v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 576
    .line 577
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    check-cast v1, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 584
    .line 585
    iget v1, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 586
    .line 587
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 594
    .line 595
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    iput v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    .line 600
    .line 601
    :goto_8
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-ge v2, v3, :cond_f

    .line 608
    .line 609
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 616
    .line 617
    iput v0, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    .line 618
    .line 619
    iput v1, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    .line 620
    .line 621
    iput v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    .line 622
    .line 623
    add-int/lit8 v2, v2, 0x1

    .line 624
    .line 625
    goto :goto_8

    .line 626
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 627
    .line 628
    .line 629
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

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

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mListening:Z

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mListening:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->updateListening()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/qs/SecPageIndicator;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-le p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 42
    .line 43
    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicatorPosition:F

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v0, 0x7f06087a

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const v1, 0x7f06087b

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 69
    .line 70
    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 71
    .line 72
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public final setSquishinessFraction()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

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
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_5

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 18
    .line 19
    iget v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    .line 20
    .line 21
    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    iput v5, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    .line 31
    .line 32
    iget-object v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/qp/SubscreenTileLayout;->layoutTileRecords(IZ)V

    .line 39
    .line 40
    .line 41
    iget-object v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 58
    .line 59
    iget-object v5, v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 60
    .line 61
    instance-of v6, v5, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    check-cast v5, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    .line 66
    .line 67
    iget v6, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    .line 68
    .line 69
    check-cast v5, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 70
    .line 71
    iget v7, v5, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 72
    .line 73
    cmpg-float v7, v7, v6

    .line 74
    .line 75
    if-nez v7, :cond_2

    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move v7, v1

    .line 80
    :goto_2
    if-eqz v7, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iput v6, v5, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    return-void
.end method

.method public final updateListening()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

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
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mListening:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qp/SubscreenTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/qp/SubscreenTileLayout;->updateResources()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    or-int/2addr v2, v3

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    .line 29
    .line 30
    iget v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v1, v3, :cond_1

    .line 34
    .line 35
    move v0, v4

    .line 36
    :cond_1
    or-int/2addr v0, v2

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return v0
.end method
