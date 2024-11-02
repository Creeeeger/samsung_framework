.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final DEFAULT_POS:I

.field public final MOVEMENT:I

.field public dragPos:I

.field public needToCheckAppBar:Z

.field public startDrag:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    .line 11
    .line 12
    const/16 p1, 0xf

    .line 13
    .line 14
    iput p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->MOVEMENT:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/systemui/controls/management/model/MainModel;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v2, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    move v0, p1

    .line 36
    :goto_0
    if-lez v0, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 51
    .line 52
    if-ne v2, v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x1

    .line 64
    sub-int/2addr v2, v3

    .line 65
    if-ge p1, v2, :cond_3

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 80
    .line 81
    if-ne v2, v4, :cond_3

    .line 82
    .line 83
    add-int/lit8 p1, p1, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 99
    .line 100
    if-ne v2, v4, :cond_4

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-ne p0, v4, :cond_5

    .line 117
    .line 118
    add-int/lit8 p1, p1, -0x1

    .line 119
    .line 120
    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-gt v0, p0, :cond_6

    .line 125
    .line 126
    if-gt p0, p1, :cond_6

    .line 127
    .line 128
    move v1, v3

    .line 129
    :cond_6
    return v1
.end method

.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    .line 6
    .line 7
    return-void
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/controls/management/model/MainModel;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 37
    .line 38
    if-ne v3, v4, :cond_5

    .line 39
    .line 40
    :cond_1
    sget-boolean v3, Lcom/android/systemui/BasicRune;->CONTROLS_REQUEST_UNLOCK_WHEN_LONG_PRESSED_CARD:Z

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    iget-object v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSecureLocked()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "lockscreen_show_controls"

    .line 62
    .line 63
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v3, v1

    .line 72
    :goto_0
    if-eqz v3, :cond_3

    .line 73
    .line 74
    const-string p0, "MainControlAdapter"

    .line 75
    .line 76
    const-string/jumbo p1, "request DismissKeyguard"

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const-string p0, "keyguard"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroid/app/KeyguardManager;

    .line 89
    .line 90
    check-cast v0, Landroid/app/Activity;

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 94
    .line 95
    .line 96
    return v2

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v0, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    .line 102
    .line 103
    if-ne p1, v0, :cond_4

    .line 104
    .line 105
    return v2

    .line 106
    :cond_4
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->MOVEMENT:I

    .line 107
    .line 108
    invoke-static {p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :cond_5
    return v2
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 8
    .line 9
    .line 10
    sget-boolean v3, Lcom/android/systemui/BasicRune;->CONTROLS_CARD_REORDER_DIM:Z

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    iget-object v5, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move-object/from16 v7, p3

    .line 17
    .line 18
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v3, :cond_11

    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v9, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    .line 35
    .line 36
    iget v10, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    if-ne v9, v10, :cond_6

    .line 40
    .line 41
    int-to-float v3, v3

    .line 42
    float-to-double v12, v1

    .line 43
    float-to-double v14, v2

    .line 44
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 45
    .line 46
    .line 47
    move-result-wide v12

    .line 48
    double-to-float v9, v12

    .line 49
    cmpg-float v3, v3, v9

    .line 50
    .line 51
    if-gez v3, :cond_6

    .line 52
    .line 53
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iput v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    .line 58
    .line 59
    iget-object v7, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    instance-of v7, v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 66
    .line 67
    if-eqz v7, :cond_0

    .line 68
    .line 69
    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v3, 0x0

    .line 73
    :goto_0
    if-eqz v3, :cond_d

    .line 74
    .line 75
    iget-object v7, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 76
    .line 77
    new-instance v9, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_2

    .line 91
    .line 92
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    instance-of v12, v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 97
    .line 98
    if-eqz v12, :cond_1

    .line 99
    .line 100
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_4

    .line 118
    .line 119
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    move-object v12, v10

    .line 124
    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 125
    .line 126
    iget-object v12, v12, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v13, v3, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    xor-int/2addr v12, v4

    .line 135
    if-eqz v12, :cond_3

    .line 136
    .line 137
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_5

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 156
    .line 157
    iput-boolean v4, v7, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    iget-object v3, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    sget-object v7, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    .line 167
    .line 168
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 169
    .line 170
    invoke-virtual {v9, v6, v3, v7}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_6
    cmpg-float v3, v1, v11

    .line 175
    .line 176
    if-nez v3, :cond_7

    .line 177
    .line 178
    move v3, v4

    .line 179
    goto :goto_4

    .line 180
    :cond_7
    move v3, v6

    .line 181
    :goto_4
    if-eqz v3, :cond_d

    .line 182
    .line 183
    cmpg-float v3, v2, v11

    .line 184
    .line 185
    if-nez v3, :cond_8

    .line 186
    .line 187
    move v3, v4

    .line 188
    goto :goto_5

    .line 189
    :cond_8
    move v3, v6

    .line 190
    :goto_5
    if-eqz v3, :cond_d

    .line 191
    .line 192
    iget v3, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    .line 193
    .line 194
    if-eq v3, v10, :cond_c

    .line 195
    .line 196
    iget-object v3, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 197
    .line 198
    new-instance v7, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :cond_9
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_a

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    instance-of v12, v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 218
    .line 219
    if-eqz v12, :cond_9

    .line 220
    .line 221
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_b

    .line 234
    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    check-cast v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 240
    .line 241
    iput-boolean v6, v7, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_b
    iget-object v3, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    sget-object v7, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    .line 251
    .line 252
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 253
    .line 254
    invoke-virtual {v9, v6, v3, v7}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_c
    iput v10, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    .line 258
    .line 259
    :cond_d
    :goto_8
    cmpg-float v1, v1, v11

    .line 260
    .line 261
    if-nez v1, :cond_e

    .line 262
    .line 263
    move v1, v4

    .line 264
    goto :goto_9

    .line 265
    :cond_e
    move v1, v6

    .line 266
    :goto_9
    if-eqz v1, :cond_10

    .line 267
    .line 268
    cmpg-float v1, v2, v11

    .line 269
    .line 270
    if-nez v1, :cond_f

    .line 271
    .line 272
    move v1, v4

    .line 273
    goto :goto_a

    .line 274
    :cond_f
    move v1, v6

    .line 275
    :goto_a
    if-nez v1, :cond_11

    .line 276
    .line 277
    :cond_10
    iget-object v1, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->context:Landroid/content/Context;

    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-object v3, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->context:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const v7, 0x7f080719

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v7, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    new-instance v3, Landroid/graphics/Rect;

    .line 297
    .line 298
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    invoke-direct {v3, v6, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    invoke-virtual {v3, v7, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 321
    .line 322
    .line 323
    move-object/from16 v3, p1

    .line 324
    .line 325
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    .line 327
    .line 328
    :cond_11
    iget-boolean v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    .line 329
    .line 330
    if-eqz v1, :cond_12

    .line 331
    .line 332
    if-eqz p7, :cond_12

    .line 333
    .line 334
    iget-object v1, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 335
    .line 336
    iget-boolean v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 337
    .line 338
    if-nez v1, :cond_12

    .line 339
    .line 340
    new-instance v1, Landroid/graphics/Rect;

    .line 341
    .line 342
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 343
    .line 344
    .line 345
    iget-object v3, v5, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 346
    .line 347
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    sub-int/2addr v1, v5

    .line 359
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    float-to-int v2, v2

    .line 364
    add-int/2addr v5, v2

    .line 365
    if-le v5, v1, :cond_12

    .line 366
    .line 367
    iput-boolean v6, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    .line 368
    .line 369
    invoke-virtual {v3, v6, v4, v4}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 370
    .line 371
    .line 372
    :cond_12
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
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-ge p1, p2, :cond_0

    .line 15
    .line 16
    move v0, p1

    .line 17
    :goto_0
    if-ge v0, p2, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 20
    .line 21
    add-int/lit8 v2, v0, 0x1

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 24
    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 29
    .line 30
    if-gt v0, p1, :cond_1

    .line 31
    .line 32
    move v1, p1

    .line 33
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 34
    .line 35
    add-int/lit8 v3, v1, -0x1

    .line 36
    .line 37
    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 38
    .line 39
    .line 40
    if-eq v1, v0, :cond_1

    .line 41
    .line 42
    move v1, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    instance-of p2, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    :goto_2
    const/4 p2, 0x1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->positionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;

    .line 66
    .line 67
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 70
    .line 71
    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 84
    .line 85
    :goto_3
    return p2
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->needToCheckAppBar:Z

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq p2, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    .line 20
    .line 21
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    iget-object p1, v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 32
    .line 33
    check-cast p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    .line 36
    .line 37
    const/16 p2, 0x6a

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 40
    .line 41
    .line 42
    const/16 p1, 0x6c

    .line 43
    .line 44
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 57
    .line 58
    sget-object p2, Lcom/android/systemui/controls/ui/util/SALogger$Event$MoveCard;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$MoveCard;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method
