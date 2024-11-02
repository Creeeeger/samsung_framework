.class public final Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCornerPosition:I

.field public final mDeviceRadius:I

.field public final mPath:Landroid/graphics/Path;

.field public mRadius:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;


# direct methods
.method public static -$$Nest$mcalculateStartPos(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;Landroid/graphics/Point;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->$r8$clinit:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mHandleType:I

    .line 19
    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mIsHorizontalDivision:Z

    .line 23
    .line 24
    xor-int/2addr v1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 35
    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    move v1, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v2

    .line 41
    :goto_0
    const/4 v5, 0x3

    .line 42
    iget v6, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    .line 43
    .line 44
    if-eqz v1, :cond_8

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    if-ne v6, v5, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v1, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    move v1, v4

    .line 54
    :goto_2
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    div-int/2addr v1, v3

    .line 61
    iget v5, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 62
    .line 63
    div-int/2addr v5, v3

    .line 64
    add-int/2addr v5, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    div-int/2addr v1, v3

    .line 71
    iget v5, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 72
    .line 73
    div-int/2addr v5, v3

    .line 74
    sub-int/2addr v1, v5

    .line 75
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 76
    .line 77
    sub-int v5, v1, v3

    .line 78
    .line 79
    :goto_3
    iput v5, p1, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    if-ne v6, v4, :cond_5

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    move v4, v2

    .line 87
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 95
    .line 96
    sub-int v2, v0, p0

    .line 97
    .line 98
    :goto_5
    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 99
    .line 100
    goto :goto_a

    .line 101
    :cond_8
    if-eqz v6, :cond_a

    .line 102
    .line 103
    if-ne v6, v5, :cond_9

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_9
    move v1, v2

    .line 107
    goto :goto_7

    .line 108
    :cond_a
    :goto_6
    move v1, v4

    .line 109
    :goto_7
    if-eqz v1, :cond_b

    .line 110
    .line 111
    move v1, v2

    .line 112
    goto :goto_8

    .line 113
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iget v5, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 118
    .line 119
    sub-int/2addr v1, v5

    .line 120
    :goto_8
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 121
    .line 122
    if-eqz v6, :cond_c

    .line 123
    .line 124
    if-ne v6, v4, :cond_d

    .line 125
    .line 126
    :cond_c
    move v2, v4

    .line 127
    :cond_d
    if-eqz v2, :cond_e

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    div-int/2addr p0, v3

    .line 134
    iget v0, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 135
    .line 136
    div-int/2addr v0, v3

    .line 137
    add-int/2addr v0, p0

    .line 138
    goto :goto_9

    .line 139
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    div-int/2addr v1, v3

    .line 144
    iget v0, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 145
    .line 146
    div-int/2addr v0, v3

    .line 147
    sub-int/2addr v1, v0

    .line 148
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 149
    .line 150
    sub-int v0, v1, p0

    .line 151
    .line 152
    :goto_9
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 153
    .line 154
    :goto_a
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;-><init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;ILandroid/view/RoundedCorners;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;ILandroid/view/RoundedCorners;)V
    .locals 9

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mPath:Landroid/graphics/Path;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mDeviceRadius:I

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mNeedRadiusAnim:Z

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {p3, p2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    .line 10
    :cond_2
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    iget p3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float v7, p3

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v3, p1

    move v6, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 13
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :goto_3
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 14
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float v3, v3

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    if-eqz p2, :cond_6

    if-ne p2, v1, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    if-eqz v2, :cond_8

    .line 15
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float v4, p2

    :cond_8
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float p0, p0

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 16
    invoke-virtual {p3, v3, v4, p0, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 17
    sget-object p0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p1, p3, p0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method
