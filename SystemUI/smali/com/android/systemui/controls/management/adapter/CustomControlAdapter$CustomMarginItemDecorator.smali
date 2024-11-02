.class public final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final basicTextViewFocusedStrokeWidth:I

.field public final itemBottomMargin:I

.field public final structureStartMarginResize:I

.field public final zoneSideMarginResize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f07023e

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f0701ee

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v0, v1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v3, 0x7f07009f

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const v4, 0x7f070055

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->basicTextViewFocusedStrokeWidth:I

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const v4, 0x7f070097

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v1, v0

    .line 63
    iput v1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->zoneSideMarginResize:I

    .line 64
    .line 65
    sub-int/2addr v3, v0

    .line 66
    iput v3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->structureStartMarginResize:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    mul-int/lit8 p1, p1, 0x2

    .line 77
    .line 78
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->itemBottomMargin:I

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 p4, -0x1

    .line 9
    if-ne p2, p4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v1

    .line 27
    :goto_0
    const/4 v2, 0x0

    .line 28
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    const/16 v3, 0x67

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eq v5, v4, :cond_5

    .line 47
    .line 48
    :goto_1
    sget-boolean v5, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 49
    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-ne v5, v3, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    move v5, v2

    .line 63
    goto :goto_4

    .line 64
    :cond_5
    :goto_3
    move v5, v4

    .line 65
    :goto_4
    iget v6, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->itemBottomMargin:I

    .line 66
    .line 67
    if-eqz v5, :cond_6

    .line 68
    .line 69
    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    goto :goto_9

    .line 72
    :cond_6
    iget v5, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->zoneSideMarginResize:I

    .line 73
    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const/16 v8, 0x65

    .line 82
    .line 83
    if-ne v7, v8, :cond_8

    .line 84
    .line 85
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->structureStartMarginResize:I

    .line 86
    .line 87
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_8
    :goto_5
    if-nez v0, :cond_9

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_a

    .line 100
    .line 101
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;->basicTextViewFocusedStrokeWidth:I

    .line 102
    .line 103
    sub-int/2addr v5, p0

    .line 104
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    :cond_a
    :goto_6
    if-lez p2, :cond_10

    .line 109
    .line 110
    iget-object p0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 111
    .line 112
    if-eqz p0, :cond_b

    .line 113
    .line 114
    add-int/2addr p2, p4

    .line 115
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :cond_b
    if-nez v1, :cond_c

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eq p0, v4, :cond_e

    .line 131
    .line 132
    :goto_7
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 133
    .line 134
    if-eqz p0, :cond_f

    .line 135
    .line 136
    if-nez v1, :cond_d

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-ne p0, v3, :cond_f

    .line 144
    .line 145
    :cond_e
    move v2, v4

    .line 146
    :cond_f
    :goto_8
    if-eqz v2, :cond_10

    .line 147
    .line 148
    neg-int p0, v6

    .line 149
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 150
    .line 151
    :cond_10
    :goto_9
    return-void
.end method
