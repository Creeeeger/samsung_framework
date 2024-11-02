.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 6
    .line 7
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    .line 10
    .line 11
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v0, "SubscreenNotificationDetailAdapter"

    .line 16
    .line 17
    const-string v1, "CoverReplyButtonView is already existed."

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->enableGoToTopButton()V

    .line 27
    .line 28
    .line 29
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDispalyHeight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMainHeaderViewHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    add-float/2addr v8, v4

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    add-float/2addr v4, v8

    .line 68
    div-int/lit8 v2, v2, 0x2

    .line 69
    .line 70
    add-int/2addr v2, v3

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    div-int/lit8 v3, v3, 0x2

    .line 76
    .line 77
    sub-int/2addr v2, v3

    .line 78
    int-to-float v2, v2

    .line 79
    sub-float/2addr v4, v2

    .line 80
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 83
    .line 84
    float-to-int v3, v4

    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v2, v4, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    .line 87
    .line 88
    .line 89
    const v2, 0x7f0a0b23

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    move v2, v4

    .line 99
    :goto_0
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v2, v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    const v9, 0x3e4ccccd    # 0.2f

    .line 114
    .line 115
    .line 116
    const/high16 v10, 0x3f800000    # 1.0f

    .line 117
    .line 118
    if-eqz v8, :cond_1

    .line 119
    .line 120
    invoke-virtual {v6, v3, v9, v10}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSmartReplyWordTextStyle(Landroid/view/View;FF)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v8, "AI generated"

    .line 132
    .line 133
    invoke-virtual {v6, v7, v3, v1, v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->showReplyButtons(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v6, v3, v10, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSmartReplyWordTextStyle(Landroid/view/View;FF)V

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    move v8, v4

    .line 144
    :goto_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-ge v8, v1, :cond_3

    .line 151
    .line 152
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    const/high16 v4, 0x3f800000    # 1.0f

    .line 160
    .line 161
    const v5, 0x3e4ccccd    # 0.2f

    .line 162
    .line 163
    .line 164
    move-object v0, v6

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v8, v8, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 172
    .line 173
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailButtonLayout:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    const-wide/16 v12, 0xfa

    .line 177
    .line 178
    const/high16 v14, 0x3f800000    # 1.0f

    .line 179
    .line 180
    const v15, 0x3e4ccccd    # 0.2f

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 184
    .line 185
    .line 186
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 187
    .line 188
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    .line 189
    .line 190
    const/16 v18, 0x0

    .line 191
    .line 192
    const-wide/16 v19, 0xfa

    .line 193
    .line 194
    const/high16 v21, 0x3f800000    # 1.0f

    .line 195
    .line 196
    const v22, 0x3e4ccccd    # 0.2f

    .line 197
    .line 198
    .line 199
    move-object/from16 v16, v0

    .line 200
    .line 201
    move-object/from16 v17, v1

    .line 202
    .line 203
    invoke-virtual/range {v16 .. v22}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 204
    .line 205
    .line 206
    const-string v0, "QPN102"

    .line 207
    .line 208
    const-string v1, "QPNE0207"

    .line 209
    .line 210
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_3
    return-void
.end method
