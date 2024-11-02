.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final basicTextViewFocusedStrokeWidth:I

.field public final controlTopDownMargin:I

.field public final listMarginResize:I

.field public final subheaderSideMargin:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f07009f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f070055

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->basicTextViewFocusedStrokeWidth:I

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f07023e

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v2, 0x7f0701ee

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->listMarginResize:I

    .line 52
    .line 53
    sub-int/2addr p1, v0

    .line 54
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->subheaderSideMargin:I

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    mul-int/lit8 p1, p1, 0x2

    .line 65
    .line 66
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->controlTopDownMargin:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

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
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x1

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eq v5, v4, :cond_5

    .line 46
    .line 47
    :goto_1
    sget-boolean v5, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 48
    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-ne v5, v3, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    :goto_2
    move v5, v2

    .line 62
    goto :goto_4

    .line 63
    :cond_5
    :goto_3
    move v5, v4

    .line 64
    :goto_4
    iget v6, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->controlTopDownMargin:I

    .line 65
    .line 66
    if-eqz v5, :cond_6

    .line 67
    .line 68
    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 69
    .line 70
    goto :goto_8

    .line 71
    :cond_6
    if-nez v0, :cond_7

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_d

    .line 79
    .line 80
    iget v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->subheaderSideMargin:I

    .line 81
    .line 82
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->basicTextViewFocusedStrokeWidth:I

    .line 83
    .line 84
    sub-int/2addr v0, p0

    .line 85
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    if-lez p2, :cond_f

    .line 90
    .line 91
    iget-object p0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 92
    .line 93
    if-eqz p0, :cond_8

    .line 94
    .line 95
    add-int/2addr p2, p4

    .line 96
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_8
    if-nez v1, :cond_9

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eq p0, v4, :cond_b

    .line 112
    .line 113
    :goto_5
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 114
    .line 115
    if-eqz p0, :cond_c

    .line 116
    .line 117
    if-nez v1, :cond_a

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-ne p0, v3, :cond_c

    .line 125
    .line 126
    :cond_b
    move v2, v4

    .line 127
    :cond_c
    :goto_6
    if-eqz v2, :cond_f

    .line 128
    .line 129
    neg-int p0, v6

    .line 130
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_d
    :goto_7
    if-nez v0, :cond_e

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    const/4 p3, 0x5

    .line 141
    if-ne p2, p3, :cond_f

    .line 142
    .line 143
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$ControlsItemDecoration;->listMarginResize:I

    .line 144
    .line 145
    neg-int p0, p0

    .line 146
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 147
    .line 148
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 149
    .line 150
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 151
    .line 152
    :cond_f
    :goto_8
    return-void
.end method
