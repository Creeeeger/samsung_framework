.class public final Landroidx/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    move-object v1, p0

    .line 18
    :cond_1
    const/high16 v2, 0x42c80000    # 100.0f

    .line 19
    .line 20
    sget-object v3, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    const/high16 v4, -0x40800000    # -1.0f

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    iget p1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 26
    .line 27
    if-nez p2, :cond_8

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v6, 0x1

    .line 34
    if-ne p2, v6, :cond_5

    .line 35
    .line 36
    if-ne v1, p0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 46
    .line 47
    sub-int/2addr p2, v6

    .line 48
    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 49
    .line 50
    sub-int/2addr p2, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    :goto_0
    sub-int/2addr p2, v5

    .line 57
    cmpl-float v4, p1, v4

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    if-ne v1, p0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 71
    .line 72
    sub-int/2addr v4, v5

    .line 73
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 74
    .line 75
    sub-int/2addr v4, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    :goto_1
    int-to-float v4, v4

    .line 82
    mul-float/2addr v4, p1

    .line 83
    div-float/2addr v4, v2

    .line 84
    float-to-int p1, v4

    .line 85
    sub-int/2addr p2, p1

    .line 86
    :cond_4
    if-eq p0, v1, :cond_c

    .line 87
    .line 88
    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    check-cast p0, Landroid/view/ViewGroup;

    .line 91
    .line 92
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    iget p0, v3, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 98
    .line 99
    add-int p2, p0, p1

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    cmpl-float p2, p1, v4

    .line 103
    .line 104
    if-eqz p2, :cond_7

    .line 105
    .line 106
    if-ne v1, p0, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 116
    .line 117
    sub-int/2addr p2, v4

    .line 118
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 119
    .line 120
    sub-int/2addr p2, v4

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    :goto_2
    int-to-float p2, p2

    .line 127
    mul-float/2addr p2, p1

    .line 128
    div-float/2addr p2, v2

    .line 129
    float-to-int p1, p2

    .line 130
    add-int/2addr v5, p1

    .line 131
    :cond_7
    if-eq p0, v1, :cond_b

    .line 132
    .line 133
    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 134
    .line 135
    check-cast p0, Landroid/view/ViewGroup;

    .line 136
    .line 137
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 138
    .line 139
    .line 140
    iget p0, v3, Landroid/graphics/Rect;->left:I

    .line 141
    .line 142
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    cmpl-float p2, p1, v4

    .line 146
    .line 147
    if-eqz p2, :cond_a

    .line 148
    .line 149
    if-ne v1, p0, :cond_9

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 159
    .line 160
    sub-int/2addr p2, v4

    .line 161
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    .line 162
    .line 163
    sub-int/2addr p2, v4

    .line 164
    goto :goto_3

    .line 165
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    :goto_3
    int-to-float p2, p2

    .line 170
    mul-float/2addr p2, p1

    .line 171
    div-float/2addr p2, v2

    .line 172
    float-to-int p1, p2

    .line 173
    add-int/2addr v5, p1

    .line 174
    :cond_a
    if-eq p0, v1, :cond_b

    .line 175
    .line 176
    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 177
    .line 178
    check-cast p0, Landroid/view/ViewGroup;

    .line 179
    .line 180
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 181
    .line 182
    .line 183
    iget p0, v3, Landroid/graphics/Rect;->top:I

    .line 184
    .line 185
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 186
    .line 187
    :goto_4
    sub-int p2, p0, p1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_b
    move p2, v5

    .line 191
    :cond_c
    :goto_5
    return p2
.end method
