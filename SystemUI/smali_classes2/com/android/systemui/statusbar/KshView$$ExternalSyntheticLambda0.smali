.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/KshView;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/lit8 v5, v0, -0x1

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    if-nez v4, :cond_3

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/lit8 v5, v0, -0x1

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 83
    .line 84
    xor-int/2addr v0, v1

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 86
    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    sub-int/2addr v2, v1

    .line 98
    invoke-virtual {v0, v2, v3, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    :goto_1
    move v0, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v0, v5, v2, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 129
    .line 130
    if-ne v2, v1, :cond_8

    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 139
    .line 140
    add-int/2addr v0, v2

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 145
    .line 146
    if-eqz v2, :cond_9

    .line 147
    .line 148
    move v3, v1

    .line 149
    :cond_9
    add-int/2addr v0, v3

    .line 150
    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 151
    .line 152
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 153
    .line 154
    if-gez v0, :cond_a

    .line 155
    .line 156
    iput v5, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 157
    .line 158
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 159
    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-lt v0, v2, :cond_b

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    sub-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 176
    .line 177
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 182
    .line 183
    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    .line 187
    .line 188
    .line 189
    :goto_4
    return-void

    .line 190
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Lcom/android/systemui/statusbar/KshView$1;

    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    .line 195
    .line 196
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
