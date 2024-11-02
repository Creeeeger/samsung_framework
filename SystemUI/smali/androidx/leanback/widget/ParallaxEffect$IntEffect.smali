.class public final Landroidx/leanback/widget/ParallaxEffect$IntEffect;
.super Landroidx/leanback/widget/ParallaxEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/ParallaxEffect;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final calculateFraction(Landroidx/leanback/widget/Parallax;)F
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    .line 6
    .line 7
    check-cast v4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/high16 v6, 0x3f800000    # 1.0f

    .line 14
    .line 15
    if-ge v0, v5, :cond_7

    .line 16
    .line 17
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;

    .line 22
    .line 23
    iget-object v5, v4, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;->mProperty:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Landroidx/leanback/widget/Parallax$IntProperty;

    .line 26
    .line 27
    iget v5, v5, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    .line 28
    .line 29
    invoke-virtual {v4, p1}, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroidx/leanback/widget/Parallax;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v7, p1, Landroidx/leanback/widget/Parallax;->mValues:[I

    .line 34
    .line 35
    aget v7, v7, v5

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    if-lt v7, v4, :cond_6

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_0
    if-ne v1, v5, :cond_2

    .line 44
    .line 45
    if-lt v2, v4, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string/jumbo p1, "marker value of same variable must be descendant order"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    :goto_1
    const v8, 0x7fffffff

    .line 58
    .line 59
    .line 60
    if-ne v7, v8, :cond_3

    .line 61
    .line 62
    sub-int/2addr v2, v3

    .line 63
    int-to-float v1, v2

    .line 64
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    div-float/2addr v1, p1

    .line 69
    invoke-virtual {p0, v1, v0}, Landroidx/leanback/widget/ParallaxEffect;->getFractionWithWeightAdjusted(FI)F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0

    .line 74
    :cond_3
    if-lt v7, v4, :cond_6

    .line 75
    .line 76
    if-ne v1, v5, :cond_4

    .line 77
    .line 78
    sub-int p1, v2, v7

    .line 79
    .line 80
    int-to-float p1, p1

    .line 81
    sub-int/2addr v2, v4

    .line 82
    int-to-float v1, v2

    .line 83
    div-float/2addr p1, v1

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/high16 v1, -0x80000000

    .line 86
    .line 87
    if-eq v3, v1, :cond_5

    .line 88
    .line 89
    sub-int p1, v7, v3

    .line 90
    .line 91
    add-int/2addr p1, v2

    .line 92
    sub-int v1, p1, v7

    .line 93
    .line 94
    int-to-float v1, v1

    .line 95
    sub-int/2addr p1, v4

    .line 96
    int-to-float p1, p1

    .line 97
    div-float p1, v1, p1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    sub-int/2addr v7, v4

    .line 101
    int-to-float v1, v7

    .line 102
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    div-float/2addr v1, p1

    .line 107
    sub-float p1, v6, v1

    .line 108
    .line 109
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ParallaxEffect;->getFractionWithWeightAdjusted(FI)F

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    move v2, v4

    .line 117
    move v1, v5

    .line 118
    move v3, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    return v6
.end method
