.class public final Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const v3, 0x303030

    .line 26
    .line 27
    .line 28
    and-int v4, v1, v3

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x1

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    not-int v7, v4

    .line 36
    and-int/2addr v1, v7

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    shr-int/lit8 v2, v4, 0x2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    shr-int/lit8 v2, v4, 0x1

    .line 43
    .line 44
    const v4, -0x303031

    .line 45
    .line 46
    .line 47
    and-int/2addr v4, v2

    .line 48
    or-int/2addr v1, v4

    .line 49
    and-int/2addr v2, v3

    .line 50
    shr-int/2addr v2, v5

    .line 51
    :goto_0
    or-int/2addr v1, v2

    .line 52
    :goto_1
    const/high16 v2, 0xff0000

    .line 53
    .line 54
    and-int/2addr v1, v2

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    move v1, v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :goto_2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    .line 62
    const-string v3, "ItemTouchHelper"

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    const-string v1, "Start drag has been called but dragging is not enabled"

    .line 67
    .line 68
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    add-int/2addr p1, v6

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const v1, 0x7f1304dd

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    if-eq v1, v4, :cond_4

    .line 108
    .line 109
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 110
    .line 111
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 130
    .line 131
    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 132
    .line 133
    invoke-virtual {v0, p1, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 134
    .line 135
    .line 136
    :goto_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 143
    .line 144
    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    .line 147
    .line 148
    const/16 p1, 0x6a

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 151
    .line 152
    .line 153
    const/16 p0, 0x6c

    .line 154
    .line 155
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {v2, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 160
    .line 161
    .line 162
    :cond_6
    return-void
.end method
