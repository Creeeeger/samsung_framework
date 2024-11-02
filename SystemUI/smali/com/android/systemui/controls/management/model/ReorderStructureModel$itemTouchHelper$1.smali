.class public final Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final MOVEMENT:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/model/ReorderStructureModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    iput p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->MOVEMENT:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->MOVEMENT:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    int-to-float v4, v4

    .line 14
    add-float/2addr v4, v1

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    int-to-float v5, v5

    .line 20
    add-float/2addr v5, v4

    .line 21
    const v6, 0x7f0a08b3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    move-object/from16 v6, p0

    .line 31
    .line 32
    iget-object v7, v6, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 33
    .line 34
    iget-boolean v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->isDragging:Z

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    const/4 v10, -0x1

    .line 38
    const/4 v11, 0x0

    .line 39
    if-eqz v8, :cond_0

    .line 40
    .line 41
    iget v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    .line 42
    .line 43
    if-ne v8, v10, :cond_0

    .line 44
    .line 45
    float-to-double v12, v0

    .line 46
    float-to-double v14, v1

    .line 47
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    double-to-float v8, v12

    .line 52
    cmpg-float v8, v11, v8

    .line 53
    .line 54
    if-gez v8, :cond_0

    .line 55
    .line 56
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    iput v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    .line 61
    .line 62
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const v8, 0x7f07009d

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_0
    iget-boolean v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->isDragging:Z

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    cmpg-float v8, v0, v11

    .line 86
    .line 87
    if-nez v8, :cond_1

    .line 88
    .line 89
    move v8, v9

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move v8, v12

    .line 92
    :goto_0
    if-eqz v8, :cond_5

    .line 93
    .line 94
    cmpg-float v8, v1, v11

    .line 95
    .line 96
    if-nez v8, :cond_2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v9, v12

    .line 100
    :goto_1
    if-eqz v9, :cond_5

    .line 101
    .line 102
    :cond_3
    iget v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    .line 103
    .line 104
    if-eq v8, v10, :cond_4

    .line 105
    .line 106
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iput v10, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    .line 113
    .line 114
    :cond_5
    :goto_2
    cmpl-float v3, v4, v11

    .line 115
    .line 116
    if-lez v3, :cond_6

    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    int-to-float v3, v3

    .line 123
    cmpg-float v3, v5, v3

    .line 124
    .line 125
    if-gez v3, :cond_6

    .line 126
    .line 127
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    .line 12
    .line 13
    if-ge p1, p2, :cond_0

    .line 14
    .line 15
    move v1, p1

    .line 16
    :goto_0
    if-ge v1, p2, :cond_1

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 21
    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 26
    .line 27
    if-gt v1, p1, :cond_1

    .line 28
    .line 29
    move v2, p1

    .line 30
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .line 31
    .line 32
    invoke-static {v0, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 33
    .line 34
    .line 35
    if-eq v2, v1, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->isDragging:Z

    .line 13
    .line 14
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method
