.class public final Landroidx/leanback/widget/SingleRow;
.super Landroidx/leanback/widget/Grid;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTmpLocation:Landroidx/leanback/widget/Grid$Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/Grid$Location;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/leanback/widget/Grid$Location;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Grid;->setNumRows(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final appendVisibleItems(IZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForAppend()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    move v2, v1

    .line 27
    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 28
    .line 29
    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ge v0, v3, :cond_8

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 38
    .line 39
    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v3, v4, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 49
    .line 50
    if-ltz v5, :cond_4

    .line 51
    .line 52
    iget v5, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 53
    .line 54
    if-gez v5, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 62
    .line 63
    add-int/lit8 v6, v0, -0x1

    .line 64
    .line 65
    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 72
    .line 73
    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 74
    .line 75
    invoke-virtual {v7, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    sub-int/2addr v5, v6

    .line 80
    iget v6, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 81
    .line 82
    sub-int/2addr v5, v6

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 85
    .line 86
    add-int/lit8 v6, v0, -0x1

    .line 87
    .line 88
    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 95
    .line 96
    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 97
    .line 98
    invoke-virtual {v7, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/2addr v6, v5

    .line 103
    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 104
    .line 105
    add-int/2addr v5, v6

    .line 106
    :goto_1
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    :goto_2
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 110
    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    const v5, 0x7fffffff

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    const/high16 v5, -0x80000000

    .line 118
    .line 119
    :goto_3
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 120
    .line 121
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 122
    .line 123
    :goto_4
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 124
    .line 125
    aget-object v4, v4, v1

    .line 126
    .line 127
    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 128
    .line 129
    invoke-virtual {v6, v4, v2, v1, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    .line 130
    .line 131
    .line 132
    if-nez p2, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    move v2, v3

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    :goto_5
    move v2, v3

    .line 146
    :cond_8
    return v2
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-lez p2, :cond_3

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-gez p2, :cond_3

    .line 9
    .line 10
    :goto_0
    iget p2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 20
    .line 21
    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 22
    .line 23
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 30
    .line 31
    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    neg-int p0, p0

    .line 37
    :goto_1
    add-int/2addr v0, p0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    iget p2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 42
    .line 43
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    if-ne p2, v0, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForAppend()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 59
    .line 60
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 61
    .line 62
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 69
    .line 70
    add-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 72
    .line 73
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 74
    .line 75
    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-boolean p0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 82
    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    neg-int v0, v0

    .line 86
    :cond_5
    add-int/2addr v0, v1

    .line 87
    :goto_2
    sub-int/2addr v0, p1

    .line 88
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {p3, p2, p0}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->addPosition(II)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final findRowMax(IZ[I)I
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    aput p2, p3, p2

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    aput p1, p3, p2

    .line 8
    .line 9
    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 14
    .line 15
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 23
    .line 24
    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 31
    .line 32
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, p2

    .line 39
    :goto_0
    return p0
.end method

.method public final findRowMin(IZ[I)I
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    aput p2, p3, p2

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    aput p1, p3, p2

    .line 8
    .line 9
    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 14
    .line 15
    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 22
    .line 23
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    sub-int/2addr p2, p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 32
    .line 33
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    :goto_0
    return p2
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iput v1, v0, Landroidx/collection/CircularIntArray;->tail:I

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 12
    .line 13
    aget-object p1, p1, v1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStartIndexForAppend()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 14
    .line 15
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 p0, p0, -0x1

    .line 22
    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final getStartIndexForPrepend()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 14
    .line 15
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 p0, p0, -0x1

    .line 22
    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 29
    .line 30
    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/lit8 p0, p0, -0x1

    .line 37
    .line 38
    return p0
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 23
    .line 24
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 27
    .line 28
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    move v3, v1

    .line 35
    :goto_0
    if-lt v2, v0, :cond_7

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 38
    .line 39
    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v3, v2, v1, v4, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 48
    .line 49
    if-ltz v5, :cond_4

    .line 50
    .line 51
    iget v5, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 52
    .line 53
    if-gez v5, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 61
    .line 62
    add-int/lit8 v6, v2, 0x1

    .line 63
    .line 64
    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iget v6, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 71
    .line 72
    add-int/2addr v5, v6

    .line 73
    add-int/2addr v5, v3

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 76
    .line 77
    add-int/lit8 v6, v2, 0x1

    .line 78
    .line 79
    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget v6, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    .line 86
    .line 87
    sub-int/2addr v5, v6

    .line 88
    sub-int/2addr v5, v3

    .line 89
    :goto_1
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    :goto_2
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    .line 93
    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    const/high16 v5, -0x80000000

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const v5, 0x7fffffff

    .line 100
    .line 101
    .line 102
    :goto_3
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 103
    .line 104
    iput v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 105
    .line 106
    :goto_4
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 107
    .line 108
    aget-object v4, v4, v1

    .line 109
    .line 110
    check-cast v6, Landroidx/leanback/widget/GridLayoutManager$2;

    .line 111
    .line 112
    invoke-virtual {v6, v4, v3, v1, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(Ljava/lang/Object;III)V

    .line 113
    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-nez p2, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    :goto_5
    return v3
.end method
